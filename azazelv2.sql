--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

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
    nombre character varying(50) NOT NULL
);


ALTER TABLE public.asignatura OWNER TO postgres;

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
-- Name: carrera_asignatura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carrera_asignatura (
    codigo_carrera integer NOT NULL,
    codigo_asignatura integer NOT NULL
);


ALTER TABLE public.carrera_asignatura OWNER TO postgres;

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
-- Name: rendimiento_carrera; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rendimiento_carrera (
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


ALTER TABLE public.rendimiento_carrera OWNER TO postgres;

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

COPY public.asignatura (codigo, nombre) FROM stdin;
10110	FUNDAMENTOS DE COMPUTACIÓN Y PROGRAMACIÓN
10126	MÉTODOS DE ESTUDIO
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
1868	INGENIERIA CIVIL OBRAS CIVILES	1
\.


--
-- Data for Name: carrera_asignatura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carrera_asignatura (codigo_carrera, codigo_asignatura) FROM stdin;
\.


--
-- Data for Name: estudiante; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estudiante (rut, paterno, materno, nombres, correo, fono) FROM stdin;
\.


--
-- Data for Name: profesor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profesor (rut, paterno, materno, nombres, correo, fono, vigente) FROM stdin;
\.


--
-- Data for Name: rendimiento_carrera; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rendimiento_carrera (codigo_carrera, codigo_asignatura, semestre, anio, semestre_etiqueta, promedio, promedio_aprobados, promedio_reprobados, aprobados, reprobados, inscritos) FROM stdin;
1340	10110	2	2012	\N	3.43	4.73	2.82	16	34	50
1340	10110	1	2013	\N	3.88	4.65	2.95	17	15	32
1340	10110	2	2013	\N	4.20	4.72	3.45	19	16	35
1340	10110	1	2014	\N	4.07	4.69	2.63	14	7	21
1340	10110	3	2014	'INVIERNO'	4.60	4.60	\N	1	0	1
1340	10110	2	2014	\N	3.89	5.15	2.63	21	21	42
1340	10110	4	2014	'VERANO'	4.70	4.70	\N	1	0	1
1340	10110	1	2015	\N	3.61	4.54	2.69	8	10	18
1340	10110	2	2015	\N	4.03	4.77	2.83	13	8	21
1340	10110	1	2016	\N	3.84	4.88	2.63	14	13	27
1340	10110	2	2016	\N	3.79	4.84	2.67	16	15	31
1340	10110	4	2016	'VERANO'	5.00	5.00	\N	2	0	2
1340	10110	1	2017	\N	4.28	4.69	2.85	14	4	18
1341	10110	2	2012	\N	3.42	4.73	2.92	11	29	40
1341	10110	4	2012	'REMEDIAL'	5.25	5.25	\N	2	0	2
1341	10110	1	2013	\N	3.83	4.59	2.75	17	13	30
1341	10110	2	2013	\N	4.09	4.75	2.82	25	17	42
1341	10110	1	2014	\N	4.32	4.65	2.78	24	6	30
1341	10110	3	2014	'INVIERNO'	4.80	4.80	\N	2	0	2
1341	10110	2	2014	\N	3.78	4.96	2.40	22	19	41
1341	10110	4	2014	'VERANO'	3.40	4.80	2.00	1	1	2
1341	10110	1	2015	\N	3.31	4.63	2.43	6	10	16
1341	10110	2	2015	\N	3.47	4.73	2.28	17	19	36
1341	10110	1	2016	\N	4.34	4.87	2.35	15	4	19
1341	10110	3	2016	'INVIERNO'	4.03	4.95	2.20	2	1	3
1341	10110	2	2016	\N	3.36	4.78	2.84	9	25	34
1341	10110	1	2017	\N	4.39	4.95	2.83	22	8	30
1349	10110	2	2012	\N	3.42	4.60	2.91	11	29	40
1349	10110	4	2012	'REMEDIAL'	5.25	6.20	\N	2	0	2
1349	10110	1	2013	\N	3.83	4.69	2.99	17	13	30
1349	10110	2	2013	\N	4.09	4.52	2.88	25	17	42
1349	10110	1	2014	\N	4.32	4.71	3.15	24	6	30
1349	10110	3	2014	'INVIERNO'	4.80	4.30	\N	2	0	2
1349	10110	2	2014	\N	3.78	5.02	2.61	22	19	41
1349	10110	4	2014	'VERANO'	3.40	4.37	\N	1	1	2
1349	10110	1	2015	\N	3.31	4.95	3.06	6	10	16
1349	10110	2	2015	\N	3.47	5.04	2.84	17	19	36
1349	10110	1	2016	\N	4.34	5.25	2.83	15	4	19
1349	10110	3	2016	'INVIERNO'	4.03	4.50	3.30	2	1	3
1349	10110	2	2016	\N	3.36	4.81	2.63	9	25	34
1349	10110	1	2017	\N	4.39	4.83	2.51	22	8	30
1351	10110	2	2012	\N	3.51	4.79	2.89	24	53	77
1351	10110	4	2012	'REMEDIAL'	6.63	6.63	\N	3	0	3
1351	10110	1	2013	\N	4.07	4.77	2.85	30	19	49
1351	10110	2	2013	\N	3.60	4.74	2.76	34	60	94
1351	10110	1	2014	\N	4.58	4.81	3.27	34	11	45
1351	10110	3	2014	'INVIERNO'	4.33	4.33	\N	4	0	4
1351	10110	2	2014	\N	4.28	5.06	2.59	39	19	58
1351	10110	4	2014	'VERANO'	4.87	4.87	\N	3	0	3
1351	10110	1	2015	\N	3.98	4.68	2.35	14	7	21
1351	10110	2	2015	\N	3.37	5.12	2.58	18	43	61
1351	10110	1	2016	\N	4.46	4.98	1.98	24	6	30
1351	10110	3	2016	'INVIERNO'	4.68	4.86	2.90	10	1	11
1351	10110	2	2016	\N	3.56	4.76	2.89	19	35	54
1351	10110	4	2016	'VERANO'	5.20	5.20	\N	1	0	1
1351	10110	1	2017	\N	3.79	4.71	2.41	27	19	46
1352	10110	2	2012	\N	3.22	4.64	2.80	8	28	36
1352	10110	1	2013	\N	3.57	4.41	2.52	16	13	29
1352	10110	2	2013	\N	3.78	4.66	2.77	14	17	31
1352	10110	1	2014	\N	4.27	4.67	3.47	18	11	29
1352	10110	3	2014	'INVIERNO'	4.10	4.10	\N	1	0	1
1352	10110	2	2014	\N	3.64	4.94	2.42	17	18	35
1352	10110	4	2014	'VERANO'	3.43	4.50	1.30	2	1	3
1352	10110	1	2015	\N	3.71	4.54	2.68	10	10	20
1352	10110	2	2015	\N	3.63	4.70	2.73	16	19	35
1352	10110	1	2016	\N	4.32	4.88	2.93	10	4	14
1352	10110	3	2016	'INVIERNO'	5.70	5.70	\N	4	0	4
1352	10110	2	2016	\N	3.01	4.61	2.21	7	15	22
1352	10110	4	2016	'VERANO'	5.30	5.30	\N	2	0	2
1352	10110	1	2017	\N	3.73	4.73	2.82	10	11	21
1353	10110	2	2012	\N	4.00	4.85	3.11	24	23	47
1353	10110	4	2012	'REMEDIAL'	4.90	4.90	\N	1	0	1
1353	10110	1	2013	\N	4.40	4.62	2.95	13	2	15
1353	10110	2	2013	\N	4.64	5.22	3.13	26	13	39
1353	10110	1	2014	\N	4.99	4.99	\N	7	0	7
1353	10110	3	2014	'INVIERNO'	4.70	4.70	\N	2	0	2
1353	10110	2	2014	\N	4.87	5.26	2.93	20	4	24
1353	10110	4	2014	'VERANO'	5.00	5.00	\N	1	0	1
1353	10110	1	2015	\N	4.49	5.34	2.35	10	4	14
1353	10110	2	2015	\N	4.77	5.22	3.12	18	6	24
1353	10110	1	2016	\N	4.19	5.11	2.58	7	4	11
1353	10110	2	2016	\N	4.35	5.11	2.92	17	9	26
1353	10110	1	2017	\N	3.69	4.78	2.44	8	9	17
1354	10110	2	2012	\N	3.79	4.77	2.92	38	44	82
1354	10110	4	2012	'REMEDIAL'	5.37	5.37	\N	3	0	3
1354	10110	1	2013	\N	3.87	4.56	3.02	20	17	37
1354	10110	2	2013	\N	3.89	4.66	2.85	55	52	107
1354	10110	1	2014	\N	4.44	4.69	3.10	32	7	39
1354	10110	3	2014	'INVIERNO'	4.60	4.60	\N	3	0	3
1354	10110	2	2014	\N	4.14	4.96	2.63	55	31	86
1354	10110	4	2014	'VERANO'	4.53	4.80	3.70	3	1	4
1354	10110	1	2015	\N	3.66	4.70	2.68	16	17	33
1354	10110	2	2015	\N	3.80	5.12	2.83	35	48	83
1354	10110	1	2016	\N	4.90	5.23	2.97	41	7	48
1354	10110	3	2016	'INVIERNO'	4.22	4.22	\N	5	0	5
1354	10110	2	2016	\N	4.15	4.76	2.89	52	25	77
1354	10110	4	2016	'VERANO'	4.60	4.60	\N	1	0	1
1354	10110	1	2017	\N	4.24	4.83	2.41	22	7	29
1355	10110	2	2012	\N	3.05	4.60	2.70	10	46	56
1355	10110	4	2012	'REMEDIAL'	5.48	5.48	\N	4	0	4
1355	10110	1	2013	\N	4.28	4.58	3.05	24	7	31
1355	10110	2	2013	\N	3.65	4.60	2.96	27	45	72
1355	10110	1	2014	\N	4.18	4.73	2.68	33	17	50
1355	10110	3	2014	'INVIERNO'	4.83	4.83	\N	3	0	3
1355	10110	2	2014	\N	4.37	5.01	2.98	39	21	60
1355	10110	4	2014	'VERANO'	4.30	4.30	\N	1	0	1
1355	10110	1	2015	\N	3.91	4.79	2.39	12	10	22
1355	10110	2	2015	\N	3.88	5.16	2.54	26	27	53
1355	10110	1	2016	\N	4.71	5.01	3.13	21	5	26
1355	10110	3	2016	'INVIERNO'	3.55	4.00	3.10	2	2	4
1355	10110	2	2016	\N	4.15	4.89	2.97	21	13	34
1355	10110	4	2016	'VERANO'	5.00	5.00	\N	1	0	1
1355	10110	1	2017	\N	3.95	5.07	2.46	12	9	21
1356	10110	2	2012	\N	3.29	4.92	2.71	10	29	39
1356	10110	4	2012	'REMEDIAL'	5.35	5.35	\N	2	0	2
1356	10110	1	2013	\N	4.01	4.47	3.02	13	6	19
1356	10110	2	2013	\N	4.05	4.75	3.18	25	26	51
1356	10110	1	2014	\N	4.44	4.44	\N	16	1	17
1356	10110	3	2014	'INVIERNO'	4.65	4.65	\N	2	0	2
1356	10110	2	2014	\N	3.93	4.87	2.86	16	14	30
1356	10110	4	2014	'VERANO'	5.10	5.10	\N	2	0	2
1356	10110	1	2015	\N	3.97	4.69	2.73	12	7	19
1356	10110	2	2015	\N	3.58	4.85	2.85	11	19	30
1356	10110	1	2016	\N	4.10	5.13	2.73	16	12	28
1356	10110	3	2016	'INVIERNO'	4.65	4.65	\N	2	0	2
1356	10110	2	2016	\N	3.61	4.57	2.59	16	15	31
1356	10110	4	2016	'VERANO'	4.82	4.82	\N	6	0	6
1356	10110	1	2017	\N	3.97	4.64	2.91	14	9	23
1357	10110	2	2012	\N	3.60	4.98	2.69	25	41	66
1357	10110	4	2012	'REMEDIAL'	5.80	5.80	\N	2	0	2
1357	10110	1	2013	\N	4.33	4.68	2.99	31	9	40
1357	10110	2	2013	\N	3.96	4.70	2.97	36	33	69
1357	10110	1	2014	\N	4.13	4.86	3.21	10	9	19
1357	10110	3	2014	'INVIERNO'	4.76	4.76	\N	5	0	5
1357	10110	2	2014	\N	3.98	4.80	2.65	33	21	54
1357	10110	4	2014	'VERANO'	5.20	5.20	\N	1	0	1
1357	10110	1	2015	\N	4.11	4.71	2.74	16	9	25
1357	10110	2	2015	\N	3.52	4.99	2.66	14	24	38
1357	10110	1	2016	\N	4.09	4.91	2.93	17	12	29
1357	10110	3	2016	'INVIERNO'	4.52	4.52	\N	5	0	5
1357	10110	2	2016	\N	3.49	4.77	2.28	18	19	37
1357	10110	4	2016	'VERANO'	4.70	4.95	3.70	4	1	5
1357	10110	1	2017	\N	3.76	4.71	2.88	15	16	31
1359	10110	2	2012	\N	3.34	4.65	2.74	17	38	55
1359	10110	4	2012	'REMEDIAL'	4.40	4.40	\N	1	0	1
1359	10110	1	2013	\N	3.77	4.51	2.92	15	13	28
1359	10110	2	2013	\N	3.97	4.56	3.28	20	23	43
1359	10110	1	2014	\N	4.25	4.59	3.18	19	10	29
1359	10110	3	2014	'INVIERNO'	4.60	4.60	\N	1	0	1
1359	10110	2	2014	\N	3.73	4.88	2.69	19	22	41
1359	10110	4	2014	'VERANO'	4.14	4.70	3.30	3	2	5
1359	10110	1	2015	\N	3.71	4.59	2.83	10	12	22
1359	10110	2	2015	\N	3.32	4.81	2.54	10	19	29
1359	10110	1	2016	\N	3.39	4.82	2.22	9	11	20
1359	10110	3	2016	'INVIERNO'	5.00	5.00	\N	2	0	2
1359	10110	2	2016	\N	3.48	4.84	2.70	14	25	39
1359	10110	4	2016	'VERANO'	4.67	4.67	\N	3	0	3
1359	10110	1	2017	\N	4.29	4.86	2.74	19	7	26
1361	10110	2	2012	\N	3.75	4.85	2.90	64	86	150
1361	10110	4	2012	'REMEDIAL'	4.97	4.97	\N	6	0	6
1361	10110	1	2013	\N	4.10	4.69	2.78	57	27	84
1361	10110	2	2013	\N	4.15	4.93	2.87	72	71	143
1361	10110	1	2014	\N	4.44	4.90	2.95	43	23	66
1361	10110	3	2014	'INVIERNO'	4.50	4.50	\N	2	0	2
1361	10110	2	2014	\N	4.40	5.10	2.46	77	30	107
1361	10110	4	2014	'VERANO'	4.04	5.00	3.40	2	3	5
1361	10110	1	2015	\N	3.95	4.70	3.07	14	14	28
1361	10110	2	2015	\N	3.17	4.80	2.52	29	75	104
1361	10110	1	2016	\N	4.37	5.11	2.46	57	22	79
1361	10110	3	2016	'INVIERNO'	4.78	5.15	3.30	4	1	5
1361	10110	2	2016	\N	3.53	4.93	2.51	39	57	96
1361	10110	4	2016	'VERANO'	4.82	4.82	\N	6	1	7
1361	10110	1	2017	\N	4.61	5.04	2.94	42	12	54
1362	10110	2	2012	\N	3.78	4.75	2.89	10	11	21
1362	10110	4	2012	'REMEDIAL'	5.60	5.60	\N	1	0	1
1362	10110	1	2013	\N	4.04	4.74	3.10	8	7	15
1362	10110	2	2013	\N	4.22	4.52	3.30	19	9	28
1362	10110	1	2014	\N	4.12	4.64	2.93	9	6	15
1362	10110	3	2014	'INVIERNO'	4.90	4.90	\N	1	0	1
1362	10110	2	2014	\N	4.23	5.11	2.83	16	11	27
1362	10110	4	2014	'VERANO'	4.00	4.85	2.30	2	1	3
1362	10110	1	2015	\N	3.77	5.07	2.66	6	8	14
1362	10110	2	2015	\N	3.56	4.73	2.30	13	12	25
1362	10110	1	2016	\N	4.13	4.71	2.55	11	4	15
1362	10110	3	2016	'INVIERNO'	3.55	4.00	3.10	1	1	2
1362	10110	2	2016	\N	3.30	4.96	2.74	5	15	20
1362	10110	4	2016	'VERANO'	5.60	5.60	\N	1	0	1
1362	10110	1	2017	\N	4.17	5.06	2.68	10	6	16
1363	10110	2	2012	\N	4.37	5.13	3.06	55	35	90
1363	10110	4	2012	'REMEDIAL'	6.54	6.54	\N	5	0	5
1363	10110	1	2013	\N	4.45	4.89	3.15	24	8	32
1363	10110	2	2013	\N	4.50	5.05	3.12	53	32	85
1363	10110	1	2014	\N	5.02	5.14	3.10	16	2	18
1363	10110	3	2014	'INVIERNO'	4.80	4.80	\N	1	0	1
1363	10110	2	2014	\N	4.82	5.13	3.34	52	11	63
1363	10110	4	2014	'VERANO'	4.80	4.80	\N	7	0	7
1363	10110	1	2015	\N	3.79	4.89	2.93	7	10	17
1363	10110	2	2015	\N	4.20	5.21	2.76	39	27	66
1363	10110	1	2016	\N	4.82	5.32	2.82	24	7	31
1363	10110	3	2016	'INVIERNO'	5.15	5.15	\N	2	0	2
1363	10110	2	2016	\N	4.43	5.09	2.80	42	18	60
1363	10110	4	2016	'VERANO'	5.00	5.00	\N	3	0	3
1363	10110	1	2017	\N	4.32	4.93	2.62	14	5	19
1364	10110	2	2012	\N	4.41	4.85	3.32	97	40	137
1364	10110	4	2012	'REMEDIAL'	6.10	6.10	\N	2	0	2
1364	10110	1	2013	\N	4.53	4.79	3.04	40	7	47
1364	10110	2	2013	\N	4.32	4.84	3.05	87	42	129
1364	10110	1	2014	\N	4.49	4.79	3.20	35	8	43
1364	10110	3	2014	'INVIERNO'	4.83	4.83	\N	4	0	4
1364	10110	2	2014	\N	4.45	5.12	2.74	76	30	106
1364	10110	4	2014	'VERANO'	4.37	5.20	2.70	2	1	3
1364	10110	1	2015	\N	3.66	4.67	2.48	20	20	40
1364	10110	2	2015	\N	4.33	5.17	2.93	77	50	127
1364	10110	1	2016	\N	4.87	5.18	2.53	46	8	54
1364	10110	3	2016	'INVIERNO'	3.94	5.00	2.35	3	2	5
1364	10110	2	2016	\N	4.27	5.03	2.93	70	40	110
1364	10110	4	2016	'VERANO'	4.70	4.70	\N	3	0	3
1364	10110	1	2017	\N	4.10	4.98	2.98	27	21	48
1365	10110	2	2012	\N	3.77	4.90	2.84	82	103	185
1365	10110	4	2012	'REMEDIAL'	6.10	6.10	\N	2	0	2
1365	10110	1	2013	\N	3.96	4.63	3.01	48	35	83
1365	10110	2	2013	\N	4.10	4.68	2.88	97	65	162
1365	10110	1	2014	\N	4.33	4.77	2.75	43	16	59
1365	10110	3	2014	'INVIERNO'	4.73	4.73	\N	3	0	3
1365	10110	2	2014	\N	4.49	5.11	2.75	79	28	107
1365	10110	4	2014	'VERANO'	4.53	4.96	3.45	5	2	7
1365	10110	1	2015	\N	4.35	4.56	2.95	27	8	35
1365	10110	2	2015	\N	4.24	5.21	2.93	50	40	90
1365	10110	1	2016	\N	4.48	5.06	2.30	41	11	52
1365	10110	3	2016	'INVIERNO'	3.60	1.00	3.60	0	1	1
1365	10110	2	2016	\N	4.19	5.00	2.91	48	34	82
1365	10110	4	2016	'VERANO'	5.20	5.20	\N	3	0	3
1365	10110	1	2017	\N	3.77	4.96	2.58	18	19	37
1366	10110	2	2012	\N	3.82	4.78	2.61	34	31	65
1366	10110	4	2012	'REMEDIAL'	5.23	5.23	\N	3	0	3
1366	10110	1	2013	\N	4.07	4.63	3.00	19	10	29
1366	10110	2	2013	\N	4.39	4.86	3.38	43	30	73
1366	10110	1	2014	\N	4.17	4.68	2.90	15	8	23
1366	10110	3	2014	'INVIERNO'	4.30	4.30	\N	1	0	1
1366	10110	2	2014	\N	4.30	5.00	2.76	31	14	45
1366	10110	4	2014	'VERANO'	5.80	5.80	\N	1	0	1
1366	10110	1	2015	\N	3.76	5.15	2.83	4	6	10
1366	10110	2	2015	\N	3.60	4.75	2.64	15	18	33
1366	10110	1	2016	\N	3.42	4.93	2.67	11	22	33
1366	10110	3	2016	'INVIERNO'	4.80	4.80	\N	4	0	4
1366	10110	2	2016	\N	3.61	4.71	2.62	24	28	52
1366	10110	4	2016	'VERANO'	5.23	5.23	\N	3	0	3
1366	10110	1	2017	\N	3.64	4.98	1.78	18	13	31
1367	10110	2	2012	\N	4.15	4.93	2.80	85	51	136
1367	10110	4	2012	'REMEDIAL'	5.55	5.55	\N	8	0	8
1367	10110	1	2013	\N	4.36	4.74	3.09	47	14	61
1367	10110	2	2013	\N	4.57	4.96	3.03	110	42	152
1367	10110	1	2014	\N	4.46	4.77	3.29	26	10	36
1367	10110	3	2014	'INVIERNO'	4.55	4.55	\N	2	0	2
1367	10110	2	2014	\N	4.51	5.16	2.76	89	34	123
1367	10110	4	2014	'VERANO'	4.86	4.86	\N	7	0	7
1367	10110	1	2015	\N	3.85	4.62	3.02	15	14	29
1367	10110	2	2015	\N	3.66	4.85	2.82	47	68	115
1367	10110	1	2016	\N	4.54	4.95	3.01	52	14	66
1367	10110	3	2016	'INVIERNO'	4.77	4.77	\N	6	0	6
1367	10110	2	2016	\N	3.01	4.77	2.59	12	51	63
1367	10110	4	2016	'VERANO'	4.97	4.97	\N	11	0	11
1367	10110	1	2017	\N	4.18	4.85	3.11	27	18	45
1368	10110	2	2012	\N	4.08	4.84	3.04	57	42	99
1368	10110	4	2012	'REMEDIAL'	5.40	5.40	\N	2	0	2
1368	10110	1	2013	\N	4.44	4.81	3.24	36	11	47
1368	10110	2	2013	\N	3.95	4.68	2.88	55	42	97
1368	10110	1	2014	\N	4.54	4.86	3.00	28	7	35
1368	10110	3	2014	'INVIERNO'	4.77	4.77	\N	3	0	3
1368	10110	2	2014	\N	4.06	5.06	2.53	41	29	70
1368	10110	4	2014	'VERANO'	4.85	4.85	\N	6	0	6
1368	10110	1	2015	\N	3.63	4.47	3.10	9	16	25
1368	10110	2	2015	\N	3.61	4.85	2.51	36	41	77
1368	10110	1	2016	\N	4.49	5.20	2.72	32	13	45
1368	10110	3	2016	'INVIERNO'	4.90	4.90	\N	1	0	1
1368	10110	2	2016	\N	3.30	4.98	2.35	23	44	67
1368	10110	4	2016	'VERANO'	4.37	5.50	2.10	2	1	3
1368	10110	1	2017	\N	4.31	4.89	2.39	33	10	43
1369	10110	2	2012	\N	3.86	4.81	2.93	37	38	75
1369	10110	4	2012	'REMEDIAL'	5.65	5.65	\N	4	0	4
1369	10110	1	2013	\N	4.05	4.51	3.21	29	16	45
1369	10110	2	2013	\N	3.98	4.63	2.83	46	27	73
1369	10110	1	2014	\N	4.34	4.82	3.16	22	11	33
1369	10110	3	2014	'INVIERNO'	4.30	4.30	\N	1	0	1
1369	10110	2	2014	\N	3.85	4.98	2.79	30	32	62
1369	10110	4	2014	'VERANO'	4.65	5.13	3.20	3	1	4
1369	10110	1	2015	\N	3.60	4.44	2.61	21	18	39
1369	10110	2	2015	\N	4.49	5.03	3.09	42	17	59
1369	10110	1	2016	\N	4.66	4.96	1.80	19	3	22
1369	10110	3	2016	'INVIERNO'	5.00	5.00	\N	1	0	1
1369	10110	2	2016	\N	3.32	4.76	2.62	14	30	44
1369	10110	4	2016	'VERANO'	5.50	5.50	\N	1	0	1
1369	10110	1	2017	\N	4.40	4.99	2.49	23	7	30
1340	10110	4	2012	'REMEDIAL'	\N	4.80	\N	2	0	2
1340	10110	3	2016	'INVIERNO'	\N	\N	\N	0	0	0
1341	10110	4	2016	'VERANO'	\N	1.00	\N	0	0	0
1349	10110	4	2016	'VERANO'	\N	5.30	\N	0	0	0
1352	10110	4	2012	'REMEDIAL'	\N	1.00	\N	0	0	0
1353	10110	3	2016	'INVIERNO'	\N	1.00	\N	0	0	0
1353	10110	4	2016	'VERANO'	\N	1.00	\N	0	0	0
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
-- Name: carrera_asignatura carrera_asignatura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrera_asignatura
    ADD CONSTRAINT carrera_asignatura_pkey PRIMARY KEY (codigo_carrera, codigo_asignatura);


--
-- Name: carrera carrera_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT carrera_pkey PRIMARY KEY (codigo);


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
-- Name: rendimiento_carrera rendimiento_carrera_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rendimiento_carrera
    ADD CONSTRAINT rendimiento_carrera_pkey PRIMARY KEY (codigo_carrera, codigo_asignatura, semestre, anio);


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
-- Name: carrera_asignatura carrera_asignatura_codigo_asignatura_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrera_asignatura
    ADD CONSTRAINT carrera_asignatura_codigo_asignatura_fkey FOREIGN KEY (codigo_asignatura) REFERENCES public.asignatura(codigo);


--
-- Name: carrera_asignatura carrera_asignatura_codigo_carrera_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrera_asignatura
    ADD CONSTRAINT carrera_asignatura_codigo_carrera_fkey FOREIGN KEY (codigo_carrera) REFERENCES public.carrera(codigo);


--
-- Name: carrera id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT id FOREIGN KEY (id_tipo) REFERENCES public.tipo_carrera(id);


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
-- Name: TABLE asignatura; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.asignatura TO djangouser;


--
-- Name: TABLE carrera; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.carrera TO djangouser;


--
-- Name: TABLE carrera_asignatura; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.carrera_asignatura TO djangouser;


--
-- Name: TABLE estudiante; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.estudiante TO djangouser;


--
-- Name: TABLE profesor; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.profesor TO djangouser;


--
-- Name: TABLE rendimiento_carrera; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.rendimiento_carrera TO djangouser;


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

