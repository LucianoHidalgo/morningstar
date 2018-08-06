from django.shortcuts import render_to_response
import rendimientos.serializers.carreraSerializer as carSerializers
from .models import Carrera, TipoCarrera, RendimientoCarrera
from rest_framework import viewsets, generics
from django.template import RequestContext

import django_filters.rest_framework


class CarreraViewSet(viewsets.ModelViewSet):
    queryset = Carrera.objects.all()
    serializer_class = carSerializers.CarreraSerializer
    # Para manejar permisos se explica en https://youtu.be/VZ8NIoLN-yQ



class RendimientoCarreraViewSet(viewsets.ModelViewSet):
    queryset = RendimientoCarrera.objects.all()
    serializer_class = carSerializers.RendimientoCarreraSerializer


class TipoCarreraViewSet(viewsets.ModelViewSet):
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
