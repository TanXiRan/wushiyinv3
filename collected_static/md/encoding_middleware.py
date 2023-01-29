from django.utils.deprecation import MiddlewareMixin
import json


class LoadsJson(MiddlewareMixin):
    def process_request(self, request):
        # print(request.META['CONTENT_TYPE'])
        # print(request.body)
        if request.method != 'GET' and 'application/json' in request.META['CONTENT_TYPE']:
            # print(request.body)
            # print(request.META['CONTENT_TYPE'])
            request.data = json.loads(request.body)

    def process_response(self, request, response):
        return response
