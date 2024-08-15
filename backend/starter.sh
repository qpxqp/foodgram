#!/bin/bash

echo "Makemigrations and migrate..."
python manage.py makemigrations
python manage.py migrate

echo "Create superuser and users..."
python manage.py shell -c "from django.contrib.auth import get_user_model; UserModel = get_user_model(); UserModel.objects.create_superuser(first_name='admin', last_name='admin', username='admin', email='admin@r.ru', password='DjangoAdmin')"
python manage.py shell -c "from django.contrib.auth import get_user_model; UserModel = get_user_model(); \
  UserModel.objects.create_user(first_name='user', last_name='user', username='user', email='user@r.ru', password='DjangoUser'); \
  UserModel.objects.create_user(first_name='user3', last_name='user3', username='user3', email='user3@r.ru', password='DjangoUser'); \
  UserModel.objects.create_user(first_name='user4', last_name='user4', username='user4', email='user4@r.ru', password='DjangoUser'); \
  UserModel.objects.create_user(first_name='user5', last_name='user5', username='user5', email='user5@r.ru', password='DjangoUser'); \
  UserModel.objects.create_user(first_name='user6', last_name='user6', username='user6', email='user6@r.ru', password='DjangoUser'); \
  UserModel.objects.create_user(first_name='user7', last_name='user7', username='user7', email='user7@r.ru', password='DjangoUser'); \
  UserModel.objects.create_user(first_name='user8', last_name='user8', username='user8', email='user8@r.ru', password='DjangoUser') \
"

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

# echo "Create Recipes..."
sh sh_recipes.sh
