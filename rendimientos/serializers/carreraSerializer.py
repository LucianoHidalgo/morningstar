from rest_framework import serializers
from rendimientos.models import Carrera, TipoCarrera, RendimientoCarrera, Asignatura


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

class AsignaturaSerializer(serializers.HyperlinkedModelSerializer):

    class Meta :
        model = Asignatura
        fields = ('url', 'codigo', 'nombre', 'teoria', 'ejercicios', 'laboratorio', 'sct')
    
class RendimientoCarreraSerializer(serializers.ModelSerializer):
    
    promedio = serializers.DecimalField(max_digits=10, decimal_places=2, coerce_to_string=False)
    promedio_aprobados = serializers.DecimalField(max_digits=10, decimal_places=2, coerce_to_string=False)
    promedio_reprobados = serializers.DecimalField(max_digits=10, decimal_places=2, coerce_to_string=False)
    class Meta :
        model = RendimientoCarrera 
        fields = '__all__'

class CarrerasRelacionadasSerializer(serializers.ModelSerializer):
    class Meta :
        model = Carrera 
        fields = '__all__'


class AsignaturasRelacionadasSerializer(serializers.ModelSerializer):
    class Meta :
        model = Asignatura
        fields = '__all__'


'''
class RendimientoCarreraSerializer(serializers.Serializer):
    codigo_carrera = serializers.IntegerField()
    codigo_asignatura = serializers.IntegerField()
    semestre = serializers.IntegerField()
    anio = serializers.IntegerField()
    semestre_etiqueta = serializers.CharField(max_length=20, allow_null=True)
    aprobados = serializers.IntegerField(allow_null=True)
    reprobados = serializers.IntegerField(allow_null=True)
    inscritos = serializers.IntegerField(allow_null=True)
    promedio = serializers.DecimalField(max_digits=10, decimal_places=2, coerce_to_string=False)
    promedio_aprobados = serializers.DecimalField(max_digits=10, decimal_places=2, coerce_to_string=False)
    promedio_reprobados = serializers.DecimalField(max_digits=10, decimal_places=2, coerce_to_string=False)
    

''' 