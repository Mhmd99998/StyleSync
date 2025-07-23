import uuid
import random
from faker import Faker
from datetime import datetime, timedelta

fake = Faker()

def random_timestamp(start_days_ago=180, end_days_ago=0):
    delta = timedelta(days=random.randint(end_days_ago, start_days_ago))
    return (datetime.now() - delta).strftime('%Y-%m-%d %H:%M:%S')

def generate_users_and_carts(n=700):
    users = []
    cart_inserts = [] 
    
    for _ in range(n):
        created_at = random_timestamp()
        
        # Generate user
        user = {
            'user_id': str(uuid.uuid4()),
            'email': fake.unique.email(),
            'password': fake.sha256(),  # Use hash placeholder
            'first_name': fake.first_name(),
            'last_name': fake.last_name(),
            'created_at': created_at,
            'is_email_verified': random.choice([True, False]),
            'role': 'customer'
        }
        users.append(user)
        
        # Insert for user into SQL
        user_insert = f"""INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '{user['user_id']}', '{user['email']}', '{user['password']}', '{user['first_name']}', '{user['last_name']}',
            '{user['created_at']}', {str(user['is_email_verified']).lower()}, '{user['role']}'
        );"""
        
        # Create a cart for this user
        cart_id = str(uuid.uuid4())
        cart_insert = f"""INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '{cart_id}', '{user['user_id']}', '{user['created_at']}'
        );"""
        
        # Append both user and cart inserts
        cart_inserts.append((user_insert, cart_insert))

    return users, cart_inserts

# Generate the users and cart data
users, cart_inserts = generate_users_and_carts()

# Write SQL to file
with open('insert_users_and_carts.sql', 'w') as f:
    for user_insert, cart_insert in cart_inserts:
        f.write(user_insert + "\n")
        f.write(cart_insert + "\n")

print(f"✅ Generated {len(users)} users and {len(cart_inserts)} carts.")
