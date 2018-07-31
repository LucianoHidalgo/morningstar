from django.shortcuts import render, get_object_or_404

# Create your views here.
from django.http import Http404

from .utilities import obtenerDatosGraficoPromedio


from .models import Carrera, RendimientoCarrera

def index(request):
	lista_de_carreras = Carrera.objects.order_by('codigo')

	contenido = {
		'lista_de_carreras': lista_de_carreras,
		}

	return render(request, 'rendimientos/index.html', contenido)
'''
def rendimientoCarrera(request, cod_carrera):
	carrera = get_object_or_404(Carrera, pk=cod_carrera)
	print(carrera.cod_carrera)
	
	return render(request,'rendimientos/detalle.html', {'carrera': carrera})

'''
def rendimientoCarrera(request, codigo):
	try:
		# Obtengo los datos de la carrera
		carreraActual = Carrera.objects.get(pk=codigo)
		# Obtengo los rendimientos de la carrera
		rendimientos = RendimientoCarrera.objects.filter(codigo_carrera=codigo)
		# Obtengo los rendimientos de la asignatura para la carrera en particular 
		# Hardcodeado a la 10110 hasta ahora
		rendimientos = rendimientos.filter(codigo_asignatura=10110)
		
		data = obtenerDatosGraficoPromedio(rendimientos)
		dictData = {'carrera': carreraActual, 
			'rendimientos': rendimientos, 
			'labels' : data[0],
			'data': data[1]
			 }

	except Carrera.DoesNotExist :
		raise Http404("La carrera desea no existe")
	return render(request,'rendimientos/detalle.html', dictData)

