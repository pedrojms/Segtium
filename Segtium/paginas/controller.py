from .models import Empresa,Vendedor, Servicio

def ListadoEmpresa():
	model=Empresa.objects.raw('SELECT * FROM reporteempresa()')
	return model

def ListadoVendedor():
	model=Vendedor.objects.raw('SELECT * FROM reportevendedor()')
	return model

def ListadoServicio():
	model=Servicio.objects.raw('SELECT * FROM reporteservicios()')
	return model
