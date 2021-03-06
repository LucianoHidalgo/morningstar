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


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=80)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.BooleanField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.BooleanField()
    is_active = models.BooleanField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Carrera(models.Model):
    codigo = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=100)
    id_tipo = models.ForeignKey('TipoCarrera', models.DO_NOTHING, db_column='id_tipo', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'carrera'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.SmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


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


class RendimientoAsignatura(models.Model):
    codigo_asignatura = models.IntegerField()
    semestre = models.IntegerField()
    anio = models.IntegerField()
    promedio = models.FloatField(blank=True, null=True)
    promedio_aprobados = models.FloatField(blank=True, null=True)
    promedio_reprobados = models.FloatField(blank=True, null=True)
    aprobados = models.IntegerField(blank=True, null=True)
    reprobados = models.IntegerField(blank=True, null=True)
    convalidados = models.IntegerField(blank=True, null=True)
    inscritos = models.IntegerField(blank=True, null=True)
    promedio_laboratorio = models.FloatField(blank=True, null=True)
    promedio_aprobados_laboratorio = models.FloatField(blank=True, null=True)
    promedio_reprobados_laboratorio = models.FloatField(blank=True, null=True)
    promedio_teoria = models.FloatField(blank=True, null=True)
    promedio_aprobados_teoria = models.FloatField(blank=True, null=True)
    promedio_reprobados_teoria = models.FloatField(blank=True, null=True)
    aprobados_laboratorio = models.IntegerField(blank=True, null=True)
    reprobados_laboratorio = models.IntegerField(blank=True, null=True)
    aprobados_teoria = models.IntegerField(blank=True, null=True)
    reprobados_teoria = models.IntegerField(blank=True, null=True)
    aprobados_ejercicios = models.IntegerField(blank=True, null=True)
    reprobados_ejercicios = models.IntegerField(blank=True, null=True)
    promedio_ejercicios = models.FloatField(blank=True, null=True)
    promedio_aprobados_ejercicios = models.FloatField(blank=True, null=True)
    promedio_reprobados_ejercicios = models.FloatField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'rendimiento_asignatura'


class RendimientoCarrera(models.Model):
    codigo_carrera = models.IntegerField()
    codigo_asignatura = models.IntegerField()
    semestre = models.IntegerField()
    anio = models.IntegerField()
    promedio = models.FloatField(blank=True, null=True)
    promedio_aprobados = models.FloatField(blank=True, null=True)
    promedio_reprobados = models.FloatField(blank=True, null=True)
    aprobados = models.IntegerField(blank=True, null=True)
    reprobados = models.IntegerField(blank=True, null=True)
    convalidados = models.IntegerField(blank=True, null=True)
    inscritos = models.IntegerField(blank=True, null=True)
    promedio_laboratorio = models.FloatField(blank=True, null=True)
    promedio_aprobados_laboratorio = models.FloatField(blank=True, null=True)
    promedio_reprobados_laboratorio = models.FloatField(blank=True, null=True)
    promedio_teoria = models.FloatField(blank=True, null=True)
    promedio_aprobados_teoria = models.FloatField(blank=True, null=True)
    promedio_reprobados_teoria = models.FloatField(blank=True, null=True)
    aprobados_laboratorio = models.IntegerField(blank=True, null=True)
    reprobados_laboratorio = models.IntegerField(blank=True, null=True)
    aprobados_teoria = models.IntegerField(blank=True, null=True)
    reprobados_teoria = models.IntegerField(blank=True, null=True)
    aprobados_ejercicios = models.IntegerField(blank=True, null=True)
    reprobados_ejercicios = models.IntegerField(blank=True, null=True)
    promedio_ejercicios = models.FloatField(blank=True, null=True)
    promedio_aprobados_ejercicios = models.FloatField(blank=True, null=True)
    promedio_reprobados_ejercicios = models.FloatField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'rendimiento_carrera'


class RendimientoTipoCarrera(models.Model):
    codigo_tipo_carrera = models.IntegerField()
    codigo_asignatura = models.IntegerField()
    semestre = models.IntegerField()
    anio = models.IntegerField()
    promedio = models.FloatField(blank=True, null=True)
    promedio_aprobados = models.FloatField(blank=True, null=True)
    promedio_reprobados = models.FloatField(blank=True, null=True)
    aprobados = models.IntegerField(blank=True, null=True)
    reprobados = models.IntegerField(blank=True, null=True)
    convalidados = models.IntegerField(blank=True, null=True)
    inscritos = models.IntegerField(blank=True, null=True)
    promedio_laboratorio = models.FloatField(blank=True, null=True)
    promedio_aprobados_laboratorio = models.FloatField(blank=True, null=True)
    promedio_reprobados_laboratorio = models.FloatField(blank=True, null=True)
    promedio_teoria = models.FloatField(blank=True, null=True)
    promedio_aprobados_teoria = models.FloatField(blank=True, null=True)
    promedio_reprobados_teoria = models.FloatField(blank=True, null=True)
    aprobados_laboratorio = models.IntegerField(blank=True, null=True)
    reprobados_laboratorio = models.IntegerField(blank=True, null=True)
    aprobados_teoria = models.IntegerField(blank=True, null=True)
    reprobados_teoria = models.IntegerField(blank=True, null=True)
    aprobados_ejercicios = models.IntegerField(blank=True, null=True)
    reprobados_ejercicios = models.IntegerField(blank=True, null=True)
    promedio_ejercicios = models.FloatField(blank=True, null=True)
    promedio_aprobados_ejercicios = models.FloatField(blank=True, null=True)
    promedio_reprobados_ejercicios = models.FloatField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'rendimiento_tipo_carrera'


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
    nota_teoria = models.DecimalField(max_digits=65535, decimal_places=65535, blank=True, null=True)
    nota_laboratorio = models.DecimalField(max_digits=65535, decimal_places=65535, blank=True, null=True)
    nota_final = models.DecimalField(max_digits=65535, decimal_places=65535, blank=True, null=True)
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


class TipoCarrera(models.Model):
    nombre = models.CharField(max_length=30)
    nombre_corto = models.CharField(max_length=15)

    class Meta:
        managed = False
        db_table = 'tipo_carrera'
