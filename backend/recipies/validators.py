import re

from django.conf import settings
from django.core.exceptions import ValidationError

from recipies.config import Config


def username_validator(username: str) -> str:
    wrong_symbols = re.sub(Config.USERNAME_PATTERN, '', username)
    if wrong_symbols:
        raise ValidationError(Config.USERNAME_ERROR.format(
            wrong_symbols=''.join(set(wrong_symbols))
        ))
    if username in settings.WRONG_USERNAMES:
        raise ValidationError(Config.USERNAME_FAILED.format(
            username=username
        ))
    return username
