from django.shortcuts import render, get_object_or_404

# Create your views here.
from django.http import Http404


from .models import Carrera

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
		carreraActual = Carrera.objects.get(pk=codigo)
		print(carreraActual.nombre)
	except Carrera.DoesNotExist :
		raise Http404("La carrera desea no existe")
	return render(request,'rendimientos/detalle.html', {'carrera': carreraActual})

