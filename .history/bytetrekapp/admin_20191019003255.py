from django.contrib import admin

from .models import BytetrekUser


class UserDisplay(admin.ModelAdmin):
    list_per_page = 10
    list_display = ['name', 'email', 'phone', 'address']
    list_filter = (
        # for ordinary fields
        ('phone', DropdownFilter),
        # for related fields
        ('email', RelatedDropdownFilter),
        
    )

admin.site.register(BytetrekUser, UserDisplay)
