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

class RendimientoCarreraCompletoSerializer(serializers.ModelSerializer):
   
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


class RendimientoCarreraSerializer(serializers.Serializer):
    codigo_carrera = serializers.IntegerField()
    codigo_asignatura = serializers.IntegerField()
    semestre = serializers.IntegerField()
    anio = serializers.IntegerField()
    promedio = serializers.FloatField(max_value=None, min_value=None)
    promedio_aprobados = serializers.FloatField(max_value=None, min_value=None)
    promedio_reprobados = serializers.FloatField(max_value=None, min_value=None)
    aprobados = serializers.IntegerField(allow_null=True)
    reprobados = serializers.IntegerField(allow_null=True)
    convalidados = serializers.IntegerField(allow_null=True)
    inscritos = serializers.IntegerField(allow_null=True)
    
class RendimientoCarreraTeoriaSerializer(serializers.Serializer):
    codigo_carrera = serializers.IntegerField()
    codigo_asignatura = serializers.IntegerField()
    semestre = serializers.IntegerField()
    anio = serializers.IntegerField()
    promedio = serializers.FloatField(source='promedio_teoria',max_value=None, min_value=None)
    promedio_aprobados = serializers.FloatField(source='promedio_aprobados_teoria', max_value=None, min_value=None)
    promedio_reprobados = serializers.FloatField(source='promedio_reprobados_teoria', max_value=None, min_value=None)
    aprobados = serializers.IntegerField(source='aprobados_teoria',allow_null=True)
    reprobados = serializers.IntegerField(source='reprobados_teoria',allow_null=True)

class RendimientoCarreraLaboratorioSerializer(serializers.Serializer):
    codigo_carrera = serializers.IntegerField()
    codigo_asignatura = serializers.IntegerField()
    semestre = serializers.IntegerField()
    anio = serializers.IntegerField()
    promedio = serializers.FloatField(source='promedio_laboratorio',max_value=None, min_value=None)
    promedio_aprobados = serializers.FloatField(source='promedio_aprobados_laboratorio', max_value=None, min_value=None)
    promedio_reprobados = serializers.FloatField(source='promedio_reprobados_laboratorio', max_value=None, min_value=None)
    aprobados = serializers.IntegerField(source='aprobados_laboratorio',allow_null=True)
    reprobados = serializers.IntegerField(source='reprobados_laboratorio',allow_null=True)