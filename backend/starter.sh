#!/bin/bash

echo "Makemigrations and migrate..."
python manage.py makemigrations
python manage.py migrate

echo "Create superuser and users..."
python manage.py shell -c "from django.contrib.auth import get_user_model; UserModel = get_user_model(); UserModel.objects.create_superuser(first_name='admin', last_name='admin', username='admin', email='admin@r.ru', password='DjangoAdmin')"
python manage.py shell -c "from django.contrib.auth import get_user_model; UserModel = get_user_model(); UserModel.objects.create_user(first_name='user', last_name='user', username='user', email='user@r.ru', password='DjangoUser')"
python manage.py shell -c "from django.contrib.auth import get_user_model; UserModel = get_user_model(); UserModel.objects.create_user(first_name='user1', last_name='user1', username='user1', email='user1@r.ru', password='DjangoUser')"
python manage.py shell -c "from django.contrib.auth import get_user_model; UserModel = get_user_model(); UserModel.objects.create_user(first_name='user2', last_name='user2', username='user2', email='user2@r.ru', password='DjangoUser')"

echo "Create Tags..."
python manage.py shell -c "from recipies.models import Tag; Tag.objects.bulk_create([ \
  Tag(name='Десерт', slug='dessert'),\
  Tag(name='Завтрак', slug='breakfast'),\
  Tag(name='Обед', slug='lunch'),\
  Tag(name='Ужин', slug='dinner'),\
])"

printf %s "Create Ingredients from file: "  && \
  printf %s "1, " && sh sh_ingredients1.sh  && \
  printf %s "2, " && sh sh_ingredients2.sh  && \
  printf %s "3, " && sh sh_ingredients3.sh  && \
  printf %s "4, " && sh sh_ingredients4.sh  && \
  printf %s "5, " && sh sh_ingredients5.sh  && \
  echo "6." && sh sh_ingredients6.sh
# python manage.py shell -c "from recipies.models import Ingredient; Ingredient.objects.bulk_create([ \
#   Ingredient(name='абрикосовое варенье', measurement_unit='г'),\
#   Ingredient(name='абрикосовый джем', measurement_unit='г'),\
#   Ingredient(name='вишневый джем', measurement_unit='г'),\
#   Ingredient(name='вишневый ликер', measurement_unit='мл'),\
#   Ingredient(name='горбуша', measurement_unit='г'),\
#   Ingredient(name='гуанчиале', measurement_unit='г'),\
#   Ingredient(name='гурьевская каша', measurement_unit='г'),\
#   Ingredient(name='лимонная кислота', measurement_unit='мл'),\
#   Ingredient(name='лимонная цедра', measurement_unit='г'),\
#   Ingredient(name='соус песто', measurement_unit='г'),\
#   Ingredient(name='соус сацебели', measurement_unit='г'),\
#   Ingredient(name='яичные желтки', measurement_unit='г'),\
#   Ingredient(name='хлебцы пшенично-ржаные цельнозерновые', measurement_unit='г'),\
#   Ingredient(name='хлопья 4 злака', measurement_unit='г'),\
#   Ingredient(name='оленина', measurement_unit='г'),\
#   Ingredient(name='мятный шнапс', measurement_unit='мл'),\
#   Ingredient(name='переводной лист для шоколада', measurement_unit='шт.'),\
#   Ingredient(name='печенье галетное', measurement_unit='шт.'),\
#   Ingredient(name='пикша', measurement_unit='шт.'),\
#   Ingredient(name='приправа для баранины', measurement_unit='ст. л.'),\
#   Ingredient(name='хлопья 7 злаков', measurement_unit='ст. л.'),\
#   Ingredient(name='барбарис вяленый', measurement_unit='ст. л.'),\
#   Ingredient(name='лаванда сушеная', measurement_unit='щепотка'),\
# ])"