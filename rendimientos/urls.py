from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('<int:cod_carrera>', views.rendimientoCarrera, name="detalle"),
]