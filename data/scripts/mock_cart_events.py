import csv
import uuid
import random
from datetime import datetime, timedelta

# Utility: Random timestamp within last 180 days
def random_timestamp(days=240):
    delta = timedelta(days=random.randint(0, days))
    return (datetime.now() - delta).strftime('%Y-%m-%d %H:%M:%S')

# Load IDs from CSV
def load_ids_from_csv(filepath, column_name):
    with open(filepath, newline='') as f:
        reader = csv.DictReader(f)
        return [row[column_name] for row in reader]

# Load data
user_ids = load_ids_from_csv('users.csv', 'user_id')
variant_ids = load_ids_from_csv('variants.csv', 'variant_id')

# Generate cart events
insert_statements = []

for user_id in user_ids:
    for _ in range(random.randint(1, 6)):
        event_id = str(uuid.uuid4())
        variant_id = random.choice(variant_ids)
        quantity = random.randint(1, 3)
        created_at = random_timestamp()

        sql = (
            f"INSERT INTO public.cart_events (event_id, user_id, variant_id, quantity, created_at) "
            f"VALUES ('{event_id}', '{user_id}', '{variant_id}', {quantity}, '{created_at}');"
        )
        insert_statements.append(sql)

# Write SQL to file
with open('insert_cart_events.sql', 'w') as f:
    f.write('\n'.join(insert_statements))

print(f"Generated {len(insert_statements)} cart event INSERT statements.")
