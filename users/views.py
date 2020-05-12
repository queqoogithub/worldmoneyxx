from django.urls import reverse_lazy 
from django.views.generic import CreateView 
from django.shortcuts import render
from .forms import CustomUserCreationForm
from django.contrib.auth.models import User, auth
from django.shortcuts import render, redirect
from django.contrib import messages


# Create your views here.
class SignUpView(CreateView): 
    form_class = CustomUserCreationForm 
    success_url = reverse_lazy('home') 
    template_name = 'signup.html'

def login(request):
    
    username = request.POST['username']
    password = request.POST['password']

    user = auth.authenticate(username=username, password=password)

    if user is not None:
        auth.login(request,user)
        return redirect('/')
    else:
        messages.info(request,'ไม่พบผู้ใช้งาน')
        return redirect("/")

def logout(request):
    auth.logout(request)
    return redirect("/")

    

# def test(req):
#     provinceslist = None
#     provinceslist = Provinces.objects.raw('SELECT * FROM users_provinces')
#     return render(req,'test.htm',{'provinceslist':provinceslist})