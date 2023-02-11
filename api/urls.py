from django.urls import path, re_path
from . import views
from . import login_register_views

app_name = 'api'

urlpatterns = [
    re_path(r'^categories/$', views.CategoryList.as_view()),
    re_path(r'^categories/(?P<pk>[0-9]+)$', views.CategoryDetail.as_view()),

    re_path(r'^chapters/$', views.ChapterList.as_view()),
    re_path(r'^chapters/(?P<pk>[0-9]+)$', views.ChapterDetail.as_view()),
    re_path(r'^jiaming/qingyin/chapters/$', views.JiaMingQingYinChapterList.as_view()),
    re_path(r'^jiaming/zhuoyin/chapters/$', views.JiaMingZhuoYinChapterList.as_view()),
    re_path(r'^jiaming/aoyin/chapters/$', views.JiaMingAoYinChapterList.as_view()),

    re_path(r'^users/$', views.UserList.as_view()),
    re_path(r'^users/(?P<pk>[0-9]+)$', views.UserDetail.as_view()),
    re_path(r'^profiles/(?P<pk>[0-9]+)$', views.ProfileDetail.as_view()),

    re_path(r'^characters/$', views.CharacterList.as_view()),
    re_path(r'^characters/(?P<pk>[0-9]+)$', views.CharacterDetail.as_view()),
    re_path(r'^game/characters/$', views.GameCharacterList.as_view()),

    re_path(r'^animes/$', views.AnimeList.as_view()),

    re_path(r'^avatars/$', views.AvatarList.as_view()),

    path('token/', views.MyTokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('token/refresh/', views.MyTokenRefreshView.as_view(), name='token_refresh'),
    path('token/verify/', views.MyTokenVerifyView.as_view(), name='token_verify'),

    # path('login/', login_register_views.LoginView.as_view()),
    path('register/', login_register_views.RegisterView.as_view()),
    path('logout/', login_register_views.logout),

    path('pwd/change/', views.ChangePwdView.as_view()),
    re_path(r'^leave/$', views.LeaveWsyView.as_view()),
]
