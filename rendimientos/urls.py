from django.urls import re_path, include, path
from . import views

from . import apiviews
from rest_framework import routers

router = routers.DefaultRouter()
router.register(r'carrera',apiviews.CarreraViewSet)
router.register(r'rendimiento_carrera', apiviews.RendimientoCarreraViewSet, base_name='rendimiento_carrera')
router.register(r'tipo_carrera', apiviews.TipoCarreraViewSet)


urlpatterns = [
    path('', views.index, name='index'),
    path('<int:codigo>/', views.rendimientoCarrera, {'soloregulares': True}, name='detalle'),
    path('<int:codigo>/1', views.rendimientoCarrera , {'soloregulares': False},name='detallefiltrado'),
   re_path(r'^api/', include(router.urls)),
]