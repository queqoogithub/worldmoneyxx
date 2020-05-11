from django.contrib.auth.models import AbstractUser 
from django.db import models
from django.urls import reverse


# Create your models here.

class CustomUser(AbstractUser): 
    nametitle = models.CharField(max_length=255,null=True, blank=True)
    birthday = models.DateField(auto_now=False, auto_now_add=False,null=True, blank=True)
    address = models.TextField(null=True, blank=True)
    provinces = models.CharField(max_length=150, null=True, blank=True)
    amphures = models.CharField(max_length=150, null=True, blank=True)
    districts = models.CharField(max_length=150, null=True, blank=True)

    # def get_url(self):
    #     return reverse('',args=[self.Provinces.id,self.Amphures.id,self.Districts.id, self.provinces, self.amphures, self.districts])

    def __str__(self):
        return self.username

# ภาค
class Geographies(models.Model):
    name = models.CharField(max_length=255)

    def __str__(self):
        return self.name

# จังหวัด
class Provinces(models.Model):
    code = models.CharField(max_length=2)
    name_th = models.CharField(max_length=150)
    name_en = models.CharField(max_length=150)
    geography_id = models.PositiveIntegerField(null=True, blank=True)

    def __str__(self):
        return self.name_en

    # def get_url(self):
    #     return reverse('',args=[self.Geographies.id, self.geography_id])

# อำเภอ
class Amphures(models.Model):
    code = models.CharField(max_length=2)
    name_th = models.CharField(max_length=150)
    name_en = models.CharField(max_length=150)
    province_id = models.PositiveIntegerField(null=True, blank=True)

    def __str__(self):
        return self.name_en

    # def get_url(self):
    #     return reverse('',args=[self.Provinces.id, self.province_id])

# ตำบล
class Districts(models.Model):
    zip_code = models.PositiveIntegerField(null=True, blank=True)
    name_th = models.CharField(max_length=150)
    name_en = models.CharField(max_length=150)
    amphure_id = models.PositiveIntegerField(null=True, blank=True)

    def __str__(self):
        return self.name_en

    # def get_url(self):
    #     return reverse('',args=[self.Amphures.id, self.amphure_id])


