from django.contrib import admin

# Register your models here.
from .models import Selling, SellingImage, SellingAuction

class SellingAuctionInline(admin.TabularInline):
    model = SellingAuction

class SellingImageInline(admin.TabularInline):
    model = SellingImage

class SellingAdmin(admin.ModelAdmin):
    inlines = [
        SellingImageInline,
        SellingAuctionInline,
    ]

admin.site.register(Selling, SellingAdmin)
admin.site.register(SellingImage)
admin.site.register(SellingAuction)