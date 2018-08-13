from django.urls import re_path, include, path
from . import views

from . import apiviews
from rest_framework import routers

router = routers.DefaultRouter()
router.register(r'asignatura',apiviews.AsignaturaViewSet, base_name='asignatura')
router.register(r'carrera',apiviews.CarreraViewSet, base_name='carrera')
router.register(r'rendimiento-asignatura', apiviews.RendimientoAsignaturaViewSet, base_name='rendimiento_asignatura')
router.register(r'rendimiento-asignatura-teoria', apiviews.RendimientoAsignaturaTeoriaViewSet, base_name='rendimiento_asignatura_teoria')
router.register(r'rendimiento-asignatura-laboratorio', apiviews.RendimientoAsignaturaLaboratorioViewSet, base_name='rendimiento_asignatura_laboratorio')

router.register(r'rendimiento-carrera', apiviews.RendimientoCarreraViewSet, base_name='rendimiento_carrera')
router.register(r'rendimiento-carrera-teoria', apiviews.RendimientoCarreraTeoriaViewSet, base_name='rendimiento_carrera_teoria')
router.register(r'rendimiento-carrera-laboratorio', apiviews.RendimientoCarreraLaboratorioViewSet, base_name='rendimiento_carrera_laboratorio')
router.register(r'carreras-relacionadas',apiviews.CarrerasRelacionadasViewSet, base_name='carreras')
router.register(r'tipo-carrera', apiviews.TipoCarreraViewSet)
router.register(r'asignaturas-relacionadas', apiviews.AsignaturasRelacionadasViewSet, base_name='asignaturas' )


urlpatterns = [
    path('', views.index, name='index'),
    path('<int:codigo>/', views.rendimientoCarrera, {'soloregulares': True}, name='detalle'),
    path('<int:codigo>/1', views.rendimientoCarrera , {'soloregulares': False},name='detallefiltrado'),
   re_path(r'^api/', include(router.urls)),
]