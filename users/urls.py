from django.urls import path 
from django.conf.urls import url
from .views import signup,login,logout,activate

urlpatterns = [ 
    path('signup/', signup, name='signup'), 
    path('login/', login, name='login'), 
    path('logout/', logout, name='logout'),
    url(r'^activate/(?P<uidb64>[0-9A-Za-z_\-]+)/(?P<token>[0-9A-Za-z]{1,13}-[0-9A-Za-z]{1,20})/$',activate, name='activate'),
    # path('signup/', send_mail, name='sendmail'),
]