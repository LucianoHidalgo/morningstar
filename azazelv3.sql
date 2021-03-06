PGDMP     1    &        	        v            azazel    10.3    10.3 �    X	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            Y	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            Z	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            [	           1262    36863    azazel    DATABASE     �   CREATE DATABASE azazel WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Chile.1252' LC_CTYPE = 'Spanish_Chile.1252';
    DROP DATABASE azazel;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            \	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3            ]	           0    0    SCHEMA public    ACL     *   GRANT ALL ON SCHEMA public TO djangouser;
                  postgres    false    3                        3079    12278    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            ^	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    37029 
   asignatura    TABLE     �   CREATE TABLE public.asignatura (
    codigo integer NOT NULL,
    nombre character varying(100) NOT NULL,
    teoria integer,
    ejercicios integer,
    laboratorio integer,
    sct integer
);
    DROP TABLE public.asignatura;
       public         postgres    false    3            _	           0    0    TABLE asignatura    ACL     4   GRANT ALL ON TABLE public.asignatura TO djangouser;
            public       postgres    false    197            �            1259    37162 
   auth_group    TABLE     e   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public      
   djangouser    false    3            �            1259    37160    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public    
   djangouser    false    214    3            `	           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public    
   djangouser    false    213            �            1259    37172    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public      
   djangouser    false    3            �            1259    37170    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public    
   djangouser    false    3    216            a	           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public    
   djangouser    false    215            �            1259    37154    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public      
   djangouser    false    3            �            1259    37152    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public    
   djangouser    false    3    212            b	           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public    
   djangouser    false    211            �            1259    37180 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public      
   djangouser    false    3            �            1259    37190    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public      
   djangouser    false    3            �            1259    37188    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public    
   djangouser    false    3    220            c	           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public    
   djangouser    false    219            �            1259    37178    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public    
   djangouser    false    3    218            d	           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public    
   djangouser    false    217            �            1259    37198    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public      
   djangouser    false    3            �            1259    37196 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public    
   djangouser    false    3    222            e	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public    
   djangouser    false    221            �            1259    37024    carrera    TABLE     ~   CREATE TABLE public.carrera (
    codigo integer NOT NULL,
    nombre character varying(100) NOT NULL,
    id_tipo integer
);
    DROP TABLE public.carrera;
       public         postgres    false    3            f	           0    0    TABLE carrera    ACL     1   GRANT ALL ON TABLE public.carrera TO djangouser;
            public       postgres    false    196            �            1259    37258    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public      
   djangouser    false    3            �            1259    37256    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public    
   djangouser    false    224    3            g	           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public    
   djangouser    false    223            �            1259    37144    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public      
   djangouser    false    3            �            1259    37142    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public    
   djangouser    false    3    210            h	           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public    
   djangouser    false    209            �            1259    37133    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public      
   djangouser    false    3            �            1259    37131    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public    
   djangouser    false    208    3            i	           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public    
   djangouser    false    207            �            1259    37321    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public      
   djangouser    false    3            �            1259    37084 
   estudiante    TABLE       CREATE TABLE public.estudiante (
    rut character varying(10) NOT NULL,
    paterno character varying(50) NOT NULL,
    materno character varying(50) NOT NULL,
    nombres character varying(100) NOT NULL,
    correo character varying(50),
    fono character varying(10)
);
    DROP TABLE public.estudiante;
       public         postgres    false    3            j	           0    0    TABLE estudiante    ACL     4   GRANT ALL ON TABLE public.estudiante TO djangouser;
            public       postgres    false    202            �            1259    37345    malla    TABLE     �   CREATE TABLE public.malla (
    codigo_carrera integer NOT NULL,
    carrera_mencion integer NOT NULL,
    codigo_asignatura integer NOT NULL,
    nivel integer NOT NULL,
    version_plan integer NOT NULL
);
    DROP TABLE public.malla;
       public         postgres    false    3            k	           0    0    TABLE malla    ACL     /   GRANT ALL ON TABLE public.malla TO djangouser;
            public       postgres    false    228            �            1259    37064    profesor    TABLE     %  CREATE TABLE public.profesor (
    rut character varying(10) NOT NULL,
    paterno character varying(50) NOT NULL,
    materno character varying(50) NOT NULL,
    nombres character varying(100) NOT NULL,
    correo character varying(50),
    fono character varying(10),
    vigente boolean
);
    DROP TABLE public.profesor;
       public         postgres    false    3            l	           0    0    TABLE profesor    ACL     2   GRANT ALL ON TABLE public.profesor TO djangouser;
            public       postgres    false    200            �            1259    37121    rendimiento_carrera    TABLE     }  CREATE TABLE public.rendimiento_carrera (
    codigo_carrera integer NOT NULL,
    codigo_asignatura integer NOT NULL,
    semestre integer NOT NULL,
    anio integer NOT NULL,
    semestre_etiqueta character varying(20),
    promedio numeric,
    promedio_aprobados numeric,
    promedio_reprobados numeric,
    aprobados integer,
    reprobados integer,
    inscritos integer
);
 '   DROP TABLE public.rendimiento_carrera;
       public         postgres    false    3            m	           0    0    TABLE rendimiento_carrera    ACL     =   GRANT ALL ON TABLE public.rendimiento_carrera TO djangouser;
            public       postgres    false    206            �            1259    37286    rendimientos_asignatura    TABLE     �   CREATE TABLE public.rendimientos_asignatura (
    cod_asignatura integer NOT NULL,
    nom_asignatura character varying(100) NOT NULL,
    CONSTRAINT rendimientos_asignatura_cod_asignatura_check CHECK ((cod_asignatura >= 0))
);
 +   DROP TABLE public.rendimientos_asignatura;
       public      
   djangouser    false    3            �            1259    37292    rendimientos_carrera    TABLE       CREATE TABLE public.rendimientos_carrera (
    cod_carrera integer NOT NULL,
    nom_carrera character varying(50) NOT NULL,
    tipo_carrera character varying(10) NOT NULL,
    CONSTRAINT rendimientos_carrera_cod_carrera_check CHECK ((cod_carrera >= 0))
);
 (   DROP TABLE public.rendimientos_carrera;
       public      
   djangouser    false    3            �            1259    37051    seccion    TABLE     �   CREATE TABLE public.seccion (
    id integer NOT NULL,
    codigo_asignatura integer,
    semestre integer NOT NULL,
    anio integer NOT NULL,
    electividad integer NOT NULL,
    letra character varying(1) NOT NULL,
    numero integer NOT NULL
);
    DROP TABLE public.seccion;
       public         postgres    false    3            n	           0    0    TABLE seccion    ACL     1   GRANT ALL ON TABLE public.seccion TO djangouser;
            public       postgres    false    199            �            1259    37089    seccion_estudiante    TABLE     �   CREATE TABLE public.seccion_estudiante (
    id_seccion integer NOT NULL,
    rut_estudiante character varying(10) NOT NULL,
    nota_teoria numeric,
    nota_laboratorio numeric,
    nota_final numeric,
    situacion_final character varying(10)
);
 &   DROP TABLE public.seccion_estudiante;
       public         postgres    false    3            o	           0    0    TABLE seccion_estudiante    ACL     <   GRANT ALL ON TABLE public.seccion_estudiante TO djangouser;
            public       postgres    false    203            �            1259    37049    seccion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.seccion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.seccion_id_seq;
       public       postgres    false    3    199            p	           0    0    seccion_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.seccion_id_seq OWNED BY public.seccion.id;
            public       postgres    false    198            �            1259    37069    seccion_profesor    TABLE     �   CREATE TABLE public.seccion_profesor (
    id_seccion integer NOT NULL,
    rut_profesor character varying(10) NOT NULL,
    teoria boolean,
    ejercicios boolean,
    laboratorio boolean
);
 $   DROP TABLE public.seccion_profesor;
       public         postgres    false    3            q	           0    0    TABLE seccion_profesor    ACL     :   GRANT ALL ON TABLE public.seccion_profesor TO djangouser;
            public       postgres    false    201            �            1259    37109    tipo_carrera    TABLE     �   CREATE TABLE public.tipo_carrera (
    id integer NOT NULL,
    nombre character varying(30) NOT NULL,
    nombre_corto character varying(15) NOT NULL
);
     DROP TABLE public.tipo_carrera;
       public         postgres    false    3            r	           0    0    TABLE tipo_carrera    ACL     6   GRANT ALL ON TABLE public.tipo_carrera TO djangouser;
            public       postgres    false    205            �            1259    37107    tipo_carrera_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_carrera_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tipo_carrera_id_seq;
       public       postgres    false    3    205            s	           0    0    tipo_carrera_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tipo_carrera_id_seq OWNED BY public.tipo_carrera.id;
            public       postgres    false    204            [           2604    37165    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public    
   djangouser    false    213    214    214            \           2604    37175    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public    
   djangouser    false    216    215    216            Z           2604    37157    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public    
   djangouser    false    212    211    212            ]           2604    37183    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public    
   djangouser    false    218    217    218            ^           2604    37193    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public    
   djangouser    false    220    219    220            _           2604    37201    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public    
   djangouser    false    221    222    222            `           2604    37261    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public    
   djangouser    false    223    224    224            Y           2604    37147    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public    
   djangouser    false    210    209    210            X           2604    37136    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public    
   djangouser    false    207    208    208            V           2604    37127 
   seccion id    DEFAULT     h   ALTER TABLE ONLY public.seccion ALTER COLUMN id SET DEFAULT nextval('public.seccion_id_seq'::regclass);
 9   ALTER TABLE public.seccion ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            W           2604    37128    tipo_carrera id    DEFAULT     r   ALTER TABLE ONLY public.tipo_carrera ALTER COLUMN id SET DEFAULT nextval('public.tipo_carrera_id_seq'::regclass);
 >   ALTER TABLE public.tipo_carrera ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    205    205            6	          0    37029 
   asignatura 
   TABLE DATA               Z   COPY public.asignatura (codigo, nombre, teoria, ejercicios, laboratorio, sct) FROM stdin;
    public       postgres    false    197   ��       G	          0    37162 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public    
   djangouser    false    214   ��       I	          0    37172    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public    
   djangouser    false    216   ��       E	          0    37154    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public    
   djangouser    false    212   �       K	          0    37180 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public    
   djangouser    false    218   �       M	          0    37190    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public    
   djangouser    false    220   4�       O	          0    37198    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public    
   djangouser    false    222   Q�       5	          0    37024    carrera 
   TABLE DATA               :   COPY public.carrera (codigo, nombre, id_tipo) FROM stdin;
    public       postgres    false    196   n�       Q	          0    37258    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public    
   djangouser    false    224   ��       C	          0    37144    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public    
   djangouser    false    210   ��       A	          0    37133    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public    
   djangouser    false    208   ]�       T	          0    37321    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public    
   djangouser    false    227   ��       ;	          0    37084 
   estudiante 
   TABLE DATA               R   COPY public.estudiante (rut, paterno, materno, nombres, correo, fono) FROM stdin;
    public       postgres    false    202   �       U	          0    37345    malla 
   TABLE DATA               h   COPY public.malla (codigo_carrera, carrera_mencion, codigo_asignatura, nivel, version_plan) FROM stdin;
    public       postgres    false    228   0�       9	          0    37064    profesor 
   TABLE DATA               Y   COPY public.profesor (rut, paterno, materno, nombres, correo, fono, vigente) FROM stdin;
    public       postgres    false    200   ��       ?	          0    37121    rendimiento_carrera 
   TABLE DATA               �   COPY public.rendimiento_carrera (codigo_carrera, codigo_asignatura, semestre, anio, semestre_etiqueta, promedio, promedio_aprobados, promedio_reprobados, aprobados, reprobados, inscritos) FROM stdin;
    public       postgres    false    206   ��       R	          0    37286    rendimientos_asignatura 
   TABLE DATA               Q   COPY public.rendimientos_asignatura (cod_asignatura, nom_asignatura) FROM stdin;
    public    
   djangouser    false    225   ��       S	          0    37292    rendimientos_carrera 
   TABLE DATA               V   COPY public.rendimientos_carrera (cod_carrera, nom_carrera, tipo_carrera) FROM stdin;
    public    
   djangouser    false    226   ��       8	          0    37051    seccion 
   TABLE DATA               d   COPY public.seccion (id, codigo_asignatura, semestre, anio, electividad, letra, numero) FROM stdin;
    public       postgres    false    199   ��       <	          0    37089    seccion_estudiante 
   TABLE DATA               �   COPY public.seccion_estudiante (id_seccion, rut_estudiante, nota_teoria, nota_laboratorio, nota_final, situacion_final) FROM stdin;
    public       postgres    false    203   �       :	          0    37069    seccion_profesor 
   TABLE DATA               e   COPY public.seccion_profesor (id_seccion, rut_profesor, teoria, ejercicios, laboratorio) FROM stdin;
    public       postgres    false    201   +�       >	          0    37109    tipo_carrera 
   TABLE DATA               @   COPY public.tipo_carrera (id, nombre, nombre_corto) FROM stdin;
    public       postgres    false    205   H�       t	           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public    
   djangouser    false    213            u	           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public    
   djangouser    false    215            v	           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);
            public    
   djangouser    false    211            w	           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public    
   djangouser    false    219            x	           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);
            public    
   djangouser    false    217            y	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public    
   djangouser    false    221            z	           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
            public    
   djangouser    false    223            {	           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);
            public    
   djangouser    false    209            |	           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 17, true);
            public    
   djangouser    false    207            }	           0    0    seccion_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.seccion_id_seq', 1, false);
            public       postgres    false    198            ~	           0    0    tipo_carrera_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tipo_carrera_id_seq', 4, true);
            public       postgres    false    204            g           2606    37033    asignatura asignatura_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.asignatura
    ADD CONSTRAINT asignatura_pkey PRIMARY KEY (codigo);
 D   ALTER TABLE ONLY public.asignatura DROP CONSTRAINT asignatura_pkey;
       public         postgres    false    197            �           2606    37169    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public      
   djangouser    false    214            �           2606    37224 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public      
   djangouser    false    216    216            �           2606    37177 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public      
   djangouser    false    216            �           2606    37167    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public      
   djangouser    false    214            �           2606    37210 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public      
   djangouser    false    212    212            �           2606    37159 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public      
   djangouser    false    212            �           2606    37195 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public      
   djangouser    false    220            �           2606    37239 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public      
   djangouser    false    220    220            �           2606    37185    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public      
   djangouser    false    218            �           2606    37203 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public      
   djangouser    false    222            �           2606    37253 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public      
   djangouser    false    222    222            �           2606    37281     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public      
   djangouser    false    218            e           2606    37028    carrera carrera_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT carrera_pkey PRIMARY KEY (codigo);
 >   ALTER TABLE ONLY public.carrera DROP CONSTRAINT carrera_pkey;
       public         postgres    false    196            �           2606    37267 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public      
   djangouser    false    224            {           2606    37151 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public      
   djangouser    false    210    210            }           2606    37149 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public      
   djangouser    false    210            y           2606    37141 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public      
   djangouser    false    208            �           2606    37328 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public      
   djangouser    false    227            q           2606    37088    estudiante estudiante_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT estudiante_pkey PRIMARY KEY (rut);
 D   ALTER TABLE ONLY public.estudiante DROP CONSTRAINT estudiante_pkey;
       public         postgres    false    202            m           2606    37068    profesor profesor_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.profesor
    ADD CONSTRAINT profesor_pkey PRIMARY KEY (rut);
 @   ALTER TABLE ONLY public.profesor DROP CONSTRAINT profesor_pkey;
       public         postgres    false    200            w           2606    37130 ,   rendimiento_carrera rendimiento_carrera_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.rendimiento_carrera
    ADD CONSTRAINT rendimiento_carrera_pkey PRIMARY KEY (codigo_carrera, codigo_asignatura, semestre, anio);
 V   ALTER TABLE ONLY public.rendimiento_carrera DROP CONSTRAINT rendimiento_carrera_pkey;
       public         postgres    false    206    206    206    206            �           2606    37291 4   rendimientos_asignatura rendimientos_asignatura_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.rendimientos_asignatura
    ADD CONSTRAINT rendimientos_asignatura_pkey PRIMARY KEY (cod_asignatura);
 ^   ALTER TABLE ONLY public.rendimientos_asignatura DROP CONSTRAINT rendimientos_asignatura_pkey;
       public      
   djangouser    false    225            �           2606    37297 .   rendimientos_carrera rendimientos_carrera_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.rendimientos_carrera
    ADD CONSTRAINT rendimientos_carrera_pkey PRIMARY KEY (cod_carrera);
 X   ALTER TABLE ONLY public.rendimientos_carrera DROP CONSTRAINT rendimientos_carrera_pkey;
       public      
   djangouser    false    226            i           2606    37058 G   seccion seccion_codigo_asignatura_anio_semestre_electividad_letra_n_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.seccion
    ADD CONSTRAINT seccion_codigo_asignatura_anio_semestre_electividad_letra_n_key UNIQUE (codigo_asignatura, anio, semestre, electividad, letra, numero);
 q   ALTER TABLE ONLY public.seccion DROP CONSTRAINT seccion_codigo_asignatura_anio_semestre_electividad_letra_n_key;
       public         postgres    false    199    199    199    199    199    199            s           2606    37096 *   seccion_estudiante seccion_estudiante_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.seccion_estudiante
    ADD CONSTRAINT seccion_estudiante_pkey PRIMARY KEY (id_seccion, rut_estudiante);
 T   ALTER TABLE ONLY public.seccion_estudiante DROP CONSTRAINT seccion_estudiante_pkey;
       public         postgres    false    203    203            k           2606    37056    seccion seccion_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.seccion
    ADD CONSTRAINT seccion_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.seccion DROP CONSTRAINT seccion_pkey;
       public         postgres    false    199            o           2606    37073 &   seccion_profesor seccion_profesor_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.seccion_profesor
    ADD CONSTRAINT seccion_profesor_pkey PRIMARY KEY (id_seccion, rut_profesor);
 P   ALTER TABLE ONLY public.seccion_profesor DROP CONSTRAINT seccion_profesor_pkey;
       public         postgres    false    201    201            u           2606    37114    tipo_carrera tipo_carrera_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tipo_carrera
    ADD CONSTRAINT tipo_carrera_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.tipo_carrera DROP CONSTRAINT tipo_carrera_pkey;
       public         postgres    false    205            �           1259    37212    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public      
   djangouser    false    214            �           1259    37225 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public      
   djangouser    false    216            �           1259    37226 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public      
   djangouser    false    216            ~           1259    37211 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public      
   djangouser    false    212            �           1259    37241 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public      
   djangouser    false    220            �           1259    37240 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public      
   djangouser    false    220            �           1259    37255 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public      
   djangouser    false    222            �           1259    37254 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public      
   djangouser    false    222            �           1259    37282     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public      
   djangouser    false    218            �           1259    37278 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public      
   djangouser    false    224            �           1259    37279 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public      
   djangouser    false    224            �           1259    37330 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public      
   djangouser    false    227            �           1259    37329 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public      
   djangouser    false    227            �           2606    37218 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public    
   djangouser    false    212    216    2178            �           2606    37213 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public    
   djangouser    false    2183    214    216            �           2606    37204 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public    
   djangouser    false    212    210    2173            �           2606    37233 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public    
   djangouser    false    2183    214    220            �           2606    37228 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public    
   djangouser    false    2191    218    220            �           2606    37247 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public    
   djangouser    false    212    2178    222            �           2606    37242 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public    
   djangouser    false    218    222    2191            �           2606    37268 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public    
   djangouser    false    224    210    2173            �           2606    37273 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public    
   djangouser    false    224    2191    218            �           2606    37116 
   carrera id    FK CONSTRAINT     p   ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT id FOREIGN KEY (id_tipo) REFERENCES public.tipo_carrera(id);
 4   ALTER TABLE ONLY public.carrera DROP CONSTRAINT id;
       public       postgres    false    196    205    2165            �           2606    37355 "   malla malla_codigo_asignatura_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.malla
    ADD CONSTRAINT malla_codigo_asignatura_fkey FOREIGN KEY (codigo_asignatura) REFERENCES public.asignatura(codigo);
 L   ALTER TABLE ONLY public.malla DROP CONSTRAINT malla_codigo_asignatura_fkey;
       public       postgres    false    197    2151    228            �           2606    37350    malla malla_codigo_carrera_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.malla
    ADD CONSTRAINT malla_codigo_carrera_fkey FOREIGN KEY (codigo_carrera) REFERENCES public.carrera(codigo);
 I   ALTER TABLE ONLY public.malla DROP CONSTRAINT malla_codigo_carrera_fkey;
       public       postgres    false    228    196    2149            �           2606    37059 &   seccion seccion_codigo_asignatura_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.seccion
    ADD CONSTRAINT seccion_codigo_asignatura_fkey FOREIGN KEY (codigo_asignatura) REFERENCES public.asignatura(codigo);
 P   ALTER TABLE ONLY public.seccion DROP CONSTRAINT seccion_codigo_asignatura_fkey;
       public       postgres    false    2151    197    199            �           2606    37097 5   seccion_estudiante seccion_estudiante_id_seccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.seccion_estudiante
    ADD CONSTRAINT seccion_estudiante_id_seccion_fkey FOREIGN KEY (id_seccion) REFERENCES public.seccion(id);
 _   ALTER TABLE ONLY public.seccion_estudiante DROP CONSTRAINT seccion_estudiante_id_seccion_fkey;
       public       postgres    false    199    2155    203            �           2606    37102 9   seccion_estudiante seccion_estudiante_rut_estudiante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.seccion_estudiante
    ADD CONSTRAINT seccion_estudiante_rut_estudiante_fkey FOREIGN KEY (rut_estudiante) REFERENCES public.estudiante(rut);
 c   ALTER TABLE ONLY public.seccion_estudiante DROP CONSTRAINT seccion_estudiante_rut_estudiante_fkey;
       public       postgres    false    203    2161    202            �           2606    37074 1   seccion_profesor seccion_profesor_id_seccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.seccion_profesor
    ADD CONSTRAINT seccion_profesor_id_seccion_fkey FOREIGN KEY (id_seccion) REFERENCES public.seccion(id);
 [   ALTER TABLE ONLY public.seccion_profesor DROP CONSTRAINT seccion_profesor_id_seccion_fkey;
       public       postgres    false    199    201    2155            �           2606    37079 3   seccion_profesor seccion_profesor_rut_profesor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.seccion_profesor
    ADD CONSTRAINT seccion_profesor_rut_profesor_fkey FOREIGN KEY (rut_profesor) REFERENCES public.profesor(rut);
 ]   ALTER TABLE ONLY public.seccion_profesor DROP CONSTRAINT seccion_profesor_rut_profesor_fkey;
       public       postgres    false    2157    200    201            6	   �  x��WMn�<\;��|�z�7�p�1��h.3�,��H\l�ЀMw��F%Գ�OU=��|�gy��ʻJ���5?Ȧ����,a�د�@/`@��d1O�!;�V��@F���P�k�֪B*�[��� jD�y5Lq1��*�<��Ws����b�s:	���
��{Dk�B*
IYίmxV\��Ԇ;���#;��c#�t��عk
^�ƌi檾t����.Z���3B�f�>����ނ��핛�0Q��h�˂8��e#�lk�����2$�58y�B�q�|���#f�W6_-�vD6�Ԫ�hi�1�Xr�v�@{��7qJH���jT}�K�	�I#c?)͍�R��~v�'��̈�Q�*q�p�~�U$&�a�W޼�B!�h�5�g�M�i$�-��u�F yhv.y��ƅ��@1ʢ�jD���Y�f��S��)��c�|�#R�H�2YRq����~t,���C�Y^�������W����K8yu>���u��������hqP�5o�|	Z���t�;�R(-\i 1[y!˚o��@]1	W�L�,��u�����H��m������Y������=�V��a0cJ����W�?��6g�C���ϵ W����&Ŷd0��Zc]a	���2�<�2��Mq�є����J�V�4$�$ ��բ����:bg�Zj��&\ZN^a��
Q)jڴ�0_-
�n4�����v�o���w�ј#��k5{>B�J�x5͛T�uu�g��������Ä	�oy�]804bYG��XY��4�O���FaYQ�g�� țݹ�MIs���R�P�7��l���he�U3��:�F.���b]���W^uyn�=ޛ	��.úv�E�6,IR���G���#�
�V������dF�B$P��b4$fS��2I�%n6�$Rz�ǧ��+d� �*���"��PB��(�}ݵ�N2����_�QnŦ�4X�>����'�cDH3�Ͷ!��	���/l�;/��x���f���w/�x�򌷖'lg��"4:�Es$d�.���K�ڥ�}=-�gN�O�t�he�X�ӑ�M�}�0����K��ȭ�?i�s}r]��޳��e��5��WNKȝ�=9�����O=�����i���'ʛ^�@Fkz���\���8�����e�.}T�\\����.�ʼ}=��o� �w�bƄ�Y������11���g���������/�k��      G	      x������ � �      I	      x������ � �      E	     x�m��n�0D��W���s�R��M�@���%�z=K}�7o4�L���S7�noS�=]����i�O���t�3dK��n�f�V��w�ٝ*�5��}B����1Qd����J���m&���, �fRI�Rs�vݞ��M�U�Ϙ�L'HJ�p�yL9.9�����N]�}<jS�9Pd��H�	����i����h����`M�I�R
�S�/���9��3����yR��I']�1\b(cS$��+�n�����QV��{��\�8�B��ǝ���^u�6�P^j��I��-Զ���"�/��m,�����IYX�s9Q(c&����v��̽�	]��Y���Gy*�X�� ����㺾�τ2N]�B�h|��,����
����L(eХhbȔQ�̐U`�T����#�����D�Ư�"�D#A�H�����M�i{-V�P�4{�t%�H���&=
�	
jX{����=\z��-g����V.5s�ˁ���Z�v�ܶ      K	      x������ � �      M	      x������ � �      O	      x������ � �      5	     x���Kr� ൞�����,[�:%� �"���f�#q� 3����ۿ`U����A���H[�JZ�;dUΪ�=���0̵�c��_�;N�KM��$X��x����a��[C�z�g_&�@-Q������<Z�9˾ u�F��%����ݻ1�~=�&�)����zq��:#hѧ�&���;�?#���9]iئ�&T�Q�X�L�!�jO6AFT�5�H�=�-��H�IEr: 1�X}�Wug`�׸��^�ɱ��)��o��0      Q	      x������ � �      C	   �   x�m�K�0D��a���(5%M"�Y���V��]�y&3h���gOA�+~
V3[hꋳ�Tp{���6�h�J�ח��E���Vz�B���^c�iO<N�1x=u��g�'N��`clַIĳ��vEǜ �Ue���(�.��( �R��A�</ ���      A	   �  x���]n� ��=��d��o;g��P�f�l3L����8#+G�x���U8��5�5�ϫK ������(�B�����,8�/ Nl����H�Ϡp��*�`�ů�$�U"�%���R��&�%|8S����.���#��d�}����.��ų�(�{f���Esuq�)��6�Y�_3��RNuQ4��;��Q�T�X?R�(*�v�x�ԥ��9�Ĉ��!�M�&���*�zB�)������n������Ap���(v���!�Z�q1�h�����1����;~�P�s�2W��6�I�SF?B��|Jѭ�_|I&>8}��v�P>I���4r�(�!GF���(��Bed��Ej�z����ڵ��%$۞���t:�Xm7      T	      x������ � �      ;	      x������ � �      U	   �  x�e�]� ��k��9$�w/��u�ښ�{��s@I�Z�8�a�l���� �4B%�@17@����Jh�N�+,���� T�3|�ߞ�w>��0�Øc>��L���0�Øc>��h�~��1c�A��F�GS�IX�3���� TB#�c(�$,��S!���X
�0	�peQ�M�&m�3��26��,J-��?]�થ`������,�� T�7B��H,�}�p�Php&��^�3:G,&�:9o8��t��3& 9�C�
`pcb��ɑ�.��18"Ε^_����Mq��W]���v��o���ؤor�7��Il�\�_ҽ�0�p}�*!N0��	�;x�[�P�VH>�����2�]²�������A=!�=�O��x�q	�S#�KKpB*�:��{�d��`������Fd&��5Fk����ӔI��h���5Fk�V��L���	*2�1���Jh��)K��`��)K��NxZ�F!��$����;xu	RcA���:�<]�Ԙ�d��@v	��x��Q2b��n�Li�X�	�mCnT��G�F��!��nx�Y�"L�WS U(�0�0�h��!X�S*���X�v�˩t������d'�{[�Q���m����|>� V y      9	      x������ � �      ?	   �  x��[ˎ$7<���o=)�h�s`������;�AJYR��m��p{X,&"�!u�%\1��t���ϟW~�|�W�Wz�tE�r�j����Y�{gc�l<����n�n��J�����8��sQ���y�g���v���f���ן���ן���A� ^lh)3�q�W��;E��#�2������u��\K�U]�z�������0�|E�tC��3�'�fȅm9�+l��q<�ۀ�ѐe�J4�G�������O�~������,�"�2�/zHJI���^8��5�������ǯ���@R��H����U�y���D2���V�I��<����t�|��>{��A^�;��7�}svS�.(ѤdC^���NX��HM�{����I�G&�i[�Z^Q�o\��c����L���d�Ό�������&���L�f�,O.&�	�<�W^�_�k3��GH܈����#D�/�x���1��'�Մ��������
����~ُ�~��ש~�k�妅/:	���+�_�v�|F���7|�ɲh�|�o|�������n�O��^5n�^��HG�:9��5_���|����y��;���88� �8L$���ݤ����|�k:�+5�)u7�З�>���.&�r��
t$�mN&�]����v{��cF&����>+���W�2��	�m#���㉾|����{7֯JI�#�F�4�`&��?R�`p�+&'G�NA��VN� m.�IvY�.�Bd�Xʖ "]w�m�׾�E�O�4�N�0����/Ȁ��݅���B��5-�4R�wc~H{>�S�]l��3D�/��6v�߬#q�#g�T������}0�,���L&t`$p|DrԿ���ȗD�IɁ�
�u��{G&}AV�)����LF�堏�ӜQ/�SD�����|ĦH){����?�vc[,��<�e��E�9�d,c5�L[�^�	���<��	�1���4����6Bܩ��R�8�O���$�<�w?s�(�{r�U��l0*�e�"a��G;D��SQ+j�[���u�ل�ɸ����a)\���`Z�򥵮���%�?�vc��I#�gs)AY��,�)H	��,�����ߌ�֥(��(`����[�G۔k��q˚5��T��W'����֬d2��$Z9��R���zG��4�au\fO��үn�=2�����yGY*ݤ��J�J���)�&�Ժu�*�`k&%����ΰ�`\9,B��\�Ak�k2i�)�dTڍ=������W��Ʉ��P�&�
i��X�8�Ls>�q���WI�%g��o.��m�N&Y;X�VًA�B7�~D��� k~=��T�����ҍR2q,�"�Q8jA��l<O8qӗ��]�/���G�2y���d��7�i�ڇn��fTLJ�T?%��T�r��㔌ٜ�c���y[�܍Y���J�χ�s��֦4-�QT�aY�UE�$b �]�㽰��i������w9�C���w�#= �b��d�~6Ro��5��ƴ�I�N!.
����߄�=u���1滄�.y6�6��L�QT{���5��۞�2%Q�d36�R�GW���e�h7�p*����n��2��|Ʉ�锒�@fQwk��3�T�0�WQ�:+f0p��1��}��6gƽ�5����!�b�
ULF�w�e3H-`ps�lk���0R�����f��ǴIe#�i�	RmB>�*�P�sB&R���L��3�$���/�V�|:?&Z)����ɟ�M�������v�n�M<2ɔsq<m�	_][��n"��r�9�Tˀ����Q����0W�+q�cP�8�נK"���E����mS��hWM��|>��W�D�")OQI@}�|��dFUA�ǄF��&��|���iK���";�L�XD�&%'_��N�<1Sں�T@� _E�$O�lu�&�\�����ѳ�YY��E�<5S��z�(W/&�e�P��
���N"x%O�0���%�t���}l�C��YfW�{B�Lz��g��/�:O�Xrͺ�T7+��ɓ4c[�C/&H_1�������ɴ2LV>j����\I3�%�Ļ��a�I�3�W3�O�R\�W6aKG#O��Q��.AQzmE��Ŋ�*)����.ڙ�cd�;I�x����� ov�8�>�zput0��g�H=W�+�z�LO��[�K��I����@A8��*,�'~���i����k^M�
�-^B���֙y�L�c�@9ٔ�M����@�mu�LzF����1��t�z��{GEܘ�Qr��9D��Į�3�S?�t����bn��:��ļV�5�x����S�;{��VFp�'w(���Eo�K�%+���C7X���L��*���l�1ǴŜӼbp�.g>>h@���;�'�l�0�p��k�,@Vc��R��c��
��*G>S��O��c����C*��1��UY��؀T�� ݯ�H�u/�qA�E+��j�cy���Օ��W"�[-��<���%mr	L@�����Y��������4J΃ΝdUV�Q+
�B�'���Ru���x��ZLR>*��E��&OhMR��%Tb0i��V;!�)����iLb�V���v	���j�b�Z+��Y��<J낮lb9�n�	���Ⱥ.�r�a�	w�dձ���<v�s�ɭ�>�a��F���z��:��{�L�fB_H�:S
����M������2R� E��'���Z���������[��_�L,�9V�7�������M01	?ԁ��F=��$W��r�ń������n��\���#q%�vC6�3<y�k�S"�|�(�io��"�m��Pg�a���">Yյ蹳,����Ŧ�в6mϸ>(�۠(�rw�D��qX#*S�+6kx��&l;}{c��c��(�
1&��[�L>N�~�u�Z�y�)T�2Vu=�q���.���vk�8Ń]t�����Jkʂ.(s0�P�h�>��GeJ�Oy��=�!�$��v�jU{_�ҫ�o�����p����6��Na������B����u'����*�ϛ��A�#:By�k����ΪB�9�T�m�]���W9�i� *dSrP�MB�����|����i��N}և�6��>��1vc��5�c_��`V4'�BW �cjm&���F	 .k�l�#���C>^�%�Ź7}w ��s������Iɉש
�����m'9�r�As��\�+�#������ͣ�U�6!��\���e2��(�[�������č�w�rY��#�׺��;+��U��Y�
Zݍ]��c�#��`�֨�OIV�T�Bk���.3ﳖ��ձ�N�Y���0��t�;+���`���3ʤ��
$#"*�����
�˗���r]Uw�g�!�%w��0�'b�s��薠�zA���O���F�'y�����@����*Or�Wp��s�E�������ؗd+�?�!�ŌHg2nۧ��*��Y�u<�g��+�oc����Ǐ�\B �      R	      x������ � �      S	      x������ � �      8	      x������ � �      <	      x������ � �      :	      x������ � �      >	   V   x�3���sw��t:�������	&��Pd\\\�\�C�=O��D0��ѕ�*8���	��L8��=<}|\�C�Q8\1z\\\ ��%M     