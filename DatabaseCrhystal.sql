--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 17.4

-- Started on 2025-04-07 20:19:19

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 227 (class 1259 OID 90144)
-- Name: administrador; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.administrador (
    id_admin integer NOT NULL,
    correo character varying,
    "contraseña" character varying,
    id_registro integer NOT NULL
);


ALTER TABLE public.administrador OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 90142)
-- Name: Administrador_id_admin_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Administrador_id_admin_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Administrador_id_admin_seq" OWNER TO postgres;

--
-- TOC entry 3467 (class 0 OID 0)
-- Dependencies: 225
-- Name: Administrador_id_admin_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Administrador_id_admin_seq" OWNED BY public.administrador.id_admin;


--
-- TOC entry 226 (class 1259 OID 90143)
-- Name: Administrador_id_registro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Administrador_id_registro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Administrador_id_registro_seq" OWNER TO postgres;

--
-- TOC entry 3468 (class 0 OID 0)
-- Dependencies: 226
-- Name: Administrador_id_registro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Administrador_id_registro_seq" OWNED BY public.administrador.id_registro;


--
-- TOC entry 220 (class 1259 OID 90125)
-- Name: registro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.registro (
    "ID_Registro" integer NOT NULL,
    correo character varying,
    "contraseña" character varying,
    apodo character varying
);


ALTER TABLE public.registro OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 90124)
-- Name: Registro_ID_Registro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Registro_ID_Registro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Registro_ID_Registro_seq" OWNER TO postgres;

--
-- TOC entry 3469 (class 0 OID 0)
-- Dependencies: 219
-- Name: Registro_ID_Registro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Registro_ID_Registro_seq" OWNED BY public.registro."ID_Registro";


--
-- TOC entry 241 (class 1259 OID 90200)
-- Name: actividades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actividades (
    id_recom integer NOT NULL,
    nombre character varying,
    nivel integer
);


ALTER TABLE public.actividades OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 90199)
-- Name: actividades_id_recom_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.actividades_id_recom_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.actividades_id_recom_seq OWNER TO postgres;

--
-- TOC entry 3470 (class 0 OID 0)
-- Dependencies: 240
-- Name: actividades_id_recom_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.actividades_id_recom_seq OWNED BY public.actividades.id_recom;


--
-- TOC entry 217 (class 1259 OID 57361)
-- Name: chatbot; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.chatbot (
    id_chatbot integer NOT NULL,
    "id_preguntaCB" integer NOT NULL,
    "id_respuestaCB" integer NOT NULL
);


ALTER TABLE public.chatbot OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 57358)
-- Name: chatbot_id_chatbot_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.chatbot_id_chatbot_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.chatbot_id_chatbot_seq OWNER TO postgres;

--
-- TOC entry 3471 (class 0 OID 0)
-- Dependencies: 214
-- Name: chatbot_id_chatbot_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.chatbot_id_chatbot_seq OWNED BY public.chatbot.id_chatbot;


--
-- TOC entry 215 (class 1259 OID 57359)
-- Name: chatbot_id_preguntaCB_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."chatbot_id_preguntaCB_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."chatbot_id_preguntaCB_seq" OWNER TO postgres;

--
-- TOC entry 3472 (class 0 OID 0)
-- Dependencies: 215
-- Name: chatbot_id_preguntaCB_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."chatbot_id_preguntaCB_seq" OWNED BY public.chatbot."id_preguntaCB";


--
-- TOC entry 216 (class 1259 OID 57360)
-- Name: chatbot_id_respuestaCB_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."chatbot_id_respuestaCB_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."chatbot_id_respuestaCB_seq" OWNER TO postgres;

--
-- TOC entry 3473 (class 0 OID 0)
-- Dependencies: 216
-- Name: chatbot_id_respuestaCB_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."chatbot_id_respuestaCB_seq" OWNED BY public.chatbot."id_respuestaCB";


--
-- TOC entry 245 (class 1259 OID 90211)
-- Name: llamada; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.llamada (
    id_llamada integer NOT NULL,
    id_usu1 integer NOT NULL,
    id_usu2 integer NOT NULL,
    "urlGraba" character varying,
    "FechaHora" date
);


ALTER TABLE public.llamada OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 90208)
-- Name: llamada_id_llamada_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.llamada_id_llamada_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llamada_id_llamada_seq OWNER TO postgres;

--
-- TOC entry 3474 (class 0 OID 0)
-- Dependencies: 242
-- Name: llamada_id_llamada_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.llamada_id_llamada_seq OWNED BY public.llamada.id_llamada;


--
-- TOC entry 243 (class 1259 OID 90209)
-- Name: llamada_id_usu1_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.llamada_id_usu1_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llamada_id_usu1_seq OWNER TO postgres;

--
-- TOC entry 3475 (class 0 OID 0)
-- Dependencies: 243
-- Name: llamada_id_usu1_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.llamada_id_usu1_seq OWNED BY public.llamada.id_usu1;


--
-- TOC entry 244 (class 1259 OID 90210)
-- Name: llamada_id_usu2_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.llamada_id_usu2_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llamada_id_usu2_seq OWNER TO postgres;

--
-- TOC entry 3476 (class 0 OID 0)
-- Dependencies: 244
-- Name: llamada_id_usu2_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.llamada_id_usu2_seq OWNED BY public.llamada.id_usu2;


--
-- TOC entry 236 (class 1259 OID 90180)
-- Name: pregunta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pregunta (
    id_pregunta integer NOT NULL,
    nombre character varying(100),
    descripcion character varying(400)
);


ALTER TABLE public.pregunta OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 49210)
-- Name: preguntaCB; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."preguntaCB" (
    id_pregunta integer NOT NULL,
    tipo character varying,
    "PaClave" character varying,
    descripcion character varying(200),
    cantidad integer,
    id_resp integer NOT NULL
);


ALTER TABLE public."preguntaCB" OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 49209)
-- Name: preguntaCB_id_pregunta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."preguntaCB_id_pregunta_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."preguntaCB_id_pregunta_seq" OWNER TO postgres;

--
-- TOC entry 3477 (class 0 OID 0)
-- Dependencies: 209
-- Name: preguntaCB_id_pregunta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."preguntaCB_id_pregunta_seq" OWNED BY public."preguntaCB".id_pregunta;


--
-- TOC entry 218 (class 1259 OID 65569)
-- Name: preguntaCB_id_resp_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."preguntaCB_id_resp_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."preguntaCB_id_resp_seq" OWNER TO postgres;

--
-- TOC entry 3478 (class 0 OID 0)
-- Dependencies: 218
-- Name: preguntaCB_id_resp_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."preguntaCB_id_resp_seq" OWNED BY public."preguntaCB".id_resp;


--
-- TOC entry 235 (class 1259 OID 90179)
-- Name: pregunta_id_pregunta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pregunta_id_pregunta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pregunta_id_pregunta_seq OWNER TO postgres;

--
-- TOC entry 3479 (class 0 OID 0)
-- Dependencies: 235
-- Name: pregunta_id_pregunta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pregunta_id_pregunta_seq OWNED BY public.pregunta.id_pregunta;


--
-- TOC entry 212 (class 1259 OID 49217)
-- Name: respuestaCB; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."respuestaCB" (
    id_respuesta integer NOT NULL,
    descripcion character varying,
    tipo character varying,
    "PaClave" character varying,
    cantidad integer,
    id_pregunta integer NOT NULL
);


ALTER TABLE public."respuestaCB" OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 49227)
-- Name: respuestaCB_id_pregunta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."respuestaCB_id_pregunta_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."respuestaCB_id_pregunta_seq" OWNER TO postgres;

--
-- TOC entry 3480 (class 0 OID 0)
-- Dependencies: 213
-- Name: respuestaCB_id_pregunta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."respuestaCB_id_pregunta_seq" OWNED BY public."respuestaCB".id_pregunta;


--
-- TOC entry 211 (class 1259 OID 49216)
-- Name: respuestaCB_id_respuesta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."respuestaCB_id_respuesta_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."respuestaCB_id_respuesta_seq" OWNER TO postgres;

--
-- TOC entry 3481 (class 0 OID 0)
-- Dependencies: 211
-- Name: respuestaCB_id_respuesta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."respuestaCB_id_respuesta_seq" OWNED BY public."respuestaCB".id_respuesta;


--
-- TOC entry 239 (class 1259 OID 90190)
-- Name: respuestas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.respuestas (
    id_respuesta integer NOT NULL,
    descripcion character varying,
    id_pregunta integer NOT NULL
);


ALTER TABLE public.respuestas OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 90189)
-- Name: respuestas_id_pregunta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.respuestas_id_pregunta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.respuestas_id_pregunta_seq OWNER TO postgres;

--
-- TOC entry 3482 (class 0 OID 0)
-- Dependencies: 238
-- Name: respuestas_id_pregunta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.respuestas_id_pregunta_seq OWNED BY public.respuestas.id_pregunta;


--
-- TOC entry 237 (class 1259 OID 90188)
-- Name: respuestas_id_respuesta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.respuestas_id_respuesta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.respuestas_id_respuesta_seq OWNER TO postgres;

--
-- TOC entry 3483 (class 0 OID 0)
-- Dependencies: 237
-- Name: respuestas_id_respuesta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.respuestas_id_respuesta_seq OWNED BY public.respuestas.id_respuesta;


--
-- TOC entry 224 (class 1259 OID 90136)
-- Name: rol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rol (
    id_rol integer NOT NULL,
    id_usuario integer NOT NULL,
    id_admin integer NOT NULL
);


ALTER TABLE public.rol OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 90135)
-- Name: rol_id_admin_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rol_id_admin_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rol_id_admin_seq OWNER TO postgres;

--
-- TOC entry 3484 (class 0 OID 0)
-- Dependencies: 223
-- Name: rol_id_admin_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rol_id_admin_seq OWNED BY public.rol.id_admin;


--
-- TOC entry 221 (class 1259 OID 90133)
-- Name: rol_id_rol_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rol_id_rol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rol_id_rol_seq OWNER TO postgres;

--
-- TOC entry 3485 (class 0 OID 0)
-- Dependencies: 221
-- Name: rol_id_rol_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rol_id_rol_seq OWNED BY public.rol.id_rol;


--
-- TOC entry 222 (class 1259 OID 90134)
-- Name: rol_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rol_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rol_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 3486 (class 0 OID 0)
-- Dependencies: 222
-- Name: rol_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rol_id_usuario_seq OWNED BY public.rol.id_usuario;


--
-- TOC entry 234 (class 1259 OID 90169)
-- Name: test; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test (
    id_test integer NOT NULL,
    id_usuario integer NOT NULL,
    id_pregunta integer NOT NULL,
    respuestas character varying
);


ALTER TABLE public.test OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 90168)
-- Name: test_id_pregunta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.test_id_pregunta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.test_id_pregunta_seq OWNER TO postgres;

--
-- TOC entry 3487 (class 0 OID 0)
-- Dependencies: 233
-- Name: test_id_pregunta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.test_id_pregunta_seq OWNED BY public.test.id_pregunta;


--
-- TOC entry 231 (class 1259 OID 90166)
-- Name: test_id_test_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.test_id_test_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.test_id_test_seq OWNER TO postgres;

--
-- TOC entry 3488 (class 0 OID 0)
-- Dependencies: 231
-- Name: test_id_test_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.test_id_test_seq OWNED BY public.test.id_test;


--
-- TOC entry 232 (class 1259 OID 90167)
-- Name: test_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.test_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.test_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 3489 (class 0 OID 0)
-- Dependencies: 232
-- Name: test_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.test_id_usuario_seq OWNED BY public.test.id_usuario;


--
-- TOC entry 230 (class 1259 OID 90157)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    apodo character varying,
    correo character varying,
    "contraseña" character varying,
    id_telefono integer,
    id_registro integer NOT NULL
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 90156)
-- Name: usuario_id_registro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_id_registro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuario_id_registro_seq OWNER TO postgres;

--
-- TOC entry 3490 (class 0 OID 0)
-- Dependencies: 229
-- Name: usuario_id_registro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_id_registro_seq OWNED BY public.usuario.id_registro;


--
-- TOC entry 228 (class 1259 OID 90155)
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuario_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 3491 (class 0 OID 0)
-- Dependencies: 228
-- Name: usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;


--
-- TOC entry 3253 (class 2604 OID 90203)
-- Name: actividades id_recom; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actividades ALTER COLUMN id_recom SET DEFAULT nextval('public.actividades_id_recom_seq'::regclass);


--
-- TOC entry 3243 (class 2604 OID 90147)
-- Name: administrador id_admin; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.administrador ALTER COLUMN id_admin SET DEFAULT nextval('public."Administrador_id_admin_seq"'::regclass);


--
-- TOC entry 3244 (class 2604 OID 90148)
-- Name: administrador id_registro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.administrador ALTER COLUMN id_registro SET DEFAULT nextval('public."Administrador_id_registro_seq"'::regclass);


--
-- TOC entry 3236 (class 2604 OID 57364)
-- Name: chatbot id_chatbot; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chatbot ALTER COLUMN id_chatbot SET DEFAULT nextval('public.chatbot_id_chatbot_seq'::regclass);


--
-- TOC entry 3237 (class 2604 OID 57365)
-- Name: chatbot id_preguntaCB; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chatbot ALTER COLUMN "id_preguntaCB" SET DEFAULT nextval('public."chatbot_id_preguntaCB_seq"'::regclass);


--
-- TOC entry 3238 (class 2604 OID 57366)
-- Name: chatbot id_respuestaCB; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chatbot ALTER COLUMN "id_respuestaCB" SET DEFAULT nextval('public."chatbot_id_respuestaCB_seq"'::regclass);


--
-- TOC entry 3254 (class 2604 OID 90214)
-- Name: llamada id_llamada; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.llamada ALTER COLUMN id_llamada SET DEFAULT nextval('public.llamada_id_llamada_seq'::regclass);


--
-- TOC entry 3255 (class 2604 OID 90215)
-- Name: llamada id_usu1; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.llamada ALTER COLUMN id_usu1 SET DEFAULT nextval('public.llamada_id_usu1_seq'::regclass);


--
-- TOC entry 3256 (class 2604 OID 90216)
-- Name: llamada id_usu2; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.llamada ALTER COLUMN id_usu2 SET DEFAULT nextval('public.llamada_id_usu2_seq'::regclass);


--
-- TOC entry 3250 (class 2604 OID 90183)
-- Name: pregunta id_pregunta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pregunta ALTER COLUMN id_pregunta SET DEFAULT nextval('public.pregunta_id_pregunta_seq'::regclass);


--
-- TOC entry 3232 (class 2604 OID 49213)
-- Name: preguntaCB id_pregunta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."preguntaCB" ALTER COLUMN id_pregunta SET DEFAULT nextval('public."preguntaCB_id_pregunta_seq"'::regclass);


--
-- TOC entry 3233 (class 2604 OID 65570)
-- Name: preguntaCB id_resp; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."preguntaCB" ALTER COLUMN id_resp SET DEFAULT nextval('public."preguntaCB_id_resp_seq"'::regclass);


--
-- TOC entry 3239 (class 2604 OID 90128)
-- Name: registro ID_Registro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registro ALTER COLUMN "ID_Registro" SET DEFAULT nextval('public."Registro_ID_Registro_seq"'::regclass);


--
-- TOC entry 3234 (class 2604 OID 49220)
-- Name: respuestaCB id_respuesta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."respuestaCB" ALTER COLUMN id_respuesta SET DEFAULT nextval('public."respuestaCB_id_respuesta_seq"'::regclass);


--
-- TOC entry 3235 (class 2604 OID 49228)
-- Name: respuestaCB id_pregunta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."respuestaCB" ALTER COLUMN id_pregunta SET DEFAULT nextval('public."respuestaCB_id_pregunta_seq"'::regclass);


--
-- TOC entry 3251 (class 2604 OID 90193)
-- Name: respuestas id_respuesta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.respuestas ALTER COLUMN id_respuesta SET DEFAULT nextval('public.respuestas_id_respuesta_seq'::regclass);


--
-- TOC entry 3252 (class 2604 OID 90194)
-- Name: respuestas id_pregunta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.respuestas ALTER COLUMN id_pregunta SET DEFAULT nextval('public.respuestas_id_pregunta_seq'::regclass);


--
-- TOC entry 3240 (class 2604 OID 90139)
-- Name: rol id_rol; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol ALTER COLUMN id_rol SET DEFAULT nextval('public.rol_id_rol_seq'::regclass);


--
-- TOC entry 3241 (class 2604 OID 90140)
-- Name: rol id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol ALTER COLUMN id_usuario SET DEFAULT nextval('public.rol_id_usuario_seq'::regclass);


--
-- TOC entry 3242 (class 2604 OID 90141)
-- Name: rol id_admin; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol ALTER COLUMN id_admin SET DEFAULT nextval('public.rol_id_admin_seq'::regclass);


--
-- TOC entry 3247 (class 2604 OID 90172)
-- Name: test id_test; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test ALTER COLUMN id_test SET DEFAULT nextval('public.test_id_test_seq'::regclass);


--
-- TOC entry 3248 (class 2604 OID 90173)
-- Name: test id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test ALTER COLUMN id_usuario SET DEFAULT nextval('public.test_id_usuario_seq'::regclass);


--
-- TOC entry 3249 (class 2604 OID 90174)
-- Name: test id_pregunta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test ALTER COLUMN id_pregunta SET DEFAULT nextval('public.test_id_pregunta_seq'::regclass);


--
-- TOC entry 3245 (class 2604 OID 90160)
-- Name: usuario id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);


--
-- TOC entry 3246 (class 2604 OID 90161)
-- Name: usuario id_registro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id_registro SET DEFAULT nextval('public.usuario_id_registro_seq'::regclass);


--
-- TOC entry 3456 (class 0 OID 90200)
-- Dependencies: 241
-- Data for Name: actividades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actividades (id_recom, nombre, nivel) FROM stdin;
\.


--
-- TOC entry 3442 (class 0 OID 90144)
-- Dependencies: 227
-- Data for Name: administrador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.administrador (id_admin, correo, "contraseña", id_registro) FROM stdin;
\.


--
-- TOC entry 3432 (class 0 OID 57361)
-- Dependencies: 217
-- Data for Name: chatbot; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.chatbot (id_chatbot, "id_preguntaCB", "id_respuestaCB") FROM stdin;
1	1	1
2	2	2
3	3	3
4	4	4
5	5	5
6	6	6
\.


--
-- TOC entry 3460 (class 0 OID 90211)
-- Dependencies: 245
-- Data for Name: llamada; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.llamada (id_llamada, id_usu1, id_usu2, "urlGraba", "FechaHora") FROM stdin;
\.


--
-- TOC entry 3451 (class 0 OID 90180)
-- Dependencies: 236
-- Data for Name: pregunta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pregunta (id_pregunta, nombre, descripcion) FROM stdin;
\.


--
-- TOC entry 3425 (class 0 OID 49210)
-- Dependencies: 210
-- Data for Name: preguntaCB; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."preguntaCB" (id_pregunta, tipo, "PaClave", descripcion, cantidad, id_resp) FROM stdin;
1	Emocional	Ansiedad	Preguntas relacionadas con el manejo de la ansiedad y cómo controlarla.	150	1
2	Motivacional	Autoestima	Preguntas sobre cómo mejorar la autoestima y la autoconfianza.	120	2
3	Crisis	Ataque de panico	Consultas sobre qué hacer durante un ataque de pánico.	90	3
4	Reflexion	Sentido de vida	Preguntas sobre el propósito de vida y la búsqueda de significado.	70	4
5	Relacional	Soledad	Consultas sobre cómo manejar la sensación de soledad y mejorar relaciones interpersonales.	110	5
6	Habitos	Insomnio	Preguntas sobre dificultades para dormir y estrategias para mejorar el sueño.	130	6
\.


--
-- TOC entry 3435 (class 0 OID 90125)
-- Dependencies: 220
-- Data for Name: registro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.registro ("ID_Registro", correo, "contraseña", apodo) FROM stdin;
\.


--
-- TOC entry 3427 (class 0 OID 49217)
-- Dependencies: 212
-- Data for Name: respuestaCB; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."respuestaCB" (id_respuesta, descripcion, tipo, "PaClave", cantidad, id_pregunta) FROM stdin;
1	El chatbot ofrece técnicas de respiración y relajación para reducir la ansiedad.	Emocional	Ansiedad	150	1
2	Se proporcionan afirmaciones positivas y consejos para fortalecer la autoestima.	Motivacional	Autoestima	120	2
3	Se guía al usuario con pasos para calmar un ataque de pánico, como la técnica 5-4-3-2-1.	Crisis	Ataque de panico	90	3
4	Se ofrecen reflexiones y ejercicios para encontrar significado y propósito en la vida.	Reflexion	Sentido de vida	70	4
5	El chatbot sugiere actividades para conectar con otras personas y combatir la soledad.	Relacional	Soledad	110	5
6	Se recomiendan hábitos saludables y técnicas de relajación para mejorar el sueño.	Habitos	Insomnio	130	6
\.


--
-- TOC entry 3454 (class 0 OID 90190)
-- Dependencies: 239
-- Data for Name: respuestas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.respuestas (id_respuesta, descripcion, id_pregunta) FROM stdin;
\.


--
-- TOC entry 3439 (class 0 OID 90136)
-- Dependencies: 224
-- Data for Name: rol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rol (id_rol, id_usuario, id_admin) FROM stdin;
\.


--
-- TOC entry 3449 (class 0 OID 90169)
-- Dependencies: 234
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.test (id_test, id_usuario, id_pregunta, respuestas) FROM stdin;
\.


--
-- TOC entry 3445 (class 0 OID 90157)
-- Dependencies: 230
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (id_usuario, apodo, correo, "contraseña", id_telefono, id_registro) FROM stdin;
\.


--
-- TOC entry 3492 (class 0 OID 0)
-- Dependencies: 225
-- Name: Administrador_id_admin_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Administrador_id_admin_seq"', 1, false);


--
-- TOC entry 3493 (class 0 OID 0)
-- Dependencies: 226
-- Name: Administrador_id_registro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Administrador_id_registro_seq"', 1, false);


--
-- TOC entry 3494 (class 0 OID 0)
-- Dependencies: 219
-- Name: Registro_ID_Registro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Registro_ID_Registro_seq"', 1, false);


--
-- TOC entry 3495 (class 0 OID 0)
-- Dependencies: 240
-- Name: actividades_id_recom_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.actividades_id_recom_seq', 1, false);


--
-- TOC entry 3496 (class 0 OID 0)
-- Dependencies: 214
-- Name: chatbot_id_chatbot_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.chatbot_id_chatbot_seq', 6, true);


--
-- TOC entry 3497 (class 0 OID 0)
-- Dependencies: 215
-- Name: chatbot_id_preguntaCB_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."chatbot_id_preguntaCB_seq"', 1, false);


--
-- TOC entry 3498 (class 0 OID 0)
-- Dependencies: 216
-- Name: chatbot_id_respuestaCB_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."chatbot_id_respuestaCB_seq"', 1, false);


--
-- TOC entry 3499 (class 0 OID 0)
-- Dependencies: 242
-- Name: llamada_id_llamada_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.llamada_id_llamada_seq', 1, false);


--
-- TOC entry 3500 (class 0 OID 0)
-- Dependencies: 243
-- Name: llamada_id_usu1_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.llamada_id_usu1_seq', 1, false);


--
-- TOC entry 3501 (class 0 OID 0)
-- Dependencies: 244
-- Name: llamada_id_usu2_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.llamada_id_usu2_seq', 1, false);


--
-- TOC entry 3502 (class 0 OID 0)
-- Dependencies: 209
-- Name: preguntaCB_id_pregunta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."preguntaCB_id_pregunta_seq"', 6, true);


--
-- TOC entry 3503 (class 0 OID 0)
-- Dependencies: 218
-- Name: preguntaCB_id_resp_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."preguntaCB_id_resp_seq"', 6, true);


--
-- TOC entry 3504 (class 0 OID 0)
-- Dependencies: 235
-- Name: pregunta_id_pregunta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pregunta_id_pregunta_seq', 1, false);


--
-- TOC entry 3505 (class 0 OID 0)
-- Dependencies: 213
-- Name: respuestaCB_id_pregunta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."respuestaCB_id_pregunta_seq"', 1, false);


--
-- TOC entry 3506 (class 0 OID 0)
-- Dependencies: 211
-- Name: respuestaCB_id_respuesta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."respuestaCB_id_respuesta_seq"', 6, true);


--
-- TOC entry 3507 (class 0 OID 0)
-- Dependencies: 238
-- Name: respuestas_id_pregunta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.respuestas_id_pregunta_seq', 1, false);


--
-- TOC entry 3508 (class 0 OID 0)
-- Dependencies: 237
-- Name: respuestas_id_respuesta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.respuestas_id_respuesta_seq', 1, false);


--
-- TOC entry 3509 (class 0 OID 0)
-- Dependencies: 223
-- Name: rol_id_admin_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rol_id_admin_seq', 1, false);


--
-- TOC entry 3510 (class 0 OID 0)
-- Dependencies: 221
-- Name: rol_id_rol_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rol_id_rol_seq', 1, false);


--
-- TOC entry 3511 (class 0 OID 0)
-- Dependencies: 222
-- Name: rol_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rol_id_usuario_seq', 1, false);


--
-- TOC entry 3512 (class 0 OID 0)
-- Dependencies: 233
-- Name: test_id_pregunta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.test_id_pregunta_seq', 1, false);


--
-- TOC entry 3513 (class 0 OID 0)
-- Dependencies: 231
-- Name: test_id_test_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.test_id_test_seq', 1, false);


--
-- TOC entry 3514 (class 0 OID 0)
-- Dependencies: 232
-- Name: test_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.test_id_usuario_seq', 1, false);


--
-- TOC entry 3515 (class 0 OID 0)
-- Dependencies: 229
-- Name: usuario_id_registro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_registro_seq', 1, false);


--
-- TOC entry 3516 (class 0 OID 0)
-- Dependencies: 228
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 1, false);


--
-- TOC entry 3268 (class 2606 OID 90152)
-- Name: administrador Administrador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.administrador
    ADD CONSTRAINT "Administrador_pkey" PRIMARY KEY (id_admin);


--
-- TOC entry 3264 (class 2606 OID 90132)
-- Name: registro Registro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registro
    ADD CONSTRAINT "Registro_pkey" PRIMARY KEY ("ID_Registro");


--
-- TOC entry 3278 (class 2606 OID 90207)
-- Name: actividades actividades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actividades
    ADD CONSTRAINT actividades_pkey PRIMARY KEY (id_recom);


--
-- TOC entry 3262 (class 2606 OID 57368)
-- Name: chatbot chatbot_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chatbot
    ADD CONSTRAINT chatbot_pkey PRIMARY KEY (id_chatbot);


--
-- TOC entry 3280 (class 2606 OID 90220)
-- Name: llamada llamada_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.llamada
    ADD CONSTRAINT llamada_pkey PRIMARY KEY (id_llamada);


--
-- TOC entry 3258 (class 2606 OID 49226)
-- Name: preguntaCB preguntaCB_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."preguntaCB"
    ADD CONSTRAINT "preguntaCB_pkey" PRIMARY KEY (id_pregunta);


--
-- TOC entry 3274 (class 2606 OID 90187)
-- Name: pregunta pregunta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pregunta
    ADD CONSTRAINT pregunta_pkey PRIMARY KEY (id_pregunta);


--
-- TOC entry 3260 (class 2606 OID 49224)
-- Name: respuestaCB respuestaCB_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."respuestaCB"
    ADD CONSTRAINT "respuestaCB_pkey" PRIMARY KEY (id_respuesta);


--
-- TOC entry 3276 (class 2606 OID 90198)
-- Name: respuestas respuestas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.respuestas
    ADD CONSTRAINT respuestas_pkey PRIMARY KEY (id_respuesta);


--
-- TOC entry 3266 (class 2606 OID 90154)
-- Name: rol rol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (id_rol);


--
-- TOC entry 3272 (class 2606 OID 90178)
-- Name: test test_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (id_test);


--
-- TOC entry 3270 (class 2606 OID 90165)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);


--
-- TOC entry 3283 (class 2606 OID 57374)
-- Name: chatbot fk_preguntaCB; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chatbot
    ADD CONSTRAINT "fk_preguntaCB" FOREIGN KEY ("id_preguntaCB") REFERENCES public."preguntaCB"(id_pregunta);


--
-- TOC entry 3282 (class 2606 OID 49235)
-- Name: respuestaCB fk_preguntacb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."respuestaCB"
    ADD CONSTRAINT fk_preguntacb FOREIGN KEY (id_pregunta) REFERENCES public."preguntaCB"(id_pregunta) NOT VALID;


--
-- TOC entry 3281 (class 2606 OID 65577)
-- Name: preguntaCB fk_resp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."preguntaCB"
    ADD CONSTRAINT fk_resp FOREIGN KEY (id_resp) REFERENCES public."respuestaCB"(id_respuesta) NOT VALID;


--
-- TOC entry 3284 (class 2606 OID 57369)
-- Name: chatbot fk_respCB; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chatbot
    ADD CONSTRAINT "fk_respCB" FOREIGN KEY ("id_respuestaCB") REFERENCES public."respuestaCB"(id_respuesta);


--
-- TOC entry 3466 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2025-04-07 20:19:19

--
-- PostgreSQL database dump complete
--

