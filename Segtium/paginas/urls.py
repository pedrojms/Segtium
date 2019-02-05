from django.urls import path, include
from django.conf.urls import url
from . import views

urlpatterns = [
    path('',views.index),
    path('contacto/',views.contacto,name='contact'),
    path('rservicios/',views.ListarServicios,name='r-servicios'),
    path('rempresa/',views.ListarEmpresa,name='r-empresa'),
    path('rvendedor/',views.ListarVendedor,name='r-vendedor'),
]