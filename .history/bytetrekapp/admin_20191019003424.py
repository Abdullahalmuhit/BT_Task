from django.contrib import admin
from .models import BytetrekUser


from django_admin_listfilter_dropdown.filters import DropdownFilter, RelatedDropdownFilter, ChoiceDropdownFilter




class UserDisplay(admin.ModelAdmin):
    list_per_page = 10
    list_display = ['name', 'email', 'phone', 'address']
    list_filter = ( 'name'
        
    )

admin.site.register(BytetrekUser, UserDisplay)
