from rest_framework.pagination import LimitOffsetPagination


class DefaultPagination(LimitOffsetPagination):

    offset_query_param = 'page'
