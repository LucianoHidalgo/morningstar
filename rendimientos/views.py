# Create your views here.
from django.shortcuts import render
from .procesamiento.rendimientosCarrera import obtenerCarreras, obtenerDatosVistaRendimiento

from .models import Carrera
from django.views import View


def index(request):
	lista_de_carreras = obtenerCarreras()

	contenido = {
		'lista_de_carreras': lista_de_carreras,
		'carrera_nombre': "Seleccione una carrera"
		}
	return render(request, 'rendimientos/index.html', contenido)



def rendimientoCarrera(request, codigo):
	
	# Obtengo los datos de la carrera
	carreraActual = Carrera.objects.get(pk=codigo)
	#Obtengo los datos requeridos para la vista 
	# 10110 está hardcodeado por ahora y 
	# (True indica que se muestran los cursos de "Verano/Invierno")
	datosVista = obtenerDatosVistaRendimiento(codigo,10110, True)
	listaCarreras = obtenerCarreras()
	dictData = {'carrera': carreraActual, 
		'rendimientos': datosVista['rendimientos'], 
		'lista_de_carreras' : listaCarreras,
		'labels' : datosVista['plotData'][0],
		'data': datosVista['plotData'][1]
			}

	return render(request,'rendimientos/detalle.html', dictData)

