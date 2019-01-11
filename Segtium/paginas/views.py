from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse 
from django.template import loader 
from django.views.decorators.csrf import csrf_exempt 
 
@csrf_exempt 
def index(request): 
   
   template = loader.get_template('index.html') 
   return HttpResponse(template.render()) 

def somos(request):
	template = loader.get_template('somos.html') 
	return HttpResponse(template.render())

def servicios(request):
	template = loader.get_template('hacemos.html') 
	return HttpResponse(template.render()) 

def contacto(request):
	template = loader.get_template('contactenos.html') 
	return HttpResponse(template.render())

def noticias(request):
	template = loader.get_template('noticias.html') 
	return HttpResponse(template.render())