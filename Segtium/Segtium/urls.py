"""Segtium URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.conf.urls import url
from django.urls import path,include
from paginas import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('',include('paginas.urls')),
    #path('',views.index),
    #path('contacto/',views.contacto)
    path('',views.index,name='home'),
    path('somos/',views.somos, name='somos'),
    url(r'^hacemos/(?P<dato>\d+)',views.servicios,name='servicios'),
    #path('contactenos.html',views.contacto),
    path('noticias/',views.noticias,name='noticias'),
    path('carrito/',views.carrito,name='carrito'),
    
    #path('',views.contacto)
]
