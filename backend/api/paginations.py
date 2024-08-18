from rest_framework.pagination import PageNumberPagination

from recipies.config import Config


class DefaultPagination(PageNumberPagination):

    page_size_query_param = Config.PAGE_SIZE_QUERY_PARAM
    page_size = Config.PAGE_SIZE
