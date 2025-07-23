import pandas as pd
import numpy as np
import joblib
from flask import Flask, request, jsonify
from datetime import datetime
from sklearn.preprocessing import OneHotEncoder, MinMaxScaler
from sentence_transformers import SentenceTransformer
from models import HybridRecommender, ContentRecommender, CollaborativeFiltering, SessionRecommender

# === 1. LOAD DATA (REPLICATES COLAB MERGES) ===
def load_data():
    products = pd.read_csv('csv/products.csv')
    variants = pd.read_csv('csv/variants.csv')
    orders = pd.read_csv('csv/orders.csv')
    order_items = pd.read_csv('csv/order_items.csv')
    cart_events = pd.read_csv('csv/cart_events.csv')
    product_categories = pd.read_csv('csv/product_categories.csv')

    orders['created_at'] = pd.to_datetime(orders['created_at'])
    cart_events['created_at'] = pd.to_datetime(cart_events['created_at'])

    product_variants = (
        pd.merge(pd.merge(products, variants, on='product_id'),
                 product_categories, on='product_id')
        .groupby('variant_id')
        .agg({
            'name': 'first',
            'description': 'first',
            'color': 'first',
            'size': 'first',
            'price': 'first',
            'stock': 'first',
            'category_id': lambda x: list(x.unique())
        })
        .reset_index()
    )

    user_purchases = pd.merge(
        pd.merge(orders, order_items, on='order_id'),
        product_variants,
        on='variant_id'
    )

    user_carts = pd.merge(
        cart_events,
        product_variants,
        on='variant_id'
    )

    return product_variants, user_purchases, user_carts

# === 2. RECONSTRUCT RECOMMENDER ===
class LocalHybridWrapper:
    def __init__(self, model_path):
        self.model = joblib.load(model_path)
        self.products, self.user_purchases, self.user_carts = load_data()
        self.model.products = self.products
        self.model.user_purchases = self.user_purchases
        self.model.user_carts = self.user_carts

        # Recreate content model embeddings and feature matrix
        self.model.content_model.products = self.products
        self.model.content_model.encoder = OneHotEncoder(handle_unknown='ignore')
        self.model.content_model.scaler = MinMaxScaler()
        self.model.content_model.text_model = SentenceTransformer('paraphrase-MiniLM-L6-v2')

        cat = self.model.content_model.encoder.fit_transform(self.products[['color', 'size']])
        num = self.model.content_model.scaler.fit_transform(self.products[['price']])
        txt = self.model.content_model.text_model.encode(self.products['description'].fillna(''))

        self.model.content_model.text_embeddings = txt
        self.model.content_model.variant_to_index = {
            vid: idx for idx, vid in enumerate(self.products['variant_id'])
        }
        self.model.content_model.feature_matrix = np.hstack([cat.toarray(), num, txt])

    def recommend(self, user_id, n): 
        return self.model.recommend(user_id, n=n)

# === 3. FLASK API ===
app = Flask(__name__)
recommender = LocalHybridWrapper('model.pkl')

@app.route("/recommend/<user_id>", methods=["GET"])
def recommend_endpoint(user_id):
    try:
        n = int(request.args.get('n', 10))  # default to 10 recommendations
        recs = recommender.recommend(user_id, n=n)
        if recs is None:
            return jsonify({"error": "User not found or no recommendations available."}), 404
        return jsonify({"user_id": user_id, "recommendations": recs})
    except Exception as e:
        return jsonify({"error": str(e)}), 500

# === 4. MAIN ===
if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=8000)
