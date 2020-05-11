from django.contrib.auth import get_user_model
from django.db import models
from datetime import datetime

# Create your models here.
class Selling(models.Model):
    title = models.CharField(max_length=255, default='')
    seller = models.CharField(max_length=255, default='')
    body = models.TextField(default='')
    selling_price = models.DecimalField(default=0, max_digits=10, decimal_places=2)
    date = models.DateTimeField(default=datetime.now())
    author = models.ForeignKey(
        get_user_model(),
        on_delete=models.CASCADE,
        null=True,
        blank=True,
    )

    def __str__(self):
        return self.title

class SellingImage(models.Model):
    selling = models.ForeignKey(
        Selling, 
        on_delete=models.CASCADE,
        related_name='asset_images',
    )
    image_name = models.CharField(max_length=255, default='')
    image = models.ImageField(upload_to='asset_image', null=True , blank=True, default='')

class SellingAuction(models.Model): # new
    selling = models.ForeignKey(
        Selling, 
        on_delete=models.CASCADE,
        related_name='asset_auctions', 
    )
    auctioner = models.CharField(max_length=255, default='')
    auction_price = models.DecimalField(default=0, max_digits=10, decimal_places=2)
    date = models.DateTimeField(default=datetime.now())
    author = models.ForeignKey(
        get_user_model(),
        on_delete=models.CASCADE,
        null=True,
        blank=True,
    )
    class Meta:
        ordering = ['-auction_price'] # to order the QuerySet.

    





   