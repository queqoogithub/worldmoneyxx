from django.contrib.auth.models import AbstractUser 
from django.db import models
from django.urls import reverse
from enum import Enum
from django import forms

# Create your models here.



class NameTitleGroup(Enum):
    Mr = "Mr"
    Ms = "Ms"
    Dr = "Dr"
    @classmethod
    def all(self):
        return [NameTitleGroup.Mr, NameTitleGroup.Ms, NameTitleGroup.Dr]

class CustomUser(AbstractUser): 
    nametitle = models.CharField(
        max_length=15,
        choices=[(tag.value, tag.name) for tag in NameTitleGroup.all()]
    )
    tel = models.CharField(max_length=10, null=True, blank=True, unique=True)
    idcard = models.CharField(max_length=13, null=True, blank=True, unique=True)

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


