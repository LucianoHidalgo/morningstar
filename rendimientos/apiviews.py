from django.shortcuts import render_to_response
from rendimientos.serializers.carreraSerializer import CarreraSerializer, TipoCarreraSerializer
from .models import Carrera, TipoCarrera
from rest_framework import viewsets

from django.template import RequestContext

def index(request):
    return render_to_response('testAngular/indexTest.html', RequestContext(request))


class CarreraViewSet(viewsets.ModelViewSet):
    queryset = Carrera.objects.all()
    serializer_class = CarreraSerializer
    # Para manejar permisos se explica en https://youtu.be/VZ8NIoLN-yQ

class TipoCarreraViewSet(viewsets.ModelViewSet):
    queryset = TipoCarrera.objects.all()
    for e in queryset :
        print(e)
    serializer_class = TipoCarreraSerializer

