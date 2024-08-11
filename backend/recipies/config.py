class UserRoles:
    """Роли пользователей."""
    USER = 'user'
    ADMIN = 'admin'


class Config:
    # Кол-во показываемых символов методом __str__()
    LENGTH_ON_STR = 15

    # Перечень ролей пользователя и их представления
    USER_ROLES_CHOICE = (
        (UserRoles.USER, 'Аутентифицированный пользователь'),
        (UserRoles.ADMIN, 'Администратор'),
    )

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
    SHORT_LINK_PREFIX = 'recipe'                    # что это !!!!!!!!!!!!!!
    SHORT_LINK_LENGTH = 8 + len(SHORT_LINK_PREFIX)  # ЧТО ЭТО !!!!!!!!!!!!!!

    # Сообщения об ошибках
    USERNAME_ERROR = (
        'Поле username должно содержать только буквы, цифры и символы: '
        '`@`, ., +, -, _. Сейчас оно содержит недопустимые '
        'символы: {wrong_symbols}.'
    )
    USERNAME_FAILED = 'Имя пользователя {username} недопустимо.'
    COOKING_TIME_ERROR = 'Значение не может быть меньше {}.'
    PERMISSION_DENIED = 'Недостаточно прав для выполнения действия.'
    FIELD_EMPTY_ERROR = 'Поле {} должно быть заполнено.'
    FIELDS_UNIQUE_ERROR = 'Элементы поля {} должны быть уникальными.'
    SUBSCRIPTION_ERROR = 'Вы не может подписаться на себя.'
    SUBSCRIPTION_NOT_EXISTS = (
        'Пользователь {subscriber} не подписан на автора {author}.'
    )
    # USERNAME_OR_EMAIL_EXIST = 'Значение {} уже занято.'
    # USER_DELETED = 'Пользователь {user} удален.'
