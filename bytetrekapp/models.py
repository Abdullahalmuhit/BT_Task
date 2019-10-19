from django.db import models

class BytetrekUser(models.Model):
    name = models.CharField(max_length=255)
    email = models.EmailField(max_length=70)
    phone = models.CharField(max_length=30)
    address = models.TextField()
    def __str__(self):
        return self.name