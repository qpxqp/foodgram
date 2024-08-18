#!/bin/bash
echo "Create recipes..."
python manage.py shell -c "
from random import choice, choices, randint;
from django.contrib.auth import get_user_model; User = get_user_model();
from recipies.models import Ingredient, Recipe, Tag, RecipeIngredient, Tag;
# NUMBER_USER = 8
NUMBER_USER = 4
NUMBER_RECIPE = 30
NAME_1 = ('Жаренная', 'Паренная', 'Варенная', 'Печеная', 'Копченая', 'Томленая')
NAME_2 = ('морковь', 'капуста', 'картошка', 'морошка', 'пелемешка', 'фасоль')
ACTION = ('варить ', 'жарить ', 'парить ', 'мешать ', 'дать потомится ')
def get_name(name): return ''.join(choice(name))
def get_action(): return ''.join(choices(ACTION, k=6))
Recipe.objects.bulk_create([
    Recipe(
        name=f'{get_name(NAME_1)} {get_name(NAME_2)}',
        text=f'Берём чистую кастрюлю...{get_action()}. Готово!',
        author=User.objects.get(id=randint(1, NUMBER_USER)),
        cooking_time=randint(1, 120),
        image='recipes/images/temp.jpeg'
    ) for _ in range(1, NUMBER_RECIPE + 1)
])
recipe_id = Recipe.objects.values_list('id', flat=True)
def rec_ing():
    RecipeIngredient.objects.bulk_create([
        RecipeIngredient(
            recipe=Recipe.objects.get(id=i),
            ingredient=Ingredient.objects.get(id=randint(1, 2000)),
            amount=randint(1, 200)*10,
        ) for i in recipe_id
    ])
rec_ing()
if randint(1, 5) >= 3: rec_ing()
if randint(1, 5) >= 1: rec_ing()
def rec_tag():
    for i in  recipe_id:
        recipe=Recipe.objects.get(id=i)
        tags=[Tag.objects.get(id=randint(1, 2)), Tag.objects.get(id=randint(3, 4))]
        recipe.tags.set(tags)
rec_tag()
if randint(1, 5) >= 1: rec_tag()
count = Recipe.objects.all().count()
print(f'Total entries made: {count}.')
"
echo "...recipes created."