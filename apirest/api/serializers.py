from rest_framework import serializers
from . import models

class ServiciosSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Servicio
        fields = ("id",'nombre','descripcion')


