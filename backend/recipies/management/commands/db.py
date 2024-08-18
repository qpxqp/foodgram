import json
from random import choice, choices, randint

from django.core.management.base import BaseCommand
from django.db.utils import IntegrityError

from recipies.models import Ingredient, Recipe, RecipeIngredient, Tag, User

LENGTH_ON_STR = 55
INGREDIENTS_JSON = '../data/ingredients.json'
TAGS_JSON = '../data/tags.json'


class Command(BaseCommand):
    help = 'Load data into database.'

    def add_arguments(self, parser):
        parser.add_argument('-d', '--dev', action='store_true',
                            help='Create users and recipes.')

    def handle(self, *args, **options):

        # Ingredients
        self.stdout.write('Load ingredients... ', ending='')
        with open(INGREDIENTS_JSON, 'r', encoding='utf-8') as file:
            data_json = json.load(file)
            try:
                Ingredient.objects.bulk_create([
                    Ingredient(
                        name=data['name'],
                        measurement_unit=data['measurement_unit']
                    ) for data in data_json
                ])
            except IntegrityError as e:
                self.stdout.write(self.style.ERROR(
                    f'ERROR: {str(e)[:LENGTH_ON_STR]}...')
                )
            else:
                self.stdout.write(
                    f'{Ingredient.objects.count()} entries added... ',
                    ending='',
                )
                self.stdout.write(self.style.SUCCESS('OK'))

        # Tags
        self.stdout.write('Load tags... ', ending='')
        with open(TAGS_JSON, 'r', encoding='utf-8') as file:
            data_json = json.load(file)
            try:
                Tag.objects.bulk_create([
                    Tag(
                        name=data['name'],
                        slug=data['slug']
                    ) for data in data_json
                ])
            except IntegrityError as e:
                self.stdout.write(self.style.ERROR(
                    f'ERROR: {str(e)[:LENGTH_ON_STR]}...')
                )
            else:
                self.stdout.write(
                    f'{Tag.objects.count()} entries added... ', ending=''
                )
                self.stdout.write(self.style.SUCCESS('OK'))

        if options['dev']:
            # Users
            self.stdout.write('Create superuser and users... ', ending='')
            try:
                User.objects.create_superuser(
                    first_name='admin', last_name='admin', username='admin',
                    email='admin@r.ru', password='DjangoAdmin',
                )
                User.objects.create_user(
                    first_name='user', last_name='user', username='user',
                    email='user@r.ru', password='DjangoUser'
                )
                User.objects.create_user(
                    first_name='user3', last_name='user3', username='user3',
                    email='user3@r.ru', password='DjangoUser'
                )
                User.objects.create_user(
                    first_name='user4', last_name='user4', username='user4',
                    email='user4@r.ru', password='DjangoUser'
                )
                User.objects.create_user(
                    first_name='user5', last_name='user5', username='user5',
                    email='user5@r.ru', password='DjangoUser'
                )
            except IntegrityError as e:
                self.stdout.write(self.style.ERROR(
                    f'ERROR: {str(e)[:LENGTH_ON_STR]}...')
                )
            else:
                self.stdout.write(
                    f'{User.objects.count()} entries added... ', ending=''
                )
                self.stdout.write(self.style.SUCCESS('OK'))

            # Recipes
            self.stdout.write('Create recipes... ', ending='')
            NUMBER_USER = 4
            NUMBER_RECIPE = 30
            NAME_1 = ('Жаренная', 'Паренная', 'Варенная', 'Печеная',
                      'Копченая', 'Томленая')
            NAME_2 = ('морковь', 'капуста', 'картошка', 'морошка',
                      'пелемешка', 'фасоль')
            ACTION = ('варить', 'жарить', 'парить', 'мешать',
                      'дать потомится')

            def get_name(name):
                return ''.join(choice(name))

            def get_action():
                return ', '.join(choices(ACTION, k=5))

            def write_ingredients(id_start, id_end):
                RecipeIngredient.objects.bulk_create([
                    RecipeIngredient(
                        recipe=Recipe.objects.get(id=i),
                        ingredient=Ingredient.objects.get(id=randint(1, 2100)),
                        amount=randint(1, 200) * 10,
                    ) for i in range(id_start, id_end)
                ])

            def write_tags(id_start, id_end):
                for i in range(id_start, id_end):
                    recipe = Recipe.objects.get(id=i)
                    tags = [Tag.objects.get(id=randint(1, 4))
                            for _ in range(1, randint(2, 4))]
                    recipe.tags.set(tags)

            try:
                Recipe.objects.bulk_create([
                    Recipe(
                        name=f'{get_name(NAME_1)} {get_name(NAME_2)}',
                        text=(
                            f'Взять чистую кастрюлю...{get_action()}. '
                            'Готово!',
                        ),
                        author=User.objects.get(id=randint(1, NUMBER_USER)),
                        cooking_time=randint(1, 120),
                        image='recipes/images/temp.jpeg'
                    ) for _ in range(1, NUMBER_RECIPE + 1)
                ])
                # recipe_ids = Recipe.objects.values_list('id', flat=True)
                write_ingredients(1, NUMBER_RECIPE)
                i = 1
                while i <= 5:
                    id_start = randint(1, NUMBER_RECIPE)
                    id_end = randint(1, NUMBER_RECIPE)
                    if id_start < id_end:
                        write_ingredients(id_start, id_end)
                        i += 1
                write_tags(1, NUMBER_RECIPE)
            except IntegrityError as e:
                self.stdout.write(self.style.ERROR(
                    f'ERROR: {str(e)[:LENGTH_ON_STR]}...')
                )
            else:
                self.stdout.write(
                    f'{Recipe.objects.count()} entries added... ', ending=''
                )
                self.stdout.write(self.style.SUCCESS('OK'))
