from django.contrib.auth.mixins import LoginRequiredMixin 
from django.shortcuts import render, redirect
from django.views.generic import ListView, DetailView 
from django.views import generic

from django.shortcuts import get_object_or_404 # new

from .forms import SellingForm, SellingImageFormset, SellingAuctionForm # new
from .models import Selling, SellingImage, SellingAuction, chek # new
from django.http import HttpResponse

# Create your views here.
class SellingListView(ListView): 
    model = Selling
    template_name = 'selling_list.html' 
    login_url = 'login'
    ordering = ['-date']

class SellingDetailView(DetailView): 
    model = Selling
    template_name = 'selling_detail.html' 
    login_url = 'login'



def selling_create(request):
    template_name = 'selling_new.html'
    if request.user.is_superuser: #request.user.is_authenticated:
        if request.method == 'GET':
            sellingform = SellingForm(request.GET or None)
            formset = SellingImageFormset(queryset=SellingImage.objects.none())
        elif request.method == 'POST':
            sellingform = SellingForm(request.POST)
            formset = SellingImageFormset(request.POST, request.FILES)
            if sellingform.is_valid() and formset.is_valid():
                # first save this selling, as its reference will be used in 'SellingImage'
                Selling.author = request.user
                selling = sellingform.save()
                for form in formset:
                    # so that `selling` instance can be attached.
                    img = form.save(commit=False)
                    img.selling = selling
                    img.save()
                return redirect('/')
            
            else:
                print (selling.errors, formset.errors)

        context = {
            'sellingform' : sellingform,
            'formset' : formset,
        }
        return render(request, template_name, context)

    else:
        return redirect('/') # to redirect using url's name (be don't template .html) 

def selling_auction_create(request, pk): # new
    template_name = 'selling_auction_new.html'
    if request.user.is_authenticated:
        selling = get_object_or_404(Selling, pk=pk)
        if request.method == 'POST':
            auction_form = SellingAuctionForm(request.POST)
            if auction_form.is_valid():

                auction = auction_form.save(commit=False)

                auction.author = request.user # to track the user that created an object

                auction.selling = selling
                auction.save()
                return redirect('selling_detail', pk=selling.pk)
        else:
            auction_form = SellingAuctionForm()

        context = {
            'auction_form' : auction_form,
        }
        return render(request, template_name, context)
    
    else:
        return redirect('/')





    

    
