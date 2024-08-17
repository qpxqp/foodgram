class Config:
    # Кол-во показываемых символов методом __str__()
    LENGTH_ON_STR = 15

    USERNAME_PATTERN = r'[\w.@+-]+'
    SHOPPING_CART_FILE_NAME = 'foodgram_shopping_cart_{datetime}.txt'

    # Настройки моделей
    USERNAME_MAX_LENGTH = 150
    EMAIL_MAX_LENGTH = 254
    FIRST_NAME_MAX_LENGTH = 150
    LAST_NAME_MAX_LENGTH = 150
    TAG_NAME_MAX_LENGTH = 32
    TAG_SLUG_MAX_LENGTH = 32
    MEASURE_UNIT_MAX_LENGTH = 64
    INGREDIENT_NAME_MAX_LENGTH = 128

    RECIPE_NAME_MAX_LENGTH = 256
    RECIPE_MIN_COOKING_TIME = 1
    INGREDIENT_MIN_AMOUNT = 1

    # Настройки пагинации
    PAGE_SIZE_QUERY_PARAM = 'limit'
    PAGE_SIZE = 6

    # Сообщения об ошибках
    USERNAME_ERROR = (
        'Поле username должно содержать только буквы, цифры и символы: '
        '`@`, ., +, -, _. Сейчас оно содержит недопустимые '
        'символы: {wrong_symbols}.'
    )
    USERNAME_FAILED = 'Имя пользователя {username} недопустимо.'
    MIN_VALUE_ERROR = 'Значение не может быть меньше {}.'
    PERMISSION_DENIED = 'Недостаточно прав для выполнения действия.'
    FIELD_EMPTY_ERROR = 'Поле {} должно быть заполнено.'
    FIELDS_UNIQUE_ERROR = 'Элементы поля {} должны быть уникальными.'
    SUBSCRIPTION_ERROR = 'Вы не может подписаться на себя.'
    SUBSCRIPTION_NOT_EXISTS = (
        'Пользователь {subscriber} не подписан на автора {author}.'
    )
    ALREADY_SUBSCRIBED_ERROR = 'Вы уже подписаны на автора.'
    FAVORITE_SHOPPINGCART_ERROR = 'Рецепт уже добавлен в {listname}.'
    FAVORITE_SHOPPINGCART_NOT_EXISTS = (
        'Рецепт с id={id} отвутствует в {listname} у пользователя {user}.'
    )
    DIGIT_ERROR = 'Поле {} должно содержать только цифры.'
    # USERNAME_OR_EMAIL_EXIST = 'Значение {} уже занято.'
    # USER_DELETED = 'Пользователь {user} удален.'
