--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3
-- Dumped by pg_dump version 10.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: asignatura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asignatura (
    codigo integer NOT NULL,
    nombre character varying(100) NOT NULL,
    teoria integer,
    ejercicios integer,
    laboratorio integer,
    sct integer
);


ALTER TABLE public.asignatura OWNER TO postgres;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: djangouser
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO djangouser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: djangouser
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO djangouser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangouser
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: djangouser
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO djangouser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: djangouser
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO djangouser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangouser
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: djangouser
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO djangouser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: djangouser
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO djangouser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangouser
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: djangouser
--

CREATE TABLE public.auth_user (
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


ALTER TABLE public.auth_user OWNER TO djangouser;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: djangouser
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO djangouser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: djangouser
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO djangouser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangouser
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: djangouser
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO djangouser;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangouser
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: djangouser
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO djangouser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: djangouser
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO djangouser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangouser
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: carrera; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carrera (
    codigo integer NOT NULL,
    nombre character varying(100) NOT NULL,
    id_tipo integer
);


ALTER TABLE public.carrera OWNER TO postgres;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: djangouser
--

CREATE TABLE public.django_admin_log (
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


ALTER TABLE public.django_admin_log OWNER TO djangouser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: djangouser
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO djangouser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangouser
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: djangouser
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO djangouser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: djangouser
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO djangouser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangouser
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: djangouser
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO djangouser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: djangouser
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO djangouser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangouser
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: djangouser
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO djangouser;

--
-- Name: estudiante; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estudiante (
    rut character varying(10) NOT NULL,
    paterno character varying(50) NOT NULL,
    materno character varying(50) NOT NULL,
    nombres character varying(100) NOT NULL,
    correo character varying(50),
    fono character varying(10)
);


ALTER TABLE public.estudiante OWNER TO postgres;

--
-- Name: malla; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.malla (
    codigo_carrera integer NOT NULL,
    carrera_mencion integer NOT NULL,
    codigo_asignatura integer NOT NULL,
    nivel integer NOT NULL,
    version_plan integer NOT NULL
);


ALTER TABLE public.malla OWNER TO postgres;

--
-- Name: profesor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profesor (
    rut character varying(10) NOT NULL,
    paterno character varying(50) NOT NULL,
    materno character varying(50) NOT NULL,
    nombres character varying(100) NOT NULL,
    correo character varying(50),
    fono character varying(10),
    vigente boolean
);


ALTER TABLE public.profesor OWNER TO postgres;

--
-- Name: rendimiento_asignatura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rendimiento_asignatura (
    codigo_asignatura integer NOT NULL,
    semestre integer NOT NULL,
    anio integer NOT NULL,
    promedio double precision,
    promedio_aprobados double precision,
    promedio_reprobados double precision,
    cantidad_aprobados integer,
    cantidad_reprobados integer,
    cantidad_convalidados integer,
    inscritos integer
);


ALTER TABLE public.rendimiento_asignatura OWNER TO postgres;

--
-- Name: rendimiento_carrera; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rendimiento_carrera (
    codigo_carrera integer NOT NULL,
    codigo_asignatura integer NOT NULL,
    semestre integer NOT NULL,
    anio integer NOT NULL,
    promedio double precision,
    promedio_aprobados double precision,
    promedio_reprobados double precision,
    cantidad_aprobados integer,
    cantidad_reprobados integer,
    cantidad_convalidados integer,
    inscritos integer
);


ALTER TABLE public.rendimiento_carrera OWNER TO postgres;

--
-- Name: rendimiento_tipo_carrera; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rendimiento_tipo_carrera (
    codigo_tipo_carrera integer NOT NULL,
    codigo_asignatura integer NOT NULL,
    semestre integer NOT NULL,
    anio integer NOT NULL,
    promedio double precision,
    promedio_aprobados double precision,
    promedio_reprobados double precision,
    cantidad_aprobados integer,
    cantidad_reprobados integer,
    cantidad_convalidados integer,
    inscritos integer
);


ALTER TABLE public.rendimiento_tipo_carrera OWNER TO postgres;

--
-- Name: seccion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.seccion (
    id integer NOT NULL,
    codigo_asignatura integer,
    semestre integer NOT NULL,
    anio integer NOT NULL,
    electividad integer NOT NULL,
    letra character varying(1) NOT NULL,
    numero integer NOT NULL
);


ALTER TABLE public.seccion OWNER TO postgres;

--
-- Name: seccion_estudiante; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.seccion_estudiante (
    id_seccion integer NOT NULL,
    rut_estudiante character varying(10) NOT NULL,
    nota_teoria numeric,
    nota_laboratorio numeric,
    nota_final numeric,
    situacion_final character varying(10)
);


ALTER TABLE public.seccion_estudiante OWNER TO postgres;

--
-- Name: seccion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seccion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seccion_id_seq OWNER TO postgres;

--
-- Name: seccion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.seccion_id_seq OWNED BY public.seccion.id;


--
-- Name: seccion_profesor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.seccion_profesor (
    id_seccion integer NOT NULL,
    rut_profesor character varying(10) NOT NULL,
    teoria boolean,
    ejercicios boolean,
    laboratorio boolean
);


ALTER TABLE public.seccion_profesor OWNER TO postgres;

--
-- Name: tipo_carrera; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo_carrera (
    id integer NOT NULL,
    nombre character varying(30) NOT NULL,
    nombre_corto character varying(15) NOT NULL
);


ALTER TABLE public.tipo_carrera OWNER TO postgres;

--
-- Name: tipo_carrera_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipo_carrera_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_carrera_id_seq OWNER TO postgres;

--
-- Name: tipo_carrera_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipo_carrera_id_seq OWNED BY public.tipo_carrera.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: seccion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seccion ALTER COLUMN id SET DEFAULT nextval('public.seccion_id_seq'::regclass);


--
-- Name: tipo_carrera id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_carrera ALTER COLUMN id SET DEFAULT nextval('public.tipo_carrera_id_seq'::regclass);


--
-- Data for Name: asignatura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.asignatura (codigo, nombre, teoria, ejercicios, laboratorio, sct) FROM stdin;
10101	CÁLCULO I PARA INGENIERÍA	6	2	0	\N
10102	ÁLGEBRA I PARA INGENIERÍA	6	2	0	\N
10103	FISICA I PARA INGENIERÍA	4	2	1	\N
10104	TALLER DE DESARROLLO PERSONAL E INTEGRAL	2	0	2	\N
10105	INTRODUCCIÓN A LA INGENIERÍA	2	0	0	\N
10106	MÉTODOS DE ESTUDIO	2	0	0	\N
10107	CALCULO II PARA INGENIERÍA	6	2	0	\N
10108	ALGEBRA II PARA INGENIERÍA	4	2	0	\N
10109	FÍSICA II PARA INGENIERÍA	4	2	1	\N
10110	FUNDAMENTOS DE COMPUTACIÓN Y PROGRAMACIÓN	4	0	2	\N
10111	QUIMICA GENERAL	4	2	0	\N
10112	ELECTRICIDAD Y MAGNETISMO PARA INGENIERÍA	4	0	1	\N
10113	COMUNICACIÓN EFECTIVA	2	0	0	\N
10114	LECTOCOMPRENSIÓN EN INGLÉS	4	0	2	\N
10115	ANÁLISIS ESTADÍSTICO PARA INGENIERÍA	4	2	0	\N
10116	FUNDAMENTOS DE ECONOMÍA	4	2	0	\N
10117	COMUNICACIÓN EN INGLÉS	4	0	2	\N
10118	LABORATORIO DE QUÍMICA GENERAL	0	0	2	\N
10119	TECNOLOGÍAS DE LABORATORIO QUÍMICO	0	0	2	\N
10120	CÁLCULO AVANZADO	4	4	0	\N
10121	CALCULO AVANZADO PARA INGENIERIA	4	2	0	\N
10122	ECUACIONES DIFERENCIALES PARA INGENIERIA	4	2	0	\N
10123	ECUACIONES DIFERENCIALES Y METODOS NUMERICOS PARA INGENIERIA	4	2	0	\N
10124	METODOS NUMERICOS PARA INGENIERIA	4	2	0	\N
10125	INTRODUCCION A LA INGENIERIA	0	0	2	\N
10126	METODOS DE ESTUDIO	0	0	2	\N
10127	ELECTRICIDAD Y MAGNETISMO PARA INGENIERIA	4	2	1	\N
10128	COMUNICACION EFECTIVA	0	0	2	\N
10129	CALCULO III PARA INGENIERÍA	4	2	0	\N
10130	INGLES I	0	0	2	\N
10131	INGLES II	0	0	2	\N
10132	INGLES III	0	0	2	\N
10133	INGLES IV	0	0	2	\N
13201	MÉTODOS DE PROGRAMACIÓN	4	2	2	\N
13202	TEORÍA DE SISTEMAS	4	2	0	\N
13203	ESTRUCTURA DE COMPUTADORES	4	0	2	\N
13204	PARADIGMAS DE PROGRAMACIÓN	4	0	2	\N
13205	ANÁLISIS DE ALGORITMOS Y ESTRUCTURA DE DATOS	4	0	2	\N
13206	MATEMÁTICA APLICADA	4	2	0	\N
13207	DISEÑO DE BASES DE DATOS	4	2	0	\N
13208	ORGANIZACIÓN DE COMPUTADORES	4	0	2	\N
13209	FUNDAMENTOS DE INGENIERÍA DE SOFTWARE	4	2	0	\N
13210	ALGORITMOS AVANZADOS	4	2	2	\N
13211	SISTEMAS DINÁMICOS	4	2	2	\N
13212	SISTEMAS OPERATIVOS	4	2	2	\N
13213	PROCESAMIENTO DE LENGUAJES FORMALES	4	2	2	\N
13214	ANTROPOLOGÍA E INGENIERÍA	4	0	0	\N
13215	TALLER DE BASES DE DATOS	2	0	4	\N
13216	INFERENCIA Y MODELOS ESTADÍSTICOS	4	0	2	\N
13217	REDES DE COMPUTADORES	4	2	2	\N
13218	LÓGICA Y TEORÍA DE LA COMPUTACIÓN	4	2	2	\N
13219	MACROECONOMÍA Y GLOBALIZACIÓN	4	0	0	\N
13220	MÉTODOS DE INGENIERÍA DE SOFTWARE	4	2	0	\N
13221	MÉTODOS DE OPTIMIZACIÓN	4	0	2	\N
13222	ANÁLISIS DE DATOS	4	0	2	\N
13223	SISTEMAS DE COMUNICACIÓN	4	0	2	\N
13224	FINANZAS Y CONTABILIDAD	4	0	2	\N
13225	ADMINISTRACIÓN DE PROYECTOS DE SOFTWARE	4	2	2	\N
13226	INGENIERÍA Y SOCIEDAD	4	0	2	\N
13227	MODELACIÓN Y SIMULACIÓN	4	2	2	\N
13228	SISTEMAS DISTRIBUIDOS	4	0	2	\N
13229	EVALUACIÓN DE PROYECTOS	2	0	4	\N
13230	TALLER DE INGENIERÍA DE SOFTWARE	2	0	4	\N
13231	TÓPICOS DE ESPECIALIDAD I	4	0	2	\N
13232	TÓPICOS DE ESPECIALIDAD II	4	0	2	\N
13233	TÓPICOS DE ESPECIALIDAD III	4	0	2	\N
13234	SEGURIDAD Y AUDITORÍA INFORMÁTICA	4	0	2	\N
13235	PROYECTO DE INGENIERÍA INFORMÁTICA	0	0	8	\N
13236	TÓPICOS DE ESPECIALIDAD IV	4	0	2	\N
13237	TÓPICOS DE ESPECIALIDAD V	4	0	2	\N
13238	TÓPICOS DE ESPECIALIDAD VI	4	0	2	\N
13239	DIRECCIÓN Y GESTIÓN DE EMPRESAS	2	0	4	\N
13240	SEMINARIO DE PROYECTO DE TÍTULO	2	0	6	\N
13241	TRABAJO DE TITULACIÓN	0	0	32	\N
13250	MÉTODOS NUMÉRICOS Y ECUACIONES DIFERENCIALES	4	2	0	\N
13251	MÉTODOS DE PROGRAMACIÓN	4	2	2	\N
13252	INGENIERÍA DE SISTEMAS	4	2	0	\N
13253	ESTRUCTURA DE COMPUTADORES	4	0	2	\N
13254	PARADIGMAS DE PROGRAMACIÓN	4	0	2	\N
13255	ANÁLISIS DE ALGORTIMOS Y ESTRUCTURA DE DATOS	4	0	2	\N
13256	EVALUACIÓN Y GESTIÓN DE PROYECTOS	4	0	2	\N
13257	DISEÑO DE BASES DE DATOS	4	2	0	\N
13258	ORGANIZACIÓN DE COMPUTADORES	4	0	2	\N
13259	FUNDAMENTOS DE INGENIERÍA DE SOFTWARE	4	2	0	\N
13260	INFORMÁTICA Y SOCIEDAD	4	0	2	\N
13261	SISTEMAS DE INFORMACIÓN	4	0	2	\N
13262	ADMINISTRACIÓN Y GESTIÓN INFORMÁTICA	4	0	2	\N
13263	TALLER DE BASES DE DATOS	2	0	4	\N
13264	SISTEMAS OPERATIVOS	4	2	2	\N
13265	TÉCNICAS DE INGENIERÍA DE SOFTWARE	4	0	2	\N
13266	REDES COMPUTACIONALES	4	2	2	\N
13267	PROYECTO DE INGENIERÍA DE SOFTWARE	2	0	6	\N
13268	TÓPICOS DE ESPECIALIDAD I	4	0	2	\N
13269	TÓPICOS DE ESPECIALIDAD II	4	0	2	\N
13270	TÓPICOS DE ESPECIALIDAD III	4	0	2	\N
13271	SEMINARIO DE TÍTULO	2	0	4	\N
13272	TRABAJO DE TITULACIÓN	0	0	32	\N
13273	ESTRUCTURA DE COMPUTADORES	4	2	1	\N
13274	DISEÑO DE BASE DE DATOS	4	1	1	\N
13275	ORGANIZACIÓN DE COMPUTADORES	4	1	1	\N
13276	SEMINARIO DE COMPUTACIÓN E INFORMÁTICA	2	0	4	\N
13277	TRABAJO DE TITULACIÓN	0	0	2	\N
13278	ESTRUCTURA DE COMPUTADORES	4	2	1	\N
13279	INGENIERÍA DE SISTEMAS	4	2	0	\N
13280	DISEÑO DE BASE DE DATOS	4	1	1	\N
13281	ORGANIZACIÓN DE COMPUTADORES	4	1	1	\N
13282	ALGORITMOS NUMÉRICOS	4	2	2	\N
13283	INFERENCIA Y MODELOS ESTADÍSTICOS	4	2	0	\N
13284	LÓGICA Y TEORÍA DE LA COMPUTACIÓN	4	2	0	\N
13285	SEMINARIO DE INFORMÁTICA	2	0	4	\N
13286	TRABAJO DE TITULACIÓN	0	0	2	\N
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: djangouser
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: djangouser
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: djangouser
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add asignatura	1	add_asignatura
2	Can change asignatura	1	change_asignatura
3	Can delete asignatura	1	delete_asignatura
4	Can add carrera	2	add_carrera
5	Can change carrera	2	change_carrera
6	Can delete carrera	2	delete_carrera
7	Can add carrera asignatura	3	add_carreraasignatura
8	Can change carrera asignatura	3	change_carreraasignatura
9	Can delete carrera asignatura	3	delete_carreraasignatura
10	Can add estudiante	4	add_estudiante
11	Can change estudiante	4	change_estudiante
12	Can delete estudiante	4	delete_estudiante
13	Can add profesor	5	add_profesor
14	Can change profesor	5	change_profesor
15	Can delete profesor	5	delete_profesor
16	Can add rendimiento carrera	6	add_rendimientocarrera
17	Can change rendimiento carrera	6	change_rendimientocarrera
18	Can delete rendimiento carrera	6	delete_rendimientocarrera
19	Can add seccion	7	add_seccion
20	Can change seccion	7	change_seccion
21	Can delete seccion	7	delete_seccion
22	Can add tipo carrera	8	add_tipocarrera
23	Can change tipo carrera	8	change_tipocarrera
24	Can delete tipo carrera	8	delete_tipocarrera
25	Can add seccion estudiante	9	add_seccionestudiante
26	Can change seccion estudiante	9	change_seccionestudiante
27	Can delete seccion estudiante	9	delete_seccionestudiante
28	Can add seccion profesor	10	add_seccionprofesor
29	Can change seccion profesor	10	change_seccionprofesor
30	Can delete seccion profesor	10	delete_seccionprofesor
31	Can add log entry	11	add_logentry
32	Can change log entry	11	change_logentry
33	Can delete log entry	11	delete_logentry
34	Can add permission	12	add_permission
35	Can change permission	12	change_permission
36	Can delete permission	12	delete_permission
37	Can add group	13	add_group
38	Can change group	13	change_group
39	Can delete group	13	delete_group
40	Can add user	14	add_user
41	Can change user	14	change_user
42	Can delete user	14	delete_user
43	Can add content type	15	add_contenttype
44	Can change content type	15	change_contenttype
45	Can delete content type	15	delete_contenttype
46	Can add session	16	add_session
47	Can change session	16	change_session
48	Can delete session	16	delete_session
49	Can add malla	17	add_malla
50	Can change malla	17	change_malla
51	Can delete malla	17	delete_malla
52	Can add rendimiento asignatura	18	add_rendimientoasignatura
53	Can change rendimiento asignatura	18	change_rendimientoasignatura
54	Can delete rendimiento asignatura	18	delete_rendimientoasignatura
55	Can add rendimiento tipo carrera	19	add_rendimientotipocarrera
56	Can change rendimiento tipo carrera	19	change_rendimientotipocarrera
57	Can delete rendimiento tipo carrera	19	delete_rendimientotipocarrera
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: djangouser
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: djangouser
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: djangouser
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: carrera; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carrera (codigo, nombre, id_tipo) FROM stdin;
1340	INGENIERIA EN BIOTECNOLOGÍA	3
1341	INGENIERIA AMBIENTAL	3
1349	INGENIERIA DE EJECUCIÓN EN CLIMATIZACIÓN	2
1351	INGENIERIA DE EJECUCIÓN EN ELECTRICIDAD	2
1352	INGENIERIA DE EJECUCIÓN EN GEOMENSURA	2
1353	INGENIERIA DE EJECUCIÓN EN COMPUTACIÓN E INFORMÁTICA	2
1354	INGENIERIA DE EJECUCIÓN  INDUSTRIAL	2
1355	INGENIERIA DE EJECUCIÓN EN MECÁNICA	2
1356	INGENIERIA DE EJECUCIÓN EN METALURGIA	2
1357	INGENIERIA DE EJECUCIÓN EN MINAS	2
1359	INGENIERIA DE EJECUCIÓN EN QUÍMICA	2
1361	INGENIERIA CIVIL ELECTRICIDAD	1
1362	INGENIERIA CIVIL GEOGRAFÍA	1
1363	INGENIERIA CIVIL INFORMÁTICA	1
1364	INGENIERIA CIVIL INDUSTRIAL	1
1365	INGENIERIA CIVIL MECÁNICA	1
1366	INGENIERIA CIVIL METALURGIA	1
1367	INGENIERIA CIVIL MINAS	1
1368	INGENIERIA CIVIL OBRAS CIVILES	1
1369	INGENIERIA CIVIL QUÍMICA	1
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: djangouser
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: djangouser
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	rendimientos	asignatura
2	rendimientos	carrera
3	rendimientos	carreraasignatura
4	rendimientos	estudiante
5	rendimientos	profesor
6	rendimientos	rendimientocarrera
7	rendimientos	seccion
8	rendimientos	tipocarrera
9	rendimientos	seccionestudiante
10	rendimientos	seccionprofesor
11	admin	logentry
12	auth	permission
13	auth	group
14	auth	user
15	contenttypes	contenttype
16	sessions	session
17	rendimientos	malla
18	rendimientos	rendimientoasignatura
19	rendimientos	rendimientotipocarrera
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: djangouser
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-08-01 12:11:16.430483-04
2	auth	0001_initial	2018-08-01 12:11:17.061989-04
3	admin	0001_initial	2018-08-01 12:11:17.187081-04
4	admin	0002_logentry_remove_auto_add	2018-08-01 12:11:17.205592-04
5	contenttypes	0002_remove_content_type_name	2018-08-01 12:11:17.240486-04
6	auth	0002_alter_permission_name_max_length	2018-08-01 12:11:17.250707-04
7	auth	0003_alter_user_email_max_length	2018-08-01 12:11:17.268094-04
8	auth	0004_alter_user_username_opts	2018-08-01 12:11:17.282833-04
9	auth	0005_alter_user_last_login_null	2018-08-01 12:11:17.301661-04
10	auth	0006_require_contenttypes_0002	2018-08-01 12:11:17.304805-04
11	auth	0007_alter_validators_add_error_messages	2018-08-01 12:11:17.312402-04
12	auth	0008_alter_user_username_max_length	2018-08-01 12:11:17.368655-04
13	auth	0009_alter_user_last_name_max_length	2018-08-01 12:11:17.387732-04
14	rendimientos	0001_initial	2018-08-01 12:11:17.478386-04
15	rendimientos	0002_auto_20180713_1152	2018-08-01 12:11:17.489928-04
16	rendimientos	0003_auto_20180801_1211	2018-08-01 12:11:17.573172-04
17	sessions	0001_initial	2018-08-01 12:11:17.645281-04
18	rendimientos	0004_auto_20180810_1604	2018-08-10 16:05:13.455016-04
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: djangouser
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: estudiante; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estudiante (rut, paterno, materno, nombres, correo, fono) FROM stdin;
\.


--
-- Data for Name: malla; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.malla (codigo_carrera, carrera_mencion, codigo_asignatura, nivel, version_plan) FROM stdin;
1363	0	10117	4	2
1363	0	13205	4	2
1363	0	13204	4	2
1363	0	13203	4	2
1363	0	10121	4	2
1363	0	10101	1	2
1363	0	10102	1	2
1363	0	10103	1	2
1363	0	10104	1	2
1363	0	10105	1	2
1363	0	10106	1	2
1363	0	10107	2	2
1363	0	10109	2	2
1363	0	10110	2	2
1363	0	10111	2	2
1363	0	10112	3	2
1363	0	10113	3	2
1363	0	10114	3	2
1363	0	13201	3	2
1363	0	10122	3	2
1363	0	10116	3	2
1363	0	10101	1	1
1363	0	10102	1	1
1363	0	10103	1	1
1363	0	10104	1	1
1363	0	10105	1	1
1363	0	10107	2	1
1363	0	10108	2	1
1363	0	10109	2	1
1363	0	10110	2	1
1363	0	10111	2	1
1363	0	10112	3	1
1363	0	10113	3	1
1363	0	10114	3	1
1363	0	10115	3	1
1363	0	10116	4	1
1363	0	13201	3	1
1363	0	13202	4	1
1363	0	13203	4	1
1363	0	13204	4	1
1363	0	13205	4	1
1363	0	13206	5	1
1363	0	13207	5	1
1363	0	13208	5	1
1363	0	13209	5	1
1363	0	13211	6	1
1363	0	13212	6	1
1363	0	13213	6	1
1363	0	13214	6	1
1363	0	13215	6	1
1363	0	13216	7	1
1363	0	13217	7	1
1363	0	13218	7	1
1363	0	13219	7	1
1363	0	13220	7	1
1363	0	13222	8	1
1363	0	13223	8	1
1363	0	13224	8	1
1363	0	13225	8	1
1363	0	13226	9	1
1363	0	13227	9	1
1363	0	13228	9	1
1363	0	13229	9	1
1363	0	13230	9	1
1363	0	13231	10	1
1363	0	13233	10	1
1363	0	13234	10	1
1363	0	13235	10	1
1363	0	13236	11	1
1363	0	13237	11	1
1363	0	13238	11	1
1363	0	13239	11	1
1363	0	13240	11	1
1363	0	13241	12	1
1363	0	13205	4	3
1363	0	13204	4	3
1363	0	10115	4	3
1363	0	10101	1	3
1363	0	10102	1	3
1363	0	10103	1	3
1363	0	10104	1	3
1363	0	10125	1	3
1363	0	10126	1	3
1363	0	10107	2	3
1363	0	10109	2	3
1363	0	10110	2	3
1363	0	10111	2	3
1363	0	10130	3	3
1363	0	13201	3	3
1363	0	10122	3	3
1363	0	10116	3	3
1363	0	10129	4	3
1363	0	13209	5	3
1363	0	13210	5	3
1363	0	10127	3	3
1363	0	10128	3	3
1363	0	10131	4	3
1363	0	10132	5	3
1363	0	13281	5	3
1363	0	13280	5	3
1363	0	13279	5	3
1363	0	13278	4	3
1363	0	13220	7	3
1363	0	13219	7	3
1363	0	13284	7	3
1363	0	13217	7	3
1363	0	13283	7	3
1363	0	10133	6	3
1363	0	13215	6	3
1363	0	13214	6	3
1363	0	13213	6	3
1363	0	13212	6	3
1363	0	13286	12	3
1363	0	13285	11	3
1363	0	13239	11	3
1363	0	13238	11	3
1363	0	13237	11	3
1363	0	13236	11	3
1363	0	13235	10	3
1363	0	13234	10	3
1363	0	13233	10	3
1363	0	13232	10	3
1363	0	13230	9	3
1363	0	13229	9	3
1363	0	13228	9	3
1363	0	13227	9	3
1363	0	13226	9	3
1363	0	13225	8	3
1363	0	13224	8	3
1363	0	13223	8	3
1363	0	13222	8	3
1363	0	13221	8	3
1363	0	10115	4	2
1363	0	10108	2	2
1363	0	10106	1	1
1363	0	10117	4	1
1363	0	13210	5	1
1363	0	13221	8	1
1363	0	13232	10	1
1363	0	10108	2	3
1363	0	13282	6	3
1363	0	13231	10	3
1353	0	10115	3	2
1353	0	13255	4	2
1353	0	13254	4	2
1353	0	13253	4	2
1353	0	10117	4	2
1353	0	10116	4	2
1353	0	13252	4	2
1353	0	10101	1	2
1353	0	10102	1	2
1353	0	10103	1	2
1353	0	10104	1	2
1353	0	10105	1	2
1353	0	10106	1	2
1353	0	10108	2	2
1353	0	10109	2	2
1353	0	10110	2	2
1353	0	10111	2	2
1353	0	10112	3	2
1353	0	10113	3	2
1353	0	10114	3	2
1353	0	13251	3	2
1353	0	10101	1	1
1353	0	10102	1	1
1353	0	10103	1	1
1353	0	10104	1	1
1353	0	10105	1	1
1353	0	10106	1	1
1353	0	10107	2	1
1353	0	10108	2	1
1353	0	10110	2	1
1353	0	10111	2	1
1353	0	10112	3	1
1353	0	10113	3	1
1353	0	10114	3	1
1353	0	10115	3	1
1353	0	10116	4	1
1353	0	10117	4	1
1353	0	13250	3	1
1353	0	13251	3	1
1353	0	13253	4	1
1353	0	13254	4	1
1353	0	13255	4	1
1353	0	13256	5	1
1353	0	13257	5	1
1353	0	13259	5	1
1353	0	13260	5	1
1353	0	13261	5	1
1353	0	13262	6	1
1353	0	13264	6	1
1353	0	13266	6	1
1353	0	13267	7	1
1353	0	13270	7	1
1353	0	13271	7	1
1353	0	13272	8	1
1353	0	10115	3	3
1353	0	10116	4	3
1353	0	13252	4	3
1353	0	10101	1	3
1353	0	10102	1	3
1353	0	10103	1	3
1353	0	10104	1	3
1353	0	10125	1	3
1353	0	10126	1	3
1353	0	10107	2	3
1353	0	10108	2	3
1353	0	10109	2	3
1353	0	10111	2	3
1353	0	10130	3	3
1353	0	10123	3	3
1353	0	13201	3	3
1353	0	13260	5	3
1353	0	13209	5	3
1353	0	13256	5	3
1353	0	13261	5	3
1353	0	13205	4	3
1353	0	10127	3	3
1353	0	10128	3	3
1353	0	10131	4	3
1353	0	13273	4	3
1353	0	10132	5	3
1353	0	13275	5	3
1353	0	13277	8	3
1353	0	13276	7	3
1353	0	13270	7	3
1353	0	13269	7	3
1353	0	13268	7	3
1353	0	10133	6	3
1353	0	13266	6	3
1353	0	13265	6	3
1353	0	13262	6	3
1353	0	13215	6	3
1353	0	13212	6	3
1353	0	13258	5	1
1353	0	13263	6	1
1353	0	13268	7	1
1353	0	10107	2	2
1353	0	10123	3	2
1353	0	10109	2	1
1353	0	13252	4	1
1353	0	13265	6	1
1353	0	13269	7	1
1353	0	10110	2	3
1353	0	13204	4	3
1353	0	13274	5	3
1353	0	13267	7	3
\.


--
-- Data for Name: profesor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profesor (rut, paterno, materno, nombres, correo, fono, vigente) FROM stdin;
\.


--
-- Data for Name: rendimiento_asignatura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rendimiento_asignatura (codigo_asignatura, semestre, anio, promedio, promedio_aprobados, promedio_reprobados, cantidad_aprobados, cantidad_reprobados, cantidad_convalidados, inscritos) FROM stdin;
\.


--
-- Data for Name: rendimiento_carrera; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rendimiento_carrera (codigo_carrera, codigo_asignatura, semestre, anio, promedio, promedio_aprobados, promedio_reprobados, cantidad_aprobados, cantidad_reprobados, cantidad_convalidados, inscritos) FROM stdin;
\.


--
-- Data for Name: rendimiento_tipo_carrera; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rendimiento_tipo_carrera (codigo_tipo_carrera, codigo_asignatura, semestre, anio, promedio, promedio_aprobados, promedio_reprobados, cantidad_aprobados, cantidad_reprobados, cantidad_convalidados, inscritos) FROM stdin;
\.


--
-- Data for Name: seccion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.seccion (id, codigo_asignatura, semestre, anio, electividad, letra, numero) FROM stdin;
\.


--
-- Data for Name: seccion_estudiante; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.seccion_estudiante (id_seccion, rut_estudiante, nota_teoria, nota_laboratorio, nota_final, situacion_final) FROM stdin;
\.


--
-- Data for Name: seccion_profesor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.seccion_profesor (id_seccion, rut_profesor, teoria, ejercicios, laboratorio) FROM stdin;
\.


--
-- Data for Name: tipo_carrera; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipo_carrera (id, nombre, nombre_corto) FROM stdin;
1	INGENIERÍA CIVIL	CIVIL
2	INGENIERÍA DE EJECUCIÓN	EJECUCIÓN
3	INGENIERÍA DE 5 AÑOS	5 AÑOS
4	BACHILLERATO	BACHILLERATO
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangouser
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangouser
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangouser
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 57, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangouser
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangouser
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangouser
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangouser
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangouser
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 19, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangouser
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);


--
-- Name: seccion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seccion_id_seq', 1, false);


--
-- Name: tipo_carrera_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipo_carrera_id_seq', 4, true);


--
-- Name: asignatura asignatura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignatura
    ADD CONSTRAINT asignatura_pkey PRIMARY KEY (codigo);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: carrera carrera_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT carrera_pkey PRIMARY KEY (codigo);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: estudiante estudiante_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT estudiante_pkey PRIMARY KEY (rut);


--
-- Name: profesor profesor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesor
    ADD CONSTRAINT profesor_pkey PRIMARY KEY (rut);


--
-- Name: seccion seccion_codigo_asignatura_anio_semestre_electividad_letra_n_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seccion
    ADD CONSTRAINT seccion_codigo_asignatura_anio_semestre_electividad_letra_n_key UNIQUE (codigo_asignatura, anio, semestre, electividad, letra, numero);


--
-- Name: seccion_estudiante seccion_estudiante_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seccion_estudiante
    ADD CONSTRAINT seccion_estudiante_pkey PRIMARY KEY (id_seccion, rut_estudiante);


--
-- Name: seccion seccion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seccion
    ADD CONSTRAINT seccion_pkey PRIMARY KEY (id);


--
-- Name: seccion_profesor seccion_profesor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seccion_profesor
    ADD CONSTRAINT seccion_profesor_pkey PRIMARY KEY (id_seccion, rut_profesor);


--
-- Name: tipo_carrera tipo_carrera_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_carrera
    ADD CONSTRAINT tipo_carrera_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: djangouser
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: djangouser
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: djangouser
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: djangouser
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: djangouser
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: djangouser
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: djangouser
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: djangouser
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: djangouser
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: djangouser
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: djangouser
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: djangouser
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: djangouser
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: djangouser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: carrera id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT id FOREIGN KEY (id_tipo) REFERENCES public.tipo_carrera(id);


--
-- Name: malla malla_codigo_asignatura_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.malla
    ADD CONSTRAINT malla_codigo_asignatura_fkey FOREIGN KEY (codigo_asignatura) REFERENCES public.asignatura(codigo);


--
-- Name: malla malla_codigo_carrera_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.malla
    ADD CONSTRAINT malla_codigo_carrera_fkey FOREIGN KEY (codigo_carrera) REFERENCES public.carrera(codigo);


--
-- Name: seccion seccion_codigo_asignatura_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seccion
    ADD CONSTRAINT seccion_codigo_asignatura_fkey FOREIGN KEY (codigo_asignatura) REFERENCES public.asignatura(codigo);


--
-- Name: seccion_estudiante seccion_estudiante_id_seccion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seccion_estudiante
    ADD CONSTRAINT seccion_estudiante_id_seccion_fkey FOREIGN KEY (id_seccion) REFERENCES public.seccion(id);


--
-- Name: seccion_estudiante seccion_estudiante_rut_estudiante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seccion_estudiante
    ADD CONSTRAINT seccion_estudiante_rut_estudiante_fkey FOREIGN KEY (rut_estudiante) REFERENCES public.estudiante(rut);


--
-- Name: seccion_profesor seccion_profesor_id_seccion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seccion_profesor
    ADD CONSTRAINT seccion_profesor_id_seccion_fkey FOREIGN KEY (id_seccion) REFERENCES public.seccion(id);


--
-- Name: seccion_profesor seccion_profesor_rut_profesor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seccion_profesor
    ADD CONSTRAINT seccion_profesor_rut_profesor_fkey FOREIGN KEY (rut_profesor) REFERENCES public.profesor(rut);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA public TO djangouser;


--
-- Name: TABLE asignatura; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.asignatura TO djangouser;


--
-- Name: TABLE carrera; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.carrera TO djangouser;


--
-- Name: TABLE estudiante; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.estudiante TO djangouser;


--
-- Name: TABLE malla; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.malla TO djangouser;


--
-- Name: TABLE profesor; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.profesor TO djangouser;


--
-- Name: TABLE rendimiento_asignatura; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.rendimiento_asignatura TO djangouser;


--
-- Name: TABLE rendimiento_carrera; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.rendimiento_carrera TO djangouser;


--
-- Name: TABLE rendimiento_tipo_carrera; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.rendimiento_tipo_carrera TO djangouser;


--
-- Name: TABLE seccion; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.seccion TO djangouser;


--
-- Name: TABLE seccion_estudiante; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.seccion_estudiante TO djangouser;


--
-- Name: TABLE seccion_profesor; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.seccion_profesor TO djangouser;


--
-- Name: TABLE tipo_carrera; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.tipo_carrera TO djangouser;


--
-- PostgreSQL database dump complete
--

