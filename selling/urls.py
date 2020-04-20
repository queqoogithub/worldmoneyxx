from django.urls import path
from .views import selling_create, SellingListView, SellingDetailView, selling_auction_create

urlpatterns = [ 
    path('new/', selling_create, name='selling_create'),
    path('<int:pk>/detail/', SellingDetailView.as_view(), name='selling_detail'), 
    path('<int:pk>/auction/', selling_auction_create, name='selling_auction_create'), # new
    path('', SellingListView.as_view(), name='selling_list'), 
]