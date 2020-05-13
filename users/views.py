from django.urls import reverse_lazy
from django.views.generic import CreateView
from django.shortcuts import render
from .forms import CustomUserCreationForm
from django.contrib.auth.models import User, auth
from .models import CustomUser
from django.shortcuts import render, redirect
from django.contrib import messages
from django.core.mail import send_mail as sm

from django.contrib.sites.shortcuts import get_current_site
from django.template.loader import render_to_string
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from django.utils.encoding import force_bytes, force_text
from .tokens import account_activation_token
from django.core.mail import EmailMessage
from django.http import HttpResponse
from django.contrib.auth import authenticate


# Create your views here.
# class SignUpView(CreateView):

#     form_class = CustomUserCreationForm
#     success_url = reverse_lazy('home')
#     template_name = 'signup.html'

def signup(request):
    if request.method == 'POST':
        form = CustomUserCreationForm(request.POST)
        if form.is_valid():
            user = form.save(commit=False)
            user.is_active = False
            user.save()
            current_site = get_current_site(request)
            message = render_to_string('acc_active_email.html', {
                'user': user, 'domain': current_site.domain,
                'uid': urlsafe_base64_encode(force_bytes(user.pk)),
                'token': account_activation_token.make_token(user),
            })
            # Sending activation link in terminal
            # user.email_user(subject, message)
            mail_subject = 'Activate your blog account.'
            to_email = form.cleaned_data.get('email')
            email = EmailMessage(mail_subject, message, to=[to_email])
            email.send()
            # return HttpResponse('Please confirm your email address to complete the registration.')
            return render(request, 'acc_active_sent.html')
    else:
        form = CustomUserCreationForm()
    return render(request, 'signup.html', {'form': form})


def activate(request, uidb64, token):
    try:
        uid = force_text(urlsafe_base64_decode(uidb64))
        user = CustomUser.objects.get(pk=uid)
    except(TypeError, ValueError, OverflowError, CustomUser.DoesNotExist):
        user = None
    if user is not None and account_activation_token.check_token(user, token):
        user.is_active = True
        user.save()
        auth.login(request, user)
        # return HttpResponse('Thank you for your email confirmation. Now you can login your account.')
        return render(request, 'acc_active_confirmation_email.html')
    else:
        # return HttpResponse('Activation link is invalid!')
        return render(request, 'acc_error_confirmation_email.html')


def login(request):

    username = request.POST['username']
    password = request.POST['password']

    user = auth.authenticate(username=username, password=password)

    if user is not None:
        auth.login(request, user)
        return redirect('/')
    else:
        messages.info(
            request, 'Please confirm your email or  username,password is incorrect. ')
        return redirect("/")

def logout(request):
    auth.logout(request)
    return redirect("/")

# def test(req):
#     provinceslist = None
#     provinceslist = Provinces.objects.raw('SELECT * FROM users_provinces')
#     return render(req,'test.htm',{'provinceslist':provinceslist})
