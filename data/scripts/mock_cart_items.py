import uuid
import random
import csv

# Helper function to load csv files
def load_csv(filepath, key_fields):
    with open(filepath, newline='') as f:
        reader = csv.DictReader(f)
        return [{k: row[k] for k in key_fields} for row in reader]

# Load carts and variants
carts = load_csv('carts.csv', ['cart_id'])
variants = load_csv('variants.csv', ['variant_id'])

# List to collect insert statements for cart_items
cart_items_sql = []

# Iterate over each cart and add random cart_items
for cart in carts:
    cart_id = cart['cart_id']
    
    # Keep track of variants already added to the cart
    added_variants = set()
    
    # Random number of items for this cart (1 to 6)
    num_items = random.randint(1, 6)
    
    for _ in range(num_items):
        # Ensure variant is not already in cart
        variant_id = random.choice(variants)['variant_id']
        while variant_id in added_variants:
            variant_id = random.choice(variants)['variant_id']
        
        # Add this variant to the set of added variants for this cart
        added_variants.add(variant_id)
        
        # Random quantity per item (1 to 3)
        quantity = random.randint(1, 3)
        
        # Generate cart_item insert SQL
        cart_item_id = str(uuid.uuid4())
        cart_item_insert = f"""INSERT INTO public.cart_items (
            cart_item_id, cart_id, variant_id, quantity
        ) VALUES (
            '{cart_item_id}', '{cart_id}', '{variant_id}', {quantity}
        );"""
        
        # Append to SQL list
        cart_items_sql.append(cart_item_insert)

# Write to a SQL file
with open('insert_cart_items.sql', 'w') as f:
    f.write('-- Cart Items\n')
    f.write('\n'.join(cart_items_sql))

print(f"✅ Generated {len(cart_items_sql)} cart_items.")
