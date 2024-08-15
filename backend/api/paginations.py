from rest_framework.pagination import LimitOffsetPagination, PageNumberPagination


class DefaultPagination(PageNumberPagination):

    page_size_query_param = "limit"
    page_size = 6
