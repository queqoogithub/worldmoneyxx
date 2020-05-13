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
    # confirm_reg = models.BooleanField(default=False) 

    def __str__(self):
        return self.username
