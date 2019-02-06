from django.shortcuts import render
from .forms import Contactenos

# Create your views here.
from django.http import HttpResponse 
from django.template import loader 
from django.views.decorators.csrf import csrf_exempt
from django.core.mail import send_mail
from .controller import ListadoEmpresa, ListadoVendedor, ListadoServicio,ServiciosCon,BeneficiosCon


from django.shortcuts import render, render_to_response 
from django.template.context_processors import csrf 
from .utility import * 
from django.contrib.auth import login as auth_login 
from django.contrib.auth import authenticate 
from django.http import HttpResponseRedirect 
from django.urls import reverse 
from django.contrib.auth.decorators import login_required



@csrf_exempt 
def index(request):
  template = loader.get_template('index.html') 
  return HttpResponse(template.render()) 


def somos(request):
  #template = loader.get_template('somos.html') 
  #return HttpResponse(template.render())
  dictionary = dict(request=request) 
  dictionary.update(csrf(request)) 
  return render(request,'somos.html', dictionary) 

def servicios(request,dato):
  iden='Ethical Hacking'
  if(dato=="1"):
    iden='Análisis de Cyberseguridad'
  if(dato=="2"):
    iden='Consultoría ISO 27001'
  if(dato=="3"):
    iden='Ethical Hacking'
  if(dato=="4"):
    iden='Análisis de Código'
  model=ServiciosCon(iden)
  bene=BeneficiosCon(iden)  
  context = {'servicios':model,'beneficios':bene}
  return render(request,'hacemos.html',context)
  #template = loader.get_template('hacemos.html') 
  #return HttpResponse(template.render()) 

def carrito(request):
  #template = loader.get_template('carrito.html') 
  #return HttpResponse(template.render())
  dictionary = dict(request=request) 
  dictionary.update(csrf(request)) 
  return render(request,'carrito.html', dictionary) 
 

def perfil(request):
  dictionary = dict(request=request) 
  dictionary.update(csrf(request)) 
  return render(request,'perfil.html', dictionary)

def contacto(request):
  if request.method == 'POST':
      #will handle the request later
    print(request.method,"contacto")

  form = Contactenos(request.POST)

  #checking the form is valid or not
  if form.is_valid():
    nombre=form.cleaned_data['firstname']
    apellido=form.cleaned_data['lastname']
    correo=form.cleaned_data['email']
    empresa=form.cleaned_data['company']
    cargo=form.cleaned_data['cargoem']
    tele=form.cleaned_data['phone']
    ciudad=form.cleaned_data['city']
    mensaje=form.cleaned_data['mensaje']

        

    doc="Nombre: "+nombre+"\nApellido: "+apellido+"\nCorreo: "+correo+"\nEmpresa: "+empresa+"\nCargo en la Empresa: "+cargo+"\nTelefono: "+tele+"\nCiudad: "+ciudad+"\nMensaje: "+mensaje

    send_mail('Formulario', doc, 
    'netflixvtvm@gmail.com',['isatatianavinces@gmail.com'], fail_silently=False)
    #return render(request, 'index.html')
    #if valid rendering new view with values
    form = Contactenos()
      #returning form
    return render(request, 'contactenos2.html', {'form':form});


  else:
    #creating a new form
    form = Contactenos()
      #returning form
    return render(request, 'contactenos2.html', {'form':form});


def noticias(request):
  dictionary = dict(request=request) 
  dictionary.update(csrf(request)) 
  return render(request,'noticias.html', dictionary) 

def ListarServicios(request):
  model=ListadoServicio()
  context = {'object_list':model}
  return render(request,'rservicios.html',context)

def ListarEmpresa(request):
  model=ListadoEmpresa()
  context = {'object_list':model}
  return render(request,'rempresas.html',context)

def ListarVendedor(request):
  model=ListadoVendedor()
  context = {'object_list':model}
  return render(request,'rvendedor.html',context)




def main_base_view(request): 
    print(request.method,"<<<<<<<<<<")
    dictionary = dict(request=request) 
    dictionary.update(csrf(request)) 
    return render(request,'index.html', dictionary)   

def login(request): 
    print(request.method,"<<<<<<<<<<")
    if request.method == 'POST': 
        username = request.POST['u'] 
        password = request.POST['p'] 
        user = authenticate(username=username, password=password)
        print(username,"<<<<<<<<")
        if user is not None:
            auth_login(request=request, user=user)
            return HttpResponseRedirect(reverse('main_base'))
        else: 
            msg_to_html = custom_message('Invalid Credentials', TagType.danger) 
            dictionary = dict(request=request, messages = msg_to_html) 
            dictionary.update(csrf(request))
        return render(request,'index.html', dictionary)