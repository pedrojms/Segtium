from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse 
from django.template import loader 
from django.views.decorators.csrf import csrf_exempt 
 
@csrf_exempt 
def index(request): 
   
   template = loader.get_template('index.html') 
   return HttpResponse(template.render()) 

def contacto(request):
   print()