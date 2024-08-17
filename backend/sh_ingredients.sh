#!/bin/bash
echo "Create ingredients..."
python manage.py shell -c "
import json;
from recipies.models import Ingredient;
with open('ingredients.json', 'r', encoding='utf-8') as read_file:
    data_json = json.load(read_file)
    Ingredient.objects.bulk_create([Ingredient(name=data['name'], measurement_unit=data['measurement_unit']) for data in data_json]);
count = Ingredient.objects.count();
print(f'Total entries made: {count}.');
"
echo "...ingredient created."