from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('<int:codigo>/', views.rendimientoCarrera, {'soloregulares': True}, name='detalle'),
    path('<int:codigo>/1', views.rendimientoCarrera , {'soloregulares': False},name='detallefiltrado'),
]