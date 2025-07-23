import numpy as np
import pandas as pd
from collections import defaultdict
from sklearn.preprocessing import OneHotEncoder, MinMaxScaler
from sklearn.metrics.pairwise import linear_kernel

from sentence_transformers import SentenceTransformer
from implicit.als import AlternatingLeastSquares
from lightfm import LightFM

from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import GRU, Dense, Embedding
from scipy.sparse import csr_matrix
from datetime import datetime

class ContentRecommender:
    def __init__(self, product_variants):
        self.products = product_variants
        self.encoder = OneHotEncoder(handle_unknown='ignore')
        self.scaler = MinMaxScaler()
        self.text_model = SentenceTransformer('paraphrase-MiniLM-L6-v2')

        # Preprocess features
        cat_features = self.encoder.fit_transform(product_variants[['color', 'size']])
        num_features = self.scaler.fit_transform(product_variants[['price']])
        text_features = self.text_model.encode(product_variants['description'].fillna(''))

        # Build matrix
        self.text_embeddings = text_features
        self.variant_to_index = {
            variant_id: idx for idx, variant_id in enumerate(product_variants['variant_id'])
        }
        self.feature_matrix = np.hstack([cat_features.toarray(), num_features, text_features])

    def recommend(self, user_profile, n=50):
        similarities = linear_kernel([user_profile], self.feature_matrix)[0]
        top_indices = np.argsort(similarities)[-n:][::-1]
        return self.products.iloc[top_indices]['variant_id'].tolist()

class CollaborativeFiltering:
    def __init__(self, user_purchases):
        self.user_purchases = user_purchases

        self.user_codes = user_purchases['user_id'].astype('category')
        self.variant_codes = user_purchases['variant_id'].astype('category')
        self.user_index = self.user_codes.cat.categories
        self.variant_index = self.variant_codes.cat.categories

        user_ids = self.user_codes.cat.codes
        item_ids = self.variant_codes.cat.codes

        self.interaction_matrix = csr_matrix(
            (user_purchases['quantity'].values, (user_ids, item_ids)),
            shape=(len(self.user_index), len(self.variant_index))
        )

        self.als_model = AlternatingLeastSquares(factors=64, regularization=0.01)
        self.als_model.fit(self.interaction_matrix)

        self.lfm_model = LightFM(loss='warp')
        self.lfm_model.fit(self.interaction_matrix, epochs=20, num_threads=4)

    def als_recommend(self, user_id, n=50):
        try:
            user_idx = self.user_index.get_loc(user_id)
            user_vec = self.interaction_matrix[user_idx]
            item_ids, _ = self.als_model.recommend(user_idx, user_vec, N=n)
            return self.variant_index[item_ids].tolist()
        except KeyError:
            return []

    def lfm_recommend(self, user_id, n=50):
        try:
            user_idx = self.user_index.get_loc(user_id)
            scores = self.lfm_model.predict(user_idx, np.arange(self.interaction_matrix.shape[1]))
            top_items = np.argsort(-scores)[:n]
            return self.variant_index[top_items].tolist()
        except KeyError:
            return []

class SessionRecommender:
    def __init__(self, user_carts):
        self.variant_ids = user_carts['variant_id'].astype('category')
        self.variant_index = self.variant_ids.cat.categories
        self.variant_to_idx = {v: i for i, v in enumerate(self.variant_index)}
        self.idx_to_variant = {i: v for i, v in enumerate(self.variant_index)}

        self.model = Sequential([
            Embedding(input_dim=len(self.variant_index) + 1, output_dim=64),
            GRU(128),
            Dense(len(self.variant_index), activation='softmax')
        ])
        self.model.compile(loss='categorical_crossentropy', optimizer='adam')

        # Note: Training omitted; you must train separately and save model if needed.

    def recommend(self, session_history, n=10):
        return []

class HybridRecommender:
    def __init__(self, product_variants, user_purchases, user_carts):
        self.products = product_variants
        self.user_purchases = user_purchases
        self.user_carts = user_carts

        self.content_model = ContentRecommender(product_variants)
        self.collab_model = CollaborativeFiltering(user_purchases)
        self.session_model = SessionRecommender(user_carts)

    def create_user_profile(self, user_id):
        purchases = self.user_purchases[self.user_purchases['user_id'] == user_id].copy()
        carts = self.user_carts[self.user_carts['user_id'] == user_id].copy()
        if purchases.empty and carts.empty:
            return np.zeros(self.content_model.feature_matrix.shape[1])

        now = datetime.now()
        if not purchases.empty:
            purchases['weight'] = np.exp(-(now - purchases['created_at']).dt.days / 14)
        if not carts.empty:
            carts['weight'] = 0.7 * np.exp(-(now - carts['created_at']).dt.days / 7)

        interactions = pd.concat([purchases, carts], ignore_index=True)

        cat_features = self.content_model.encoder.transform(interactions[['color', 'size']]).toarray()
        num_features = self.content_model.scaler.transform(interactions[['price']])
        text_indices = interactions['variant_id'].map(self.content_model.variant_to_index).fillna(-1).astype(int)
        valid_mask = text_indices >= 0
        text_features = self.content_model.text_embeddings[text_indices[valid_mask]]

        all_features = np.hstack([cat_features[valid_mask], num_features[valid_mask], text_features])
        weights = interactions['weight'].values[valid_mask]

        if all_features.shape[0] == 0:
            return np.zeros(self.content_model.feature_matrix.shape[1])

        user_profile = np.average(all_features, axis=0, weights=weights)
        return user_profile

    def recommend(self, user_id, session_history=None,
                  content_weight=0.4, als_weight=0.3, lfm_weight=0.2, session_weight=0.1,
                  diversity_penalty=0.3, price_tier_penalty=0.5, n=10):  # Ensure n is passed here
        user_profile = self.create_user_profile(user_id)

        content_recs = self.content_model.recommend(user_profile, n=n)  # Pass n to ContentRecommender
        als_recs = self.collab_model.als_recommend(user_id, n=n)  # Pass n to CollaborativeFiltering
        lfm_recs = self.collab_model.lfm_recommend(user_id, n=n)  # Pass n to CollaborativeFiltering
        session_recs = self.session_model.recommend(session_history or [], n=n)  # Pass n to SessionRecommender

        all_scores = defaultdict(float)
        for weight, recs in zip(
            [content_weight, als_weight, lfm_weight, session_weight],
            [content_recs, als_recs, lfm_recs, session_recs]
        ):
            for i, variant_id in enumerate(recs):
                all_scores[variant_id] += weight / (i + 1)

        sorted_variants = sorted(all_scores.items(), key=lambda x: -x[1])
        final_recs = [variant_id for variant_id, _ in sorted_variants][:n]  # Limit recommendations to n
        return final_recs
