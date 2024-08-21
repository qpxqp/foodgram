import json
from random import choice, choices, randint

from django.core.management.base import BaseCommand
from django.db.utils import IntegrityError

from recipies.models import Ingredient, Recipe, RecipeIngredient, Tag, User

LENGTH_ON_STR = 55
INGREDIENTS_JSON = './ingredients.json'
TAGS_JSON = './tags.json'

NUMBER_USER = 5
NUMBER_RECIPE = 30
NAME_1 = ('Жаренная', 'Паренная', 'Варенная', 'Печеная',
          'Копченая', 'Томленая')
NAME_2 = ('морковь', 'капуста', 'картошка', 'морошка',
          'пелемешка', 'фасоль')
ACTION = ('варить', 'жарить', 'парить', 'мешать',
          'дать потомится')
RECIPE_IMAGES_DIR = 'recipes/images/'


class Command(BaseCommand):
    help = 'Load data into database.'

    def add_arguments(self, parser):
        parser.add_argument('-a', '--all', action='store_true',
                            help='Load all data into database.')
        parser.add_argument('-l', '--load', action='store_true',
                            help='Load ingredients and tags into database.')
        parser.add_argument('-d', '--develop', action='store_true',
                            help='Create users and recipes.')
        parser.add_argument(
            '-r', '--review', action='store_true',
            help='Create superuser and checking data for review.'
        )

    def handle(self, *args, **options):

        if options['load'] or options['all']:
            # LOAD INGREDIENTS
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

            # LOAD TAGS
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

        if options['develop'] or options['all']:
            # CREATE USERS
            self.stdout.write('Create superuser and users... ', ending='')
            try:
                User.objects.create_superuser(
                    first_name='admin', last_name='admin', username='admin',
                    email='admin@r.ru', password='DjangoAdmin',
                )
                [User.objects.create_user(
                    first_name=name, last_name=name, username=name,
                    email=f'{name}@r.ru', password='DjangoUser'
                ) for name in ['user'] + [
                    f'user{i}' for i in range(1, NUMBER_USER)
                ]]
            except IntegrityError as e:
                self.stdout.write(self.style.ERROR(
                    f'ERROR: {str(e)[:LENGTH_ON_STR]}...')
                )
            else:
                self.stdout.write(
                    f'{User.objects.count()} entries added... ', ending=''
                )
                self.stdout.write(self.style.SUCCESS('OK'))

            # CREATE RECIPES
            self.stdout.write('Create recipes... ', ending='')

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
                    tags = [Tag.objects.get(id=randint(1, 6))
                            for _ in range(1, randint(2, 6))]
                    recipe.tags.set(tags)

            try:
                Recipe.objects.bulk_create([
                    Recipe(
                        name=f'{get_name(NAME_1)} {get_name(NAME_2)}',
                        text=(
                            f'Взять чистую кастрюлю...{get_action()}. '
                            'Готово!',
                        ),
                        author=User.objects.get(
                            id=randint(2, NUMBER_USER + 1)
                        ),
                        cooking_time=randint(1, 120),
                        image=f'{RECIPE_IMAGES_DIR}temp.jpeg'
                    ) for _ in range(1, NUMBER_RECIPE + 1)
                ])
                write_ingredients(1, NUMBER_RECIPE)
                i = 1
                while i <= 5:
                    id_start = randint(1, NUMBER_RECIPE)
                    id_end = randint(1, NUMBER_RECIPE)
                    if id_start < id_end:
                        write_ingredients(id_start, id_end)
                        i += 1
                write_tags(1, NUMBER_RECIPE + 1)
            except IntegrityError as e:
                self.stdout.write(self.style.ERROR(
                    f'ERROR: {str(e)[:LENGTH_ON_STR]}...')
                )
            else:
                self.stdout.write(
                    f'{Recipe.objects.count()} entries added... ', ending=''
                )
                self.stdout.write(self.style.SUCCESS('OK'))

        # REVIEW
        if options['review'] or options['all']:
            user_count = User.objects.count()
            self.stdout.write('Create review superuser... ',
                              ending='')
            try:
                User.objects.create_superuser(
                    first_name='review', last_name='review', username='review',
                    email='review@admin.ru', password='review1admin',
                )
            except IntegrityError as e:
                self.stdout.write(self.style.ERROR(
                    f'ERROR: {str(e)[:LENGTH_ON_STR]}...')
                )
            else:
                self.stdout.write(
                    f'{User.objects.count() - user_count} entries added... ',
                    ending=''
                )
                self.stdout.write(self.style.SUCCESS('OK'))

            # CHECK REVIEW DATA
            # Также на сервере нужно создать минимум 7 рецептов,
            # 4 из которых должны принадлежать одному пользователю.
            self.stdout.write('Checking the number of recipes... ',
                              ending='')
            recipes_count = Recipe.objects.count()
            if recipes_count >= 7:
                self.stdout.write(
                    f'{recipes_count} entries found... ',
                    ending=''
                )
                self.stdout.write(self.style.SUCCESS('OK'))
            else:
                self.stdout.write(self.style.ERROR(
                    f'ERROR: recipes count {recipes_count}, 7 recipes needed')
                )
            self.stdout.write('Checking the maximum number '
                              'of recipes... ', ending='')
            max_users_recipes = max({
                user.id: user.recipes.count()
                for user in User.objects.all()
            }.values())
            if max_users_recipes >= 4:
                self.stdout.write(
                    f'{max_users_recipes} entries found... ',
                    ending=''
                )
                self.stdout.write(self.style.SUCCESS('OK'))
            else:
                self.stdout.write(self.style.ERROR(
                    'ERROR: max number of recipes per user '
                    f'{max_users_recipes}, 4 recipes needed'
                ))

        # Check database objects
        self.stdout.write('Data in database:')
        self.stdout.write(f' - {User.objects.count()} users')
        self.stdout.write(f' - {Ingredient.objects.count()} ingredients')
        self.stdout.write(f' - {Tag.objects.count()} tags')
