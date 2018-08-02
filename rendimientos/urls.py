from django.urls import path, include
from . import views

from . import apiviews
from rest_framework import routers

router = routers.DefaultRouter()
router.register('carrera',apiviews.CarreraViewSet)
router.register('tipo_carrera', apiviews.TipoCarreraViewSet)

urlpatterns = [
    path('', views.index, name='index'),
    path('<int:codigo>/', views.rendimientoCarrera, {'soloregulares': True}, name='detalle'),
    path('<int:codigo>/1', views.rendimientoCarrera , {'soloregulares': False},name='detallefiltrado'),
    path('api/', include(router.urls)),
]