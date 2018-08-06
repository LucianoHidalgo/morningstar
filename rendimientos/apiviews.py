from django.shortcuts import render_to_response
import rendimientos.serializers.carreraSerializer as carSerializers
from .models import Carrera, TipoCarrera, RendimientoCarrera
from rest_framework import viewsets, generics

# TESTING
from django.template import RequestContext
import django_filters.rest_framework



class CarreraViewSet(viewsets.ReadOnlyModelViewSet):
    queryset = Carrera.objects.all()
    serializer_class = carSerializers.CarreraSerializer
    # Para manejar permisos se explica en https://youtu.be/VZ8NIoLN-yQ



class RendimientoCarreraViewSet(viewsets.ReadOnlyModelViewSet):

    serializer_class = carSerializers.RendimientoCarreraSerializer

    def get_queryset(self, *args, **kwargs):
        queryset_list = RendimientoCarrera.objects.all()
        codigo_carrera = self.request.query_params.get('carr', None)
        codigo_asignatura = self.request.query_params.get('asig', None)
        if codigo_carrera != None :
            queryset_list = queryset_list.filter(codigo_carrera=codigo_carrera)
        if codigo_asignatura != None :
            queryset_list = queryset_list.filter(codigo_asignatura=codigo_asignatura)
        return queryset_list


class TipoCarreraViewSet(viewsets.ReadOnlyModelViewSet):
    queryset = TipoCarrera.objects.all()
    serializer_class = carSerializers.TipoCarreraSerializer



'''
class RendimientoCarreraViewSet(viewsets.ViewSet):
    def list(self, request):
        queryset = RendimientoCarrera.objects.all()
        serializer = carSerializers.RendimientoCarreraSerializer(queryset, many=True)
        filter_backends = (DjangoFilterBackend)
        filter_fields =('codigo_carrera', 'codigo_asignatura')
        return Response(serializer.data)   
'''   
