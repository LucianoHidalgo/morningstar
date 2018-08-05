from rest_framework import serializers
from rendimientos.models import Carrera, TipoCarrera, RendimientoCarrera


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
        fields = ('url','codigo','nombre','id_tipo')


class RendimientoCarreraSerializer(serializers.ModelSerializer):

    class Meta :
        model = RendimientoCarrera 
        fields = '__all__'