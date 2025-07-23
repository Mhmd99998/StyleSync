import csv
import uuid
import random
from datetime import datetime, timedelta

# Load selected fields from CSV
def load_csv(filepath, key_fields):
    with open(filepath, newline='') as f:
        reader = csv.DictReader(f)
        return [{k: row[k] for k in key_fields} for row in reader]

# Generate a random timestamp within the last 180 days
def random_timestamp(days=180):
    delta = timedelta(days=random.randint(0, days))
    return (datetime.now() - delta).strftime('%Y-%m-%d %H:%M:%S')

# Load users and variants
users = load_csv('users.csv', ['user_id'])
variants = load_csv('variants.csv', ['variant_id', 'price'])

# Select all or most users (e.g. 90–100%)
order_users = random.sample(users, int(len(users) * 0.95))

order_sql = []
order_item_sql = []

for user in order_users:
    user_id = user['user_id']
    
    # 4–8 orders per user
    for _ in range(random.randint(4, 8)):
        order_id = str(uuid.uuid4())
        created_at = random_timestamp()
        payment_intent_id = f"pi_{uuid.uuid4().hex[:12]}"
        status = random.choice(['pending', 'completed', 'cancelled'])

        order_sql.append(
            f"""INSERT INTO public.orders (
                order_id, user_id, payment_intent_id, status, created_at
            ) VALUES (
                '{order_id}', '{user_id}', '{payment_intent_id}', '{status}', '{created_at}'
            );"""
        )

        # 1–4 items per order
        for _ in range(random.randint(1, 4)):
            order_item_id = str(uuid.uuid4())
            variant = random.choice(variants)
            variant_id = variant['variant_id']
            price = float(variant['price'])
            quantity = random.randint(1, 3)

            order_item_sql.append(
                f"""INSERT INTO public.order_items (
                    order_item_id, order_id, variant_id, quantity, price_at_purchase
                ) VALUES (
                    '{order_item_id}', '{order_id}', '{variant_id}', {quantity}, {price:.2f}
                );"""
            )

# Output combined SQL to file
with open('insert_orders.sql', 'w') as f:
    f.write('-- Orders\n')
    f.write('\n'.join(order_sql))
    f.write('\n\n-- Order Items\n')
    f.write('\n'.join(order_item_sql))

print(f"✅ Generated {len(order_sql)} orders and {len(order_item_sql)} order_items.")
