from .models import Empresa,Vendedor, Servicio,Beneficios,Noticias
import requests,json

def ListadoEmpresa():
	model=Empresa.objects.raw('SELECT * FROM reporteempresa()')
	return model

def ListadoVendedor():
	model=Vendedor.objects.raw('SELECT * FROM reportevendedor()')
	return model

def ListadoServicio():
	model=Servicio.objects.raw('SELECT * FROM reporteservicios()')
	return model

def ServiciosCon(entidad):
	model=Servicio.objects.raw("SELECT ps.id, ps.nombre, ps.descripcion FROM paginas_servicio ps WHERE ps.nombre='"+entidad+"'")
	return model


def BeneficiosCon(entidad):
	model=Beneficios.objects.raw("SELECT pb.id ,pb.descripcion FROM paginas_servicio ps ,paginas_beneficios pb WHERE ps.id=pb.servicio_id_id and ps.nombre='"+entidad+"'")
	return model


def ListarNoticias(entidad):
  response = requests.get('http://127.0.0.1:8001/'+entidad+'/')
  data = response.json()
  return data

def ElemInd(entidad,dato):
  response = requests.get('http://127.0.0.1:8001/'+entidad+'/'+dato+'/')
  data = response.json()
  return data

def Edit(dato,registro):
  response=requests.put('http://127.0.0.1:8001/noticias/'+dato+"/",registro)
  return response

def Add(registro):
  response=requests.post('http://127.0.0.1:8001/noticias/',registro)
  return response

def Delete(dato):
  response=requests.delete('http://127.0.0.1:8001/noticias/'+dato+"/")
  return response