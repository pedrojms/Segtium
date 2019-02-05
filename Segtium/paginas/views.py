from django.shortcuts import render
from .forms import Contactenos

# Create your views here.
from django.http import HttpResponse 
from django.template import loader 
from django.views.decorators.csrf import csrf_exempt
from django.core.mail import send_mail
from .controller import ListadoEmpresa, ListadoVendedor, ListadoServicio

@csrf_exempt 
def index(request): 
   
   template = loader.get_template('index.html') 
   return HttpResponse(template.render()) 

def somos(request):
	template = loader.get_template('somos.html') 
	return HttpResponse(template.render())

def servicios(request,dato):
  data=ElemInd("servicios",dato)
  context={'servicio':data}
  return render(request, 'hacemos.html', context)
	#template = loader.get_template('hacemos.html') 
	#return HttpResponse(template.render()) 

def carrito(request):
  template = loader.get_template('carrito.html') 
  return HttpResponse(template.render()) 

def contacto(request):
   if request.method == 'POST':
        #will handle the request later
      print("POST")

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
	template = loader.get_template('noticias.html') 
	return HttpResponse(template.render())

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

