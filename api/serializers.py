from rest_framework import serializers
from .models import *
from django.core.exceptions import ObjectDoesNotExist
from django.http import JsonResponse

from rest_framework_simplejwt.serializers import TokenObtainPairSerializer, TokenRefreshSerializer, \
    TokenVerifySerializer
from django.conf import settings
from jwt import decode as jwt_decode
from jwt.exceptions import ExpiredSignatureError, InvalidSignatureError


class MyTokenVerifySerializer(TokenVerifySerializer):
    """
    token验证
    """

    def validate(self, attrs):
        """
        attrs['token']: 是请求的token
        settings.SECRET_KEY: setting.py默认的key 除非在配置文件中修改了
        algorithms: 加密的方法
        """
        # print(attrs['token'])
        decoded_data = dict()
        try:
            decoded_data = jwt_decode(attrs['token'], settings.SECRET_KEY, algorithms=["HS256"])
            decoded_data['verified'] = True
            decoded_data['msg'] = 'success'
        except ExpiredSignatureError:
            decoded_data['verified'] = False
            decoded_data['msg'] = 'token失效'
        except InvalidSignatureError:
            decoded_data['verified'] = False
            decoded_data['msg'] = 'token不合法'
        except Exception:
            decoded_data['verified'] = False
            decoded_data['msg'] = 'failed'
        return decoded_data


class MyTokenObtainPairSerializer(TokenObtainPairSerializer):
    def validate(self, attrs):
        # response = dict()
        data = super().validate(attrs)
        # response['verified'] = True
        # response['msg'] = 'success'
        # data['username'] = self.user.username  # 这个是你的自定义返回的
        data['user_id'] = self.user.id  # 这个是你的自定义返回的
        # response['data'] = data
        data['verified'] = True
        data['msg'] = 'success'
        return data


class MyTokenRefreshSerializer(TokenRefreshSerializer):
    def validate(self, attrs):
        data = super().validate(attrs)
        data['verified'] = True
        data['msg'] = 'success'
        return data


class LearnedChapterSerializers(serializers.ModelSerializer):
    class Meta:
        model = Chapter
        fields = ('id', 'name')
        read_only_fields = ('id', 'name')


class SavedAnimeSerializers(serializers.ModelSerializer):
    class Meta:
        model = Anime
        fields = '__all__'
        read_only_fields = ('id', 'name', 'score', 'poster')


class UserSerializers(serializers.ModelSerializer):
    date_joined = serializers.DateTimeField(format="%Y-%m-%d %H:%M:%S", required=False, read_only=True)
    avatar_path = serializers.ReadOnlyField(source='avatar.path.url')

    class Meta:
        model = User
        fields = ('id', 'username', 'email', "date_joined",
                  "gender",
                  "tel",
                  "max_score",
                  'min_time',
                  "avatar",
                  "anime",
                  "learned_chapter",
                  "avatar_path",
                  )
        read_only_fields = ('id', 'date_joined')

    def update(self, instance, validated_data):
        learned_chapter = validated_data.get('learned_chapter', None)
        anime = validated_data.get('anime', None)
        print(anime)
        print(instance)

        new_username = validated_data.get('username', instance.username)
        if User.objects.exclude(id=instance.id).filter(username=new_username).exists():
            raise serializers.ValidationError(detail="昵称被占用！")

        new_email = validated_data.get('email', instance.email)
        if User.objects.exclude(id=instance.id).filter(email=new_email).exists():
            raise serializers.ValidationError(detail="邮箱被占用！")

        new_tel = validated_data.get('tel', instance.tel)
        if new_tel and User.objects.exclude(id=instance.id).filter(tel=new_tel).exists():
            raise serializers.ValidationError(detail="电话号被占用！")

        instance.username = new_username
        instance.email = new_email
        instance.tel = new_tel
        # instance.username = validated_data.get('username', instance.username)
        # new_email = validated_data.get('email', instance.email)
        #
        # if new_email == instance.email:
        #     return JsonResponse({
        #         'msg': '注意：请输入新的邮箱！'
        #     }, json_dumps_params={'ensure_ascii': False})
        # user_qs = User.objects.filter(email=new_email).all()
        # if user_qs:
        #     return JsonResponse({
        #         'msg': '注意：邮箱已经被别人使用！'
        #     }, json_dumps_params={'ensure_ascii': False})
        # instance.email = new_email
        #
        # new_tel = validated_data.get('tel', instance.tel)
        # if new_tel == instance.tel:
        #     return JsonResponse({
        #         'msg': '注意：请输入新的手机号！'
        #     }, json_dumps_params={'ensure_ascii': False})
        # user_qs = User.objects.filter(tel=new_tel).all()
        # if user_qs:
        #     return JsonResponse({
        #         'msg': '注意：手机号已经被别人使用！'
        #     }, json_dumps_params={'ensure_ascii': False})
        # instance.tel = new_tel

        instance.gender = validated_data.get('gender', instance.gender)
        instance.max_score = validated_data.get('max_score', instance.max_score)
        instance.min_time = validated_data.get('min_time', instance.min_time)
        instance.avatar = validated_data.get('avatar', instance.avatar)

        try:
            if learned_chapter:
                for item in learned_chapter:
                    instance.learned_chapter.add(item)
            if anime:
                # print(instance.anime.all())
                if anime[0] in instance.anime.all():
                    instance.anime.remove(anime[0])
                else:
                    instance.anime.add(anime[0])
                # for an in anime:
                # ann = Anime.objects.get(name=an)
                # instance.anime.add(ann)
                # instance.anime.add(an)
        except ObjectDoesNotExist:
            return JsonResponse({
                'anime': '数据有误，更新失败'
            }, json_dumps_params={'ensure_ascii': False})
        instance.save()
        return instance


class UserProfileSerializers(serializers.ModelSerializer):
    date_joined = serializers.DateTimeField(format="%Y-%m-%d", required=False, read_only=True)
    learned_chapter = LearnedChapterSerializers(many=True, read_only=True)
    anime = SavedAnimeSerializers(many=True, read_only=True)
    avatar_path = serializers.ReadOnlyField(source='avatar.path.url')
    gender = serializers.SerializerMethodField()

    class Meta:
        model = User
        fields = ('id', 'username', 'email', "date_joined",
                  "gender",
                  "tel",
                  "max_score",
                  'min_time',
                  "avatar",
                  "anime",
                  "learned_chapter",
                  "avatar_path",
                  )
        read_only_fields = ('id', 'date_joined')

    def get_gender(self, obj):
        return obj.get_gender_display()


class AvatarSerializers(serializers.ModelSerializer):
    class Meta:
        model = Avatar
        fields = '__all__'


class CatChapterSerializers(serializers.ModelSerializer):
    class Meta:
        model = Chapter
        fields = ('id', 'name')


class CategorySerializers(serializers.ModelSerializer):
    # chapter_set = serializers.StringRelatedField(many=True, read_only=True)
    chapter_set = CatChapterSerializers(many=True, read_only=True)

    class Meta:
        model = Category
        fields = '__all__'
        read_only_fields = ('id', 'name', 'en_name', 'chapter_set')


class GameCharacterSerializers(serializers.ModelSerializer):
    class Meta:
        model = Character
        fields = ('ping', 'pian', 'spelling', 'spelling_path')
        read_only_fields = ('ping', 'pian', 'spelling', 'spelling_path')


class ChapterSerializers(serializers.ModelSerializer):
    category = serializers.ReadOnlyField(source="category.name")
    en_category = serializers.ReadOnlyField(source="category.en_name")
    # character_set = serializers.StringRelatedField(many=True, read_only=True)
    character_set = GameCharacterSerializers(many=True, read_only=True)
    path = serializers.SerializerMethodField()

    class Meta:
        model = Chapter
        fields = '__all__'
        read_only_fields = ('id', 'name', 'category', 'en_category', 'character_set')

    def get_path(self, obj):
        return '/learning/chapter' + str(obj.id)


class JiaMingCharaSerializers(serializers.ModelSerializer):
    class Meta:
        model = Character
        fields = ('ping', 'pian', 'spelling', 'spelling_path')


class JiaMingChapterSerializers(serializers.ModelSerializer):
    character_set = JiaMingCharaSerializers(many=True)
    category = serializers.ReadOnlyField(source='category.en_name')

    class Meta:
        model = Chapter
        fields = ('id', 'name', 'character_set', 'category')


class WordSerializers(serializers.ModelSerializer):
    class Meta:
        model = Word
        fields = ('name', 'explanation', 'pronounce_url')


class CharacterSerializers(serializers.ModelSerializer):
    # word_set = serializers.StringRelatedField(many=True, read_only=True)
    word_set = WordSerializers(many=True, read_only=True)
    chapter = serializers.ReadOnlyField(source='chapter.name')

    class Meta:
        model = Character
        # fields = ('__all__', 'word_set')
        fields = '__all__'


class ChapterDetailSerializers(ChapterSerializers):
    character_set = CharacterSerializers(many=True, read_only=True)


class AnimeSerializers(ChapterSerializers):
    categories = serializers.StringRelatedField(many=True, read_only=True)

    class Meta:
        model = Anime
        fields = '__all__'
