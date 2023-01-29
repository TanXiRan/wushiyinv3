from django.contrib.auth.models import AbstractUser
from django.db import models


class User(AbstractUser):
    id = models.AutoField(primary_key=True)
    gender_choice = (
        ('m', '男'),
        ('f', '女'),
        ('s', '保密'),
    )
    gender = models.CharField(max_length=1, verbose_name='性别', choices=gender_choice,
                              default='s')
    tel = models.CharField(max_length=11, blank=True, null=True, verbose_name='手机号')
    anime = models.ManyToManyField(to='Anime', verbose_name='收藏的动漫', blank=True)
    avatar = models.ForeignKey(
        to='Avatar',
        to_field='id',
        on_delete=models.SET_NULL,
        verbose_name='用户头像',
        null=True,
        blank=True,
    )
    max_score = models.IntegerField(null=False, blank=False, default=0, verbose_name='五十音游戏最高得分')
    min_time = models.IntegerField(null=False, blank=False, default=10000000, verbose_name='五十音游戏最短时间')
    learned_chapter = models.ManyToManyField(to='Chapter', related_name='users', verbose_name='学习过的章节')
    date_created = models.DateTimeField('注册时间', auto_now_add=True)
    status_choice = (('normal', '正常账户'), ('blocked', '封号账户'), ('leaved', '注销账户'))
    # status = models.CharField(default=True, null=False, blank=False, verbose_name='正常账户')
    status = models.CharField(max_length=12, verbose_name='账户状态', choices=status_choice, default='normal')

    def __str__(self):
        return self.username

    class Meta:
        verbose_name_plural = '用户'


class Avatar(models.Model):
    id = models.AutoField(primary_key=True)
    path = models.FileField(upload_to='user_avatar/', verbose_name='用户头像路径')

    def __str__(self):
        return self.path.url

    class Meta:
        verbose_name_plural = '用户头像'


class Anime(models.Model):
    name = models.CharField(max_length=128, blank=False, null=False, verbose_name='动漫名称', db_index=True)
    abstract = models.CharField(max_length=256, blank=True, null=True, verbose_name='简介')
    score = models.CharField('评分', max_length=8, null=True, blank=True)
    poster = models.FileField('封面', upload_to='anime_poster', blank=True, null=True)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name_plural = '动漫推荐'


class AnimeCategory(models.Model):
    name = models.CharField(max_length=128, blank=False, null=False, verbose_name='动漫名称', db_index=True)
    animes = models.ManyToManyField(to=Anime, related_name='categories', verbose_name='相关动漫', blank=True)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name_plural = '动漫分类'


class Character(models.Model):
    id = models.AutoField(primary_key=True)
    ping = models.CharField('平假名', max_length=8, null=False, blank=False)
    pian = models.CharField('片假名', max_length=8, null=False, blank=False)
    spelling = models.CharField('罗马拼音', max_length=8, null=False, blank=False)
    spelling_path = models.CharField('字符发音地址', max_length=64, null=True, blank=True)

    chapter = models.ForeignKey(to='Chapter', to_field='id', on_delete=models.CASCADE, verbose_name='所属章节')

    ping_path = models.CharField('平假名笔顺图路径', max_length=64, null=True, blank=True)
    pian_path = models.CharField('片假名笔顺图路径', max_length=64, null=True, blank=True)

    pro_skill = models.CharField('发音技巧', max_length=128, null=True, blank=True)
    pro_skill_image_path = models.CharField('发音技巧图片地址', max_length=64, null=True, blank=True)

    memory = models.CharField('联想记忆', max_length=256, null=True, blank=True)
    memory_path = models.CharField('联想记忆图片地址', max_length=64, null=True, blank=True)

    scene_text = models.CharField('名场面文字', max_length=128, null=False, blank=False)
    scene_cn_text = models.CharField('名场面中文', max_length=128, null=True, blank=True)
    scene_gif_path = models.CharField('名场面动图地址', max_length=64, null=True, blank=True)
    scene_text_from = models.CharField('名场面来源', max_length=64, null=True, blank=True)
    scene_spelling_path = models.CharField('名场面语音地址', max_length=64, null=True, blank=True)

    def __str__(self):
        return self.ping + '  ' + self.pian

    class Meta:
        verbose_name_plural = '五十音字符'


class Word(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField('单词名', max_length=12, null=False, blank=False)
    explanation = models.CharField('单词解释', max_length=12, null=True, blank=True)
    pronounce_url = models.CharField('单词发音地址', max_length=64, null=True, blank=True)
    character = models.ForeignKey(to=Character, to_field='id', on_delete=models.CASCADE, verbose_name='五十音字符',
                                  null=True, blank=True)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name_plural = '相关单词'


class Chapter(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField('章节名称', max_length=32, null=False, blank=False)
    category = models.ForeignKey(to='Category', to_field='id', verbose_name='章节分类', on_delete=models.CASCADE)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name_plural = '章节'


class Category(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField('分类名', max_length=8, null=False, blank=False)
    en_name = models.CharField('分类英文名', null=True, blank=True, max_length=16)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name_plural = '发音分类名'
