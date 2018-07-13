from django.db import models

# Create your models here.
class Carrera(models.Model) :
	TIPOS = (
		('CIVIL', 'CIVIL'),
		('EJECUCION', 'EJECUCION'),
		('5 AÑOS', '5 AÑOS'),
		)
	cod_carrera = models.PositiveIntegerField(primary_key=True,
					verbose_name="Codigo de carrera en sistema",
					)
	nom_carrera = models.CharField(max_length=50,
					verbose_name="Nombre de la carrera"
		)
	tipo_carrera = models.CharField(max_length=10, 
					choices=TIPOS,
					verbose_name="Tipo de carrera"
					)


class Semestre(models.Model) :
	num_semestre = models.PositiveIntegerField(
					verbose_name="Numero del semestre"
					)
	anio_semestre = models.PositiveIntegerField(
					verbose_name="Anio"
					)

class Asignatura(models.Model):
	cod_asignatura = models.PositiveIntegerField(primary_key=True,
					verbose_name ="Codigo de la asignatura"
					)
	nom_asignatura = models.CharField(max_length=100,
					verbose_name="Nombre de la asignatura"
					)

class Rendimiento(models.Model):
	cod_asignatura = models.PositiveIntegerField()
	num_semestre = models.PositiveIntegerField()
	anio_semestre = models.PositiveIntegerField()
	promedio_rendimiento = models.DecimalField(max_digits=4, decimal_places=2)
	aprobados_rendimiento = models.PositiveIntegerField()
	reprobados_rendimiento = models.PositiveIntegerField()

