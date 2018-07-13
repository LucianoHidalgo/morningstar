from django.contrib import admin

# Register your models here.

from .models import Carrera, Asignatura, Rendimiento, Semestre


admin.site.register(Carrera)
admin.site.register(Asignatura)
admin.site.register(Rendimiento)
admin.site.register(Semestre)