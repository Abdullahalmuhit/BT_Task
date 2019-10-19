import os
import sys

import django
from faker import Faker
import random

sys.path.append('..')
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'bytetrek.settings')

django.setup()

from bytetrekapp.models import BytetrekUser 

fake = Faker()

def create_user(_range):
    for x in range(_range):
        user = BytetrekUser.objects.get_or_create(
        name = fake.name(),
        email = fake.email(),
        phone = fake.phone_number(),
        address = fake.address()
        )[0]
        user.save()

def populate():
     #BytetrekUser.objects.all().delete()
     create_user(100)
    



if __name__ == '__main__':
    print('Populating script')
    populate()
    print('Populating complete')