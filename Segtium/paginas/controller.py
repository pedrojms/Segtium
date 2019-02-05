from .models import Empresa,Vendedor, Servicio,Beneficios

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