# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Asignatura(models.Model):
    codigo = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=100)
    teoria = models.IntegerField(blank=True, null=True)
    ejercicios = models.IntegerField(blank=True, null=True)
    laboratorio = models.IntegerField(blank=True, null=True)
    sct = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'asignatura'

class TipoCarrera(models.Model):

    nombre = models.CharField(max_length=30)
    nombre_corto = models.CharField(max_length=15)

    class Meta:
        managed = False
        db_table = 'tipo_carrera'

class Carrera(models.Model):
    codigo = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=100)
    id_tipo = models.ForeignKey(TipoCarrera, models.DO_NOTHING, db_column='id_tipo', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'carrera'


class CarreraAsignatura(models.Model):
    codigo_carrera = models.ForeignKey(Carrera, models.DO_NOTHING, db_column='codigo_carrera', primary_key=True)
    codigo_asignatura = models.ForeignKey(Asignatura, models.DO_NOTHING, db_column='codigo_asignatura')

    class Meta:
        managed = False
        db_table = 'carrera_asignatura'
        unique_together = (('codigo_carrera', 'codigo_asignatura'),)


class Estudiante(models.Model):
    rut = models.CharField(primary_key=True, max_length=10)
    paterno = models.CharField(max_length=50)
    materno = models.CharField(max_length=50)
    nombres = models.CharField(max_length=100)
    correo = models.CharField(max_length=50, blank=True, null=True)
    fono = models.CharField(max_length=10, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'estudiante'

class Malla(models.Model):
    codigo_carrera = models.ForeignKey(Carrera, models.DO_NOTHING, db_column='codigo_carrera')
    carrera_mencion = models.IntegerField()
    codigo_asignatura = models.ForeignKey(Asignatura, models.DO_NOTHING, db_column='codigo_asignatura')
    nivel = models.IntegerField()
    version_plan = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'malla'

class Profesor(models.Model):
    rut = models.CharField(primary_key=True, max_length=10)
    paterno = models.CharField(max_length=50)
    materno = models.CharField(max_length=50)
    nombres = models.CharField(max_length=100)
    correo = models.CharField(max_length=50, blank=True, null=True)
    fono = models.CharField(max_length=10, blank=True, null=True)
    vigente = models.NullBooleanField()

    class Meta:
        managed = False
        db_table = 'profesor'


class RendimientoCarrera(models.Model):
    codigo_carrera = models.IntegerField()
    codigo_asignatura = models.IntegerField(primary_key=True)
    semestre = models.IntegerField()
    anio = models.IntegerField()
    semestre_etiqueta = models.CharField(max_length=20, blank=True, null=True)
    promedio = models.DecimalField(max_digits=10, decimal_places=10, blank=True, null=True)
    promedio_aprobados = models.DecimalField(max_digits=10, decimal_places=10, blank=True, null=True)
    promedio_reprobados = models.DecimalField(max_digits=10, decimal_places=10, blank=True, null=True)
    aprobados = models.IntegerField(blank=True, null=True)
    reprobados = models.IntegerField(blank=True, null=True)
    inscritos = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'rendimiento_carrera'
        unique_together = (('codigo_carrera', 'codigo_asignatura', 'semestre', 'anio'),)


class Seccion(models.Model):
    codigo_asignatura = models.ForeignKey(Asignatura, models.DO_NOTHING, db_column='codigo_asignatura', blank=True, null=True)
    semestre = models.IntegerField()
    anio = models.IntegerField()
    electividad = models.IntegerField()
    letra = models.CharField(max_length=1)
    numero = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'seccion'
        unique_together = (('codigo_asignatura', 'anio', 'semestre', 'electividad', 'letra', 'numero'),)


class SeccionEstudiante(models.Model):
    id_seccion = models.ForeignKey(Seccion, models.DO_NOTHING, db_column='id_seccion', primary_key=True)
    rut_estudiante = models.ForeignKey(Estudiante, models.DO_NOTHING, db_column='rut_estudiante')
    nota_teoria = models.DecimalField(max_digits=10, decimal_places=10, blank=True, null=True)
    nota_laboratorio = models.DecimalField(max_digits=10, decimal_places=10, blank=True, null=True)
    nota_final = models.DecimalField(max_digits=10, decimal_places=10, blank=True, null=True)
    situacion_final = models.CharField(max_length=10, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'seccion_estudiante'
        unique_together = (('id_seccion', 'rut_estudiante'),)


class SeccionProfesor(models.Model):
    id_seccion = models.ForeignKey(Seccion, models.DO_NOTHING, db_column='id_seccion', primary_key=True)
    rut_profesor = models.ForeignKey(Profesor, models.DO_NOTHING, db_column='rut_profesor')
    teoria = models.NullBooleanField()
    ejercicios = models.NullBooleanField()
    laboratorio = models.NullBooleanField()

    class Meta:
        managed = False
        db_table = 'seccion_profesor'
        unique_together = (('id_seccion', 'rut_profesor'),)



