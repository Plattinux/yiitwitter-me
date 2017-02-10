--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.5
-- Dumped by pg_dump version 9.5.5

-- Started on 2017-02-10 12:30:39 VET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12361)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2301 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 2 (class 3079 OID 28003)
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- TOC entry 2302 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 182 (class 1259 OID 28126)
-- Name: favorito; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE favorito (
    id_favorito integer NOT NULL,
    favorito integer NOT NULL,
    usuario integer NOT NULL,
    fecha_creacion timestamp without time zone DEFAULT now()
);


ALTER TABLE favorito OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 28130)
-- Name: favorito_id_favorito_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE favorito_id_favorito_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE favorito_id_favorito_seq OWNER TO postgres;

--
-- TOC entry 2303 (class 0 OID 0)
-- Dependencies: 183
-- Name: favorito_id_favorito_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE favorito_id_favorito_seq OWNED BY favorito.id_favorito;


--
-- TOC entry 184 (class 1259 OID 28132)
-- Name: idioma; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE idioma (
    id_idioma integer NOT NULL,
    idioma character varying(50)
);


ALTER TABLE idioma OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 28135)
-- Name: idioma_id_idioma_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE idioma_id_idioma_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE idioma_id_idioma_seq OWNER TO postgres;

--
-- TOC entry 2304 (class 0 OID 0)
-- Dependencies: 185
-- Name: idioma_id_idioma_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE idioma_id_idioma_seq OWNED BY idioma.id_idioma;


--
-- TOC entry 186 (class 1259 OID 28137)
-- Name: pais; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pais (
    id_pais integer NOT NULL,
    pais character varying(50)
);


ALTER TABLE pais OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 28140)
-- Name: pais_id_pais_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pais_id_pais_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pais_id_pais_seq OWNER TO postgres;

--
-- TOC entry 2305 (class 0 OID 0)
-- Dependencies: 187
-- Name: pais_id_pais_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pais_id_pais_seq OWNED BY pais.id_pais;


--
-- TOC entry 188 (class 1259 OID 28142)
-- Name: pregunta_secreta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pregunta_secreta (
    id_pregunta_secreta integer NOT NULL,
    pregunta_secreta character varying(50)
);


ALTER TABLE pregunta_secreta OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 28145)
-- Name: pregunta_secreta_id_pregunta_secreta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pregunta_secreta_id_pregunta_secreta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pregunta_secreta_id_pregunta_secreta_seq OWNER TO postgres;

--
-- TOC entry 2306 (class 0 OID 0)
-- Dependencies: 189
-- Name: pregunta_secreta_id_pregunta_secreta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pregunta_secreta_id_pregunta_secreta_seq OWNED BY pregunta_secreta.id_pregunta_secreta;


--
-- TOC entry 190 (class 1259 OID 28147)
-- Name: retweet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE retweet (
    id_retweet integer NOT NULL,
    retweet integer NOT NULL,
    usuario integer NOT NULL,
    fecha_creacion timestamp without time zone DEFAULT now()
);


ALTER TABLE retweet OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 28151)
-- Name: retweet_id_retweet_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE retweet_id_retweet_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE retweet_id_retweet_seq OWNER TO postgres;

--
-- TOC entry 2307 (class 0 OID 0)
-- Dependencies: 191
-- Name: retweet_id_retweet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE retweet_id_retweet_seq OWNED BY retweet.id_retweet;


--
-- TOC entry 192 (class 1259 OID 28153)
-- Name: seguidor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE seguidor (
    id_seguidor integer NOT NULL,
    seguidor integer NOT NULL,
    siguiendo integer NOT NULL,
    fecha_creacion timestamp without time zone DEFAULT now()
);


ALTER TABLE seguidor OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 28157)
-- Name: seguidor_id_seguidor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE seguidor_id_seguidor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seguidor_id_seguidor_seq OWNER TO postgres;

--
-- TOC entry 2308 (class 0 OID 0)
-- Dependencies: 193
-- Name: seguidor_id_seguidor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE seguidor_id_seguidor_seq OWNED BY seguidor.id_seguidor;


--
-- TOC entry 194 (class 1259 OID 28159)
-- Name: tweet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tweet (
    id_tweet integer NOT NULL,
    tweet character varying(140) NOT NULL,
    foto character varying(50),
    usuario integer NOT NULL,
    fecha_creacion timestamp without time zone DEFAULT now()
);


ALTER TABLE tweet OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 28163)
-- Name: tweet_id_tweet_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tweet_id_tweet_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tweet_id_tweet_seq OWNER TO postgres;

--
-- TOC entry 2309 (class 0 OID 0)
-- Dependencies: 195
-- Name: tweet_id_tweet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tweet_id_tweet_seq OWNED BY tweet.id_tweet;


--
-- TOC entry 196 (class 1259 OID 28165)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE usuario (
    id_usuario integer NOT NULL,
    usuario character varying(30) NOT NULL,
    correo character varying(80) NOT NULL,
    nombre_completo character varying(100) NOT NULL,
    password character varying(256) NOT NULL,
    fk_idioma integer,
    fk_pais integer,
    fk_pregunta_secreta integer,
    respuesta_secreta character varying(256),
    telefono character varying(15),
    foto_perfil character varying(100),
    imagen_fondo character varying(100),
    activo boolean,
    fecha_creacion timestamp without time zone DEFAULT now(),
    sitioweb character varying(60),
    biografia character varying(200)
);


ALTER TABLE usuario OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 28172)
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuario_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usuario_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 2310 (class 0 OID 0)
-- Dependencies: 197
-- Name: usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usuario_id_usuario_seq OWNED BY usuario.id_usuario;


--
-- TOC entry 2126 (class 2604 OID 28174)
-- Name: id_favorito; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY favorito ALTER COLUMN id_favorito SET DEFAULT nextval('favorito_id_favorito_seq'::regclass);


--
-- TOC entry 2127 (class 2604 OID 28175)
-- Name: id_idioma; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY idioma ALTER COLUMN id_idioma SET DEFAULT nextval('idioma_id_idioma_seq'::regclass);


--
-- TOC entry 2128 (class 2604 OID 28176)
-- Name: id_pais; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pais ALTER COLUMN id_pais SET DEFAULT nextval('pais_id_pais_seq'::regclass);


--
-- TOC entry 2129 (class 2604 OID 28177)
-- Name: id_pregunta_secreta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pregunta_secreta ALTER COLUMN id_pregunta_secreta SET DEFAULT nextval('pregunta_secreta_id_pregunta_secreta_seq'::regclass);


--
-- TOC entry 2131 (class 2604 OID 28178)
-- Name: id_retweet; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY retweet ALTER COLUMN id_retweet SET DEFAULT nextval('retweet_id_retweet_seq'::regclass);


--
-- TOC entry 2133 (class 2604 OID 28179)
-- Name: id_seguidor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY seguidor ALTER COLUMN id_seguidor SET DEFAULT nextval('seguidor_id_seguidor_seq'::regclass);


--
-- TOC entry 2135 (class 2604 OID 28180)
-- Name: id_tweet; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tweet ALTER COLUMN id_tweet SET DEFAULT nextval('tweet_id_tweet_seq'::regclass);


--
-- TOC entry 2137 (class 2604 OID 28181)
-- Name: id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario ALTER COLUMN id_usuario SET DEFAULT nextval('usuario_id_usuario_seq'::regclass);


--
-- TOC entry 2278 (class 0 OID 28126)
-- Dependencies: 182
-- Data for Name: favorito; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2311 (class 0 OID 0)
-- Dependencies: 183
-- Name: favorito_id_favorito_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('favorito_id_favorito_seq', 7, true);


--
-- TOC entry 2280 (class 0 OID 28132)
-- Dependencies: 184
-- Data for Name: idioma; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO idioma (id_idioma, idioma) VALUES (1, 'Español');
INSERT INTO idioma (id_idioma, idioma) VALUES (2, 'Ingles');


--
-- TOC entry 2312 (class 0 OID 0)
-- Dependencies: 185
-- Name: idioma_id_idioma_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('idioma_id_idioma_seq', 2, true);


--
-- TOC entry 2282 (class 0 OID 28137)
-- Dependencies: 186
-- Data for Name: pais; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO pais (id_pais, pais) VALUES (1, 'Venezuela');
INSERT INTO pais (id_pais, pais) VALUES (2, 'Brasil');
INSERT INTO pais (id_pais, pais) VALUES (3, 'Peru');


--
-- TOC entry 2313 (class 0 OID 0)
-- Dependencies: 187
-- Name: pais_id_pais_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pais_id_pais_seq', 1, false);


--
-- TOC entry 2284 (class 0 OID 28142)
-- Dependencies: 188
-- Data for Name: pregunta_secreta; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO pregunta_secreta (id_pregunta_secreta, pregunta_secreta) VALUES (1, 'Tu primera novia');
INSERT INTO pregunta_secreta (id_pregunta_secreta, pregunta_secreta) VALUES (2, 'Serie favorita');


--
-- TOC entry 2314 (class 0 OID 0)
-- Dependencies: 189
-- Name: pregunta_secreta_id_pregunta_secreta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pregunta_secreta_id_pregunta_secreta_seq', 1, false);


--
-- TOC entry 2286 (class 0 OID 28147)
-- Dependencies: 190
-- Data for Name: retweet; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO retweet (id_retweet, retweet, usuario, fecha_creacion) VALUES (11, 18, 43, '2017-02-10 12:10:20.692115');


--
-- TOC entry 2315 (class 0 OID 0)
-- Dependencies: 191
-- Name: retweet_id_retweet_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('retweet_id_retweet_seq', 11, true);


--
-- TOC entry 2288 (class 0 OID 28153)
-- Dependencies: 192
-- Data for Name: seguidor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (19, 1, 2, '2015-09-16 11:33:26.309385');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (30, 42, 45, '2017-02-10 10:36:31.743073');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (31, 1, 34, '2017-02-10 10:36:41.646036');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (32, 34, 45, '2017-02-10 10:36:50.635937');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (33, 43, 40, '2017-02-10 10:37:21.346814');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (34, 35, 34, '2017-02-10 10:37:30.036474');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (35, 35, 34, '2017-02-10 10:37:34.67857');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (36, 35, 1, '2017-02-10 10:38:02.221349');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (38, 35, 34, '2017-02-10 10:38:24.285945');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (39, 34, 44, '2017-02-10 10:38:56.769948');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (40, 34, 43, '2017-02-10 10:39:02.23704');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (42, 34, 42, '2017-02-10 10:39:05.977533');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (43, 43, 44, '2017-02-10 10:39:06.460087');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (44, 34, 41, '2017-02-10 10:39:08.670504');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (45, 34, 40, '2017-02-10 10:39:12.682');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (46, 43, 1, '2017-02-10 10:39:14.115784');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (48, 43, 2, '2017-02-10 10:39:18.29252');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (50, 43, 38, '2017-02-10 10:39:30.709074');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (51, 34, 1, '2017-02-10 10:39:32.984175');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (53, 43, 42, '2017-02-10 10:39:53.460847');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (57, 46, 41, '2017-02-10 10:40:28.605506');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (60, 46, 39, '2017-02-10 10:41:44.930526');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (61, 42, 2, '2017-02-10 10:41:59.794409');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (62, 35, 34, '2017-02-10 10:42:03.604577');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (137, 42, 38, '2017-02-10 11:27:49.456572');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (65, 35, 34, '2017-02-10 10:44:42.176394');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (67, 38, 41, '2017-02-10 11:04:39.540771');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (140, 42, 42, '2017-02-10 11:28:23.235298');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (70, 42, 39, '2017-02-10 11:14:51.585031');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (142, 38, 42, '2017-02-10 11:28:56.54577');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (146, 1, 47, '2017-02-10 11:30:24.487885');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (147, 1, 38, '2017-02-10 11:30:28.028384');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (148, 1, 1, '2017-02-10 11:30:29.209536');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (149, 38, 45, '2017-02-10 11:30:57.694069');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (156, 43, 37, '2017-02-10 11:38:28.313477');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (157, 43, 39, '2017-02-10 11:38:31.158684');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (158, 43, 46, '2017-02-10 11:38:32.78841');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (159, 43, 47, '2017-02-10 11:38:34.576923');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (162, 1, 35, '2017-02-10 11:39:53.068336');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (163, 1, 42, '2017-02-10 11:43:23.317144');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (164, 41, 41, '2017-02-10 11:49:21.432394');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (165, 35, 42, '2017-02-10 11:49:57.277428');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (166, 47, 35, '2017-02-10 11:56:31.079674');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (167, 47, 37, '2017-02-10 11:56:34.983599');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (168, 47, 47, '2017-02-10 11:56:39.013619');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (169, 47, 1, '2017-02-10 11:56:40.473034');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (170, 47, 2, '2017-02-10 11:56:42.724');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (71, 40, 39, '2017-02-10 11:16:10.163008');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (72, 40, 41, '2017-02-10 11:16:18.817795');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (73, 40, 1, '2017-02-10 11:17:14.777287');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (74, 40, 2, '2017-02-10 11:17:22.951693');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (102, 34, 38, '2017-02-10 11:18:16.879703');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (103, 34, 2, '2017-02-10 11:18:23.154689');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (104, 46, 35, '2017-02-10 11:19:21.105987');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (105, 43, 45, '2017-02-10 11:20:10.277543');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (110, 35, 35, '2017-02-10 11:21:13.984576');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (111, 43, 35, '2017-02-10 11:21:41.495147');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (114, 46, 38, '2017-02-10 11:22:32.423844');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (75, 2, 40, '2017-02-10 11:22:50.438604');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (76, 1, 40, '2017-02-10 11:22:57.965779');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (77, 41, 40, '2017-02-10 11:23:09.582002');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (194, 46, 1, '2017-02-10 11:59:46.368506');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (118, 1, 40, '2017-02-10 11:59:58.732822');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (195, 1, 39, '2017-02-10 12:05:40.071168');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (199, 41, 41, '2017-02-10 12:08:59.814339');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (200, 41, 41, '2017-02-10 12:09:44.943559');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (201, 41, 46, '2017-02-10 12:09:50.637771');
INSERT INTO seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) VALUES (202, 41, 41, '2017-02-10 12:09:52.932949');


--
-- TOC entry 2316 (class 0 OID 0)
-- Dependencies: 193
-- Name: seguidor_id_seguidor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('seguidor_id_seguidor_seq', 202, true);


--
-- TOC entry 2290 (class 0 OID 28159)
-- Dependencies: 194
-- Data for Name: tweet; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tweet (id_tweet, tweet, foto, usuario, fecha_creacion) VALUES (5, 'eesto pinta bien', NULL, 2, '2015-09-16 22:41:44.139859');
INSERT INTO tweet (id_tweet, tweet, foto, usuario, fecha_creacion) VALUES (10, 'el tweeter desde el modal2', '', 2, '2015-09-17 02:35:23.060322');
INSERT INTO tweet (id_tweet, tweet, foto, usuario, fecha_creacion) VALUES (1, 'mi primer tweet', '', 1, '2015-09-16 00:38:22.262166');
INSERT INTO tweet (id_tweet, tweet, foto, usuario, fecha_creacion) VALUES (2, 'espale que mas este es mi twett', NULL, 2, '2015-09-16 22:41:18.731977');
INSERT INTO tweet (id_tweet, tweet, foto, usuario, fecha_creacion) VALUES (6, 'con ganas de aprender Yii', NULL, 1, '2015-09-16 22:42:07.955146');
INSERT INTO tweet (id_tweet, tweet, foto, usuario, fecha_creacion) VALUES (11, 'primer twett', NULL, 40, '2017-02-10 11:38:40.209657');
INSERT INTO tweet (id_tweet, tweet, foto, usuario, fecha_creacion) VALUES (12, 'segundo', NULL, 40, '2017-02-10 11:38:49.83689');
INSERT INTO tweet (id_tweet, tweet, foto, usuario, fecha_creacion) VALUES (13, 'ultimo', NULL, 40, '2017-02-10 11:39:04.657078');
INSERT INTO tweet (id_tweet, tweet, foto, usuario, fecha_creacion) VALUES (14, 'Baila como Juana la Cubana', '', 42, '2017-02-10 11:54:34.23059');
INSERT INTO tweet (id_tweet, tweet, foto, usuario, fecha_creacion) VALUES (15, 'este es mi primer tweet esta es una prueba', '', 43, '2017-02-10 11:55:39.163666');
INSERT INTO tweet (id_tweet, tweet, foto, usuario, fecha_creacion) VALUES (16, 'Esto es otra Prueba', '', 42, '2017-02-10 11:57:28.162113');
INSERT INTO tweet (id_tweet, tweet, foto, usuario, fecha_creacion) VALUES (17, 'este es mi segundo tweet esta es una prueba', '', 43, '2017-02-10 11:59:47.063399');
INSERT INTO tweet (id_tweet, tweet, foto, usuario, fecha_creacion) VALUES (18, 'prueba 111', '', 1, '2017-02-10 12:03:33.156148');
INSERT INTO tweet (id_tweet, tweet, foto, usuario, fecha_creacion) VALUES (19, 'este es mi segundo tweet esta es otra prueba', '', 43, '2017-02-10 12:03:33.748178');
INSERT INTO tweet (id_tweet, tweet, foto, usuario, fecha_creacion) VALUES (20, 'pruebagenesis', '', 41, '2017-02-10 12:05:30.336942');
INSERT INTO tweet (id_tweet, tweet, foto, usuario, fecha_creacion) VALUES (21, 'buenas tardes', '', 46, '2017-02-10 12:07:07.728278');
INSERT INTO tweet (id_tweet, tweet, foto, usuario, fecha_creacion) VALUES (22, '"siganme los bueno"', '', 46, '2017-02-10 12:07:36.956543');
INSERT INTO tweet (id_tweet, tweet, foto, usuario, fecha_creacion) VALUES (23, 'en la clase', '', 34, '2017-02-10 12:08:01.705107');
INSERT INTO tweet (id_tweet, tweet, foto, usuario, fecha_creacion) VALUES (24, 'prueba tweet', '', 35, '2017-02-10 12:10:15.34533');
INSERT INTO tweet (id_tweet, tweet, foto, usuario, fecha_creacion) VALUES (25, 'hola', 'hola como están', 38, '2017-02-10 12:10:23.201383');
INSERT INTO tweet (id_tweet, tweet, foto, usuario, fecha_creacion) VALUES (26, 'weekend', '', 34, '2017-02-10 12:10:35.267841');
INSERT INTO tweet (id_tweet, tweet, foto, usuario, fecha_creacion) VALUES (27, 'holala jajaja', 'holala', 38, '2017-02-10 12:16:41.540009');
INSERT INTO tweet (id_tweet, tweet, foto, usuario, fecha_creacion) VALUES (28, 'tweee', '', 35, '2017-02-10 12:23:14.758862');


--
-- TOC entry 2317 (class 0 OID 0)
-- Dependencies: 195
-- Name: tweet_id_tweet_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tweet_id_tweet_seq', 28, true);


--
-- TOC entry 2292 (class 0 OID 28165)
-- Dependencies: 196
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO usuario (id_usuario, usuario, correo, nombre_completo, password, fk_idioma, fk_pais, fk_pregunta_secreta, respuesta_secreta, telefono, foto_perfil, imagen_fondo, activo, fecha_creacion, sitioweb, biografia) VALUES (42, 'lmendoza', 'mendozaleonardo89@gmail.com', 'Leonardo F Mendoza', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 2, 'Sailor Moon', '04127320483', '', '', NULL, '2017-02-10 09:55:48.446458', '', 'Soy Divertido Sigueme');
INSERT INTO usuario (id_usuario, usuario, correo, nombre_completo, password, fk_idioma, fk_pais, fk_pregunta_secreta, respuesta_secreta, telefono, foto_perfil, imagen_fondo, activo, fecha_creacion, sitioweb, biografia) VALUES (45, 'Santos', 'santos@hotmail.com', 'Santos Marco', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 2, 'la familia', '0426555555', NULL, '', NULL, '2017-02-10 10:09:20.573171', '', '');
INSERT INTO usuario (id_usuario, usuario, correo, nombre_completo, password, fk_idioma, fk_pais, fk_pregunta_secreta, respuesta_secreta, telefono, foto_perfil, imagen_fondo, activo, fecha_creacion, sitioweb, biografia) VALUES (35, 'elvalera', 'elvis.tecno@gmail.com', 'Elvis Valera', 'e10adc3949ba59abbe56e057f20f883e', 1, 3, 1, 'Liskerdenkerly ', '04247282315', 'fotos-de-perfil.jpg', '', NULL, '2017-02-10 09:51:00.812093', 'https://github.com/elvalera/cursoyii', '');
INSERT INTO usuario (id_usuario, usuario, correo, nombre_completo, password, fk_idioma, fk_pais, fk_pregunta_secreta, respuesta_secreta, telefono, foto_perfil, imagen_fondo, activo, fecha_creacion, sitioweb, biografia) VALUES (37, 'usuario', 'usuario@gmail.com', 'Usuario Prueba', 'e10adc3949ba59abbe56e057f20f883e', NULL, 2, NULL, '', '', 'wallhaven-340532.jpg', '', NULL, '2017-02-10 09:51:35.292052', '', '');
INSERT INTO usuario (id_usuario, usuario, correo, nombre_completo, password, fk_idioma, fk_pais, fk_pregunta_secreta, respuesta_secreta, telefono, foto_perfil, imagen_fondo, activo, fecha_creacion, sitioweb, biografia) VALUES (39, 'Pacheco9', 'pachecohernandez09@gmail.com', 'Jose Gr Pacheco', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 2, 'el chavo', '04241594743', 'Captura de pantalla de 2016-10-03 22:30:07.png', 'Mvp', NULL, '2017-02-10 09:54:31.806156', '', 'trabajador y responsable');
INSERT INTO usuario (id_usuario, usuario, correo, nombre_completo, password, fk_idioma, fk_pais, fk_pregunta_secreta, respuesta_secreta, telefono, foto_perfil, imagen_fondo, activo, fecha_creacion, sitioweb, biografia) VALUES (46, 'josep', 'sistalterno09@gmail.com', 'Jose Pacheco', 'd93591bdf7860e1e4ee2fca799911215', 1, 2, 2, 'nba', '04241594743', 'cavaliers.jpg', 'Mvp', NULL, '2017-02-10 10:28:23.415686', '', 'sss');
INSERT INTO usuario (id_usuario, usuario, correo, nombre_completo, password, fk_idioma, fk_pais, fk_pregunta_secreta, respuesta_secreta, telefono, foto_perfil, imagen_fondo, activo, fecha_creacion, sitioweb, biografia) VALUES (47, 'Cexxxar', 'cjuzcategui@fundabit.gob.ve', 'César Uzcátegui', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 2, 'Saint Seiya', '04167209884', 'shrek.jpeg', 'cesar', NULL, '2017-02-10 11:23:20.280282', '', 'Hallo Guten tag');
INSERT INTO usuario (id_usuario, usuario, correo, nombre_completo, password, fk_idioma, fk_pais, fk_pregunta_secreta, respuesta_secreta, telefono, foto_perfil, imagen_fondo, activo, fecha_creacion, sitioweb, biografia) VALUES (38, 'cristobal', 'Cristobalagr12031992@gmail.com', 'Crsitobal Andres González Ravelo', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 2, 'dragon ball ', '04129081503', 'Captura de pantalla de 2016-10-03 22:30:07.png', 'paisajes', NULL, '2017-02-10 09:52:43.907932', 'https://www.google.co.ve/search?q=gato+riendose&biw=1366&bih', 'pais');
INSERT INTO usuario (id_usuario, usuario, correo, nombre_completo, password, fk_idioma, fk_pais, fk_pregunta_secreta, respuesta_secreta, telefono, foto_perfil, imagen_fondo, activo, fecha_creacion, sitioweb, biografia) VALUES (1, 'leninmhs', 'leninmhs@gmail.com', 'Lenin Hernandez', 'e10adc3949ba59abbe56e057f20f883e', 2, 1, NULL, '', '', 'leninmhs.jpg', '', false, '1983-09-14 00:33:08.183621', NULL, NULL);
INSERT INTO usuario (id_usuario, usuario, correo, nombre_completo, password, fk_idioma, fk_pais, fk_pregunta_secreta, respuesta_secreta, telefono, foto_perfil, imagen_fondo, activo, fecha_creacion, sitioweb, biografia) VALUES (2, 'lorendy', 'lorendym@plattinux.com', 'Lorendy Martiez', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, NULL, '', '', 'gato.jpeg', '', false, '2015-09-14 01:50:36.382064', '', '');
INSERT INTO usuario (id_usuario, usuario, correo, nombre_completo, password, fk_idioma, fk_pais, fk_pregunta_secreta, respuesta_secreta, telefono, foto_perfil, imagen_fondo, activo, fecha_creacion, sitioweb, biografia) VALUES (40, 'edwingarcia', 'ejgarcia@fundabit.gob.ve', 'Edwin Garcia', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 1, 'novia', '04265161644', 'edwingarcia.jpg', '', NULL, '2017-02-10 09:55:26.209762', '', '');
INSERT INTO usuario (id_usuario, usuario, correo, nombre_completo, password, fk_idioma, fk_pais, fk_pregunta_secreta, respuesta_secreta, telefono, foto_perfil, imagen_fondo, activo, fecha_creacion, sitioweb, biografia) VALUES (41, 'genesis', 'geny.462@gmail.com', 'genesis garcia', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 2, 'doctorh', '0123456789', NULL, '', NULL, '2017-02-10 09:55:36.479926', '', '');
INSERT INTO usuario (id_usuario, usuario, correo, nombre_completo, password, fk_idioma, fk_pais, fk_pregunta_secreta, respuesta_secreta, telefono, foto_perfil, imagen_fondo, activo, fecha_creacion, sitioweb, biografia) VALUES (43, 'moisesurbano', 'moisesurbano@gmail.com', 'Moisés Caleb Urbano Fuentes', '157ef76d924b88494ba4fcae066116d4', 1, 1, 2, 'Dragonball', '04169129457', 'Navegantes-del-Magallanes-Logo-1-.jpg', '', NULL, '2017-02-10 09:56:04.370463', 'https://www.fundabit.gob.ve', 'trabajo en fundabit');
INSERT INTO usuario (id_usuario, usuario, correo, nombre_completo, password, fk_idioma, fk_pais, fk_pregunta_secreta, respuesta_secreta, telefono, foto_perfil, imagen_fondo, activo, fecha_creacion, sitioweb, biografia) VALUES (44, 'Cexxxar88', 'cjuzcategui@me.gob.ve', 'César Uzcátegui', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 2, 'Saint Seiya', '04167209884', 'shrek.jpeg', '', NULL, '2017-02-10 09:56:17.590407', '', 'Hallo Guten tag');
INSERT INTO usuario (id_usuario, usuario, correo, nombre_completo, password, fk_idioma, fk_pais, fk_pregunta_secreta, respuesta_secreta, telefono, foto_perfil, imagen_fondo, activo, fecha_creacion, sitioweb, biografia) VALUES (34, 'jap', 'jespuro@gmail.com', 'Jesus Andres Puro', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 1, 'laura', '04243312442', '', '', NULL, '2017-02-10 09:48:33.130938', '', 'div sistemas');


--
-- TOC entry 2318 (class 0 OID 0)
-- Dependencies: 197
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_id_usuario_seq', 47, true);


--
-- TOC entry 2139 (class 2606 OID 28183)
-- Name: pk_favorito; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY favorito
    ADD CONSTRAINT pk_favorito PRIMARY KEY (id_favorito);


--
-- TOC entry 2141 (class 2606 OID 28185)
-- Name: pk_idioma; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY idioma
    ADD CONSTRAINT pk_idioma PRIMARY KEY (id_idioma);


--
-- TOC entry 2143 (class 2606 OID 28187)
-- Name: pk_pais; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pais
    ADD CONSTRAINT pk_pais PRIMARY KEY (id_pais);


--
-- TOC entry 2145 (class 2606 OID 28189)
-- Name: pk_pregunta_secreta; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pregunta_secreta
    ADD CONSTRAINT pk_pregunta_secreta PRIMARY KEY (id_pregunta_secreta);


--
-- TOC entry 2147 (class 2606 OID 28191)
-- Name: pk_retweet; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY retweet
    ADD CONSTRAINT pk_retweet PRIMARY KEY (id_retweet);


--
-- TOC entry 2149 (class 2606 OID 28193)
-- Name: pk_seguidor; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY seguidor
    ADD CONSTRAINT pk_seguidor PRIMARY KEY (id_seguidor);


--
-- TOC entry 2151 (class 2606 OID 28195)
-- Name: pk_tweet; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tweet
    ADD CONSTRAINT pk_tweet PRIMARY KEY (id_tweet);


--
-- TOC entry 2153 (class 2606 OID 28197)
-- Name: pk_usuario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT pk_usuario PRIMARY KEY (id_usuario);


--
-- TOC entry 2154 (class 2606 OID 28198)
-- Name: fk_favorito; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY favorito
    ADD CONSTRAINT fk_favorito FOREIGN KEY (favorito) REFERENCES tweet(id_tweet);


--
-- TOC entry 2161 (class 2606 OID 28203)
-- Name: fk_idioma; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT fk_idioma FOREIGN KEY (fk_idioma) REFERENCES idioma(id_idioma);


--
-- TOC entry 2162 (class 2606 OID 28208)
-- Name: fk_pais; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT fk_pais FOREIGN KEY (fk_pais) REFERENCES pais(id_pais);


--
-- TOC entry 2163 (class 2606 OID 28213)
-- Name: fk_pregunta_secreta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT fk_pregunta_secreta FOREIGN KEY (fk_pregunta_secreta) REFERENCES pregunta_secreta(id_pregunta_secreta);


--
-- TOC entry 2156 (class 2606 OID 28218)
-- Name: fk_retweet; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY retweet
    ADD CONSTRAINT fk_retweet FOREIGN KEY (retweet) REFERENCES tweet(id_tweet);


--
-- TOC entry 2158 (class 2606 OID 28223)
-- Name: fk_seguidor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY seguidor
    ADD CONSTRAINT fk_seguidor FOREIGN KEY (seguidor) REFERENCES usuario(id_usuario);


--
-- TOC entry 2159 (class 2606 OID 28228)
-- Name: fk_siguiendo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY seguidor
    ADD CONSTRAINT fk_siguiendo FOREIGN KEY (siguiendo) REFERENCES usuario(id_usuario);


--
-- TOC entry 2160 (class 2606 OID 28233)
-- Name: fk_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tweet
    ADD CONSTRAINT fk_usuario FOREIGN KEY (usuario) REFERENCES usuario(id_usuario);


--
-- TOC entry 2157 (class 2606 OID 28238)
-- Name: fk_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY retweet
    ADD CONSTRAINT fk_usuario FOREIGN KEY (usuario) REFERENCES usuario(id_usuario);


--
-- TOC entry 2155 (class 2606 OID 28243)
-- Name: fk_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY favorito
    ADD CONSTRAINT fk_usuario FOREIGN KEY (usuario) REFERENCES usuario(id_usuario);


--
-- TOC entry 2300 (class 0 OID 0)
-- Dependencies: 8
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-02-10 12:30:39 VET

--
-- PostgreSQL database dump complete
--

