from django.contrib import admin
from .models import *


class UserAdmin(admin.ModelAdmin):
    list_filter = ('gender',)


admin.site.register(User, UserAdmin)
admin.site.register(Avatar)
admin.site.register(Chapter)
admin.site.register(Character)
admin.site.register(Word)
admin.site.register(Category)
admin.site.register(Anime)
admin.site.register(AnimeCategory)