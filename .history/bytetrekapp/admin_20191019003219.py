from django.contrib import admin

from .models import BytetrekUser


class UserDisplay(admin.ModelAdmin):
    list_per_page = 10
    list_display = ['name', 'email', 'phone', 'address']
    list_filter = (
        # for ordinary fields
        ('rating', DropdownFilter),
        # for related fields
        ('post', RelatedDropdownFilter),
        ('author', RelatedDropdownFilter),
    )

admin.site.register(BytetrekUser, UserDisplay)
