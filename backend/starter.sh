#!/bin/bash

echo "Makemigrations and migrate..."
python manage.py makemigrations
python manage.py migrate

echo "Create superuser and user..."
python manage.py shell -c "from django.contrib.auth import get_user_model; UserModel = get_user_model(); UserModel.objects.create_superuser(first_name='admin', last_name='admin', username='admin', email='admin@r.ru', password='DjangoAdmin')"
python manage.py shell -c "from django.contrib.auth import get_user_model; UserModel = get_user_model(); UserModel.objects.create_user(first_name='user', last_name='user', username='user', email='user@r.ru', password='DjangoUser')"
python manage.py shell -c "from django.contrib.auth import get_user_model; UserModel = get_user_model(); UserModel.objects.create_user(first_name='user1', last_name='user1', username='user1', email='user1@r.ru', password='DjangoUser')"
python manage.py shell -c "from django.contrib.auth import get_user_model; UserModel = get_user_model(); UserModel.objects.create_user(first_name='user2', last_name='user2', username='user2', email='user2@r.ru', password='DjangoUser')"

echo "Create Tags..."
python manage.py shell -c "from recipies.models import Tag; Tag.objects.create(name='Десерт', slug='dessert')"
python manage.py shell -c "from recipies.models import Tag; Tag.objects.create(name='Завтрак', slug='breakfast')"
python manage.py shell -c "from recipies.models import Tag; Tag.objects.create(name='Обед', slug='lunch')"
python manage.py shell -c "from recipies.models import Tag; Tag.objects.create(name='Ужин', slug='dinner')"

echo "Create Measurements..."
python manage.py shell -c "from recipies.models import Measurement; Measurement.objects.create(unit='г')"
python manage.py shell -c "from recipies.models import Measurement; Measurement.objects.create(unit='мл')"
python manage.py shell -c "from recipies.models import Measurement; Measurement.objects.create(unit='шт.')"
python manage.py shell -c "from recipies.models import Measurement; Measurement.objects.create(unit='ст. л.')"
python manage.py shell -c "from recipies.models import Measurement; Measurement.objects.create(unit='по вкусу')"
python manage.py shell -c "from recipies.models import Measurement; Measurement.objects.create(unit='щепотка')"
