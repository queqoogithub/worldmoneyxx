from django import forms
from django.forms import modelformset_factory

from django.contrib.auth.forms import UserCreationForm  # new

from .models import Selling, SellingImage, SellingAuction


class SellingForm(forms.ModelForm):
    class Meta:
        model = Selling
        fields = ('title', 'body', 'seller', 'selling_price', 'duedate', )
        labels = {
            'title': 'Title',
            'body': 'Asset Details',
            'seller': 'Asset Seller',
            'selling_price': 'Asset Value'
        }
        widgets = {
            'title': forms.TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Enter Asset Title here'
            }
            ),
            'body': forms.TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Enter Asset Detail here'
            }
            ),
            'seller': forms.TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Enter Asset Seller here'
            }
            ),
            'selling_price': forms.TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Enter Asset Value here'
            }
            ),
            'duedate': forms.TextInput(attrs={
                'type': 'date',
                'class': 'form-control',
                'placeholder': 'Enter Asset Value here'
            }
            ),
        }


class SellingImageForm(forms.ModelForm):
    image = forms.ImageField(label='image', )

    class Meta:
        model = SellingImage
        fields = ('image',)
        labels = {
            'image': 'Asset Image',
        }


SellingImageFormset = modelformset_factory(
    SellingImage, form=SellingImageForm, )


class SellingAuctionForm(forms.ModelForm):  # new
    class Meta:
        model = SellingAuction
        fields = ('auction_price', )
        widgets = {
            'auction_price': forms.NumberInput(attrs={
                'class': 'form-control',
                'placeholder': 'Enter Asset Price here'
            }
            ),
        }
