import csv
import uuid
import random
from datetime import datetime, timedelta

# Load CSV helper
def load_csv(filepath, key_fields):
    with open(filepath, newline='') as f:
        reader = csv.DictReader(f)
        return [{k: row[k] for k in key_fields} for row in reader]

# Random timestamp within the last 6 months
def random_timestamp(days=180):
    delta = timedelta(days=random.randint(0, days))
    return (datetime.now() - delta).strftime('%Y-%m-%d %H:%M:%S')

# Load users and products
users = load_csv('users.csv', ['user_id'])
products = load_csv('products.csv', ['product_id'])

wishlist_sql = []

# Let's say 60% of users have wishlist items
wishlist_users = random.sample(users, int(len(users) * 0.6))

for user in wishlist_users:
    user_id = user['user_id']
    
    # Each user adds 2–6 items
    for _ in range(random.randint(2, 6)):
        wishlist_item_id = str(uuid.uuid4())
        product_id = random.choice(products)['product_id']
        added_at = random_timestamp()

        wishlist_sql.append(
            f"""INSERT INTO public.wishlist_items (
                wishlist_item_id, user_id, product_id, added_at
            ) VALUES (
                '{wishlist_item_id}', '{user_id}', '{product_id}', '{added_at}'
            );"""
        )

# Write to SQL file
with open('insert_wishlist_items.sql', 'w') as f:
    f.write('-- Wishlist Items\n')
    f.write('\n'.join(wishlist_sql))

print(f"✅ Generated {len(wishlist_sql)} wishlist_items.")
