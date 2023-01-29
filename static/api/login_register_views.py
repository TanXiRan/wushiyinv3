from django.http import JsonResponse,HttpResponseRedirect
from django import forms
from django.contrib import auth
from .models import *
from django.views import View
from api.utils.ErrorField import get_error_field
import random
from api.utils.token import create_token
from django.forms.models import model_to_dict

# from django.contrib import
# from django.views.decorators.http import require_http_methods


class BaseForm(forms.Form):
    username = forms.CharField(max_length=18, error_messages={'required': '请输入账号', 'max_length': '昵称不能超过18个字符'})
    password = forms.CharField(max_length=18,
                               error_messages={'required': '请输入密码', 'max_length': '密码不能超过18个字符，只能由数字、字母、以及下划线组成'})


class LoginForm(BaseForm):
    def clean(self):
        print(self.cleaned_data)
        username = self.cleaned_data.get('username')
        password = self.cleaned_data.get('password')

        user = auth.authenticate(username=username, password=password)

        if not user:
            self.add_error('username', '账号或密码错误')
        return self.cleaned_data


# 注册表单验证
class RegisterForm(BaseForm):
    # 设定字段类型用来判断表单的字段是否合法
    email = forms.EmailField(error_messages={'required': '请输入合法邮箱'})

    def clean_username(self):
        username = self.cleaned_data.get('username')
        if User.objects.filter(username=username):
            self.add_error('username', '昵称被占用')
            return self.cleaned_data

    def clean_email(self):
        email = self.cleaned_data.get('email')
        if User.objects.filter(email=email):
            self.add_error('username', '邮箱被占用')
            return self.cleaned_data


class LoginView(View):
    def post(self, request):
        data = request.data
        cleaned_form = LoginForm(data)
        if cleaned_form.is_valid():
            user = auth.authenticate(username=data.get('username'), password=data.get('password'))
            auth.login(request, user)
            response = {
                'verified': True,
                'success': True,
                'msg': '登录成功',
                'token': create_token(**data)
            }
            print(model_to_dict(user))
            return JsonResponse(response, json_dumps_params={'ensure_ascii': False})
        else:
            print(cleaned_form.cleaned_data)
            response = get_error_field(cleaned_form)
            return JsonResponse(response, json_dumps_params={'ensure_ascii': False})


class RegisterView(View):
    def post(self, request):
        data = request.data
        cleaned_form = RegisterForm(data)
        if cleaned_form.is_valid():
            user = User.objects.create_user(**data)
            avatars = [avatar.id for avatar in Avatar.objects.all()]
            if avatars:
                user.avatar_id = random.choice(avatars)
            user.save()
            auth.login(request, user)
            response = {
                'verified': True,
                'msg': '注册成功',
                'success': True,
                'token': create_token(data.get('username'), data.get('password'))
            }
            return JsonResponse(response, json_dumps_params={'ensure_ascii': False})
        else:
            response = get_error_field(cleaned_form)
            return JsonResponse(response, json_dumps_params={'ensure_ascii': False})


def logout(request):
    auth.logout(request)
    return JsonResponse({'success': True, 'msg': '退出成功'}, json_dumps_params={'ensure_ascii': False})
