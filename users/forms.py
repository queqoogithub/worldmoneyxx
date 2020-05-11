from django import forms 
from django.contrib.auth.forms import UserCreationForm, UserChangeForm 

from .models import CustomUser 

class CustomUserCreationForm(UserCreationForm): 
    class Meta(UserCreationForm.Meta):
         model = CustomUser 
         fields = ('nametitle', 'first_name', 'last_name', 'username', 'email', 'tel', 'idcard') # new
         widgets = {
            # 'birthday': forms.TextInput(attrs={
            #     'type': 'date',
            #     'class': 'form-control',
            #     'placeholder': 'BirthDay',
            #     }
            # ),

           
        }
class CustomUserChangeForm(UserChangeForm): 
    class Meta: 
         model = CustomUser 
         fields = ('username', 'email',) # new
