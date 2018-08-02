from rest_framework import serializers
from rendimientos.models import Carrera, TipoCarrera, RendimientoCarrera

# PARA PRIVILEGIOS
from django.contrib.auth.models import User

class TipoCarreraSerializer(serializers.ModelSerializer):

    class Meta:
        model = TipoCarrera
        fields = 'url', 'nombre', 'nombre_corto'

class CarreraSerializer(serializers.HyperlinkedModelSerializer):
    id_tipo = serializers.SlugRelatedField(
        many=False,
        read_only=True,
        slug_field='id'
     )
    class Meta:
        model = Carrera
        fields = '__all__'


class RendimientoCarreraSerializer(serializers.ModelSerializer):

    class Meta :
        model = RendimientoCarrera 
        fields = '__all__'