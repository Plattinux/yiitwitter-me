--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.5
-- Dumped by pg_dump version 9.5.5

-- Started on 2017-02-10 09:13:46 VET

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

INSERT INTO idioma VALUES (1, 'Español');
INSERT INTO idioma VALUES (2, 'Ingles');


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

INSERT INTO pais VALUES (1, 'Venezuela');
INSERT INTO pais VALUES (2, 'Brasil');
INSERT INTO pais VALUES (3, 'Peru');


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

INSERT INTO pregunta_secreta VALUES (1, 'Tu primera novia');
INSERT INTO pregunta_secreta VALUES (2, 'Serie favorita');


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



--
-- TOC entry 2315 (class 0 OID 0)
-- Dependencies: 191
-- Name: retweet_id_retweet_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('retweet_id_retweet_seq', 10, true);


--
-- TOC entry 2288 (class 0 OID 28153)
-- Dependencies: 192
-- Data for Name: seguidor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO seguidor VALUES (19, 1, 2, '2015-09-16 11:33:26.309385');


--
-- TOC entry 2316 (class 0 OID 0)
-- Dependencies: 193
-- Name: seguidor_id_seguidor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('seguidor_id_seguidor_seq', 28, true);


--
-- TOC entry 2290 (class 0 OID 28159)
-- Dependencies: 194
-- Data for Name: tweet; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tweet VALUES (5, 'eesto pinta bien', NULL, 2, '2015-09-16 22:41:44.139859');
INSERT INTO tweet VALUES (10, 'el tweeter desde el modal2', '', 2, '2015-09-17 02:35:23.060322');
INSERT INTO tweet VALUES (1, 'mi primer tweet', '', 1, '2015-09-16 00:38:22.262166');
INSERT INTO tweet VALUES (2, 'espale que mas este es mi twett', NULL, 2, '2015-09-16 22:41:18.731977');
INSERT INTO tweet VALUES (6, 'con ganas de aprender Yii', NULL, 1, '2015-09-16 22:42:07.955146');


--
-- TOC entry 2317 (class 0 OID 0)
-- Dependencies: 195
-- Name: tweet_id_tweet_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tweet_id_tweet_seq', 10, true);


--
-- TOC entry 2292 (class 0 OID 28165)
-- Dependencies: 196
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO usuario VALUES (1, 'leninmhs', 'leninmhs@gmail.com', 'Lenin Hernandez', 'e10adc3949ba59abbe56e057f20f883e', 2, 1, NULL, '', '', 'leninmhs.jpg', '', false, '1983-09-14 00:33:08.183621', NULL, NULL);
INSERT INTO usuario VALUES (2, 'lorendy', 'lorendym@plattinux.com', 'Lorendy Martiez', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, NULL, '', '', 'gato.jpeg', '', false, '2015-09-14 01:50:36.382064', '', '');


--
-- TOC entry 2318 (class 0 OID 0)
-- Dependencies: 197
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_id_usuario_seq', 30, true);


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


-- Completed on 2017-02-10 09:13:47 VET

--
-- PostgreSQL database dump complete
--

