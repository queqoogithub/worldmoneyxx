from django.urls import path 

from .views import SignUpView,login,logout

urlpatterns = [ 
    path('signup/', SignUpView.as_view(), name='signup'), 
    path('login/', login, name='login'), 
    path('logout/', logout, name='logout'),
]