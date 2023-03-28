from rest_framework import generics
from django.contrib.auth.backends import ModelBackend
from django.db.models import Q
from rest_framework.permissions import IsAdminUser, IsAuthenticatedOrReadOnly
from .serializers import *
from django.core.exceptions import ObjectDoesNotExist

from rest_framework_simplejwt.views import TokenObtainPairView, TokenRefreshView, TokenVerifyView

from django.views import View


# from django.contrib import auth


class MyTokenVerifyView(TokenVerifyView):
    """
    验证token得到用户信息 token: 验证的token
    """
    serializer_class = MyTokenVerifySerializer


class MyTokenObtainPairView(TokenObtainPairView):
    """
    自定义得到token username: 账号或者密码 password: 密码或者验证码
    """
    serializer_class = MyTokenObtainPairSerializer


class MyTokenRefreshView(TokenRefreshView):
    """
    自定义刷新token refresh: 刷新token的元素
    """
    serializer_class = MyTokenRefreshSerializer


class UserList(generics.ListCreateAPIView):
    queryset = User.objects.filter(status='normal')
    serializer_class = UserSerializers
    permission_classes = (IsAdminUser,)


class UserDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = User.objects.filter(status='normal')
    serializer_class = UserSerializers
    permission_classes = (IsAuthenticatedOrReadOnly,)


class ProfileDetail(generics.RetrieveAPIView):
    queryset = User.objects.filter(status='normal')
    serializer_class = UserProfileSerializers
    permission_classes = (IsAuthenticatedOrReadOnly,)


class AvatarList(generics.ListAPIView):
    queryset = Avatar.objects.all()
    serializer_class = AvatarSerializers
    permission_classes = (IsAuthenticatedOrReadOnly,)


class CategoryList(generics.ListAPIView):
    queryset = Category.objects.all()
    serializer_class = CategorySerializers


class CategoryDetail(generics.RetrieveAPIView):
    queryset = Category.objects.all()
    serializer_class = CategorySerializers


class ChapterList(generics.ListAPIView):
    queryset = Chapter.objects.all()
    serializer_class = ChapterSerializers


class ChapterDetail(generics.RetrieveAPIView):
    queryset = Chapter.objects.all()
    serializer_class = ChapterDetailSerializers


class JiaMingQingYinChapterList(generics.ListAPIView):
    queryset = Chapter.objects.filter(category__en_name='qingyin')
    serializer_class = JiaMingChapterSerializers


class JiaMingZhuoYinChapterList(generics.ListAPIView):
    queryset = Chapter.objects.filter(category__en_name='zhuoyin')
    serializer_class = JiaMingChapterSerializers


class JiaMingAoYinChapterList(generics.ListAPIView):
    queryset = Chapter.objects.filter(category__en_name='aoyin')
    serializer_class = JiaMingChapterSerializers


class CharacterList(generics.ListAPIView):
    queryset = Character.objects.all()
    serializer_class = CharacterSerializers


class CharacterDetail(generics.RetrieveAPIView):
    queryset = Character.objects.all()
    serializer_class = CharacterSerializers


class GameCharacterList(generics.ListAPIView):
    queryset = Character.objects.all()
    serializer_class = GameCharacterSerializers


class AnimeList(generics.ListAPIView):
    queryset = Anime.objects.all()
    serializer_class = AnimeSerializers


class MyCustomBackend(ModelBackend):
    def authenticate(self, request, username=None, password=None, **kwargs):
        try:
            user = User.objects.get(Q(username=username) | Q(email=username) | Q(tel=username))
            if user.check_password(password):
                return user
            return None
        except ObjectDoesNotExist:
            return None


class ChangePwdView(View):
    def post(self, request):
        print(request.data)
        res = dict()
        data = request.data
        pwd1 = data.get('pwd1', None)
        pwd2 = data.get('pwd2', None)
        uid = data.get('uid', None)
        username = data.get('username', None)

        if (not pwd1) or (not pwd2):
            res['verified'] = False
            res['msg'] = '新密码不能为空！'
        elif pwd1 != pwd2:
            res['verified'] = False
            res['msg'] = '两次密码不一致！'
        elif (6 > len(pwd1)) or (len(pwd1) > 18):
            res['verified'] = False
            res['msg'] = '密码长度应该在6到18位'
        elif (not uid) or (not username):
            res['verified'] = False
            res['msg'] = '用户id缺失！'
        else:
            try:
                user = User.objects.filter(id=int(uid)).first()
                # user2 = auth.authenticate(username=username, password=pwd1)
                # if (not user2) or (user2.id != int(uid)):
                #     res['verified'] = False
                #     res['msg'] = '用户数据错误！'
                # else:
                #     user2.set_password(pwd1)
                #     user2.save()
                #     res['verified'] = True
                #     res['msg'] = '修改成功！'
                if not user:
                    res['verified'] = True
                    res['msg'] = '用户不存在，修改失败！'
                else:
                    user.set_password(pwd1)
                    user.save()
                    res['verified'] = True
                    res['msg'] = '修改成功！'
            except Exception:
                res['verified'] = False
                res['msg'] = '内部错误，修改失败！'

        return JsonResponse(res, json_dumps_params={'ensure_ascii': False})


class LeaveWsyView(View):
    def post(self, request):
        print(request.data)
        res = dict()
        data = request.data
        status = data.get('status', None)
        uid = data.get('uid', None)
        if (not uid) or (not status):
            res['verified'] = False,
            res['msg'] = '用户Id缺失！'
        else:
            try:
                user_qs = User.objects.filter(id=int(uid))
                if not user_qs:
                    res['verified'] = False,
                    res['msg'] = '用户不存在！'
                else:
                    user_qs.update(status="leaved")
                    res['verified'] = True,
                    res['msg'] = '注销成功！'
            except Exception:
                res['verified'] = False,
                res['msg'] = '内部错误，注销失败！'
        return JsonResponse(res, json_dumps_params={'ensure_ascii': False})
