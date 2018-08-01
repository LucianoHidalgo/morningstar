from django.shortcuts import render, get_object_or_404

# Create your views here.
from django.http import Http404

from .models import Carrera, RendimientoCarrera

from .procesamiento.rendimientosCarrera import obtenerCarreras, obtenerDatosVistaRendimiento


def index(request):
	lista_de_carreras = obtenerCarreras()

	contenido = {
		'lista_de_carreras': lista_de_carreras,
		}

	return render(request, 'rendimientos/index.html', contenido)



def rendimientoCarrera(request, codigo):
	try:
		# Obtengo los datos de la carrera
		carreraActual = Carrera.objects.get(pk=codigo)
		#Obtengo los datos requeridos para la vista 
		# 10110 está hardcodeado por ahora y 
		# (True indica que se muestran los cursos de "Verano/Invierno")
		datosVista = obtenerDatosVistaRendimiento(codigo,10110, True)

		dictData = {'carrera': carreraActual, 
			'rendimientos': datosVista['rendimientos'], 
			'labels' : datosVista['plotData'][0],
			'data': datosVista['plotData'][1]
			 }

	except Carrera.DoesNotExist :
		raise Http404("La carrera desea no existe")
	return render(request,'rendimientos/detalle.html', dictData)

