
from rendimientos.models import Carrera, RendimientoCarrera
from rendimientos.utilities.utilities import obtenerDatosGraficoPromedio

def obtenerCarreras():
    lista_de_carreras = Carrera.objects.order_by('codigo')
    return lista_de_carreras

def obtenerRendimientos(codCarrerra, codAsignatura, incluyeIntensivo):
    rendimientos = RendimientoCarrera.objects.filter(codigo_carrera=codCarrerra)
    rendimientos = rendimientos.filter(codigo_asignatura=codAsignatura)
    rendimientos = rendimientos.exclude(inscritos=0)
    if not incluyeIntensivo :
        rendimientos = rendimientos.exclude(semestre=3)
        rendimientos = rendimientos.exclude(semestre=4)
           
    return rendimientos

def obtenerDatosVistaRendimiento(codCarrera,codAsignatura,incluyeIntensivo):
    rendimientos = obtenerRendimientos(codCarrera,codAsignatura,incluyeIntensivo)
    datosGrafico = obtenerDatosGraficoPromedio(rendimientos)
    return {'rendimientos': rendimientos, 'plotData': datosGrafico}


    
