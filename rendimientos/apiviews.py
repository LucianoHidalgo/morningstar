from django.shortcuts import render_to_response
import rendimientos.serializers.carreraSerializer as carSerializers
from .models import Carrera, TipoCarrera, RendimientoCarrera, Malla, Asignatura, RendimientoAsignatura
from rest_framework import viewsets, generics

# TESTING
from django.template import RequestContext
import django_filters.rest_framework

class AsignaturaViewSet(viewsets.ReadOnlyModelViewSet):
    queryset = Asignatura.objects.all()
    serializer_class = carSerializers.AsignaturaSerializer

class CarreraViewSet(viewsets.ReadOnlyModelViewSet):
    queryset = Carrera.objects.all()
    serializer_class = carSerializers.CarreraSerializer
    # Para manejar permisos se explica en https://youtu.be/VZ8NIoLN-yQ

class TipoCarreraViewSet(viewsets.ReadOnlyModelViewSet):
    queryset = TipoCarrera.objects.all()
    serializer_class = carSerializers.TipoCarreraSerializer

class CarrerasRelacionadasViewSet(viewsets.ReadOnlyModelViewSet):
    serializer_class = carSerializers.CarrerasRelacionadasSerializer

    def get_queryset(self):
            
            queryset_list = Carrera.objects.all()

            codigo_asignatura = self.request.query_params.get('asig', None)
            if codigo_asignatura != None :
                queryset_list = queryset_list.filter(malla__codigo_asignatura=codigo_asignatura).distinct()
            return queryset_list


class AsignaturasRelacionadasViewSet(viewsets.ReadOnlyModelViewSet):
    serializer_class = carSerializers.AsignaturasRelacionadasSerializer

    def get_queryset(self):
            
            queryset_list = Asignatura.objects.all()

            codigo_carrera = self.request.query_params.get('carr', None)
            if codigo_carrera != None :
                queryset_list = queryset_list.filter(malla__codigo_carrera=codigo_carrera).distinct()
            return queryset_list


class RendimientoAsignaturaViewSet(viewsets.ReadOnlyModelViewSet):

    serializer_class = carSerializers.RendimientoAsignaturaSerializer

    def get_queryset(self, *args, **kwargs):
        queryset_list = RendimientoAsignatura.objects.all().order_by('anio','semestre')
        codigo_asignatura = self.request.query_params.get('asig', None)
        if codigo_asignatura != None :
            queryset_list = queryset_list.filter(codigo_asignatura=codigo_asignatura)
        return queryset_list


class RendimientoAsignaturaTeoriaViewSet(viewsets.ReadOnlyModelViewSet):

    serializer_class = carSerializers.RendimientoAsignaturaTeoriaSerializer

    def get_queryset(self, *args, **kwargs):
        queryset_list = RendimientoAsignatura.objects.all().order_by('anio','semestre')
        codigo_asignatura = self.request.query_params.get('asig', None)
        if codigo_asignatura != None :
            queryset_list = queryset_list.filter(codigo_asignatura=codigo_asignatura)
        return queryset_list


class RendimientoAsignaturaLaboratorioViewSet(viewsets.ReadOnlyModelViewSet):

    serializer_class = carSerializers.RendimientoAsignaturaLaboratorioSerializer

    def get_queryset(self, *args, **kwargs):
        queryset_list = RendimientoAsignatura.objects.all().order_by('anio','semestre')
        codigo_asignatura = self.request.query_params.get('asig', None)
        if codigo_asignatura != None :
            queryset_list = queryset_list.filter(codigo_asignatura=codigo_asignatura)
        return queryset_list




class RendimientoCarreraViewSet(viewsets.ReadOnlyModelViewSet):

    serializer_class = carSerializers.RendimientoCarreraSerializer

    def get_queryset(self, *args, **kwargs):
        queryset_list = RendimientoCarrera.objects.all().order_by('anio','semestre')
        codigo_carrera = self.request.query_params.get('carr', None)
        codigo_asignatura = self.request.query_params.get('asig', None)
        if codigo_carrera != None :
            queryset_list = queryset_list.filter(codigo_carrera=codigo_carrera)
        if codigo_asignatura != None :
            queryset_list = queryset_list.filter(codigo_asignatura=codigo_asignatura)
        return queryset_list


class RendimientoCarreraTeoriaViewSet(viewsets.ReadOnlyModelViewSet):

    serializer_class = carSerializers.RendimientoCarreraTeoriaSerializer

    def get_queryset(self, *args, **kwargs):
        queryset_list = RendimientoCarrera.objects.all().order_by('anio','semestre')
        codigo_carrera = self.request.query_params.get('carr', None)
        codigo_asignatura = self.request.query_params.get('asig', None)
        if codigo_carrera != None :
            queryset_list = queryset_list.filter(codigo_carrera=codigo_carrera)
        if codigo_asignatura != None :
            queryset_list = queryset_list.filter(codigo_asignatura=codigo_asignatura)
        return queryset_list

class RendimientoCarreraLaboratorioViewSet(viewsets.ReadOnlyModelViewSet):

    serializer_class = carSerializers.RendimientoCarreraLaboratorioSerializer

    def get_queryset(self, *args, **kwargs):
        queryset_list = RendimientoCarrera.objects.all().order_by('anio','semestre')
        codigo_carrera = self.request.query_params.get('carr', None)
        codigo_asignatura = self.request.query_params.get('asig', None)
        if codigo_carrera != None :
            queryset_list = queryset_list.filter(codigo_carrera=codigo_carrera)
        if codigo_asignatura != None :
            queryset_list = queryset_list.filter(codigo_asignatura=codigo_asignatura)
        return queryset_list


