--
-- PostgreSQL database dump
--

-- Dumped from database version 13.10 (Ubuntu 13.10-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.4

-- Started on 2024-02-03 14:28:50

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 25 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 15 (class 3079 OID 17161)
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- TOC entry 4116 (class 0 OID 0)
-- Dependencies: 15
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- TOC entry 19 (class 3079 OID 17702)
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- TOC entry 4117 (class 0 OID 0)
-- Dependencies: 19
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- TOC entry 8 (class 3079 OID 16671)
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- TOC entry 4118 (class 0 OID 0)
-- Dependencies: 8
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- TOC entry 17 (class 3079 OID 17599)
-- Name: cube; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- TOC entry 4119 (class 0 OID 0)
-- Dependencies: 17
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- TOC entry 2 (class 3079 OID 16384)
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- TOC entry 4120 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- TOC entry 14 (class 3079 OID 17152)
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- TOC entry 4121 (class 0 OID 0)
-- Dependencies: 14
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- TOC entry 20 (class 3079 OID 18325)
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- TOC entry 4122 (class 0 OID 0)
-- Dependencies: 20
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- TOC entry 18 (class 3079 OID 17686)
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- TOC entry 4123 (class 0 OID 0)
-- Dependencies: 18
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- TOC entry 7 (class 3079 OID 16660)
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- TOC entry 4124 (class 0 OID 0)
-- Dependencies: 7
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- TOC entry 13 (class 3079 OID 17025)
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- TOC entry 4125 (class 0 OID 0)
-- Dependencies: 13
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- TOC entry 12 (class 3079 OID 16903)
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- TOC entry 4126 (class 0 OID 0)
-- Dependencies: 12
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- TOC entry 4 (class 3079 OID 16444)
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- TOC entry 4127 (class 0 OID 0)
-- Dependencies: 4
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- TOC entry 22 (class 3079 OID 18337)
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- TOC entry 4128 (class 0 OID 0)
-- Dependencies: 22
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';


--
-- TOC entry 11 (class 3079 OID 16824)
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- TOC entry 4129 (class 0 OID 0)
-- Dependencies: 11
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- TOC entry 10 (class 3079 OID 16787)
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- TOC entry 4130 (class 0 OID 0)
-- Dependencies: 10
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- TOC entry 16 (class 3079 OID 17597)
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- TOC entry 4131 (class 0 OID 0)
-- Dependencies: 16
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- TOC entry 5 (class 3079 OID 16629)
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- TOC entry 4132 (class 0 OID 0)
-- Dependencies: 5
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- TOC entry 6 (class 3079 OID 16639)
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- TOC entry 4133 (class 0 OID 0)
-- Dependencies: 6
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- TOC entry 21 (class 3079 OID 18330)
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- TOC entry 4134 (class 0 OID 0)
-- Dependencies: 21
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- TOC entry 9 (class 3079 OID 16776)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- TOC entry 4135 (class 0 OID 0)
-- Dependencies: 9
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- TOC entry 3 (class 3079 OID 16430)
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- TOC entry 4136 (class 0 OID 0)
-- Dependencies: 3
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 227 (class 1259 OID 3240313)
-- Name: goods; Type: TABLE; Schema: public; Owner: okyxasqz
--

CREATE TABLE public.goods (
    id integer NOT NULL,
    article character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    price integer NOT NULL,
    characteristics text[],
    images text[] NOT NULL,
    category character varying(255)
);


ALTER TABLE public.goods OWNER TO okyxasqz;

--
-- TOC entry 226 (class 1259 OID 3240311)
-- Name: goods_id_seq; Type: SEQUENCE; Schema: public; Owner: okyxasqz
--

CREATE SEQUENCE public.goods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.goods_id_seq OWNER TO okyxasqz;

--
-- TOC entry 4137 (class 0 OID 0)
-- Dependencies: 226
-- Name: goods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: okyxasqz
--

ALTER SEQUENCE public.goods_id_seq OWNED BY public.goods.id;


--
-- TOC entry 231 (class 1259 OID 3244883)
-- Name: orders; Type: TABLE; Schema: public; Owner: okyxasqz
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    "accessKey" character varying NOT NULL,
    name character varying NOT NULL,
    address character varying,
    phone character varying NOT NULL,
    email character varying,
    "deliveryType" character varying NOT NULL,
    "paymentType" character varying NOT NULL,
    products jsonb[] NOT NULL,
    "totalPrice" character varying NOT NULL,
    comments character varying
);


ALTER TABLE public.orders OWNER TO okyxasqz;

--
-- TOC entry 230 (class 1259 OID 3244881)
-- Name: orders_id_seq1; Type: SEQUENCE; Schema: public; Owner: okyxasqz
--

CREATE SEQUENCE public.orders_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq1 OWNER TO okyxasqz;

--
-- TOC entry 4138 (class 0 OID 0)
-- Dependencies: 230
-- Name: orders_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: okyxasqz
--

ALTER SEQUENCE public.orders_id_seq1 OWNED BY public.orders.id;


--
-- TOC entry 229 (class 1259 OID 3244635)
-- Name: users; Type: TABLE; Schema: public; Owner: okyxasqz
--

CREATE TABLE public.users (
    id integer NOT NULL,
    "accessKey" character varying NOT NULL,
    products jsonb[] NOT NULL
);


ALTER TABLE public.users OWNER TO okyxasqz;

--
-- TOC entry 228 (class 1259 OID 3244633)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: okyxasqz
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO okyxasqz;

--
-- TOC entry 4139 (class 0 OID 0)
-- Dependencies: 228
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: okyxasqz
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3964 (class 2604 OID 3240316)
-- Name: goods id; Type: DEFAULT; Schema: public; Owner: okyxasqz
--

ALTER TABLE ONLY public.goods ALTER COLUMN id SET DEFAULT nextval('public.goods_id_seq'::regclass);


--
-- TOC entry 3966 (class 2604 OID 3244886)
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: okyxasqz
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq1'::regclass);


--
-- TOC entry 3965 (class 2604 OID 3244638)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: okyxasqz
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4105 (class 0 OID 3240313)
-- Dependencies: 227
-- Data for Name: goods; Type: TABLE DATA; Schema: public; Owner: okyxasqz
--

COPY public.goods (id, article, name, price, characteristics, images, category) FROM stdin;
3	16954744381	Туалетный столик с зеркалом и ящиком в спальню для девочки Кео	3755	{{Тип,"Туалетный столик"},{"Ширина, см",67.5},{"Глубина, см",34.2},{"Высота, см",125.4},{Бренд,Кео}}	{img//1hb1fmh32ce97gog.jpg,img//1hb1fmh3rq5mf9i1.jpg,img//1hb1fmh3hjsf61q3.jpg,img//1hb1fmh3ktkh5l85.jpg}	Столы
4	16954436232	Навесная полка с ящиками, навесная тумба Нарвик	2696	{{Тип,Полка},{"Ширина, см",118.9},{"Глубина, см",32},{"Высота, см",16.4},{Бренд,Моби}}	{img//1hb1ftgaptc4sove.jpg,img//1hb1ftgam2gom47e.jpg}	Полки
5	16954071925	Стол компьютерный Ascetic	1795	{{Тип,"Письменный стол"},{"Ширина, см"," 90"},{"Глубина, см",54},{"Высота, см",73.2},{Бренд,"Дизайн Фабрика"}}	{img//1hb1g1v02ogt7oq7.jpg,img//1hb1g1v0jtfjtnnj.jpg}	Столы
6	16954611705	Пуф "ОЗОН"	1702	{{Тип,Пуф},{"Ширина, см"," 35"},{"Глубина, см",35},{"Высота, см",42},{"Материал корпуса","Фанера, ЛДСП"}}	{img//1hb1k202astq8rip.jpg,img//1hb1k202nt6lmosi.jpg,img//1hb1k202g53m9kj3.jpg,img//1hb1k2025d41oak4.jpg}	Пуфы и банкетки
7	16954836465	Офисное кресло TetChair SKALBERG OFFICE	6601	{{Тип,"Офисное кресло"},{"Ширина, см",59},{"Глубина, см",46},{"Высота, см"," 75"},{Бренд,Tetchair}}	{img//1hb1kuhbs8qjnl6k.jpg,img//1hb1kuhcqr6rglqq.jpg,img//1hb1kuhcd282pe6h.jpg,img//1hb1kuhcli7n89d5.jpg,img//1hb1kuhcknan1gsk.jpg,img//1hb1kuhcnq4g6rt6.jpg,img//1hb1kuhc6lbhon0m.jpg,img//1hb1kuhck7dmol0a.jpg}	Стулья
8	16954093744	Стеллаж Стеллаж "Ник"	1533	{{Тип,Стеллаж},{"Ширина, см",35.5},{"Глубина, см",37.6},{"Высота, см",140},{Бренд,"Мебельная компания Е1"}}	{img//1hb1llsbr12i0hrg.jpg,img//1hb1llsbbfg974ui.jpg,img//1hb1llsb8mvan31m.jpg,img//1hb1llsb8s22dclk.jpg}	Стеллажи
9	16954190980	Стеллаж HW5224	1590	{{Тип,Стеллаж},{"Ширина, см",65},{"Глубина, см",25},{"Высота, см",166},{Бренд,SOKOLTEC}}	{img//1hb1lquejd00h4vm.jpg}	Стеллажи
10	16954355927	Стол письменный компьютерный маникюрный	2440	{{Тип,"Компьютерный стол"},{"Ширина, см",108.1},{"Глубина, см",47},{"Высота, см",103.4},{Бренд,GARUN}}	{img//1hb1ltvceqgat6g6.jpg,img//1hb1ltvcs3cdkpt7.jpg,img//1hb1ltvcaveb30q9.jpg}	Столы
11	16954522818	Тумба в ванную с раковиной подвесная	6685	{{Тип,"Тумба с раковиной"},{"Ширина, см",40},{"Глубина, см",22},{"Высота, см",55},{Бренд,GARDAHOME}}	{img//1hb1m6ltcqiuugd5.jpg,img//1hb1m6ltdjjtdrgm.jpg,img//1hb1m6lucs24dmkc.jpg,img//1hb1m6lu7ubaoq7a.jpg}	Тумбы
12	16954555304	Тумба для ванной OTROS	14191	{{Тип,"Тумба с раковиной"},{"Ширина, см",100},{"Глубина, см",50},{"Высота, см",50},{Бренд,OTROS}}	{img//1hb1mfsqd42m1052.jpg,img//1hb1mfsq50ctcp0d.jpg,img//1hb1mfsqput9a7ac.jpg}	Тумбы
13	16955617636	Двуспальная кровать металлическая, кованая	18013	{{Тип,"Двуспальная кровать"},{"Ширина, см",130},{"Длина, см",212},{"Высота, см",107},{Бренд,ФОРВАРД-МЕБЕЛЬ}}	{img//1hb26q23avud7tqm.jpg,img//1hb26q23rn2q54dd.jpg,img//1hb26q2370gpap1h.jpg,img//1hb26q239rrnelh6.jpg,img//1hb26q238l2bcpp4.jpg}	Кровати
14	16955853091	Диван-кровать Ralph	348000	{{Тип,Диван-кровать},{"Ширина, см",156},{"Глубина, см",156},{"Высота, см",90},{Бренд," Garda Decor"}}	{img//1hb3ftk9nvjtpgvp.jpg,img//1hb3ftk9ifcasjrc.jpg,img//1hb3ftk96tevsdm5.jpg}	Диваны
15	16955881429	Диван прямой 2-х местный Homage Gamma	246040	{{Тип,"Прямой диван"},{"Ширина, см",210},{"Глубина, см",90},{"Высота, см",75},{Бренд," Homage"}}	{img//1hb3g24plh60ema3.jpg,img//1hb3g24pgqe0kmfl.jpg}	Диваны
16	16955200638	Диван-кровать ИТАЛИЯ Muse Confortplus	281170	{{Тип,Диван-кровать},{"Ширина, см",180},{"Глубина, см",100},{"Высота, см",110},{Бренд,Confortplus}}	{img//1hb3g7a2kgoae98o.jpg,img//1hb3g7a2jf0gre1m.jpg,img//1hb3g7a21ae04qmr.jpg,img//1hb3g7a2css3jr6a.jpg}	Диваны
17	16955574372	Прямой диван RALPH	268500	{{Тип,"Прямой диван"},{"Ширина, см",87},{"Глубина, см",60},{"Высота, см",98},{Бренд," Garda Decor"}}	{img//1hb3ga0l24mgc27c.jpg,img//1hb3ga0la9fscigq.jpg}	Диваны
18	16955906156	Прямой диван Кроусон	270468	{{Тип,"Прямой диван"},{"Ширина, см",190},{"Глубина, см",95},{"Высота, см",85},{Бренд,Инлавка}}	{img//1hb3ggll9lir2jl2.jpg,img//1hb3ggllk7aq2b2o.jpg,img//1hb3ggll495h37fm.jpg}	Диваны
19	16955011804	Диван прямой 4-х местный Orix Capella	261244	{{Тип,"Прямой диван"},{"Ширина, см",260},{"Глубина, см",65},{"Высота, см",110},{Бренд,Инлавка}}	{img//1hb3gj23k19qmlu8.jpg}	Диваны
20	16955024999	Прямой диван наножках	247166	{{Тип,"Прямой диван"},{"Ширина, см",275},{"Глубина, см",180},{"Высота, см",80},{Бренд,"EMILIO LINELLI"}}	{img//1hb3go0fi0focng6.jpg}	Диваны
21	16955518525	Прямой диван Galanti	223086	{{Тип,"Прямой диван"},{"Ширина, см",240},{"Глубина, см",118},{"Высота, см",68},{Бренд,"MAI HE MAI"}}	{img//1hb3gtn6dc40eded.jpg,img//1hb3gtn6d7rj11cv.jpg,img//1hb3gtn659594kbb.jpg}	Диваны
22	16955155286	Диван-кровать ИТАЛИЯ Annie	216725	{{Тип,"Прямой диван"},{"Ширина, см",175},{"Глубина, см",95},{"Высота, см",110},{Бренд," Confortplus"}}	{img//1hb3h38drc68o3fi.jpg,img//1hb3h38d23kvjar5.jpg,img//1hb3h38d6cv3bsdm.jpg}	Диваны
23	16955180854	Диван-кровать Диван Annette	206500	{{Тип,Диван-кровать},{"Ширина, см",100},{"Глубина, см",100},{"Высота, см",95},{Бренд," Garda Decor"}}	{img//1hb3h72jl2b7no7d.jpg,img//1hb3h72jetvp677m.jpg}	Диваны
24	16955355951	Диван-кровать Диван Trevi	198000	{{Тип,Диван-кровать},{"Ширина, см",103},{"Глубина, см",103},{"Высота, см",88},{Бренд," Garda Decor"}}	{img//1hb3ha6nqfmrq3sr.jpg}	Диваны
25	16955132995	Прямой диван Crearte	181195	{{Тип,Диван-кровать},{"Ширина, см",160},{"Глубина, см",90},{"Высота, см",80},{Бренд,"MAI HE MAI"}}	{img//1hb3hhgg8ankh0ct.jpg,img//1hb3hhgg2c2kh9h3.jpg}	Диваны
26	16955237304	Диван-кровать Холидей Люкс	204142	{{Тип,Диван-кровать},{"Ширина, см",326},{"Глубина, см",182},{"Высота, см",84},{Бренд,"Лига Диванов"}}	{img//1hb3hl0c51hob3v5.jpg}	Диваны
29	16955246986	Прямой диван OSCAR	183600	{{Тип,"Прямой диван"},{"Ширина, см",240},{"Глубина, см",99},{"Высота, см",85},{Бренд,"Garda Decor"}}	{img//1hb42m9c7toa62q5.jpg,img//1hb42m9c6tvb3ahq.jpg,img//1hb42m9c0rg107es.jpg}	Диваны
30	16955395132	Диван BURJUA	168066	{{Тип,"Прямой диван"},{"Ширина, см",175},{"Глубина, см",100},{"Высота, см",130},{Бренд,BURJUA}}	{img//1hb42p3lbrt34f18.jpg,img//1hb42p3l4iuvus2p.jpg}	Диваны
31	16955475754	Диван PECOLA	36557	{{Тип,"Прямой диван"},{"Ширина, см",142},{"Глубина, см",80},{"Высота, см",74},{Бренд," Альпина"}}	{img//1hb43t761m9h43uv.jpg,img//1hb43t772kpdpror.jpg,img//1hb43t7798ash9b8.jpg}	Диваны
32	16955809458	Прямой диван ракушка	48263	{{Тип,"Прямой диван"},{"Ширина, см",130},{"Глубина, см",77},{"Высота, см",78},{Бренд,Mak-interior}}	{img//1hb4405mef8h0jrm.jpg,img//1hb4405n3v0ojsmv.jpg}	Диваны
33	16955567334	Диван-кровать MAI HE MAI	139258	{{Тип,"Прямой диван"},{"Ширина, см",170},{"Глубина, см",65},{"Высота, см",80},{Бренд,"MAI HE MAI"}}	{img//1hb442tf7pdk72uc.jpg}	Диваны
34	16955770250	Кушетка SF7-2SANRENWEI-1	155936	{{Тип,Кушетка},{"Ширина, см",246},{"Глубина, см",51},{"Высота, см",103},{Бренд,LEVEMONG}}	{img//1hb44avmb6b67hjo.jpg,img//1hb44avni8tmdk7b.jpg,img//1hb44avonopodqpt.jpg,img//1hb44avo4oh0452l.jpg,img//1hb44avo0cvqadis.jpg,img//1hb44avoongr7gfo.jpg,img//1hb44avoo0gg43fu.jpg}	Диваны
35	16955082935	Диван-кровать Венеция	147822	{{Тип,Диван-кровать},{"Ширина, см",300},{"Глубина, см",150},{"Высота, см",85},{Бренд,"Лига Диванов"}}	{img//1hb44ctt7ahkoerg.jpg}	Диваны
36	16955403009	Диван-кровать Бруклин	144302	{{Тип,Диван-кровать},{"Ширина, см",213},{"Глубина, см",91},{"Высота, см",104},{Бренд,"Лига Диванов"}}	{img//1hb45ctaeug50rjs.jpg,img//1hb45cta16mbs41d.jpg}	Диваны
37	16955751161	 Прямой диван Seymours Green	126218	{{Тип," Прямой диван"},{"Ширина, см",150},{"Глубина, см",82},{"Высота, см",82},{Бренд,"MAI HE MAI"}}	{img//1hb45f9ntj91cq32.jpg}	Диваны
38	16955607287	Мягкий диван "Снежная принцесса"	5370	{{Тип,Кресло},{"Ширина, см",48},{"Глубина, см",80},{"Высота, см",45},{Бренд,Zabiaka}}	{img//1hb45hgssmemn045.jpg}	Диваны
39	16955854054	Прямой диван guzel-5 Alba	156949	{{Тип,"Прямой диван"},{"Ширина, см",260},{"Глубина, см",100},{"Высота, см",140},{Бренд,Alba}}	{img//1hb45l3irftlie64.jpg}	Диваны
40	16955135335	Диван-кровать Бристоль	133742	{{Тип,Диван-кровать},{"Ширина, см",295},{"Глубина, см",148},{"Высота, см",95},{Бренд,"Лига Диванов"}}	{img//1hb45pkld4nruu3t.jpg,img//1hb45pkm6fkv9nrf.jpg,img//1hb45pkmacr444v0.jpg,img//1hb45pkmrqhfmv7q.jpg}	Диваны
41	16955704834	Прямой диван Монреаль	161902	{{Тип,"Прямой диван"},{"Ширина, см",305},{"Глубина, см",172},{"Высота, см",78},{Бренд,"Лига Диванов"}}	{img//1hb45sd82asal5nl.jpg,img//1hb45sd8lppsjbt2.jpg,img//1hb45sd8gtf4ktpa.jpg,img//1hb45sd912df8gre.jpg}	Диваны
42	16955690910	Диван-кровать Марсель	168942	{{Тип,Диван-кровать},{"Ширина, см",302},{"Глубина, см",147},{"Высота, см",93},{Бренд,"Лига Диванов"}}	{img//1hb45vaf5somfk3l.jpg,img//1hb45vaf77du7avf.jpg,img//1hb45vafltnoisoa.jpg}	Диваны
43	16955391837	Диван-кровать с ортопедическими свойствами	30674	{{Тип,Диван-кровать},{"Ширина, см",231},{"Глубина, см",104},{"Высота, см",86},{Бренд,"Белорусская мебель Belvedere"}}	{img//1hb46350fi7djmek.jpg,img//1hb46350rtas54s7.jpg,img//1hb463511m7g83cr.jpg,img//1hb463514to9liaq.jpg,img//1hb46352m71tmdjo.jpg}	Диваны
51	16970976092	Полутораспальная кровать Фади	6725	{{Тип," Двуспальная кровать"},{"Ширина, см",140},{"Длина, см",200},{"Высота, см",70},{"Ширина спального места, см",140}}	{/img/1hcgrit0rhd5gr2t.jpg,/img/1hcgrit1u6lnk48j.jpg,/img/1hcgrit1aak51vli.jpg}	Кровати
49	16970658956	Стол обеденный Orix Aston	222792	{{Тип,"Стол обеденный"},{"Ширина, см",200},{"Глубина, см",100},{"Высота, см",77},{"Вид стола",Обеденный}}	{/img//1hcgqlikkaqk82j5.jpg,/img//1hcgqlikl3m18t58.jpg,/img//1hcgqlikgl9ku7gk.jpg}	Столы
50	16970302064	Игральный стол Howard Miller Ithaca Pub & Game	263134	{{Тип,"Стол для переговоров"},{"Ширина, см",99},{"Глубина, см",99},{"Высота, см",91},{"Материал столешницы",Дерево}}	{/img//1hcgqpnvrs39evut.jpg,/img//1hcgqpnvh8vhsf16.jpg,/img//1hcgqpnv09qr9bko.jpg}	Столы
44	16970727794	Сервировочный стол ReTableau	1734	{{Тип,"Сервировочный стол"},{"Ширина, см",50},{"Глубина, см",79},{"Высота, см",42},{"Количество в комплекте, шт.",1}}	{/img//1hcgq4smdqalt1ik.jpg,/img//1hcgq4snic7htsci.jpg,/img//1hcgq4snbtld6hf1.jpg}	Столы
45	16970389302	Журнальный стол SICOTAS	7623	{{Тип,"Журнальный стол"},{"Ширина, см",79.8},{"Глубина, см",79.8},{"Высота, см",39.9},{"Количество в комплекте, шт.",1}}	{/img//1hcgq8k0l171evbv.jpg,/img//1hcgq8k1tbf5ctaf.jpg,/img//1hcgq8k1jqlefe3l.jpg}	Столы
46	16970182746	Стол обеденный Раскладной Ломбер	6420	{{Тип,"Стол обеденный"},{"Ширина, см",80},{"Глубина, см",60},{"Высота, см",76},{"Вид стола","Обеденный, Сервировочный, Чайный"}}	{/img//1hcgqbl50odtk2uk.jpg,/img//1hcgqbl6bqiks6it.jpg,/img//1hcgqbl6qe4oi5je.jpg}	Столы
47	16970341808	Письменный стол ШКЛТ	3194	{{Тип,"Письменный стол"},{"Ширина, см",110},{"Глубина, см",45},{"Высота, см",75},{"Максимальная высота, см",75}}	{/img//1hcgqehiri5nj0q1.jpg,/img//1hcgqehjgkisusev.jpg,/img//1hcgqehj6salhnbn.jpg}	Столы
52	16970747662	Двуспальная кровать	5653	{{Тип," Двуспальная кровать"},{"Ширина, см",120},{"Длина, см",200},{"Высота, см",30},{Бренд,Квадрат}}	{/img/1hcgrut94p3ainep.jpg,/img/1hcgrut9adc50tpu.jpg,/img/1hcgrut9brlp0lva.jpg}	Кровати
53	16970608757	Односпальная кровать детская Марсель 	11267	{{Тип,"Односпальная кровать"},{"Ширина, см",101},{"Длина, см",203},{"Высота, см",79},{"Ширина спального места, см",90}}	{/img/1hcgs1oc9f2vslir.jpg,/img/1hcgs1ocv7mu942t.jpg,/img/1hcgs1ock6k209o0.jpg}	Кровати
48	16970383355	Письменный стол LOFTWELL	10455	{{Тип,"Письменный стол"},{"Ширина, см",122},{"Глубина, см",64},{"Высота, см",75},{"Минимальная высота, см",75}}	{/img//1hcgqhfhf9q428li.jpg,/img//1hcgqhfhejp9fv8o.jpg,/img//1hcgqhfie8j95ua0.jpg}	Столы
\.


--
-- TOC entry 4109 (class 0 OID 3244883)
-- Dependencies: 231
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: okyxasqz
--

COPY public.orders (id, "accessKey", name, address, phone, email, "deliveryType", "paymentType", products, "totalPrice", comments) FROM stdin;
198	mbzhabnrezet42j2gs7hg	Galchun	Mumbai	912 111 22 33	wewew@sdsds	delivery	cash	{"{\\"quantity\\": 1, \\"productId\\": 3}","{\\"quantity\\": 1, \\"productId\\": 7}","{\\"quantity\\": 1, \\"productId\\": 5}"}	12151	\N
199	jvt8re33fznzl9lxo1b9n	asa	\N	912 111 22 33	asas@sds	pickup	card	{"{\\"quantity\\": 1, \\"productId\\": 17}","{\\"quantity\\": 1, \\"productId\\": 31}"}	305057	\N
200	a8ybjtqk06bxs4brudojcr	asa	Mumbai	912 111 22 33	q32323@ddsds	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 43}","{\\"quantity\\": 3, \\"productId\\": 6}","{\\"quantity\\": 1, \\"productId\\": 41}","{\\"quantity\\": 1, \\"productId\\": 48}","{\\"quantity\\": 1, \\"productId\\": 17}","{\\"quantity\\": 1, \\"productId\\": 31}","{\\"quantity\\": 2, \\"productId\\": 13}","{\\"quantity\\": 1, \\"productId\\": 32}","{\\"quantity\\": 1, \\"productId\\": 42}","{\\"quantity\\": 1, \\"productId\\": 52}","{\\"quantity\\": 1, \\"productId\\": 53}","{\\"quantity\\": 1, \\"productId\\": 51}","{\\"quantity\\": 2, \\"productId\\": 16}","{\\"quantity\\": 7, \\"productId\\": 5}","{\\"quantity\\": 1, \\"productId\\": 49}","{\\"quantity\\": 1, \\"productId\\": 10}","{\\"quantity\\": 1, \\"productId\\": 45}","{\\"quantity\\": 1, \\"productId\\": 44}","{\\"quantity\\": 1, \\"productId\\": 26}"}	1803706	\N
201	a8ybjtqk06bxs4brudojcr	asa	Mumbai	912 111 22 33	wew@sdwwewe	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 15}"}	246040	\N
202	r1h2we863pmoxqdjxeddjr	asa	Mumbai	912 111 22 33	wwe@ddsd	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 53}"}	11267	\N
203	r1h2we863pmoxqdjxeddjr	asa	Mumbai	912 111 22 33	2wewe@sdsds	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 17}"}	268500	\N
204	zfdx8fzkbiftemax03tati	asa	Mumbai	awdw	wdwd@sdsds	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 15}"}	246040	\N
205	lss62ntr2jdbt0ty6ih9hn	asa	Mumbai	912 111 22 33	qwqw@wwe	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 25}"}	181195	\N
206	114p221qsggmbj3s6ieza6	asa	Mumbai	912 111 22 33	223@dsdsd	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 48}"}	10455	\N
207	114p221qsggmbj3s6ieza6	wwdd	Mumbai	912 111 22 33	sds@ssdsds	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 15}"}	246040	\N
208	hut74taczce28twv3c3b6	asa	Mumbai	we2323	22323@sdwdsd	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 41}"}	161902	\N
209	a6bg7hf4idpvoee91ew7n	Фамилия Имя Отчество	пушкина 7	2232323	mail@fkf.fk	delivery	cash	{"{\\"quantity\\": 1, \\"productId\\": 12}","{\\"quantity\\": 1, \\"productId\\": 42}","{\\"quantity\\": 1, \\"productId\\": 7}"}	189734	\N
210	i8cxb1u01fr2x6pah5jy4v	Тест тестович	попоппп	54646	asdasd@asd.asd	pickup	card	{"{\\"quantity\\": 1, \\"productId\\": 50}","{\\"quantity\\": 1, \\"productId\\": 37}","{\\"quantity\\": 1, \\"productId\\": 3}","{\\"quantity\\": 1, \\"productId\\": 34}","{\\"quantity\\": 1, \\"productId\\": 9}","{\\"quantity\\": 1, \\"productId\\": 22}","{\\"quantity\\": 1, \\"productId\\": 45}"}	774981	фывфыв
211	i8cxb1u01fr2x6pah5jy4v	asd	asd	asd	asd@asd.fg	delivery	cash	{"{\\"quantity\\": 1, \\"productId\\": 47}","{\\"quantity\\": 1, \\"productId\\": 49}"}	225986	asd
212	a6bg7hf4idpvoee91ew7n	asd	\N	df	asd@sad.g	pickup	card	{"{\\"quantity\\": 1, \\"productId\\": 6}","{\\"quantity\\": 1, \\"productId\\": 14}","{\\"quantity\\": 1, \\"productId\\": 19}"}	610946	\N
213	xa0iz8oo31smcfbb7dyxk	asa	Mumbai	912 111 22 33	sss@ssds	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 6}"}	1702	\N
214	xa0iz8oo31smcfbb7dyxk	asa	Mumbai	912 111 22 33	qeq@dweewew	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 15}"}	246040	\N
215	xa0iz8oo31smcfbb7dyxk	asa	Mumbai	912 111 22 33	wdad@sdsds	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 15}"}	246040	\N
216	xa0iz8oo31smcfbb7dyxk	asa	Mumbai	912 111 22 33	wqdw@sdwdd	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 15}"}	246040	\N
217	xa0iz8oo31smcfbb7dyxk	asa	Mumbai	912 111 22 33	qweqeWEWEWEW@sdd	pickup	cash	{"{\\"quantity\\": 10, \\"productId\\": 6}"}	17020	\N
218	xa0iz8oo31smcfbb7dyxk	asa	Mumbai	912 111 22 33	wdw@sdwwdw	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 39}"}	156949	\N
219	xa0iz8oo31smcfbb7dyxk	asa	Mumbai	23232	232@wewewew	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 15}"}	246040	\N
220	xa0iz8oo31smcfbb7dyxk	asa	Mumbai	912 111 22 33	dwdwdq@scsscs	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 15}"}	246040	\N
221	mbzhabnrezet42j2gs7hg	asa	\N	912 111 22 33	asas@sdsds	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 25}"}	181195	\N
222	mbzhabnrezet42j2gs7hg	ssds	Mumbai	912 111 22 33	sds@dwdw	delivery	card	{"{\\"quantity\\": 1, \\"productId\\": 48}"}	10455	\N
223	2nfyz8qrb1ewa396p284cc	asa	Mumbai	wewe	wew2@sdsdwd	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 44}"}	1734	\N
224	2nfyz8qrb1ewa396p284cc	asa	Mumbai	ssqq	qsqs!ww!@aaaax	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 40}"}	133742	\N
225	2nfyz8qrb1ewa396p284cc	asa	Mumbai	dwdwdq	wwqwdd@sdwdw	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 48}"}	10455	\N
226	2nfyz8qrb1ewa396p284cc	wqw	Mumbai	qweqw	eq@qeq	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 35}"}	147822	\N
227	2nfyz8qrb1ewa396p284cc	asa	Mumbai	912 111 22 33	wdwe@wwew	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 43}"}	30674	\N
228	t6q6567x1gilr8i699fe	asa	Mumbai	sdsd	sds@sdsdsd	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 49}"}	222792	\N
229	t6q6567x1gilr8i699fe	asa	Mumbai	qwqw	qwq@ddsd	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 13}"}	18013	\N
230	kdh7h66zv0fwatsyo0vjd	asa	Mumbai	912 111 22 33	we@dssdsd	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 46}"}	6420	\N
231	kdh7h66zv0fwatsyo0vjd	asa	Mumbai	e2e2	2323@wewewew	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 14}"}	348000	\N
232	kdh7h66zv0fwatsyo0vjd	asa	Mumbai	wqwqe	qeq@sdsdsd	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 14}"}	348000	\N
233	kdh7h66zv0fwatsyo0vjd	asas	Mumbai	asas	asas@adasa	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 14}"}	348000	\N
234	kdh7h66zv0fwatsyo0vjd	asa	Mumbai	qwqw	qwqw@sdsds	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 15}"}	246040	\N
235	tvk0qlpx37ivgf34gnksno	asa	Mumbai	050-888-11-00	eeewe@sewewew	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 36}"}	144302	\N
236	tvk0qlpx37ivgf34gnksno	asa	Mumbai	233	sdd@sdsdsd	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 15}"}	246040	\N
237	tvk0qlpx37ivgf34gnksno	asa	Mumbai	sqsqs	asas@dsdsds	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 34}","{\\"quantity\\": 1, \\"productId\\": 48}","{\\"quantity\\": 3, \\"productId\\": 13}"}	220430	\N
238	tvk0qlpx37ivgf34gnksno	asa	Mumbai	343434	ewe@sdsdds	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 25}"}	181195	\N
239	rekriqgdm9pkwj79q834wr	Макс	круглая 6	007	mask@maks.ru	pickup	card	{"{\\"quantity\\": 1, \\"productId\\": 36}","{\\"quantity\\": 1, \\"productId\\": 44}","{\\"quantity\\": 4, \\"productId\\": 3}","{\\"quantity\\": 3, \\"productId\\": 9}","{\\"quantity\\": 1, \\"productId\\": 40}","{\\"quantity\\": 1, \\"productId\\": 10}","{\\"quantity\\": 1, \\"productId\\": 50}","{\\"quantity\\": 1, \\"productId\\": 33}","{\\"quantity\\": 1, \\"productId\\": 11}","{\\"quantity\\": 2, \\"productId\\": 7}","{\\"quantity\\": 1, \\"productId\\": 19}","{\\"quantity\\": 1, \\"productId\\": 29}","{\\"quantity\\": 1, \\"productId\\": 21}","{\\"quantity\\": 1, \\"productId\\": 46}","{\\"quantity\\": 1, \\"productId\\": 35}","{\\"quantity\\": 1, \\"productId\\": 49}"}	1769251	важен
240	rekriqgdm9pkwj79q834wr	Иван	Ванин дом	008	ivan@ivan.ru	delivery	card	{"{\\"quantity\\": 1, \\"productId\\": 9}","{\\"quantity\\": 1, \\"productId\\": 4}","{\\"quantity\\": 1, \\"productId\\": 17}","{\\"quantity\\": 1, \\"productId\\": 30}"}	440852	Ваня ждёт
241	nm26irh3e5u0wv9pzb31m	sdf	sdf	sdf	sdf@asd.asd	delivery	card	{"{\\"quantity\\": 1, \\"productId\\": 36}","{\\"quantity\\": 1, \\"productId\\": 3}","{\\"quantity\\": 1, \\"productId\\": 51}","{\\"quantity\\": 1, \\"productId\\": 39}"}	311731	sdf
242	rekriqgdm9pkwj79q834wr	Пётр	дом Петра	0008	petr@mail.com	delivery	cash	{"{\\"quantity\\": 1, \\"productId\\": 52}","{\\"quantity\\": 1, \\"productId\\": 25}","{\\"quantity\\": 1, \\"productId\\": 6}","{\\"quantity\\": 1, \\"productId\\": 49}"}	411342	Жду
243	5eon382xvb20nwpwxvth0wa	sds	sdsdssd	sd222	sasas@sdsdsds	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 16}"}	281170	\N
244	w30zn1afnqm2gqp2x4bpps	asa	Mumbai	wewee	wewe@dsdwwe	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 9}"}	1590	\N
245	njlcwrun7v02cvihuuv1z4	asa	Mumbai	sdsds	sdsd@ddfdfdf	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 25}"}	181195	\N
246	k8wa5fuena67mnv6jjcil	asa		asas	aasa@dsdsd	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 53}"}	11267	\N
247	k8wa5fuena67mnv6jjcil	asa	Mumbai	asasa232	asas@sdsdsd	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 20}"}	247166	\N
248	84tn68m7gaxq5bdsifjfxf	asasas	Mumbai	223232	asasa@sdsdds	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 51}"}	6725	\N
249	652ufz4u5v44aw0n91tyt8	asa	Mumbai	912 111 22 33	223wwee@sdsd	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 44}"}	1734	\N
250	652ufz4u5v44aw0n91tyt8	asa	Mumbai	912 111 22 33	dssds@dsdsds	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 10}"}	2440	\N
251	652ufz4u5v44aw0n91tyt8	ффыф	Mumbai	фыф2123131	sdsds@dsdsdsd	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 35}","{\\"quantity\\": 1, \\"productId\\": 8}"}	149355	\N
252	shre43iz2p80zzfq7mo65a	Макс Прикинь работает	Mumbai	0000000000000	sghs@hsjdshjsd	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 33}","{\\"quantity\\": 1, \\"productId\\": 25}"}	320453	\N
253	q0sgo4d9x2vducxhn7cs	ssdssd	dssdsd	343334	sdsdsd@sdsdsds	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 16}"}	281170	\N
254	mgf5ra089uiitqf8uh3xz	Отовой Я	MMM	111	0007@mmm	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 39}","{\\"quantity\\": 1, \\"productId\\": 49}","{\\"quantity\\": 20, \\"productId\\": 29}"}	4051741	\N
255	a8ybjtqk06bxs4brudojcr	sa	Mumbai	1313	asass@asasa	pickup	cash	{"{\\"quantity\\": 2, \\"productId\\": 15}","{\\"quantity\\": 1, \\"productId\\": 20}","{\\"quantity\\": 1, \\"productId\\": 24}","{\\"quantity\\": 1, \\"productId\\": 31}"}	973803	\N
256	0xza8t6d3wac1pdrc8fmj2x	dsdssd	sdsd	2323	23@sdsds	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 47}","{\\"quantity\\": 1, \\"productId\\": 45}"}	10817	\N
257	ksh7ygpn0ufzdn8h0uie7	ádsdsadas0123	Tp Ho Chi Minh	101231245566	phudxse160591@fpt.edu.vn	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 24}"}	198000	\N
258	ksh7ygpn0ufzdn8h0uie7	ádsdsadas0123	Tp Ho Chi Minh	101231245566	phudxse160591@fpt.edu.vn	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 24}"}	198000	\N
259	a8ybjtqk06bxs4brudojcr	asa	Mumbai	111	aaa@gmailvn.net	pickup	cash	{"{\\"quantity\\": 3, \\"productId\\": 12}","{\\"quantity\\": 1, \\"productId\\": 45}"}	50196	\N
260	lmy7n5f2z1kf68exft6uat	Еее	Test 	111	test@gmail.com	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 51}","{\\"quantity\\": 2, \\"productId\\": 45}","{\\"quantity\\": 2, \\"productId\\": 13}","{\\"quantity\\": 1, \\"productId\\": 36}","{\\"quantity\\": 1, \\"productId\\": 53}","{\\"quantity\\": 1, \\"productId\\": 44}","{\\"quantity\\": 1, \\"productId\\": 21}"}	438386	\N
261	n0t76gdj65ldsk2f9posrt	Эдуард	Померанчука 7	008	eduard@mail.ru	delivery	card	{"{\\"quantity\\": 8, \\"productId\\": 47}","{\\"quantity\\": 2, \\"productId\\": 31}"}	98666	
262	5e1qg4svqnax36lp5ty7m	Эдуард	wadwd	117	wad@wel.com	delivery	cash	{"{\\"quantity\\": 16, \\"productId\\": 4}","{\\"quantity\\": 34, \\"productId\\": 26}"}	6983964	
263	a8ybjtqk06bxs4brudojcr	asa	test	111	test@test	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 40}","{\\"quantity\\": 1, \\"productId\\": 5}"}	135537	\N
264	a9exthdnj1hgja18nj0xoa	asa	test	111	test@test	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 41}","{\\"quantity\\": 1, \\"productId\\": 6}"}	163604	\N
265	4kjwnpywfw5zyar3mnvmll	asa	test	111	test@test	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 43}","{\\"quantity\\": 1, \\"productId\\": 42}","{\\"quantity\\": 1, \\"productId\\": 6}"}	201318	\N
266	57cvk0eb4mwlsppfl7qn6	asa	test	111	test@test	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 43}","{\\"quantity\\": 1, \\"productId\\": 20}"}	277840	\N
267	k1m3df7s1mq7941azw5r9p	asa	test	111	test@test	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 29}","{\\"quantity\\": 1, \\"productId\\": 34}","{\\"quantity\\": 1, \\"productId\\": 19}"}	600780	\N
268	z0pfrqybaebjz99bhpdm5	t	t	t	t@t	pickup	card	{"{\\"quantity\\": 1, \\"productId\\": 12}","{\\"quantity\\": 1, \\"productId\\": 8}"}	15724	
269	n0t76gdj65ldsk2f9posrt	Вадим		78589681254	vadim@mail.ru	pickup	card	{"{\\"quantity\\": 1, \\"productId\\": 32}","{\\"quantity\\": 1, \\"productId\\": 31}"}	84820	Очень надо
270	n0t76gdj65ldsk2f9posrt	Артур	\N	78965632145	artur43@gmail.com	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 30}","{\\"quantity\\": 1, \\"productId\\": 52}","{\\"quantity\\": 1, \\"productId\\": 4}"}	176415	
271	n0t76gdj65ldsk2f9posrt	Влад	\N	380995874569	mail@mail.com	pickup	card	{"{\\"quantity\\": 1, \\"productId\\": 17}","{\\"quantity\\": 1, \\"productId\\": 19}","{\\"quantity\\": 1, \\"productId\\": 24}","{\\"quantity\\": 1, \\"productId\\": 36}"}	872046	Жду
272	9q6t5cfgefq46g5fgy8vl2	Беляева		+79592381289	bele@gmail.com	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 5}"}	1795	
273	sdn2p5mew7h0mxe3higor0k	fdgfdg	впва	+79998887766	sdf@mail.ru	delivery	card	{"{\\"quantity\\": 2, \\"productId\\": 25}","{\\"quantity\\": 1, \\"productId\\": 23}","{\\"quantity\\": 1, \\"productId\\": 8}","{\\"quantity\\": 1, \\"productId\\": 34}","{\\"quantity\\": 1, \\"productId\\": 20}"}	973525	вапва
274	sdn2p5mew7h0mxe3higor0k	sdfsdf	sdf	sdf	fsdf@sdfs.ru	delivery	card	{"{\\"quantity\\": 1, \\"productId\\": 4}","{\\"quantity\\": 1, \\"productId\\": 53}","{\\"quantity\\": 1, \\"productId\\": 47}"}	17157	sdfsd
275	sdn2p5mew7h0mxe3higor0k	sdf	dfsdf	sdfs	sdfs@mail.ru	delivery	card	{"{\\"quantity\\": 1, \\"productId\\": 26}","{\\"quantity\\": 1, \\"productId\\": 14}"}	552142	sdf
276	tw8ydlx1mcikfx2c994hnp	test	test	test	test@test	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 16}","{\\"quantity\\": 3, \\"productId\\": 8}","{\\"quantity\\": 1, \\"productId\\": 9}","{\\"quantity\\": 1, \\"productId\\": 42}"}	456301	\N
277	sdn2p5mew7h0mxe3higor0k	dfgd	gdfg	fgdf	fdg@mail.ru	delivery	card	{"{\\"quantity\\": 1, \\"productId\\": 16}","{\\"quantity\\": 1, \\"productId\\": 24}","{\\"quantity\\": 1, \\"productId\\": 14}"}	827170	dfgd
278	sdn2p5mew7h0mxe3higor0k	sdf	sfsd	sdfsdf	dfsd@mail.ru	delivery	card	{"{\\"quantity\\": 1, \\"productId\\": 40}","{\\"quantity\\": 1, \\"productId\\": 4}"}	136438	sdfs
279	sdn2p5mew7h0mxe3higor0k	Nikita Zimin	Verkhnie polya, 36/1, 5	+79645264960	nikitoizo@mail.ru	delivery	card	{"{\\"quantity\\": 1, \\"productId\\": 40}","{\\"quantity\\": 1, \\"productId\\": 47}"}	136936	dfgd
280	rekriqgdm9pkwj79q834wr	asd	asd	asd	asd@asdv.sd	pickup	card	{"{\\"quantity\\": 1, \\"productId\\": 45}","{\\"quantity\\": 3, \\"productId\\": 52}","{\\"quantity\\": 1, \\"productId\\": 7}","{\\"quantity\\": 1, \\"productId\\": 44}","{\\"quantity\\": 4, \\"productId\\": 18}","{\\"quantity\\": 1, \\"productId\\": 24}","{\\"quantity\\": 1, \\"productId\\": 47}","{\\"quantity\\": 1, \\"productId\\": 21}"}	1539069	asd
281	lx39vdq3f3ker6oa925dtp	asa	test	111	test@test	pickup	card	{"{\\"quantity\\": 4, \\"productId\\": 13}"}	72052	
282	704fy245gel95mhdv8t6le	test	test	121	test@test	pickup	card	{"{\\"quantity\\": 1, \\"productId\\": 16}","{\\"quantity\\": 1, \\"productId\\": 24}"}	479170	
283	704fy245gel95mhdv8t6le	test	test	test	test@test	pickup	card	{"{\\"quantity\\": 1, \\"productId\\": 5}"}	1795	
284	urv3rxczq58xv0y0uhbry	test	test	111	test@test	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 14}"}	348000	\N
286	urv3rxczq58xv0y0uhbry	1212	121	223232	sdsd@sdsd	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 37}"}	126218	\N
285	tmikxfqmxbe4ipuehvct3c	Влад	\N	89654521414	vlad231@gmail.ts	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 41}","{\\"quantity\\": 1, \\"productId\\": 45}","{\\"quantity\\": 1, \\"productId\\": 34}","{\\"quantity\\": 1, \\"productId\\": 13}"}	343474	
287	n0t76gdj65ldsk2f9posrt	Madw		6548	wadnaw@mwae.ru	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 9}"}	1590	
288	tmikxfqmxbe4ipuehvct3c	wad		878867	awd@wad.eu	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 52}","{\\"quantity\\": 1, \\"productId\\": 7}"}	12254	
289	urv3rxczq58xv0y0uhbry	test	test	11212	test@test	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 48}"}	10455	\N
290	n0t76gdj65ldsk2f9posrt	awda	\N	65846	awdaw@awdaw.com	pickup	card	{"{\\"quantity\\": 1, \\"productId\\": 39}","{\\"quantity\\": 1, \\"productId\\": 17}"}	425449	
291	urv3rxczq58xv0y0uhbry	test	test	test	test@test	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 14}","{\\"quantity\\": 1, \\"productId\\": 15}","{\\"quantity\\": 1, \\"productId\\": 16}","{\\"quantity\\": 1, \\"productId\\": 17}"}	1143710	\N
292	76wqji5kk485458avpgk2g	Test Testov	Testovoe	04428890	test@test.com	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 47}","{\\"quantity\\": 1, \\"productId\\": 16}","{\\"quantity\\": 1, \\"productId\\": 31}","{\\"quantity\\": 4, \\"productId\\": 6}"}	327729	\N
293	luu2jxtmf8sobzs0ks7zmf	Дарья	г. Санкт-Петербург, ул. Новгородская	999	daria@g.com	delivery	card	{"{\\"quantity\\": 3, \\"productId\\": 3}","{\\"quantity\\": 1, \\"productId\\": 37}","{\\"quantity\\": 1, \\"productId\\": 38}","{\\"quantity\\": 1, \\"productId\\": 36}","{\\"quantity\\": 1, \\"productId\\": 48}"}	297610	Коммент
294	luu2jxtmf8sobzs0ks7zmf	Дарья	Адрес	999	d@mail.ru	delivery	card	{"{\\"quantity\\": 1, \\"productId\\": 4}"}	2696	Комментарий
295	g22wxn9fh6r0co1s9lepzld	11	1	1	dadad@mail.ru	delivery	card	{"{\\"quantity\\": 4, \\"productId\\": 44}","{\\"quantity\\": 3, \\"productId\\": 5}","{\\"quantity\\": 1, \\"productId\\": 17}","{\\"quantity\\": 1, \\"productId\\": 15}","{\\"quantity\\": 1, \\"productId\\": 18}"}	797329	
296	g22wxn9fh6r0co1s9lepzld	1	1	1	fergus123@mail.ru	delivery	card	{"{\\"quantity\\": 1, \\"productId\\": 3}"}	3755	1
297	g22wxn9fh6r0co1s9lepzld	Гвиневра	Силый	880000877625	dadada@mail.ru	delivery	card	{"{\\"quantity\\": 1, \\"productId\\": 15}","{\\"quantity\\": 1, \\"productId\\": 13}"}	264053	
298	g22wxn9fh6r0co1s9lepzld	1	Силый	880000877625	fergus123@mail.ru	delivery	card	{"{\\"quantity\\": 1, \\"productId\\": 34}","{\\"quantity\\": 1, \\"productId\\": 7}","{\\"quantity\\": 1, \\"productId\\": 40}","{\\"quantity\\": 1, \\"productId\\": 45}"}	303902	
299	g22wxn9fh6r0co1s9lepzld	Гвиневра	Силый	880000877625	dadad@mail.ru	delivery	card	{"{\\"quantity\\": 1, \\"productId\\": 29}"}	183600	1111
300	g22wxn9fh6r0co1s9lepzld	1	1	1	1@mail.ru	delivery	card	{"{\\"quantity\\": 1, \\"productId\\": 31}","{\\"quantity\\": 1, \\"productId\\": 9}","{\\"quantity\\": 1, \\"productId\\": 46}"}	44567	1
301	h3iz9zvuzaq0yce4doo0du	Иван	г.Тверь, ул.Королева, д.54	+7(777)777-77-77	rege@dfg	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 11}","{\\"quantity\\": 1, \\"productId\\": 8}","{\\"quantity\\": 2, \\"productId\\": 3}"}	15728	wert
302	n445nc9wjw9yscpyuswq8	njb jhm	jj	777	nnn@mail.ru	delivery	card	{"{\\"quantity\\": 1, \\"productId\\": 31}"}	36557	
303	h3iz9zvuzaq0yce4doo0du	Иван	г.Тверь, ул.Королева, д.54	+7(777)777-77-77	ivanov@mail.ru	delivery	card	{"{\\"quantity\\": 1, \\"productId\\": 53}","{\\"quantity\\": 1, \\"productId\\": 32}"}	59530	dfgdgd
304	h3iz9zvuzaq0yce4doo0du	Петр	qwe	+7(777)-777-77-77	rege@dfg	delivery	cash	{"{\\"quantity\\": 1, \\"productId\\": 31}"}	36557	1123
305	h3iz9zvuzaq0yce4doo0du	Василий	г.Тверь, ул.Королева, д.54	+7(333)333-33-33	ivanov@mail.ru	delivery	card	{"{\\"quantity\\": 1, \\"productId\\": 10}"}	2440	hf
306	g22wxn9fh6r0co1s9lepzld	1	Силый	880000877625	bruskojam@proton.me	pickup	cash	{"{\\"quantity\\": 2, \\"productId\\": 6}"}	3404	
307	j45gexli1fpf4f05i6jk	Василий	sdf	+7(777)777-77-77	ivanov@mail.ru	delivery	card	{"{\\"quantity\\": 1, \\"productId\\": 16}"}	281170	кенк
308	me54vsvkj6p2y3msrc8e	asdasd	sdfsdf	sdsd	sad@sdfs	pickup	cach	{"{\\"quantity\\": 1, \\"productId\\": 12}","{\\"quantity\\": 1, \\"productId\\": 24}","{\\"quantity\\": 1, \\"productId\\": 10}"}	214631	sdfsdfsdf
309	me54vsvkj6p2y3msrc8e	Алексей	sdfdfsdfsdf	89556423132	alex@alex	delivery	cach	{"{\\"quantity\\": 1, \\"productId\\": 8}","{\\"quantity\\": 1, \\"productId\\": 43}"}	32207	жду
310	zw8f44g4ehf2e5qhxk0k5	Max Pog	квадрат, 8	+380501234567	maxpog@i.ua	delivery	cash	{"{\\"quantity\\": 1, \\"productId\\": 44}","{\\"quantity\\": 1, \\"productId\\": 43}","{\\"quantity\\": 1, \\"productId\\": 41}"}	194310	круто
311	me54vsvkj6p2y3msrc8e	Alex 	dfsdf	5654654654	akex@aledd	delivery	card	{"{\\"quantity\\": 2, \\"productId\\": 12}","{\\"quantity\\": 3, \\"productId\\": 17}"}	833882	dddd
312	2gwa6ojy345joa6r9vybbl	Петров	Зеленая 7	988789877999	asdasd@asdasd.df	pickup	cash	{"{\\"quantity\\": 3, \\"productId\\": 16}","{\\"quantity\\": 1, \\"productId\\": 15}"}	1089550	\N
339	qmdfp4fnr90x9rwug4gty	Aaaa	aaaa	99999999	aa@mail.com	delivery	cash	{"{\\"quantity\\": 1, \\"productId\\": 35}","{\\"quantity\\": 1, \\"productId\\": 47}"}	151016	
340	qmdfp4fnr90x9rwug4gty	bbbb	bbbb	345345	bbb@mail.ru	pickup	card	{"{\\"quantity\\": 1, \\"productId\\": 19}"}	261244	
313	m87xujsn5w17pwtxizfa	Vfhbyf		89046716925	lynx-89@inbox.ru	pickup	card	{"{\\"quantity\\": 1, \\"productId\\": 12}","{\\"quantity\\": 1, \\"productId\\": 8}","{\\"quantity\\": 1, \\"productId\\": 11}","{\\"quantity\\": 2, \\"productId\\": 16}","{\\"quantity\\": 1, \\"productId\\": 21}","{\\"quantity\\": 1, \\"productId\\": 3}","{\\"quantity\\": 1, \\"productId\\": 5}","{\\"quantity\\": 1, \\"productId\\": 10}","{\\"quantity\\": 1, \\"productId\\": 49}","{\\"quantity\\": 1, \\"productId\\": 44}","{\\"quantity\\": 1, \\"productId\\": 45}","{\\"quantity\\": 3, \\"productId\\": 50}","{\\"quantity\\": 1, \\"productId\\": 46}","{\\"quantity\\": 1, \\"productId\\": 47}","{\\"quantity\\": 1, \\"productId\\": 48}"}	1857445	
314	m87xujsn5w17pwtxizfa	dfa	sdagadg	afdga	adfg@i.com	delivery	card	{"{\\"quantity\\": 1, \\"productId\\": 49}","{\\"quantity\\": 1, \\"productId\\": 30}","{\\"quantity\\": 1, \\"productId\\": 19}","{\\"quantity\\": 1, \\"productId\\": 20}","{\\"quantity\\": 1, \\"productId\\": 4}","{\\"quantity\\": 1, \\"productId\\": 53}","{\\"quantity\\": 1, \\"productId\\": 42}","{\\"quantity\\": 1, \\"productId\\": 12}"}	1096364	
315	m87xujsn5w17pwtxizfa	dagadfg	afgafg	adgadfg	email@email.com	delivery	card	{"{\\"quantity\\": 1, \\"productId\\": 11}","{\\"quantity\\": 1, \\"productId\\": 8}","{\\"quantity\\": 1, \\"productId\\": 4}"}	10914	afgafg
316	zw8f44g4ehf2e5qhxk0k5	Max Pog	123	+380501234567	maxpog@i.ua	delivery	cash	{"{\\"quantity\\": 1, \\"productId\\": 16}","{\\"quantity\\": 1, \\"productId\\": 42}","{\\"quantity\\": 1, \\"productId\\": 19}"}	711356	жду
317	tp0o4oedbjjd96s2mmz4p	name	test street	+7(999)-123-4567	mail@mail.ru	delivery	cash	{"{\\"quantity\\": 2, \\"productId\\": 26}","{\\"quantity\\": 1, \\"productId\\": 29}","{\\"quantity\\": 1, \\"productId\\": 32}","{\\"quantity\\": 1, \\"productId\\": 51}"}	646872	test comment
318	tp0o4oedbjjd96s2mmz4p	Олег	test alley	+7 (999)-123-45-67	mail@mail.ru	delivery	card	{"{\\"quantity\\": 1, \\"productId\\": 16}","{\\"quantity\\": 1, \\"productId\\": 6}"}	282872	test comment
319	tp0o4oedbjjd96s2mmz4p	name	test	+7(999)-123-4567	mail@mail.ru	delivery	card	{"{\\"quantity\\": 2, \\"productId\\": 42}","{\\"quantity\\": 1, \\"productId\\": 41}"}	499786	
320	tp0o4oedbjjd96s2mmz4p	name	test	+7(999)-123-4567	mail@mail.ru	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 13}","{\\"quantity\\": 1, \\"productId\\": 32}","{\\"quantity\\": 1, \\"productId\\": 10}"}	68716	
321	tp0o4oedbjjd96s2mmz4p	Олег	test	+7 (999)-555-55-55	mail@mail.ru	delivery	cash	{"{\\"quantity\\": 1, \\"productId\\": 7}","{\\"quantity\\": 1, \\"productId\\": 30}","{\\"quantity\\": 1, \\"productId\\": 26}"}	378809	
322	tp0o4oedbjjd96s2mmz4p	name	sdsdsdsd	+7 (999)-123-45-67	mail@mail.ru	delivery	cash	{"{\\"quantity\\": 1, \\"productId\\": 9}"}	1590	
323	f3pyfw03vajfudgijkigp	fdsf	fdsf	007	rer@mail.ru	delivery	cash	{"{\\"quantity\\": 2, \\"productId\\": 11}","{\\"quantity\\": 1, \\"productId\\": 45}","{\\"quantity\\": 1, \\"productId\\": 31}","{\\"quantity\\": 1, \\"productId\\": 29}","{\\"quantity\\": 1, \\"productId\\": 26}"}	445292	fdsf
324	tp0o4oedbjjd96s2mmz4p	name	test	+7 (999)-123-45-67	mail@mail.ru	pickup	card	{"{\\"quantity\\": 1, \\"productId\\": 51}","{\\"quantity\\": 1, \\"productId\\": 35}"}	154547	
325	tp0o4oedbjjd96s2mmz4p	name	test	+7(999)-123-4567	mail@mail.ru	delivery	cash	{"{\\"quantity\\": 1, \\"productId\\": 50}","{\\"quantity\\": 1, \\"productId\\": 40}"}	396876	
326	tp0o4oedbjjd96s2mmz4p	Олег	sdsdsdsd	+7 (999)-111-11-11	mail@mail.ru	pickup	card	{"{\\"quantity\\": 1, \\"productId\\": 50}","{\\"quantity\\": 1, \\"productId\\": 49}"}	485926	
327	tp0o4oedbjjd96s2mmz4p	name123	test alley	+7(999)-123-4567	mail@mail.ru	pickup	cash	{"{\\"quantity\\": 1, \\"productId\\": 5}"}	1795	
328	nr30l09co1xqpefff8lk	1	\N	1	bruskojam@proton.me	pickup	card	{"{\\"quantity\\": 30, \\"productId\\": 37}","{\\"quantity\\": 1, \\"productId\\": 13}"}	3804553	\N
329	m87xujsn5w17pwtxizfa	rtrt	afgsgf	adsfadfg	afdgafdg@akl.com	delivery	cash	{"{\\"quantity\\": 1, \\"productId\\": 4}","{\\"quantity\\": 1, \\"productId\\": 8}"}	4229	
330	m87xujsn5w17pwtxizfa	dgadg	adgag	adfgag	agag@inbo.com	delivery	cash	{"{\\"quantity\\": 1, \\"productId\\": 4}","{\\"quantity\\": 1, \\"productId\\": 8}"}	4229	
331	m87xujsn5w17pwtxizfa	Марина	Казань	007	test@nibo.com	pickup	card	{"{\\"quantity\\": 1, \\"productId\\": 12}"}	14191	
332	m87xujsn5w17pwtxizfa	Марина	adress	008	test@gmail.com	delivery	card	{"{\\"quantity\\": 1, \\"productId\\": 16}"}	281170	
333	f3pyfw03vajfudgijkigp	fdsf	fdsf	fdsf	pantera_vrn@mail.ru	delivery	card	{"{\\"quantity\\": 1, \\"productId\\": 25}"}	181195	уцй
334	f3pyfw03vajfudgijkigp	Иван	Киров	+79888888888	aaaaa@mail.ru	delivery	cash	{"{\\"quantity\\": 1, \\"productId\\": 10}","{\\"quantity\\": 1, \\"productId\\": 52}"}	8093	Быстрее
335	fpx5v7hdpxegwm2a87vtr	Иван	г.Тверь, ул.Королева, д.54	+7(777)777-77-77	rege@dfg	delivery	card	{"{\\"quantity\\": 1, \\"productId\\": 11}"}	6685	202
336	z32w2i7ffzwbn3eijfuo	ывфпф	adgdfg	фвапфва	adkf@da.com	delivery	cash	{"{\\"quantity\\": 1, \\"productId\\": 53}"}	11267	
337	qmdfp4fnr90x9rwug4gty	Abc	Abc street	+9999999999	Abc@mail.com	delivery	cash	{"{\\"quantity\\": 1, \\"productId\\": 46}","{\\"quantity\\": 1, \\"productId\\": 47}"}	9614	!
338	eren3q5zh1etxigg46lc9	Дмитрий 	Домашнее жилье	960 669 65 89	dimfreelancerdn@gmail.com	delivery	card	{"{\\"quantity\\": 1, \\"productId\\": 5}"}	1795	
\.


--
-- TOC entry 4107 (class 0 OID 3244635)
-- Dependencies: 229
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: okyxasqz
--

COPY public.users (id, "accessKey", products) FROM stdin;
8198	cluu6bzmpnk4m7c1xcczgh	{}
8199	c6v81f22jemwyk0nuwrrw	{}
9869	t6uiu8zpc4fxo1q88reqd	{}
8201	2cxchw546lbk0v6nhfmswq	{}
8202	9lxxw2mjp5tkdn94u7r5l	{}
8203	o39awp3gqv8pt0g7kx3i8s	{}
8204	ypo8v8dpwzh5lk8kympei	{}
8205	592o2sei8una90hkw39pdg	{}
8206	jgdkuumsocti73udet308	{}
8207	xm201n214pie40l1nttpdv	{}
8208	kfgkxzx4u1lbmf9j8y8wot	{}
8209	z72zwzmcgqyyj05lthukn	{}
8210	lubebi6ztzce6g1e6uas3w	{}
8231	d5cjonqws69stv8ywz9ojr	{"{\\"quantity\\": 1, \\"productId\\": 12}"}
8213	m5xpcqvd5dn7upvl9msm7	{}
8214	ljtxfma34r31kvru4eqg	{}
8215	suys6g7zwquilwszcu5j	{}
8216	y3juxcf67ee8trapfge82d	{}
8217	7ss4vrhd637105dxn5rzkf	{}
8218	aa6vsu0ajyqsz0tm1dryfd	{}
8219	yoghvj8n9prmdfxoq8s0te	{}
8220	q4nv0usup4eqifd8yxals	{}
8221	04wz04qglmok05uvkqobvo5u	{}
8222	mpr8uajbs9pjwn5zrzs5zk	{}
8223	thqz1m8x34a2dcmbolnsh1	{}
8224	mv04jgivlph9tuh5sju2k	{}
8225	4wzytdm9suce5fxwdxk4w	{}
8226	f1o8d9eq3dxlj4y2valn	{}
8227	oyjkqhidt9asyzpcpvq72	{}
8228	qi6d1zhifkrl7eetjrak3j	{}
8229	mqblhl9brkz0esf1yfy3b	{}
8230	jthge7jrrdgnz9mqnfdomn	{}
8232	30j9xgwgi16h9u2dpleahc	{}
10417	52ug6za2mxmrmp8fh3kffe	{}
8234	49996lrtxdw1awxce1o0kw	{}
8235	fxei9wjzjymfzjpzoyhdwo	{}
8236	d1q7rkjwrgbbj7ja0nh1u	{}
8237	27y9evzyw0sj8f2c4xbv80p	{}
8238	wip3uoz3x1cz8xhabzguj	{}
8239	mlxigylq0r0k80s7qav508	{}
8240	zyrkirho5f8ywx10hm6h2	{}
8241	kkxgb4qbygs5unllh7o3n	{}
8242	7xlp84ztfna5d17tmqq735	{}
8243	168x3lc61e9hj405v4tn47	{}
8244	1ryxp1vaj4mdydq0y6boem	{}
8245	3brgjxve2j7z2u71gp6h5m	{}
8246	jbr3ask6y41gme1jhyy9j	{}
8247	go2aflue04j5eb9kyu3d9	{}
8248	bv76ay8dxg9cqgdje1a2eu	{}
8249	uaudz8bkoqlsg4hsx6gr5	{}
8250	ekfqr7mz8raln8irzvob6m	{}
8251	n3bnrhkhqaihqqr4pl4lpm	{}
8252	41fq7ob3qebvfn5qspeeid	{}
8253	jqnspyr6nbnp77cb1x28	{}
8254	08dlwy6y9lyyb878cixhy3	{}
8255	zd64zn98qvrrjajari0l9g	{}
8256	1zv0weta9qb7zon8o8py87	{}
8257	x95oidicri6f5aeoxr0v8	{}
8258	xzbmg674r0g11a8zlplty5	{}
8259	0f6kcuypk8joyll7ey5hdj	{}
8260	fnk6c5m9wqsqp7zkepzkxh	{}
8261	bd36l14e0wjbtsbwevrsob	{}
8262	nyjwld5fam0z1d287six19	{}
8263	x1xaco3a24oxk5r2m4o7v	{}
8264	w0qvyguqyv86anzwgsp4s	{}
8265	30jqtcxkc9jdw8iomcttl9	{}
8266	zzmycx2s62of0aucsy46fg	{}
8267	4fhr4j43cvacel8s8qmmsh	{}
8268	2bnr86nw2nyugx59ki01d	{}
8269	m0trtwn3tf5orkvgymcja	{}
8270	xxg6s9njc8htsqvijv0z5	{}
8271	mgc7i3utpk8pumr5yi74pa	{}
8272	vabks6yuegbcbraic24z7	{}
8273	g80hk8y7mem3edwovktn5c	{}
8274	5vmkm5jpknub4vz2o2wod	{}
8275	r4asfqd1xzjixpc6vwd19a	{}
8276	uabvkxuyhyrlscgt0pxec	{}
8277	tln7vszu6nfip9b6svke9f	{}
8278	pktuagiy9uo4xdtz03q0wj	{}
8279	zgllojoh4amgkfuzc12h25	{}
8280	92p8ygfs6ze5c8cxyqerwb	{}
8281	vxxe3ja7bvutzff20yk9p	{}
8282	e73rjo74owni6aztwdwrbb	{}
8283	mtlqza8y4j2epzs8e3kfb	{}
8284	cm2v7ogw7g7e8ihfgn1wq7	{}
8285	rn7nyaul8mcrkex9gahce	{}
8286	7elbue030di15vh56plvro	{}
10418	4v20jkftqc9hdmyznaz1dt	{}
8288	u4od1z2rblachug82v0i69	{}
8289	b1xrodpyko95pbgjpyp6ja	{}
8290	i6gcoz0aznivzdsfnb28j	{}
10555	0f0pix358mbhfu5lryrqo3	{}
8292	vfo3pb41sxmd362bw2z5r	{}
8293	a70tr5khvvem8doaxz1qxj	{}
8294	sgu4b0kybccdoe6pe8079	{}
8295	4aquq9m7gnxil9do1gm0n	{}
8296	31gcz52usmv720xutbr2t3	{}
8297	9lpvzy9j0gi7ms8gfoh0m7	{}
8298	wzbavmms3wesf1nq0probs	{}
8299	12cm0bo6r7lqfmbfmnz3pz	{}
8300	45g65u3hj5ccnm2yeq1omb	{}
8301	zsrnb38qh1dytd17b0jtc	{}
8302	jq17c50do2gkiyp1v994e	{}
8303	p874smwalq8we75nqccac	{}
8304	ziroaznj92s4ro2ny3fcvr	{}
8305	snr8qqr9c9punrg92balac	{}
8306	bqzy28llv8md98kxqmtcw	{}
8307	gm2lnkyju5l1xajmd2acwci	{}
8308	zj59i6x9kombzx9ywuhp8	{}
8309	sd1q5341sqchelacy1mucc	{}
8310	8y8xh5lftkhgo3l7bpbc59	{}
8311	uq7uzgw01zeooiimtvd6p	{}
8312	uxn5gmnlvx9sqnte8nxu5	{}
8313	5zrjjk1x77i1szuu2jiai	{}
8314	y098d9fjc3n8szg452ak	{}
8315	ykqe8djbc4i0qt8mjj7im8h	{}
8316	bvk0rgpelzvv5xcnv46j9n	{}
10558	jmj41p77mq8y2sf28csv	{}
8317	d0q2b2xy7znsvbruc7120i	{}
9467	b37su212mhvho769pfigs6	{}
9472	5kyrz5bw1vj6wugee7jw3	{}
9473	gfidx8s0ccbe6betb92gmc	{}
9476	bt6cpth0yyv8kmjxsi7c2p	{}
9512	bz3vlltft9jf9bnj2v1dye	{}
9514	ia32dvipgkhnh7frn2bllo	{}
9548	swnyg8i79wjq8v41ovspo	{}
9595	4nsupav16ay33y53ed8zsu	{}
9599	37k9eh1n4ych8k9c05hu4v	{}
9626	unuozx3eqofmeoc6m3c2h	{}
9713	sb2bragrhmqogggwalj4	{}
9718	v7wn3hyvkguq5cdh8saal	{}
9770	7ca4m4c34xxiw0jwdv9fia	{}
9771	na52yqwgypo65f1whb3ljh	{}
9845	fxswn0gu5qn5pe84cdlfda	{}
10556	beu5awg6lg99p6af75og8	{}
10419	w87k73vmrd7uk90lt4j	{}
10557	wdwu59x4m1e49x92hb9k6a	{}
9840	by5u1trq0gvjvifkpld948	{"{\\"quantity\\": 1, \\"productId\\": \\"17\\"}","{\\"quantity\\": 1, \\"productId\\": 49}","{\\"quantity\\": 1, \\"productId\\": 7}"}
9870	s48v9y7c1tdyowetsyqm0o	{"{\\"quantity\\": 1, \\"productId\\": 45}","{\\"quantity\\": 2, \\"productId\\": 14}","{\\"quantity\\": 1, \\"productId\\": 53}","{\\"quantity\\": 1, \\"productId\\": 39}","{\\"quantity\\": 1, \\"productId\\": 36}","{\\"quantity\\": 1, \\"productId\\": 17}","{\\"quantity\\": 1, \\"productId\\": 49}"}
9837	8e588gl2lchl5sverc4e8o	{"{\\"quantity\\": 1, \\"productId\\": 13}","{\\"quantity\\": 1, \\"productId\\": 4}","{\\"quantity\\": 1, \\"productId\\": 32}"}
9843	7mss7c0ep8j0ej1skdomra9	{}
9844	7y3ku5ifpx7anb44nd39e	{}
8318	zcdoddogoy9pa8fsex57zs	{}
8319	lrfhygplhhozwbl227l3e	{}
8320	o196s1cyp1bxzu3wkn7x	{}
8321	22m1j3pnk8dsl181aah7	{}
8322	cybf8uhwckv9p6ym83q2hd	{}
8323	66ao7mo9haos71j23449k	{}
8324	i6tmg28zrpi8sn1ccj835r	{}
8325	qg7ne0cmb78pwgyc3yj3a	{}
8326	jtbbw1gaxng3hklgi4ax7	{}
8327	ltyzvh4c2jit4w0bf0fiy	{}
8328	2zexekj1txglox93ldvy8m	{}
8329	osoi7wemo17dl7ey1lgxg	{}
8330	c0ekf7k8vjry0r08ax6ecd	{}
8331	xjilii1ftueed8x0we1fj	{}
8332	jdh8rn3a32cvvh5ags9i0a	{}
8333	c5z9u9q2mrid18wadk5pqu	{}
8334	vc4qo8xjockifwoci2e9	{}
8335	ia0vx2bklwnc8rhozvrt	{}
8336	58dcu36xvnw2nr2q1riu0v	{}
8337	tcmkjqpl75dklmtj3twv5t	{}
8338	j7ly6cq29kpgplk22paiip	{}
8339	rhz43yeul7ald2wsu4jktc	{}
8340	42s69pfv82wd4zkmjt0f1	{}
8341	np80h22xb4rfp38pw1bk	{}
8342	6qwh0sstuwyybsy9hh5n0o	{}
8343	7wtcdvfgwtyjacwurai8ma	{}
8344	lzx5dqidkm8wm5hcg0scd	{}
8345	8y1jnagryhtlkls69pfqr	{}
8346	rqqgvhmfk2dpljukmbkh6	{}
8347	cz0hcsejooih03z1reo3n	{}
8348	qcieclta0qmetb7wvrv32	{}
8349	xg1n4k6w1ncg5nxei7ooc	{}
8350	n81odnw36zp32briqxfeiq	{}
8351	9g1e5i9aoor0ve88463t4s	{}
8352	s54hf6esb7n20m21ss8lwe	{}
8353	kotkdmbacg8tjbbaimqmb	{}
8354	3ib6nzib597yrvug6ftcbo	{}
8355	lwc3cye0vtod67ezq78j6	{}
8356	1njbiw05soguc42wd00whp	{}
8357	4jpxvx90usnnidn4xt63sa	{}
8358	19at5gcu7rcwzrzp9w7cum	{}
8359	gj2v1g2vddn2yj7f21lac	{}
8360	gt31u6b5hos13n9qk1gn	{}
8361	znlqkc76d8ogt2fyt0voaf	{}
8362	y83bqvaeo5ph7tpe09ldd	{}
8363	je21rmbnonjo8wdeu4vh	{}
8364	4lrxcit2zwmeo42kjxvc5c	{}
8365	jvioagiqw2pn3x0q0k9f1	{}
8366	whm8qa5n2jg8a0j0p5azw5	{}
8367	eg2q9ulijxwvmjxaurofm	{}
8368	ie7guxjcx2ktd0ucn31q	{}
8369	az3q5grw79povztnn59fps	{}
8370	wykpetxwi8kji3u8gtc5mp	{}
8371	yzr5n1duggr9gequ8ht5iv	{}
8372	0r9gs93tinspfq4qfz3l5c	{}
8373	thy9wi8r7qy9u45jzu9	{}
8374	4hcdwhthl1zdvfyq9bn4id	{}
8375	wld75dq8px907rvqzc77i	{}
8376	8c8wgr7thaohcty2ficiio	{}
8377	ll934fkfsnhp7xskq7tf4	{}
8378	tlgqx5an7iay6ql3xuadtr	{}
8379	iscvwtxyypc9icprlll6mp	{}
8380	bhj1kdtfafe05cla4namh9t	{}
8381	jdc34xfb3ymwspe833ixap	{}
8382	w700q02ndjkonur7bs1zbj	{}
8383	zhq8b4udv2b7vpajgke516	{}
8384	oidlcj2udcmbr1n17vv8xd	{}
8385	self7ml4ztdgucvbdnkobu	{}
8386	imb5eb7c4irdvc5j3syehm	{}
8387	eoy4ogb95tj57atym9rd66	{}
8388	5zezgy03u410zaraygggh	{}
8389	pig2noqff1o5ca6ed72yh	{}
8390	mqyrc1myof8u9afckmfx39	{}
8391	dlhqqvdrtq8vhy7xjkad59	{}
8392	grsyxzsnn9n82stlsyziup	{}
8393	h0ujya65exsxx4z0326iic	{}
8394	dllbxq8qcesv3fy93lwi7q	{}
8395	0q8e779htp6q4o6x02gz2vy	{}
8396	jo7f9mc15etzbio2d1c2	{}
8397	1e3fozin1ckc9xclkqt8y4	{}
8398	z4opybbnztm0y1zc6ju9noo	{}
8399	4b9j6zpow7l7rcnfligyqp	{}
8400	q8ue5z5kwepl7xd9sjelb	{}
8401	mib38t23r8hotjmoewwab	{}
8402	sg05ga2tn12w5ox6g6enh	{}
8403	k4djlkyeogh5jqadz2u4	{}
8404	hkeyu8ymxrvabsk6fsynz4	{}
8405	qxiximkr9pqf78k6jknp	{}
8406	wt5s0mosnfi06cop71vbif7	{}
8407	614wggkrlnyq6gnlzkm89i	{}
8408	bza6hw9p0n8y5f5zila16j	{}
8409	bv63pbbglu7xg9awtnqvkp	{}
8410	oq08g4bq8qin38fhyo839d	{}
8411	do02jpwvshdky9jiojq0n	{}
8412	kws75y9bg4apnpj430o2rb	{}
8413	nf2fyce5ybz27d7zt9h6r	{}
8414	la0nw69orlq3bjk8bfev	{}
8415	l9idt1h03mcal6lm2ernk	{}
8416	v7om2udnkr0rt3we40h1ar	{}
8417	6j0ftw7nlimoz0ybsgkvi	{}
8418	hv3781gramufnvsf7pai0j	{}
8419	47rfj2iid8ll9hu3y0g01s	{}
8420	x0bg6r5bavf5x6cjjavuhv	{}
9838	3qppidyovrogog1axxseec	{}
8422	pfrxny3va3e8ex07hov64k	{}
8423	qvk17geplfmjai8vok6f	{}
8424	4alu6v6db2asj1sckh7par	{}
8425	mkgg6bh3ph9e4jvk22u33d	{}
8426	mvpm69ohousso06th65a	{}
8427	fe1h9u5zkdr9lk60wsdb3k	{}
8428	77khv6sxh80oopu7tv6qq	{}
8429	6bz7zdcukvarxtvzsihjog	{}
8430	nyusaanvkpw8jfv52fo5	{}
8431	aj3yenb93f4oq2ygh0gov	{}
8432	gve23gi11a6b24rkkrwxh7	{}
8433	q75y0b3dkhob3n0maggpk	{}
8434	4uo07d1q8znxerrd9oy9se	{}
8435	bupz25wppv9yfklcx9smib	{}
8436	5mmhw6i8dwfbqhferzev4	{}
8437	qvsixo0692d1vosnghdd	{}
8440	i1wajfr10oo2henuzt9jft	{}
9468	9vlr0i5x7mmyw49x1kqxg	{}
9470	rhbikdffnhldgco5xkl2d	{}
9474	2k4wyh6y4kon75ew1mj5za	{}
9477	nlqz8n2mi8sxgncwtt3k	{}
9484	81l0e6yn43qn0m5u0mc9fq	{}
9486	ttgb9l94gz61tfjzwgcs4	{}
9488	98j5e2emcwsi982pqlqxk	{}
9492	7771uen3681670f0le12p	{}
9493	u4i8t3ywhvtovetf0n4ja	{}
9494	o74skea8yeiql17m7p8emo	{}
9495	g8o4xiof2mcvrwjgfcw8kp	{}
9497	82dff3uk327146ohqchinq	{}
9498	ybcjy62e93tsbnt0whf	{}
9500	mm7n8rvcvxz9mw0owxrx	{}
9501	w0xernev8aklumpespbyr	{}
9502	ugjs3xvnysm14ji00111bu	{}
9549	4o1ejh1lp7t2oan9eocty8	{}
9550	zicavithpzrl5sn7qo7wej	{}
9551	s1tj2c54x6zwna9rjbwtq	{}
9552	jsrt8et1sgag1ma05qaxke	{}
10420	og36acrehgdupu82vcrk	{}
9871	ap0afk3yfbnpt8u4h4kox8	{}
9735	g22wxn9fh6r0co1s9lepzld	{}
10559	fck25s956vojt4l9uvx5a	{}
9601	slcycssm26k5asyv0c4oii	{}
9627	jt0wlf8kn2oa1ml0b4ll	{}
8828	2qtf8188z5fwikfa9k8a8	{"{\\"quantity\\": 1, \\"productId\\": 13}","{\\"quantity\\": 1, \\"productId\\": 40}"}
9670	2roabwlitgupd4f7tar9p	{"{\\"quantity\\": 1, \\"productId\\": 32}","{\\"quantity\\": 1, \\"productId\\": 6}","{\\"quantity\\": 1, \\"productId\\": 16}"}
9714	l85tab7rzncg981cbhqpn	{}
9716	0xbxt7v0k3ahxpfbegzh4vc	{}
9720	srt9xvdufn3br0syv56jp	{}
8211	5e1qg4svqnax36lp5ty7m	{}
8438	wb2j5w2amgrjw8kzdlvkag	{}
8439	hbbnb8sexra2zmrisfjdhg	{}
9469	t8je59qr1c4yd1onh0yno	{}
9471	k5novk6sizaw1ldcnso3	{}
9475	395ykxmpt6ml7o4f8ms0ba	{}
9478	knpgz90x2oj3w4oqjyvhxt	{}
9481	wwqae8w0ap3tdl4r7fdfp	{}
9482	36xsraarll1j6at1ptwd9b	{}
9483	n2wqzhg1onld4tmflem8k	{}
9485	e57usl3jn6q9hnxixgelxi	{}
9487	n99n00at0o8menq858xk5o	{}
9489	wfk0eg4hl8ci72l3ntvv5o	{}
9491	ot9f94f6wrnn899lhm49yb	{}
9496	odzzn7mrn8hhjzmn6jtx8	{}
9499	u4xhq3tewre5v9izrzykc	{}
9503	znv34avxp4egtl9jvcharu	{}
9511	553n3etx52en7ntfho6q5d	{}
9553	4qc81cq4vmdqxccbzh91v	{}
9555	d4kgv7nuurhvrme3hwap38	{}
9602	cwabfm6lk9hkcf1gwonv5s	{}
9872	b6iwi3bph0mz2fmy5vbkin	{"{\\"quantity\\": 1, \\"productId\\": 3}","{\\"quantity\\": 1, \\"productId\\": 24}","{\\"quantity\\": 1, \\"productId\\": 29}"}
10335	2cmpb5231p1o60anxpg4kh	{"{\\"quantity\\": 2, \\"productId\\": 6}","{\\"quantity\\": 1, \\"productId\\": 36}"}
8950	mbzhabnrezet42j2gs7hg	{}
9769	kdmfu4s4lx6a4u7uav3ei	{"{\\"quantity\\": 1, \\"productId\\": 38}","{\\"quantity\\": 1, \\"productId\\": 29}","{\\"quantity\\": 1, \\"productId\\": 12}","{\\"quantity\\": 1, \\"productId\\": 53}"}
10336	l29agvg0lqpi4n85ffp3	{"{\\"quantity\\": 1, \\"productId\\": 48}","{\\"quantity\\": 1, \\"productId\\": 30}","{\\"quantity\\": 1, \\"productId\\": 52}"}
8525	1bz9z7jo4y36r8gifkybcn	{"{\\"quantity\\": 4, \\"productId\\": 23}","{\\"quantity\\": 1, \\"productId\\": 13}","{\\"quantity\\": 1, \\"productId\\": 6}","{\\"quantity\\": 1, \\"productId\\": 26}","{\\"quantity\\": 1, \\"productId\\": 46}","{\\"quantity\\": 1, \\"productId\\": 15}"}
9628	wmct5q8t6bhyd822rp4n6	{"{\\"quantity\\": 1, \\"productId\\": 52}","{\\"quantity\\": 1, \\"productId\\": 13}","{\\"quantity\\": 1, \\"productId\\": 51}"}
9715	7st4a8bwkz8tupm4gupcm	{"{\\"quantity\\": 1, \\"productId\\": 51}"}
9839	0dk0hruecakk4nw0kxz04do	{"{\\"quantity\\": 1, \\"productId\\": 16}","{\\"quantity\\": 1, \\"productId\\": 34}"}
10560	k0s1anxgxepdqv1uglmb9	{"{\\"quantity\\": 1, \\"productId\\": 12}","{\\"quantity\\": 3, \\"productId\\": 33}"}
10421	n445nc9wjw9yscpyuswq8	{"{\\"quantity\\": 4, \\"productId\\": 26}","{\\"quantity\\": 4, \\"productId\\": 8}"}
9841	xfs2wdxqtfly5wyz370umd	{"{\\"quantity\\": 1, \\"productId\\": 33}","{\\"quantity\\": 1, \\"productId\\": 40}","{\\"quantity\\": 1, \\"productId\\": 52}","{\\"quantity\\": 1, \\"productId\\": \\"45\\"}","{\\"quantity\\": 1, \\"productId\\": \\"53\\"}","{\\"quantity\\": 1, \\"productId\\": \\"21\\"}"}
8441	98m2xo77pl6qq2ym8hlbbs	{}
8442	4gxw8mhscrqd8ytv700q7	{}
8443	gm2n2by8fcrc5f0caaxcwj	{}
8444	3h3zszupca2haoeuyfqvdu	{}
8445	5plkiis0olvlbg0za1kwnd	{}
8446	x3cca2zdxsnl1ni4ocl	{}
8447	jm0cndc16hjmc3ul6iw1j	{}
8448	o8nkiaqqubrj75d3htel3f	{}
8449	70ikbqwah9r7h64rz3irtq	{}
8450	hc44le3ge1kv3y7k9173v	{}
8451	3u2omnp6gsxs2ti8jfyoqp	{}
8452	lc0oq2xkhlnlc3w0sf6lui	{}
8453	4n08e68d0yosr0x5kmxhd	{}
8454	jvdtqei9z6tzt2dq3ut1	{}
8455	5caa075xukokyj8khe8qj	{}
8456	qqfy3h7a82agt996jpribw	{}
8457	fyv7ujkhu3l4qr7uyn8cnk	{}
8458	60mixpr9b7fo15aa6j5t5a	{}
8459	zu8yf80nitkc6gnbvpw5j	{}
8460	m1ctjzumne87uy2isaytti	{}
8461	s6aw4iswgiblgifzjykk	{}
8462	w8l8iru5axig953zoub8i	{}
8463	yijsjvqceq1q0uiqp63qz	{}
8464	f1fkdsmhieb9p2krwz09ne	{}
8465	6rkz2umeps9gixjqa2jn3	{}
8466	ydq3rt73mbjkvii9kq41kg	{}
8467	jv58txavkjtzplr3qlbbr	{}
8468	ey7lht0nnidr3owp73n3j	{}
8469	22j83eod8vb6xrtti4vzyo	{}
8470	1xal2534pi1xphxun0nepa	{}
8471	pcfjb34syfm0o8mnjj2ed3	{}
8472	x9kjdpr2k2mrtfhgj2i0j	{}
8473	r32kg3q8nltwyc7u5qabd	{}
8474	ao5thmbyqz8jjsr4ncwfkl	{}
8475	h8gf07nrwtslaax5vkf1bk	{}
8476	2h1up0kp3fdu8qzubrwah	{}
8477	2wuunq0vrkrsnut1pvv46	{}
8478	1a6hha1l9wklqtds0iy61a	{}
8479	3be2iafli56ae6jeatpc38	{}
8480	f95mk8407qt90omplz35ij	{}
8481	ww4hflrukc89ha9yvsq0l	{}
8482	4ads6lg66ftizqs1qwz2h9	{}
8483	aztasrd9tps6gn51wssz8d	{}
8484	ng9728a15fnoerp30onkxi	{}
8485	5wfyqhjlhsmyt0or706ny	{}
8486	hsq5pwetkd1xse9u9e9it	{}
8487	l1n6gdqcrzz8fc8obzn3c	{}
8488	pydv6wym18aej0tf31zui8	{}
8489	vizh0ajgsnq9ctuy8pdzn	{}
8490	7066h1wejnabu4zti3539g	{}
8491	fyol83mp4dje7c5yfq27wn	{}
8492	boxnj0105n5cdiv2sa73vs	{}
8493	lsio3jwnvat51j3conde7b	{}
8494	9n57a14gld71po6few50fn	{}
8495	5r8fklldorkf5a5x0mvfjj	{}
8496	sbc6ts59g5d1b6bp61pej	{}
8497	pndlgu7g82850xju5b5gm8	{}
8498	dpnvr89zkvv6qg1vky5hj	{}
8499	f3q7m8yam7p9jn6okh2zla	{}
8500	cp5ner166ygoyu73qyn5l	{}
8501	ffm0kesomssi6mqa3jxam	{}
8502	thvn1s77hmklhvfk5qdui	{}
8503	c1305uixwvam6z3jzl34r	{}
8504	mdmppr73vn3g8a8f8eqm4	{}
8505	r2x9f1wxsbzxidkavpc3p	{}
8506	b0mwfow5ppm02fzyxnin0qe	{}
8507	l2ldmodjdvsgy05gzh6t	{}
8508	r5u0mloyqi4lgtpmaqnlx	{}
8509	c9p0s6v1zz5yrrht8oxkq	{}
8510	1cmvw0j3syfqchyshh974	{}
8511	qjatmiok61j827hyoo12b9	{}
8512	pnmkr10mlrsx7pw3e1hxvl	{}
8513	jn21sz6ljhabb51h6ievr	{}
8514	l7pfheleo1m54x790hxw93	{}
8515	r4qgyjv97hkwyt5j1qys2f	{}
8516	jtcmejyqtiqh8l55m4277	{}
8517	0tzx83j0uqkk24ipeer5byk	{}
8518	v7jjte93667pv8miiqmp	{}
8519	86xt7e949u38bkunch7l8	{}
8520	qcitftyaw8fgljq5fkklc	{}
8521	nqu5wq88eq9cy21aftcssu	{}
8522	idae9im6o16lypdlw00i7	{}
8523	cywgctk905f0kidxohau0ur	{}
8524	njl9jgdevkn71d7ausst7	{}
9772	xq4yn3ex0pbx8wy15cd81c	{}
8526	ns29yyyewmb6dwzrpdr4th	{}
8527	zj0mtapomphoxbttb6izcr	{}
8528	yrfmnd8sx3rgxytu7yj94	{}
8529	u4zl0qy85vainrecq0tqb	{}
8530	yd9kc6rmb9xq6sts2hfo	{}
8531	0d9bi30laeu8j2j7o8z3hb	{}
8532	n9t2q7yaktbjcbou4h1dg	{}
8533	4or92633zyu7ohw81jj3wk	{}
8534	ssllq0m7jmfxad17r28lw	{}
8535	xeeo1aatoho79i24yqf6bj	{}
8536	24pf0idxcwd7oiuhjd07b4	{}
8537	fu6hmlbr6nkdnwsk9hv8jw	{}
8538	0hri13pcl78cqfxq8b7yugk	{}
8539	6f6br1wg2kal3d98f8nte	{}
8540	otpae95uiaichfb9cft8y	{}
8541	scrudm5mssobv7n1sb2b2g	{}
8542	gh6jk59ua6pzn6vcpk101	{}
8543	fn13twqelhikuq5dpntm	{}
8544	pbbfopo87tjibuu3nfon9p	{}
8545	yx5mdnrn4iohlxyxk7q	{}
8546	5u179vnyfayifgiarbwf5	{}
8547	s10y0yck8un387e04ri394	{}
8548	52l8de5qx2yhdlm120vrd	{}
8549	44xnbl00xgm61c4o8j5tz3	{}
8550	kqmjyo63pkd2pbcygcqwra	{}
8551	g6war8jionfw0wo0bjbp6	{}
8552	5vtm19at2mult1ocu3vzk	{}
8553	drm4l2ya3s6cvea5vqr2fe	{}
8554	y5qydj94t29om00htj0m	{}
8555	odjyq1xnj3r93xn5ct1ixk	{}
8556	7e0u8ixccvsra26bmji6wq	{}
8557	s4j225tbkd2dwlsch1jlz	{}
8558	dbk6i6j3hxk5ksaikig5zh	{}
8559	h5qbeqlfoawuutqly4sl8	{}
8560	212wrkho8a95rlsivd0tjs	{}
9479	w8oi4dv87kjm8i6rsvs4	{}
9480	l06kkiz1f80w3puecxwe	{}
9490	0zu84vu06dh6sitwmawaou	{}
9504	0zp6mfe93iudstmgchhnfp9	{}
9505	ujrhvmobegc3gjf9v3xjad	{}
9506	xsxvhqxbzlmpt32empuss	{}
9507	pexj3em9xtf0tyqv8hsur4n	{}
9508	52cvseg9us3hh1pgg7phwu	{}
9509	gh6rdvo7m1twxgqjaeckb	{}
9510	orukupg8c8kiinwultgxds	{}
9513	qdngyeksbkgl3yzesu3j6	{}
9515	qsn8osjy5pteu45ii3lgh4	{}
9558	7bv22os1eqelwakwvop67n	{}
9603	alyjebdwbvlc4l0spl1z1m	{}
9629	zyotzsbgcf5r9v72ofpkh	{}
9671	lhrhme6adfkqzarpao0a5	{}
9672	3n54882f2lxjkudz77xud	{}
10422	a3cxr7uaayzmpcmppw1jo	{}
9717	7vhk71jno93v8gtfctw4d	{}
9719	bwvu4sdh1995rc3hmjfog	{}
8233	rhoew10o0r0w0zmlootso	{"{\\"quantity\\": 1, \\"productId\\": 41}","{\\"quantity\\": 1, \\"productId\\": 10}"}
8947	jvt8re33fznzl9lxo1b9n	{}
10337	6j4gllyauhbe9mj0rww3w9	{}
9562	ttjeueaffz69hid7zgbd8	{"{\\"quantity\\": 1, \\"productId\\": 35}"}
9847	5vygx8xmb86er8113ie2xs	{"{\\"quantity\\": 1, \\"productId\\": 51}","{\\"quantity\\": 3, \\"productId\\": 53}"}
9773	1v297b39qtky5bf2m00ylg	{}
9774	5rei66lamla0fss1gqk2gw6	{}
9775	xbpmpty7570iqqvgcp6yk	{}
10561	wo3tfytgugj13lmlk7g26k	{}
10566	41nn4bymbaat6un51ra3u	{}
10567	qr3ok6wcjcc8yponwy5mu	{}
10568	u5kvxnt54bjb4apge5hjq	{}
10569	z048t1k9uusv8kbi72aa	{}
9554	xzcsttwgfovojb6j87sgg	{"{\\"quantity\\": 1, \\"productId\\": 53}","{\\"quantity\\": 1, \\"productId\\": 52}"}
9674	hnb6q5ganmcu6y44r2m7	{"{\\"quantity\\": 1, \\"productId\\": \\"21\\"}","{\\"quantity\\": 1, \\"productId\\": \\"15\\"}","{\\"quantity\\": 1, \\"productId\\": \\"18\\"}"}
9842	ac5bxhhth44kmqu2cj2xq	{}
8561	g8ti5j8x1tvij1t1k9n6tp	{}
8563	vxsj8hm4jugzlr8nge09dt	{}
8565	6f5txtfeuekv87uwi732p	{}
9516	fa242i4aox6va34aptke3j	{}
9527	dc0wcra68xglaubbvntsi	{}
9529	qbypym6dtpgl6z88xotjz	{}
9556	ojkudftuxroxxdfqiwc1i	{}
9557	5gs1me3j0ntx1bhpjp1qc	{}
9559	oo1l39p1b14rr2mgzjx62	{}
9564	avp7ahmxz2uygyovoa7gth	{}
9604	v5e8209pv3cgoeukw5en6l	{}
9605	xsd7x6oogje9oa2h02cnar	{}
9606	tyh6ys6e2qltv2d7mqm0h	{}
9873	m5fbveu8mtousbqfknr5kp	{"{\\"quantity\\": 1, \\"productId\\": 50}"}
9776	nqc3yekdnmpgtol9i5z1m	{}
9778	rsvg629id8rejav5s91pc	{}
9779	45peky9phovt1qwkw583sk	{}
8591	vafg8im2ek2hwu327xthz	{"{\\"quantity\\": 1, \\"productId\\": 38}","{\\"quantity\\": 1, \\"productId\\": 20}","{\\"quantity\\": 1, \\"productId\\": 9}"}
9673	ylncd3ldp3o781oxpruqyc	{}
9721	x4bt1h4h955mhvbx2bkt3	{}
10423	icjgk2redmkoqa9enh26	{"{\\"quantity\\": 1, \\"productId\\": 22}"}
9846	pzuz6bbrqgsp1s4rua4q	{}
9722	1as9am3frqkw7jafixxp9	{}
10562	sdc3f8c9rscq55bwwn55bq	{}
10563	vaof04a55os7yrbywf8j	{}
10564	2ilka8msa7oggr6aubg90e	{}
9630	25fwm0nqnys4fd1nf234yl	{"{\\"quantity\\": 8, \\"productId\\": 43}","{\\"quantity\\": 1, \\"productId\\": 44}"}
10338	oocksqztojmvq9s3na0nnd	{}
10565	weqhgms8s6bhw98wzos8yb	{}
8562	quc7moig5uozxc1x5kq3rk	{}
8564	dl8qil8ij86r1t6tw6cvde	{}
9517	cht3fah7ztfzius5wsfsj	{}
9520	8krbd9rkz887nw53udpwre	{}
9521	mkndlzb1ajnqiy9i8xgc9r	{}
9874	5g5gm9r53ir1ciz79nwgtm	{}
9777	fsc0eni5ytugkl83m3u3wn	{}
9563	3xs68saz899vjfm2333xl	{"{\\"quantity\\": 1, \\"productId\\": 7}","{\\"quantity\\": 1, \\"productId\\": 48}"}
9607	y3jc64axpbkbvsoqqsam0u	{}
9631	cjxrcao89rfb73cov3auhd	{}
9632	vui6owdefqa5tw61hca51n	{}
9633	vmsu7c0pm1r7oayouok0wp	{}
9651	79hx3hqzxhs2vc332oo22m	{}
9880	g7fe3i8z5edkdlx61p3y59	{}
9675	5px4uk5txmdy9u7oz3kq8	{"{\\"quantity\\": 1, \\"productId\\": 22}","{\\"quantity\\": 1, \\"productId\\": 49}"}
9723	avs4t7ml4i9z7aekhmyyu	{}
9881	qhogmxak7cko9vdjapao6e	{}
9884	rqexozhfsmsudc37m49xg	{}
10424	2bm0hhn4hqn510n9jafdch	{}
9561	y6usp457so29e8yyr3vdx	{"{\\"quantity\\": 1, \\"productId\\": 50}"}
10339	vbmayucr5dcl8t4a7ys9xc	{}
9848	vj04e798kq96xi5494ipq4	{"{\\"quantity\\": 1, \\"productId\\": \\"4\\"}","{\\"quantity\\": 1, \\"productId\\": 14}"}
10425	j45gexli1fpf4f05i6jk	{"{\\"quantity\\": 1, \\"productId\\": 19}"}
9560	tmikxfqmxbe4ipuehvct3c	{"{\\"quantity\\": 1, \\"productId\\": 52}","{\\"quantity\\": 4, \\"productId\\": 15}","{\\"quantity\\": 3, \\"productId\\": 36}","{\\"quantity\\": 1, \\"productId\\": 11}"}
9850	3plbjpkd20h88idj3x0zpf	{}
9853	pnpxfb1ik0b8ovv57yqdua	{}
9849	ca3mgrglonfp8cuin79m09	{}
8566	4s0tvpy7ef51c2kq6b5b33	{}
8567	emzrqmiy0cws2pvg9n5y	{}
8568	g8p635r6gdfkn0wehoqnun	{}
8569	eu9dru0kn2h7yeolkzduku	{}
8570	r5wvdpdwn1egxhtljgp20d	{}
8571	a2qec6lopbl8h4lt5iwl6r	{}
8572	06nf9jplnjblkfdm8i6vejp	{}
8573	ypr4n9r9aj1kqp3qylyvk	{}
8574	2mx51drya4o487vsvkybq3	{}
8575	m7x15qfaw9i25tzpl9sd3h	{}
8576	k523hf7gzubu6lwz15y77s	{}
8577	kf7y79tklnlrscha5sp4	{}
8578	q08beml2gv9heqfcsjannb	{}
8579	1w5rbh7g05tmdbkslwgtcd	{}
8580	64e5ea6x3cwf6xkaz0bauu	{}
8581	v19m3co54lcr1giexhmvu	{}
8582	ntpbctg7nk9bi9gx6x7b6t	{}
8583	5m7vbtv8hqja1z2fi5vwrw	{}
8584	wekylbr6c98gjhdyk778rk	{}
8585	whdyahel0hdvbkywy5l99	{}
8586	m9qypyp76kj499z93tu1m2	{}
8587	pmou2xkzswl4qfddcpwjsn	{}
8588	dbq2kl2vd7jczwycpeqhqj	{}
8589	lws3kn7izhm2kga29ll5ri	{}
8590	doahn6lirg64oerzxf1bq5	{}
9780	itoggdqc69emcewxmo273e	{}
8592	nyjbj3l1nv832jttfszrb4	{}
8593	rux52cmxsxn7reihv0f6r	{}
8594	f0vhmgjgcfbvm5ffxzaoob	{}
8595	efxne1otxnrw5y4zdtys	{}
8596	r3pou8iihh88t4dghfdjel	{}
8597	fz8o25t27hebvdkzdrsh	{}
8598	1t0pl4d3zz8gsba3lvu7ms	{}
8599	vquz52y9046clcztmilt3	{}
8600	kjcuk0lct6ulra6n4w9co	{}
8601	8t4311gvupsuo49lglm3we	{}
8602	iu56hsrqwespfz7uxsb5b	{}
8603	wnziekzzhj91lrm6zasjpu	{}
8604	hv58kj89ekok528nzvqto	{}
8605	ou0sreqvn782h4mu1g8f4m	{}
8606	1br9ba7p0qun0993idngl	{}
8607	nrdrh29ttzf5ktkr3c1ilo	{}
8608	rd2czaxpx0e9oaqecquzna	{}
8609	fexgno0aeo7zmt5h4b87i	{}
8610	aoaml5284knnlfdcpqjwun	{}
8611	b7sr7y965pb451l20qtqwd	{}
8612	bo2dpnqqc5lqux5fbhza	{}
8613	b0z7htu8kfl2blc9hmao8	{}
8614	if9m6xr0q5cd8nyr1zmuo6	{}
8615	m5jjpfxdrfkj6jl8zdqi1	{}
8616	zr53qz5fhmegno7rk9nff	{}
8617	irfzdxkyxhi8q7oclij3m	{}
8618	qj6vjg2ftlu2jo25utni	{}
8619	or3t3zheq5nb7mn1zcz5z	{}
8620	0zt697gg6sd2hmsy6rnbsl	{}
8621	pmwl566bur9umzrfpewzkd	{}
8622	jqthqdmztfsgkvinowotdc	{}
8623	w5wlr7kot2vvwm1yr5398	{}
8624	98l2dmcgg7h81uws0bphdi	{}
8625	47u3v5jl82guv69am2phzf	{}
8626	cllkhd35tlugpkfjz2jjcm	{}
8627	5mykimc9u8gz40yy87zxzs	{}
8628	3v9vhv4aekf0ep06gnetpem	{}
8629	o26bf3in4s5pl9e4ymmqu	{}
8630	g3zqta1eoii8rw8s5sfrlf	{}
8631	cmzpeit1555lpkwmzf7xk	{}
8632	leicg1sct9bz0wlt6wvpl	{}
8633	9ksrejmsxmdgsrv2p38obk	{}
8634	8ihp9yh16w77b5f8n66sq	{}
8635	glgses557ycia24mdm0ph	{}
8636	sz3runge4eh4ghkemj9twz	{}
8637	3ctioksqdtb8ayituhj86f	{}
8638	zhzevp6uuyckyzo92x844n	{}
8639	3q73hpvsc28hgn42hli8bh	{}
8640	baeajg26wnurwmr3fl9u0a	{}
8641	69oqu0u0zekciyuu0gpcyd	{}
8642	kiug7t55428bujojj5nf	{}
8643	u0ct9so6b24dzx3v10tri	{}
8644	hzkqrs9nwfrgada6gbrb2h	{}
8645	zssjke4ziqbjnnw9blb3di	{}
8646	kc6om0h4tc4tvcxjygakb	{}
8647	0s48zpkyxz1eui1s0sac9kp	{}
8648	lg1du3vi731br0dfgah55	{}
8649	ykwilzti51l0pwxobalm4xo	{}
8650	pb46ygd2h6oq21dn8j4t9	{}
8651	lf6zraqtweiil3w08q56j	{}
8652	7gqsha7etvxw7ov6amdcdb	{}
8653	89duj411xyd5w1y0j64ftx	{}
8654	6amukjbl14qzpehlq592y	{}
8655	wdeidupebb9k7nie87zou	{}
8656	5chhbg07xvx5zwppkfp2qc	{}
8657	t57g6xnp8dpw3yksfodkta	{}
8658	n1cvdsgzeplu6xr05p2ogq	{}
8659	sju3iefs4t54xqzdisxuu	{}
8660	mmtfqfq6u4g7kfxecrzv6l	{}
8661	n3ttucxygh3rtqf8rj0f9	{}
8662	ciy131zd36hgcqil5na5cd	{}
8663	x3nylcanmus7307npfs5hk	{}
8664	e7q12gn1xedamcw2ny0km	{}
8665	vcbjt11ue3j2epszsdlwv	{}
8666	bwzkim3w2nra0ysd2da2lm	{}
8667	tcxb7ipcnxfyg0dp9amrf	{}
8668	om4pqj0mgxseejocct42lp	{}
8669	ha6vahh7vqfgfouggqkiu	{}
8670	1jv2lfds5o4inwmh9sau4s	{}
8671	ne8pjp92lbggernnnfq9ce	{}
8672	c6e8j8dhgk0v8dmo19v8ir	{}
8673	2j1bhl5fdg2e6ne0zoefij	{}
8674	tap0ga905jr5zwjat2cjh6	{}
8675	6srnihwdhst3q46sky2gv9	{}
8676	68jon34594yaqf5ogok7	{}
8677	v5yrfj0dwyoqhnu85wvajn	{}
8678	zdgaqoxsw2ukyvh53lq6	{}
8679	vbtmcj9371ioc1r8fdvhm	{}
8680	gx50ass6zsof0urde6f8fi	{}
8681	tsp2jbhem3rb9t2a52g3	{}
8682	373nd4luqg8qwaiy9mznhd	{}
8683	q2a9hogpcvg163wdqncz69	{}
8684	1owq5bzo8ova0nl1gamh1f	{}
8685	rqscs4tlt6vkk83tj1y2o	{}
8689	4q8tyml2trtq9f2yhyd4bo	{}
8691	esu5b79vp0o2ul0ubfcfk	{}
8692	tuqv61liphcgwz30r5zy5o	{}
8693	fsx79cwayz6gwtgx11h6t	{}
8694	z5xr4rfqvb15nvkolt7m8	{}
9518	elpvzz993dmaak93vcvoql	{}
9519	fzt1w5m69zlqbdicysyyj	{}
9522	hkeynnk706fm5c68ls0p08	{}
9524	6j8sxr97mq2c9ce032x3ou	{}
9528	gxw8cond6pujankjsg475	{}
9530	dks7bj6jb7tsmbp5ww6ja	{}
9539	dqe1ilstkr1d47cdjk37vj	{}
9565	bp6o5qd5i2vwej9sb7mflc	{}
9608	s1qiab43fslnhsazj0ibp	{}
9634	tke9vxw4lqkfn4t0i9n6l	{}
9636	2jxly7lse5d8rr6p5k1emb	{}
9639	1bxkaaszebbhtqsllreyjb	{}
9652	156o7l7bknw3nvksiicnjv	{}
9875	xx960qf1nmj1jil6e3keh	{}
10340	nl1fokuueyd7r7vfqig6j	{}
10341	aysx6t03t5tfwjyqceyibu	{}
9653	40n7yo1uminjgl12d6jdb	{"{\\"quantity\\": 1, \\"productId\\": 7}","{\\"quantity\\": 1, \\"productId\\": 6}","{\\"quantity\\": 1, \\"productId\\": 53}","{\\"quantity\\": 1, \\"productId\\": 12}","{\\"quantity\\": 1, \\"productId\\": 19}","{\\"quantity\\": 1, \\"productId\\": 10}"}
10342	438f0al3rsji749wzzymj	{}
9781	3cbmi9l68de08bqkoxqb6	{}
9851	9sh1cus510i93ad81c5kq7	{}
9676	3r04fyfhu9493u09wndo8k	{"{\\"quantity\\": 1, \\"productId\\": 33}","{\\"quantity\\": 1, \\"productId\\": 42}","{\\"quantity\\": 1, \\"productId\\": 22}","{\\"quantity\\": 1, \\"productId\\": 34}"}
9724	5gnn22r3m5pq72uw0464we	{}
9725	00wzuk6nszz0c4me0jmzifb9	{}
9728	waatzdwsqag75w0ids2vwv	{}
10426	ag4nh9sonvsswjcumek9i	{}
9727	vuttu75oogaaqs09trh4c	{"{\\"quantity\\": 2, \\"productId\\": 5}","{\\"quantity\\": 1, \\"productId\\": 14}","{\\"quantity\\": 1, \\"productId\\": 35}","{\\"quantity\\": 1, \\"productId\\": 8}"}
10428	0qqgm9w9b3ff2zk4z4q5zja	{}
10345	a9exthdnj1hgja18nj0xoa	{"{\\"quantity\\": 1, \\"productId\\": 17}"}
10349	k1m3df7s1mq7941azw5r9p	{"{\\"quantity\\": 1, \\"productId\\": 45}"}
8686	xxsgf5h2vsivp53jz3rsw	{}
8687	v2dg2xgxg8mvmwge5fpz	{}
8688	eh4kg9myytbu6p4wsyy75m	{}
8690	fs96o7rxwhkv9ue2i6son	{}
8695	z51tvo63hqbzkd92kgva89	{}
8696	zgkamhzl6yksrnftanyzia	{}
8697	okz9mz9snrqngku3czwf	{}
8698	bsxnfji2edl47l496lpb1z	{}
8699	q63o53hbpi8o5cm2ll9x8	{}
8700	fvt6iu4at06rn246mbx5qa	{}
8701	uwbpu2cpy9ihgdtk4uwzxo	{}
8702	8pcslfsi84vpg0ffg65yuo	{}
8703	5025yca5aufwc12pad2bx	{}
8704	y36j3ev51amjeultno7a8	{}
8705	p849yzhq8olpmo55ip5w6o	{}
8706	m3558cjbf4lnyiok4n12en	{}
8707	cbs297opjca7g1i8eaij	{}
8708	km2qm52574fvedfh8fp6ho	{}
8709	top01tn297zjmpp3k09x	{}
8710	z4finbd661kkkaaa2iv8rd	{}
8711	ztqkc5z3asr58ssty3pov	{}
8712	kzduth00m2rs192d2ew5k	{}
8713	nm59pgtdtr61wwkkvuqok	{}
8714	0yi3ocr2karoxkl39cyjl3	{}
8715	40kv61gn0dygsysjhi21bq	{}
8716	pvgqs7yg45dvsmmuvab4o	{}
8717	rvxz6i1ogsbr7naqod9o8	{}
8718	4q985kbn0yoltymmlt4wjd	{}
8719	bn4r7zvs8v5lcxghhqo57p	{}
8720	c1cx4vptdadogo8h52nhpq	{}
8721	ykqp5u8an2lsprawlubf6m	{}
8722	ewwwtlqirdoh0h9qrnl2b7	{}
8723	n0ialuv7t3jwxprl6ybwc	{}
8724	e8c5jb304r88omqxv3ss6	{}
8725	7lz5f8t3gzl5rs1wdddvq	{}
8726	tv1o6pl1pluq9rcjqjzs	{}
8727	8ldcswq77rxyirx06qtu9l	{}
8728	y7vy25j0jil4urov2upis	{}
8729	9abe1ehnqcnvgdz31dr1h	{}
8730	g3a2l1l8yrlipwj8o96m7d	{}
8731	vzxkd68j83guhmmw4729tb	{}
8732	jiod5y6xnj96ezt6vkgw6	{}
8733	fsnu17ei28hcke7h59udi9	{}
8734	23gpbfinz08kuas5me6ajn	{}
8735	ilesmiy3age3p80bngze	{}
8736	xwk639dsfuaov8mx3t8b8	{}
8737	p184r8vk40a5ctju2hatdl	{}
8738	zfiza16xs2rj27eypcb6	{}
8739	rlevmjykuba8j0lr9r3h28	{}
8740	nfrylaqztgf9y8q8rn59m	{}
8741	9omwdor2i1el6b1qkahive	{}
8742	xt0orhcj00qxpoxbpy9xl	{}
8743	nwtbf79ce8s3mpo441grm	{}
8744	eug10dhh3g6bu68d6l5mdc	{}
8745	n60xe60vimagix37w3fxzg	{}
8746	d2fa2e4d64pjn3xgbvjzn	{}
8747	aj2kj1zzyz9zstqircn61q	{}
8748	eug564fydbon8s2af74o4	{}
8749	d0u24k1th2fwqjr4uultp	{}
8750	51ibjtfjqzsqqau838mxie	{}
8751	g0je342h4xcag5i2dy6adb	{}
8752	x6fihnnx4j9p9o9nch1qea	{}
8753	as9zbur6g48qcr1stpwl3	{}
8754	ah01kko7q22jxvepsja1	{}
8755	31wqgk12h5igmlzk0bzlk	{}
8756	jw0ugnmnf7lrg9ziq1zfbl	{}
8757	5c7chvfgs7hp8d9h5ylqyq	{}
8758	q73r2ux098je244rw0aokb	{}
8759	9yf7qwbpiy4ap0bxmo3fui	{}
8760	dfoewhlxbmugap1rmnpzdn	{}
8761	zgjx932i3fcs7ajnmyy6nr	{}
8762	qjf9f1wd34atmxp0jiiim	{}
8763	gs8qbxvp5oa2cr9x4wdmi	{}
8764	t6mij322zab3zc6a3bk75c	{}
8765	fw203a69qscgrodqnc6nl	{}
8766	gtmjcsipokexebmvq3y6f	{}
8767	ljon15kddukhuze2ihfyid	{}
8768	k0w66k0yj1eb06o0wnc1t	{}
8769	gl95dl5vutwzastsjgsov	{}
8770	f4wxlpxkyfr4lwggburf5	{}
8771	bxy6on7ioxfbrm0vwd7zui	{}
8772	9f3x2j6gcsngi6zezkj8zu	{}
8773	ckaisqwoce5syakck5ng0o	{}
8774	1wmqplbslwru23qfy7x29	{}
8775	34vov6bouc591ttvg7lytd	{}
8776	46zh8cqqaz5yx2srhp35up	{}
8777	wtazqbufq6deb8xf75zec	{}
8778	9ihlylzr2pczqvo85izoe	{}
8779	jbtf7pxjtsxcw5z9p9yi	{}
8780	zkom1n67ihbcj6yd57z4i7	{}
8781	ety1645emc6c28fliizxt	{}
8782	htg4nasaqkcrsez2vah1w	{}
8783	kiixsnrdghelr3emnrvdk	{}
8784	s2fnbs2yf6rvmef5zp60m	{}
9782	i8kxe33r2i9tgrsbcwxnts	{}
8786	h85isbdqhvgleoymbr8	{}
8787	ohjfw1i3mec39r8a7kfk0j	{}
8788	jjxzqxirugi2o3erb740dk	{}
8789	l4u3sjlz5g8deddboyqa6	{}
8790	714pu2tocogxy0p7fnmab	{}
8791	ya2a0b91mjbjznu4n4r6y8	{}
8792	41e0ytuq44kvga14ep506h	{}
8793	rmk6pmvky9c2yl7y681928	{}
8794	4kbxkupsh3lcx0fb4i9rnl	{}
8795	9tafn3pmoqnu90tbz7y75t	{}
8796	ag1zv7xsahrt7apjjwj6	{}
8797	hhltoyz9gz63gbpubqzbsx	{}
8798	ev1cflep3p41t676i78mm7	{}
8799	7opmb5e4y0yr0m2eyxxo9g	{}
8800	wsf3b8e6y6djsibzit4mli	{}
8801	67w4tcp1cwhs96jchc6l6b	{}
8802	tj4i0bdkvw7yi1gzigzdym	{}
8803	ha1d9q7775ipwoa878yvc	{}
8804	5ay9vibykudre753cvzgj	{}
9876	vmooncqbh91mec7me8b5	{}
8806	zvie9zh3v8pmzxse27r55	{}
8807	iicuax0v0qajcl1fdmczs	{}
8809	iah81bzhvhijh1u77sond	{}
8810	8xrig40pcq74y62fwskec4	{}
9784	2tzuev0ggscsn8es0whi3	{}
8811	k8o6z42m61wzczvrhq5tc	{}
8815	v8k1dbn5v5fbvbsibatbpj	{}
8816	9ira60n87nmve6zjmd7lc	{}
8819	1d0t8zbmggtuq0dy1l3li	{}
8821	4d4vdc02lwcr71lt7pw9y	{}
8824	ib8easp119n5cj1lwgp6	{}
8825	buj6q9gsbsslg2z9mv21al	{}
8836	7msbuzwtm7aya7qkwfyjes	{}
9523	21g87cpp63ojil5pgbci5t	{}
9525	me2dx9w6yh7apldvom5c9	{}
9526	bjphdq6xs9j42mcy8dc1a9	{}
9531	3touoj9irozi6rmvc2hxxs	{}
9532	4k0d8bvlg3b6jvna6a8tw	{}
9534	dmm02kh27zjv4qegmiiai	{}
9566	un0n0x51yla5h8qv1nosuw	{}
9567	0d6we589u2ahyejbwz0jp2p	{}
10343	14tdxhdjyuddj7kn1dwvel	{}
10344	ku22kq9rxkoz3xtbatssnp	{}
10351	3e128dhx9rx4inwkgf3py6	{}
10427	xhey5qpq06rv7jgge0ri5l	{}
9785	fpx5v7hdpxegwm2a87vtr	{"{\\"quantity\\": 1, \\"productId\\": 48}"}
9783	oxnrugqgce95rbydmm77m	{}
9789	jmh1qqxy1uxybi90380if	{"{\\"quantity\\": 1, \\"productId\\": 24}"}
9791	klr733fj44vdg1dd29kg	{}
9533	a6bg7hf4idpvoee91ew7n	{}
8823	0xza8t6d3wac1pdrc8fmj2x	{"{\\"quantity\\": 1, \\"productId\\": 44}","{\\"quantity\\": 1, \\"productId\\": 10}"}
9609	kbh1bbrpc3c3bs2xe1ip58	{}
9635	3n6ptfe8evjkaiokqxuo2	{}
9654	mge1hn95evcdvo5fqjmjo	{}
9877	no0x4bb41vqjdr71sr8bpk	{}
9655	94c9ix3rs8frpkhnj64v5r	{"{\\"quantity\\": 1, \\"productId\\": 4}","{\\"quantity\\": 1, \\"productId\\": 16}"}
9677	ren1hxarseekdoxti7n2c	{}
9678	ugpt1vbgcmku1w571gxqj	{}
9679	iawjx2rdmreo3t3dasoad	{}
9726	llknimna5284quv9iuopz8	{}
9793	wd4vuuwoei8t0usivpjd7c	{}
9794	m5nmbo76y2i2c25gb1o48d	{}
8822	lmy7n5f2z1kf68exft6uat	{"{\\"quantity\\": 1, \\"productId\\": 20}","{\\"quantity\\": 1, \\"productId\\": 4}","{\\"quantity\\": 1, \\"productId\\": 35}"}
9792	yv8nymzk85bfr59uoeq12p	{"{\\"quantity\\": 1, \\"productId\\": 11}"}
9852	ilgu3qeaxzlkcittj9hru	{}
8812	nzxr3vz2mkdakubzhchgd5	{}
8813	sg6tpb12408pnxky7u9p7m	{}
8814	fhs588c0dpjug52nxv18nb	{}
8817	k4oeoalpijezc27rrdx9kd	{}
8818	05sg729zc6qmzj8t2gr6gsn	{}
8820	iz2imzzp9jdgggen2mavwh	{}
8826	q5h0onv15wqdrb9rok3r8	{}
8827	nw8wfu5a0zn3s62eggjvr9	{}
9535	96qkqoktpjdjnha0clpg6	{}
8829	y67mlvc754m70msyw38yj5	{}
8830	euobdxn9oew5s5h0a2m91o	{}
8831	i6fbkg5dfj4hk8of546fh	{}
8832	dkalhqjppnkholb0lv2b	{}
8833	n5j54a01apgnvo838cbx9	{}
8834	6ypjrbynkgltmi43hy4aw	{}
8835	mppn08f859s0f6n24usjmfm	{}
9786	c6zb2168f3a8vz5zfv47zt	{}
8838	upzbbmwpz6rspeaaez0cig	{}
8839	f3im4r3c4h5jqtkh22m8w	{}
8840	h9g26l4cnfh5jozkid600s	{}
8841	t836nz93nckh1e4d6kk	{}
8842	0penvvxag88xcb6eyqibto	{}
8843	xbg9qgk562835kyclb38q2	{}
8844	tgslcdw124kdi3fcpqzzq	{}
8845	milbseax6p3eabqm94zuk	{}
8846	8p5339cwdmxucb373e62d	{}
8848	ubj54xo5huvnw6iqbvhxg	{}
8849	5tiotwvmkrlmglrl2enr1i	{}
8850	jn7npk3sxykghc0evovc	{}
8851	cr96mpv41ckb5adn4ef29f	{}
8852	ibxx5pept2qtc1ud4i8l7	{}
8853	yvcglvtwyrbb8887zvyzf	{}
8854	db06q4ivcybvxbdexxwuve	{}
8855	7hmr5w1o1z5y7z5lb35uel	{}
8856	aiezyu5nx2m35q1wryhaje	{}
8857	z4wbr4lj6hrabocfsns1	{}
8858	rchi8ypmp5kcrzwfq37igu	{}
8859	6z34k5xnypk1ovumdptlkm	{}
8860	cc8759izh4qimeaamhsfn	{}
8861	09qoqmpb42d642di4vwkdu7	{}
8862	lwef4o7tcxp7rr8cjx1rh	{}
8863	anyxvymsdvv2bv2a3sl6q1	{}
8864	6x70d87y0row7fms3lcw9	{}
8865	d3dw0zsyh3tj68q8podz6	{}
8866	ukfe54r6ouj2hdfqavfo55	{}
8867	ig86unh2f7pt3n3arckh	{}
8868	kjlqg0kylhd38tsnka8x1	{}
8869	1lnqszbb7q97b3g020qisp	{}
8870	bb4tyiw6jfua1b545o058	{}
8871	vl2r3usz8bgyyv4nbignh	{}
8872	ff5gz95oqot3tgs54ee4	{}
8873	6n5yov473ek4362enm3won	{}
8874	gawymxfe4bno1aticfjo28	{}
8875	ldeb8f6ocrqe0fuy99von	{}
8876	5b87bjrxhkmu1m7zz3b2s	{}
8877	kk72xve4b3ahg0kdiyjliw	{}
8878	1otg3jdex6u6q8rgxx1gds	{}
8879	ozvu1xmdyzg7575wuk0chr	{}
8880	7iim6kvth1prskzja2eva	{}
8881	1w0mygbg3rzqz2cedmp8g	{}
8882	ddiekta5yugsswh4q7o0kq	{}
8883	b70i5xsoyzshqlvux1ijg4	{}
8884	z1yd266k3je33p9uui9pt	{}
8885	1cyy9y9ojq7f2bujw71emb	{}
8886	odb3p7zcbcj51ml5m17ee	{}
8887	8p12209kdu3o5ngzb9zjmi	{}
8888	7k3ix58dzf63ty3r2fg4t2	{}
8889	5u705gnntlbhd15da2yteb	{}
8890	d3fovkw1v4ewy7wsxzxo4i	{}
8891	qhjegd82z8q4jim8vrq8s	{}
8892	ceqyryq246wgurztj78y9	{}
8893	zkbqsru5wjxg6gb77y7v	{}
8894	89l4dq5t8079gx8stg82hr	{}
8895	jjzylcjobzs61ady9w0hjm	{}
8896	v5e8duojoenf7cjjpkv3a	{}
8897	y97s8dacds9qyof7763ip9	{}
8898	p8h368vxtc987y1oq9by3q	{}
8899	hcewdj84978iv54p1u4y3f	{}
8900	hgwvywi2qntcnq8c4fj8r	{}
8901	iis1wpvffo72v9ti2qzlkx	{}
8902	hsxqlytu6x6w6g3r85b4jo	{}
8903	4tq6znn5mo21x1zcuuckan	{}
8904	a93brwbqvtlw1do12y17r	{}
8905	gl2btexdlxuchle2v16sjg	{}
8906	p0y7cjwc3t78ruxm5z8jo	{}
8907	1qp7ffzkhh46on82oe554r	{}
8908	2acbip5jutwways5uv2qrl	{}
8909	blaag2p0v9c1hi8x5tguwv	{}
8910	bg9qmwyt82syki07hwz40h	{}
8911	sfi4bwgh9pbshoh81dnfm	{}
8912	3hz87b2cv9e6rqgnp42wr	{}
8913	6s4cr5nqd2sdg2a99di2	{}
8914	sbz7qu3foq39hzd982c0f	{}
8915	xih4whn3css3poi3vclu6r	{}
8916	5n09ejea7le3r0pyqvxeyg	{}
8917	qpoh65edei8wiyek25iol8	{}
8918	1l3e8hdwoq74pfowb9b0e7	{}
8919	oofj2mnyalrjsa99mf5wy	{}
8920	sooxce4b4nnklvlrhpxpcm	{}
8921	vidbft7jtem3fnfeqool	{}
8922	b9za95plgc7v5lbawwqoz	{}
8923	56apeptyq5p4ggbjzucgzb	{}
8924	4e8x4meksm6wla8e22f65	{}
8925	05s3p8g69y63fr5sqff1q9l	{}
8926	g6yek32pkqc2xo5m39n3c	{}
8927	htg0ehblady8drikhlfsf	{}
8928	0fzxribdnxupd5q27qi39r	{}
8929	qsxcatp2b8bauqqwf4n9e9	{}
8930	ynsg25vgcjl8237k07bzqw	{}
8931	60fszzkxgamdq0154uv06	{}
8932	wzo683wahw8llnbf67s3w	{}
8933	i60ggexri88tw0xw67vur	{}
8934	upfhfjch24igsjs4fjy0x	{}
8935	17n6e227uupolcizywupar	{}
8936	3yvu9k3jyzrloke86zvu3n	{}
8937	c166hiczt5cg6q8kbh7fv	{}
8938	nm8llqbl34b1lu5bwzwgkr	{}
8939	ovaper0qrujiihh4n8jur	{}
9854	nhu3qh4frpaft65n4s0mf	{}
8940	peno21s38lmj2pi3rb0o8o	{}
8943	8w0125odst2y7yvri45xf9	{}
8944	k5pug4l85fc4k5km4avzo6	{}
8948	c6ynlj3u9mv48twrqz20vy	{}
8949	ww4aj0yzxa97ao6hcd5h8i	{}
9083	pq3g46iz1cp01avv6h8gftw	{}
9536	6y07870x09835bscou530y	{}
9568	jldkx5a2rasgqqnc9eswfm	{}
9569	ugkfehh0g55hol9t6rw12	{}
9637	00tg53s64brco7gflxues38	{}
9638	tu3724bo6bpb8haye54cw	{}
9656	rg8ubqoubzdvif2hyucux	{}
9659	u53480f60wpv07kawapz	{}
9680	v2xp9f3aigroicegmgtw	{}
9681	i6uh1580ev9omm2l90y28	{}
9682	c4qknuii6qgrnfbsrjvn3i	{}
9683	id55x3x7g1lmy7pulnfep	{}
9684	thwbe4vm5olsn31hui9a	{}
9685	x44w0a56wvlq11o6sxos	{}
9686	thq9by4xr3s2cfvg2ot9mx	{}
9687	ryrj86uclaphubhthtblri	{}
9729	pmaxvwrhok6xai9obybeg	{}
9878	lcglpqo2i3hlhlgvvz15r	{}
9879	varqqttbi1aqtzy1omg8z	{}
9787	0dbjtgiu8moad40xqogve97	{"{\\"quantity\\": 1, \\"productId\\": 24}"}
9788	34ox1qmsemxnrmhv38wbdi	{}
9855	fss6iln5q6secg1fbvebeq	{"{\\"quantity\\": 1, \\"productId\\": 19}"}
9610	nr30l09co1xqpefff8lk	{}
10429	mdm13jes89eavq75lforqg	{}
10346	4kjwnpywfw5zyar3mnvmll	{"{\\"quantity\\": 1, \\"productId\\": 21}","{\\"quantity\\": 1, \\"productId\\": 3}","{\\"quantity\\": 1, \\"productId\\": 23}"}
10347	57cvk0eb4mwlsppfl7qn6	{"{\\"quantity\\": 1, \\"productId\\": 52}","{\\"quantity\\": 1, \\"productId\\": 26}","{\\"quantity\\": 1, \\"productId\\": 36}","{\\"quantity\\": 1, \\"productId\\": 51}"}
10354	30l7yixar1ex7wshmrnjp	{}
10358	qmdfp4fnr90x9rwug4gty	{"{\\"quantity\\": 1, \\"productId\\": 7}"}
8941	bnvnoiylsk7cirxuzvfbc8	{}
8942	1h4i8u7hk6slcn4zj577ea	{}
8945	4c4w614yo1yxkj7y7cj6js	{}
8946	he7y6p2h80getk4wwi9hh	{}
9882	wpy8oy23ilokftphetrt	{}
8951	mzinrd5864erx8gh4j1w3o	{}
8952	gm2lotjqjjibma97jih3a5	{}
8953	8bc7rp8d6mrmizad3gzxlm	{}
8954	6y8qy6niqxrln00y20caih	{}
8955	6ewd8zcpi56mvjj8c77nhg	{}
8956	medygn1dxbfupidhppfov	{}
8957	1ccdlsk5jgwnbblzflm86	{}
8958	zsbs5uejioejkinv8qkrq	{}
8959	kai4h3jme5ely2py9pbwmi	{}
8960	2louhvr3qm960um34a7snw	{}
8961	9rzxc4kxwnd1cyoizrladi	{}
8962	i2en642ufbr8e6vul5ls3r	{}
8963	l8o8sg1pk1ajqduisr8h7	{}
8964	vhoce008nsbo80gg34m0r	{}
8965	ayn87rc2cnqn0kvskvgaq	{}
8966	8xv454o8p8bg8sinawe1j6	{}
8967	lamqjlu0k7f5x1cht3gicv	{}
8968	gwr9dpgsrtg8x5wfv1dqg2	{}
8969	kqxlewpp4t0y2pefye6g9o	{}
8970	xcny0o4z8p4rfyojna4ra	{}
8971	d0zm2xsagm92psuy81v5gg	{}
8972	4fdvcrasy3fzjuj9fmdbhr	{}
8973	ar5qg7ok374yzsr3dbh9gk	{}
8974	olb4zh3zl1a23oe5b3xvkf	{}
8975	kw7lcgndun5zpl6wfn9fu	{}
8976	xpyi8cw6w4qabpqut0bkp	{}
8977	4guewsdh9a9dxwqnlq3hbg	{}
8978	dztl9b5spe9o9dh9naupq	{}
8979	orlqzdqmtfb82ngjhgdid	{}
8980	o9dsedfki9d4yneucs3qf	{}
8981	2k6r54u25zbocf300f6nb	{}
8982	q65reemg0chw221eext5r	{}
8983	lyeoqua71nkl2dfeqd5abg	{}
8984	7kiehm8eacsrqnhea12ru	{}
8985	f2g89uvwlfjz4cntxpeeds	{}
8986	pcg7iwz6b7hlro6mc62yw	{}
8987	o605e90uv6o7oon6sscb	{}
8988	tn20x4fuisu0jdvw1ja	{}
8989	n4c83q4gvufct8qg3k1hfh	{}
8990	6oz0mt4l0c2n9xlqlvn83	{}
8991	nc4neb7fu7g0yzk78ogi	{}
8992	uutronwksyg3k4cvwaeinr	{}
8993	r87ri64uznrcxfvjmsch7t	{}
8994	49xu7vjhnu880prik3xwlk	{}
8995	1epcom3gnpggp8u277hj2d	{}
8996	2secw3vq46dzxzbgy7tyah	{}
8997	6oay2hyzmutl6450fg9vqo	{}
8998	to07kx1ix2j2y4gppm6n7n	{}
8999	9krnvutgqxnbdyzgsqom	{}
9000	fkhvtrojidhfhjbrgtymc4	{}
9001	l8a139juk1l23btcastp	{}
9002	aiaqc8iwdxv0grdwj7xog	{}
9003	42l0zmu6znqq383adzs5	{}
9004	uohe0uixe1tm5419qtris	{}
9005	ckuy4l82vrk8f22cca7h44	{}
9006	qlj1gdju0tuekmstrg6s	{}
9007	l6ozwuszvsrerkmmev5x25	{}
9008	d5qy2a6kuorkobrkj01kt	{}
9009	vuy6ja4md8bshu6qa5na8	{}
9010	boy0hm3njsng2fnpq8gjb	{}
9011	nk5iqx1by3matchzwhz39	{}
9012	o0kn08alm4rn4d2jilqs7k	{}
9013	ixoc0hfwgrei9twcqdxvc	{}
9014	mdzzd5zdm3jl5lcr57xaz	{}
9015	ojxoazfmoumwrwodoywb	{}
9016	ekmiod8r6fijwkio2vvka9	{}
9017	pal20mmgzvdf9i324e0gbf	{}
9018	aa19or1i6af9i4suqyu61c	{}
9019	y94658uyvzsnmf7j7a9fk	{}
9020	xlv792ejer8kxliirj17k	{}
9021	8dltyul419wizmtpi441us	{}
9022	72nzv200el079ya7zeucdh	{}
9023	n97b8imz13my8kubk0ar0s	{}
9024	3sa994we3ij9y0qqvt0x56	{}
9025	8fs5xaoczi5w2wk00ae24	{}
9026	c3ta2shgpot0p6el81oynin	{}
9027	j474pq9gg33sq2s2m7gxp	{}
9028	8czs5idspth5s49fizdl	{}
9029	xppvs8btksjg12rk26o5ag	{}
9030	1p4awzill9v26jcycimhz	{}
9031	o8vzcd2e31awkmzh7wd9e	{}
9032	boo93a069d4fvs0afc8qu	{}
9033	19fdq7kaxqhptwil7du	{}
9034	vktyfd79br464nr6ue4rs	{}
9035	h4q3ada3wuanyy1ykhvtz	{}
9036	1e0teh2mr4o4v510hf3ucq	{}
9037	cvngz6edcysj3hzjsf9ywr	{}
9038	rwmi0scesb9hnwwhfvmdn	{}
9039	m9kr2uagkx11kcerabggz	{}
9040	1hmcfmugb0ktics2hyepj	{}
9041	uxeofjania9ksdbkdl24di	{}
9042	rklg5tazkc8i2ypqu5so8	{}
9043	6dbygdapwsc2jbw5822dkf	{}
9044	exduq7by3w8e473616rgww	{}
9045	c5e4vh8yqifdx5640ukqy	{}
9046	fa79sanrzy56900ft1om94	{}
9047	95itczqxup594te61sz3g	{}
9048	629bfixyrpkw6nrhaf1foi	{}
9049	w09oiq1yacihlciw3lg9ot	{}
9050	2jlnxyexxzvbvb0hu3udp6	{}
9051	9x4qpabn1extipcg3mmk	{}
9052	i752awzlqqnm1yxad0bow	{}
9053	k4ykmygnfxsxd3y46i031d	{}
9054	ixtm5owyr8g9xajxvirgp	{}
9055	206b5clw8u27r2c4ygtpqe	{}
9056	w2c9r215b7da21mpjf3fm6	{}
9057	pdqbp6o5i3szbeo0prv4	{}
9058	yjbbzgtq1mt5dkyttlv18	{}
9059	5jwc7u1pd9pk3aiydws5jd	{}
9060	js8ma4n5fi7mntpbthpgo	{}
9061	8zw3t3n4hbtx7l2o5qpkb	{}
9062	2598ws3lcgmc5q1i8ov9bg	{}
9063	jtw3pg37ozknv52ckfg8	{}
9064	t56t99gcvxcm8fhtevmma	{}
9065	qc62s5h82dfs9cda4iiucr	{}
9066	uln02whk75d7x3hxx5c28	{}
9067	2euc2lh74hk8k74i71jkug	{}
9068	8iispeekhe2sn1cdpj77b	{}
9069	mq9pi9rbhk5eb4rlljm3i	{}
9070	sqf0xrd6f1bm90ryq64zh	{}
9071	mf2ntteszflbegfk5errog	{}
9072	ggu5bbb4be6brb8vpici4s	{}
9073	1g34pvs48arswp0uzhfa1l	{}
9074	mnnfz9r56vg3wcg2nw0s05	{}
9075	j8oezruhnxit5jfu6ofcjk	{}
9076	j9x51p04pm9jbmq6xmzzl	{}
9077	bhi98w5mt3escexxt6qjx	{}
9078	gz5inys77yqt25cz68ijo	{}
9079	o3asyfv9p9ul9vdx2gbdp	{}
9080	dr0obw4wirz82oermee0a	{}
9081	64do2gjigbakx9q0aluvmo	{}
9082	1ejzfwt53pxebxu7vkoljk	{}
9084	si1a6y3v75qwebxmb56f1s	{}
9085	77861ec8lxx6324wmpls	{}
9086	inay4xrjalsx4vf8rrlb3e	{}
9087	chijqhzxiwct0vu9cws78a	{}
9088	5irru80bftmv49c8zi14cm	{}
9089	x5enhujhx4ua44140588n	{}
9090	7548mkg866lq5c64wr8hu9	{}
9091	v7u1jhpsjx20q84zadlxg	{}
9092	szei6p3m1u1edfrowdaj5i	{}
9093	vjb42w9u8iifef1vliy8o4	{}
9094	4kmo1whgj0rfhlz57w0fe8	{}
9095	kpycwfxo4mg0cstvx9hbl	{}
9096	esliqc4ahv1rasmg4i2la	{}
9097	hg36godqst4nnw0chj88mk	{}
9098	ky08c0mo66k1pcco91i7vc	{}
9099	5i7yrgs4kset1a37fqcri	{}
9100	7u0x7nsi7urn0zat1286c	{}
9101	0szcxq5g55np7lrl58mgxx2	{}
9102	4jy40g15sn75p6zxlc6f5h	{}
9103	fsgkolz5jxm3d3e65xc5gw	{}
9104	wlc9awxk1amqvsn51ce3q	{}
9105	7x8gpgicc95w2ubllyl1mo	{}
9106	jcw7o3lqh1mdgivcikjqd	{}
9107	et6wrxep7ufcv4quk0beo4	{}
9108	pw69tcoo796pdcj7s2nql	{}
9109	mlqtfszg4cq7jmmnn50qt5	{}
9110	72hcxsimtqpr1vuysucptf	{}
9111	iiohcae9rng5i041z6xurt	{}
9112	nixc1ufblweoziobmlo7f	{}
9113	rwhul6yfpvlpius2d6qqm	{}
9114	90n25rurcg7ez2qr4c5s	{}
9115	5hr7xeprsod8lfw43kshvo	{}
9116	cpwnehw7q5phicvn737239	{}
9117	g02hyn3dyev45p52rn464h	{}
9118	o1pd92kv5nppge733i48o	{}
9119	8avmr8nepkxb9d2y4rin2i	{}
9120	awhsmlcsswod52aq5traln	{}
9121	b3w32muihgg55fs8wwj0ai	{}
9122	klat8wdd44nljby3wtkq1s	{}
9123	1kcmj3y27agfxd199kotih	{}
9124	50tltzd99juhaeoz2mgqyu	{}
9125	43bew8zb9zhqagmjkgw5s	{}
9126	7gc9bxrishhh4uxz4048ni	{}
9127	i92q0qececm1k2fq9s9ag	{}
9128	1cwnvuri21fhcyhmvuxcj	{}
9129	3uef0873e8pra8f33zwla	{}
9130	tia90zqpv2fnpjond93qcg	{}
9131	xg1vip5otwpa7o3dbpb426	{}
9132	qft0ie8qi1g2i46jm49tm6	{}
9133	qcoi8bcgjmblmaayw0g4r	{}
9134	bjn21890phcwtdpay1f1	{}
9135	5yjpkk6dphfus3ilpms3zj	{}
9136	6o7yb8oucit4me5zvuxwen	{}
9137	3rp3kszf882pvz28vxkd9	{}
9138	rf9m5cawfj6e7sqn022b8	{}
9139	mu151pyp879v1h7mzqdy6d	{}
9140	57zs4qdytowclemffztgwg	{}
9141	dckaljnmlm5yaw99tr8x69	{}
9142	8dyv9jo74am7oipgo4jzrx	{}
9143	le7112s6x0p8m0p08qru9l	{}
9144	e9crk9pfjscjbt77fz49n	{}
10430	c729kyl2a1w4lwrgy7kiid	{}
9147	e7cnzn4f9rs72cjr1azvh	{}
9148	phwey6erbc7ekkr4i7w3k	{}
9149	jfix9yzf9q1h30o0v60gh	{}
9150	kakjjunu01h5n1d3swxg	{}
9151	vmm2d7fb5vpevr7ni16xg	{}
9152	oyjeiebs7yq1cbohzznw	{}
9153	c00cskb7urgik3yxvwwmi	{}
9154	tyrij9hytmoe3hya5pldkq	{}
9155	gr6w2pr7zho3n12u34dhf3	{}
9156	kb2w3mpa87dmbantwsgl3c	{}
9157	4p2f5ey570mjw0lg2dnhy	{}
9158	5g21adqeetkjs1p33qp0zd	{}
9159	5z3oc91hcqs2wf43ezfnrd	{}
9160	39hatkqrxepk2mi8f17ahn	{}
9161	dowgu4ze2y8u5thiqn81u	{}
9162	it8qzbw05lhh1rwgimch	{}
9163	dseh2wxa8zk7mfgy0b7l6w	{}
9164	79ub6xoylmt483xjs25flk	{}
9165	wkhc0pq3deq5fh8t74lcbi	{}
9166	8mq7nttomqties0zt7bu1q	{}
9167	d51oh5a8nkjagrvr5je7l	{}
9168	ocayqqwhoy6oapo9xwdpd	{}
9169	nak8qq8gd69qrj1kk1cog	{}
9170	51rprwwj4yt58w3trmbj	{}
9171	bn0px2y1rji3ir0i9g3c1c	{}
9172	t6u15qt3xnjad9c83nso	{}
9173	ttmwdupff4mdzilq1c8l	{}
9174	jhmx581oj4jerk63b9lwmg	{}
9175	uin6vejxmyoex9140b2az	{}
9176	jm6adc0yguig786mty76k4	{}
9177	kbfhyotgltfotmj5svinlq	{}
9178	y6ar2gwttgb191ajf4e9u3	{}
9179	yy7fthw1otdeb5ze5g3gan	{}
9180	1ria5fflbh7gac4cawn5y	{}
9181	ixcz2l5czhb58e599d8f	{}
9182	433id3byftleej6ox5huwr	{}
9183	sjleq89xlxbgsfk3fpwj	{}
9184	ms9y4o78qop9bhy4zrnxea	{}
9185	qimzf2l7dfcoevwe7i1da	{}
9186	87hi6xqc7vs0odyxsc5yk2e	{}
9187	mbgk69j1ytooxp7yfs7ql8	{}
9189	kzec6v3l2cce6w5de6lz0e	{}
9190	2ws9gj8ywuncf526n1syav	{}
9193	omwg8hj5mp8khx84mj01x	{}
9197	5v6zwpao1eg69sch23rpsn	{}
9198	2hnself9zkroqdvjat53yl	{}
9200	d850tykszsbm3hzio43as	{}
9201	v7vi26y39gzhogbbjhj4a	{}
9204	c7li7z2zmbve0t30cetzg	{}
9206	z28vegsxnd83rls47cqntt	{}
9207	3urmfk6yuzv1rej05hgoux	{}
9211	vevbk9w411s8otjvqd6op4	{}
9213	zgpvp29sosps8enzj8n3g	{}
9216	3l8jlu4frqdvwjnffsgqmg	{}
9217	31rh139ft8da0ix7qioapm	{}
9219	tjaeuwd5bwbcvdpfv5o21	{}
9220	mkaykgcpxsbbomm6j41a	{}
9221	40rehf1abxm9zw8xmxxdp6	{}
9223	6ouru54glrtwfmx145c1b	{}
9225	wp173jn8uzmpxvfy23sh9	{}
9537	t3h9elwqrsbdhmdjarr1ca	{}
9538	fpz4oxbm071h3fw5kilds	{}
9570	s4e9bu0z2oo3zg1djd0rsg	{}
9611	41yvyra355kydlmpd2nhma	{}
9613	6pjymwc9e4rzrtfjoegpt	{}
9614	xt3f19bk97mzc42i2f85e	{}
9616	boiwgncjlscd3ot1uetckv	{}
9640	pb2owum7y2f9c3f5blcf6o	{}
9642	7qmbrwy92uhaofv9o9c9sj	{}
9644	xtk8kglwxx9awcatzzhmli	{}
9646	gk2vislqeg83rhyavz4upf	{}
9657	621w693joohiqi2r5fe11	{}
9658	loq944et8xq62nki5kz85r	{}
9688	qxeelq5jcd9sajs1k55w9j	{}
9689	2kan00wibvn890fbyw7c5v	{}
9690	2ubyuvcxgek0lyje3czhflh	{}
9691	29lw0vc9jgt7pk2a0ctmwe	{}
9692	8svomdqb219iajkquf3ry8	{}
9693	6rc99tjq02k7l6et0enn9w	{}
9694	9blsfxe6b8fhjipkvt65a9	{}
9695	5ak3gbb998bfkbkda2o0t	{}
9696	wjtzxc0mxbnt8chikong	{}
9697	fdk2krxpmzahtvakson6dm	{}
9698	czcjmlejm36pymkwmjvm6	{}
9699	uxp61xw72ajz3nggp82tmc	{}
9700	bj7lulu2twp3o04xpff0rd	{}
9701	8lt094aebrbzxs1qxvhk7	{}
9702	siamv3vdkcjjk7r05j8z	{}
9703	nm28hwr4rl2kicg7jfkm5	{}
9704	vqk4yhiwk9a4dqeyj6xcq	{}
9705	u65o9mxfa1e22gvfh57a5i	{}
9706	n6hmsoi9n5b95c9syp3krd	{}
9707	dcn7xyzcmapaapzj5z2954	{}
9730	qr3xelr9gvkk29cal9zqij	{}
9883	5dav3ob6sb9kgiz27t3rep	{}
10348	sbbx1m67isg3golsv6l9	{"{\\"quantity\\": 1, \\"productId\\": 50}","{\\"quantity\\": 1, \\"productId\\": 32}","{\\"quantity\\": 12, \\"productId\\": 14}"}
8837	mgf5ra089uiitqf8uh3xz	{"{\\"quantity\\": 1, \\"productId\\": 33}","{\\"quantity\\": 1, \\"productId\\": 32}","{\\"quantity\\": 1, \\"productId\\": 5}","{\\"quantity\\": 1, \\"productId\\": 46}","{\\"quantity\\": 1, \\"productId\\": 51}"}
9790	se9mqfwb47c1eu77x8q5aq	{"{\\"quantity\\": 1, \\"productId\\": \\"45\\"}","{\\"quantity\\": 1, \\"productId\\": \\"40\\"}","{\\"quantity\\": 1, \\"productId\\": \\"10\\"}","{\\"quantity\\": 1, \\"productId\\": \\"20\\"}","{\\"quantity\\": 1, \\"productId\\": \\"42\\"}","{\\"quantity\\": 1, \\"productId\\": \\"53\\"}","{\\"quantity\\": 1, \\"productId\\": \\"38\\"}","{\\"quantity\\": 1, \\"productId\\": \\"36\\"}"}
10431	wlljkkax4jkvcnvd6mrf	{}
9856	3goyvxuhqcm8yyaw9temhe	{"{\\"quantity\\": 1, \\"productId\\": 34}"}
9858	q8nxto8jlyotwws9jleupc	{}
10432	mm1u20g3lzjiowt6d2xdo	{}
9860	g7mg4dkqrwhuz748zlv89	{"{\\"quantity\\": 1, \\"productId\\": 26}","{\\"quantity\\": 1, \\"productId\\": 32}"}
9228	sdn2p5mew7h0mxe3higor0k	{}
9188	vomvdgmf6jpqufykbipjy	{}
9540	pgai1c3gflr9l3f4hfge	{}
9885	6k7noct8hc21vm4s6trgiw	{}
9795	13yjlmuoguyez1fwj05628	{}
9796	o9c44a5z28qxi03btztrq	{}
9797	ij0yz3s8gwj8gdbvk1cgue	{}
10433	zwfcji0aau6j8oqbe2j0i	{}
9612	m5o4xfr2tnr4bq4vyoqo12	{}
9641	s1qghwx0oa1w2mqzbd4cz	{}
9660	f1cbih39fxmete9y7fwdio	{}
9886	mqxpc0l29qqph8dsfu2ck	{}
9887	uap5621va9p5xr57i4e1	{}
9661	zm0e0ohhkfpzt1zo2lpyw	{"{\\"quantity\\": 1, \\"productId\\": 16}","{\\"quantity\\": 1, \\"productId\\": 46}","{\\"quantity\\": 1, \\"productId\\": 7}","{\\"quantity\\": 1, \\"productId\\": 6}"}
9664	9v51e8gvre59rry2fsm51	{}
9668	dyk6nvpt4jvk7feq124b	{}
9669	w8wys8ogqafvycr459cz4d	{}
9708	4skhd4fcy2heynd0ekmd6p	{}
9731	sss31h5kf0oo7rxm2hbyn	{}
8200	i8cxb1u01fr2x6pah5jy4v	{}
10352	2hjoseqoburw50eup6q76n	{}
10357	dc1lfupwzmkliag8msp0g	{}
10350	z0pfrqybaebjz99bhpdm5	{"{\\"quantity\\": 1, \\"productId\\": 33}","{\\"quantity\\": 1, \\"productId\\": 24}"}
9857	pf2gqf67rve146ead01iaj	{"{\\"quantity\\": 1, \\"productId\\": 51}"}
9861	g8j8r7aluj77z5j5r2961w	{}
9191	6e7afsn4ruhus2nb5kpw9d	{}
9192	7jf5wbpwebo7dxok2hq03n	{}
9194	famavxtbuh6u3x6ddxpdfp	{}
9195	mf5aph2bpgaj3kj6acyuto	{}
9196	72ogv7h74ulkr4whs12rn	{}
9199	1yeg91ejzrabhfm0wkd9it	{}
9202	0b7tgo5l4ir8cgjqbjd57ip	{}
9203	5s89remw7b6fbdm83l9ih	{}
9205	c8u5fx4vjiob52xjz1tmpo	{}
9208	ulv8calsyvglgio0fn37g	{}
9209	rn5xede5m3qpzzes8y4zz8	{}
9210	366onfk5dru7x3wq05dcm	{}
9212	ihp2hr14ibo77z7jmhyijk	{}
9214	y6icekcvt4gvjf1sppfapg	{}
9215	gsjzjc9spgtlg0kf0zcg9s	{}
9218	hr5it25wplmuydvlop4xr	{}
9222	5uzg72nvyvndkjc9nuwyr9	{}
9224	4vr9w1i52b5w6kshqhips8	{}
9226	8myy2fx4lwy4ephhdbxlyl	{}
9227	jcp8m85ucgn9uja3spr2	{}
9229	432ektzsswa1g0r06v51sk	{}
9230	xeyy66gkejttm3jstzd6	{}
9231	bgu5oe36qbp4smxo8wthc	{}
9232	5s01d31ytyommvvfy0wv6	{}
9233	eveoy49jsyrp0ldialdfom	{}
9234	apirj9bqfzlejwcz7fuhe	{}
9235	y3a462etd9k2m3t2qmf0jb	{}
9236	vj6wu945qxkugig0sfr5lm	{}
9237	mmt5zdmfkd69ahomeo4r5	{}
9238	rqa57okgtxxmyjhsu66e	{}
9239	t2fy546z7qjwc3kah62ri	{}
9240	2rzvfhp0g4yrjng7p2w7tk	{}
9241	r0dn68rqavqeqx0qryh9	{}
9242	xm5uu601f28z9dlh1objsq	{}
9243	t67ta5b1j98ict2knzbfka	{}
9244	y3w6alfnv4p1ruopiggs7o	{}
9245	ik6hyb0ck3rtdm5v6r89ba	{}
9246	uoa9wclinft35rq7jbio9	{}
9247	48czi4w0vw5x73e1k7hy	{}
9248	j002eal8s9dxe9t9sjdij	{}
9249	sxongkeu9ctlx44inaxltq	{}
9250	kv9opm8acvby4cfejtwv4e	{}
9251	ow5l0cvr44pj9ensmt5jw	{}
9252	bpvni03jkyikyd6phf6jj	{}
9253	wsw7sdj8a1n6brkwl33p	{}
9254	wzhx8tse4499b6qmhmf35l	{}
9255	kyavjdv6xmctplry3rr8z	{}
9256	jz6gycjht7osyg02rnvkng	{}
9257	t2vd12xlwxey2t1yl8syef	{}
9259	ishktffnwyro5mdo6lrshp	{}
9260	a7bgk8rdqsadkhkuonm1e	{}
9261	dvhufeiyporlkop62c9vc	{}
9262	ab8xwanb9ea9v2s33y8aw	{}
9263	b2tq2xr5yph7yr927et8ku	{}
9264	tkt33iemn9flwupgnnqzk	{}
9265	lia34xlembpd3ukf3w0yok	{}
9266	tm2h0189nmz7kvzg6i67	{}
9267	n13h2vrvexsvu44us7ts	{}
9268	euaqk5o5tsegl9cp5w5v8	{}
9269	uuv71dcefojwj5s8562t	{}
9270	8o8g1j3nzrjnjvi3qqd7w	{}
9271	ecvltndr9k46xhaz8etewb	{}
9272	uol0f7303ckxdnkwqxvz5	{}
9273	bozdxx7s2cny42yld0h5b	{}
9274	boitv1gle2q18sb6oro3yo	{}
9275	l8l7kqqvcqgy2z2ruqyr9	{}
9276	e2dovg9c9wqbuvt55pfov	{}
9277	7vz7r3gmzpqyq0gc5fofi	{}
9278	3c1lbd1teiwsjlee6xwyx	{}
9279	5g396kqar4wi5ikjdynxzm	{}
9280	s37wb1u83ddnqt0uaf3p5	{}
9281	ifjdxz1o91xxprcdh1bh	{}
9282	xzv0e20hlspwf0v1z7sa	{}
9283	d7f0h8wp7ajnh6wbfj01og	{}
9284	putdkvn8awlc8pt8ppze6b	{}
9285	zu1xn3tvkvqb3s29q7u6	{}
9286	z7fle79jl8bqdi5klrtk	{}
9287	pya6x1vkndfniuy9kqami	{}
9288	t8z5kffjorq4xkbc0c0xtm	{}
9289	rfl2k3d4m6jjwoovb5wjo	{}
9290	xfcj811ocmd1f6npi02qt	{}
9291	l71mxzjyxdm4rdt64ix6c	{}
9292	ag2iezuvmoqz3zp1iu9vf	{}
9293	x9ublrwl989xgtnc473ktn	{}
9294	kua7t8qvg8h4w7c0zqxlit	{}
9295	3njhrskbkk3tnjnlnd3sao	{}
9296	lu08lu83stg264ub7mn0p9	{}
9297	vd52vfcfeessiuk3fv4iv	{}
9298	bgt0asz61u4qf0zxa23d7	{}
9299	ck8j4saebwu8fiebwvv7tm	{}
9300	20axrhvhrj2a3i6hsk5f6e	{}
9301	bhts0e7q3gmzfxpcmhfs9	{}
9302	8k7tkp03nfndqymh4bw9xw	{}
9303	wrusz3zwzi1inyh3j7hgt	{}
9304	6obp2l0a1gcs9yv123eo8	{}
9305	f1i9yhxmfllahflvsu5ox	{}
9306	j5e4e8ab37che59hu92yrf	{}
9307	lj3jd6na7zgr1m947yycl	{}
9308	n12dat80gnaziyr5aj6a09	{}
9309	j7tllgd5dlm8hd1cn0ze8b	{}
9310	8z4mvg8mhth4bfy27f78ol	{}
9311	8uqcc4wo27r71hyfqf2ub	{}
9312	3i2q4d6hvb6ew1jdbewpg	{}
9313	xsf0d1ug7uiryqropcp0yh	{}
9314	57psr2r9dxkj5l09bdkgx	{}
9315	yjq95fhx7fjyrq073c694s	{}
9316	xtmozljxg2j4e269nm6pvj	{}
9317	dju5h2d4u91g7102f6xjd	{}
9318	qoxwm9piatisjxx1uhasu	{}
9319	p9vr691e5vl9phq095gog	{}
9320	nuystfxh2vr8sm3rr4rztb	{}
9321	zb6mgstqrwih2u3uc0woe	{}
9322	chv2b66xniglj2zlcqx86	{}
9323	nmqe5wj1uzk509ezurgqa4	{}
9324	egy86vgam0g9xp82de9r3n	{}
9325	d3a331d3r5u04g7xqhyhq	{}
9326	nyxwgkoes4p6pk5jx8r6am	{}
9327	mctzpkznrhhgs8x0xxbfl	{}
9328	c0kpbdriseazelpk8il7gp	{}
9329	l24e7nodjcc7iu6t8f85v	{}
9330	49sj7zlo6t3r6z5vnum9s	{}
9331	kmykomsjh9ifzpihdy3eof	{}
9332	ovhg0y4n5or1bk6417351o	{}
9333	5riq6uea1hkt0c91pvxxsc	{}
9334	5t98d1rter216rtjnhyi2i	{}
9335	jfn62ovaqgbfcgflohf09j	{}
9336	haf66hegee8hu1e22qp8u8	{}
9337	p832pu5ymgk1d9uy0ljp2g	{}
9338	gty91krw7yhzzojbowvpqp	{}
9339	e425xvu6ekttkg3c8tdj4	{}
9340	7pjuxh3tfi3wqh262bsrih	{}
9341	d7ykwcwz4ky92t4h7sotl	{}
9888	l6cxazcrcqucefzcmj8n	{}
9430	msvjp3ijmoka2977xteh7o	{}
9859	7a6zbosv6gwwrqvij69goh	{}
9342	30jfiq3s64qwss6tt8154	{}
9343	47jtxphy42m88i9tf9oo9	{}
9344	wye52s5e6fk9s2vjcsizbd	{}
9345	t7tvhcqal5ias99hpga3l	{}
9346	kzim1ky20win85979dprh	{}
9347	lmzu4dyozjbb1kdohinsyf	{}
9348	z0nilauw73j1f1ic2av0k	{}
9349	b3ao8zmzizwg57rhpu1sdt	{}
9350	36r9hw6zb09lzjihfviip	{}
9351	r42dzi14y2rg70pagcpj	{}
9352	869j2hlnw3je88sz4c3d	{}
9353	0v5m7p1cz1lehq13q1eszg	{}
9354	d5w2cla7hxjxkhp6499qnm	{}
9355	a301342s4mhxoyq0588x0f	{}
9356	4es4n3ps7uizej5ipueeeb	{}
9357	kzakna1c7lnp7vhclsp	{}
9358	11wyl19912peej0ulgpcli	{}
9359	r12om2fmd1ofs624h08mle	{}
9360	nrmsao3b8mt6795i9dvt	{}
9361	wwixnbhd3c1moie5exvnj	{}
9362	h3mxmirlegf0iwhgox1w5as	{}
9363	3pr4qeyczztnzi706vfo	{}
9364	15nsaof4sfnbf9dd9cgqzq	{}
9365	ti6grestjc8slrfeoxujee	{}
9366	k6c1qnf2j6k5t8kjqis1	{}
9367	ae0q954er1wg2lngraa2n	{}
9368	wwrhjq04auqobrzy2g3kkc	{}
9369	d7ddsaht1dmenzz51f75zl	{}
9370	gyuvbhq64ue5og9uoou28t	{}
9371	d0fuivhnxp8jweu19twvd	{}
9372	2nbs1ominfc4p31fy58g1i	{}
9373	3u858jw1356sx12stx42uk	{}
9374	3l4rzl8yzxwi9ircpyx6eq	{}
9375	tpmja7jx0thzn0jo7zwmzo	{}
9376	pwuh7ipn58dgntqkjmnv5	{}
9377	zaee7g1llqhtgnd4bp6jbh	{}
9378	yhokhq99yjgi3htnq3ji5	{}
9379	b41lpyr239g4o3xw0wleg	{}
9380	3mmjqja8rtpmxu9121fjzl	{}
9381	tbzqlyxyg1fv2vigh3ygxk	{}
9382	55m9b087g4c77pqszr0uip	{}
9383	ov39wcpukfsims30b2z7	{}
10434	2enh9o9ctutak7y30xecx7	{}
9385	dn828a4fw3ase03xui19fj	{}
9386	9mpnlhy9o9p9mz2dmbk5dq	{}
9387	yxvvn88rwoqtf6sowi1ig	{}
9388	qsosakjhybs3w2ijqjb3w5	{}
9389	mnsp02kpsnd64oh11osj4	{}
9390	n8m58xca9nd1udqeyt80qi	{}
9391	d2kax5qk7m2xyroy4a2ec	{}
9392	gz6ulmduz4k9j4k0bbw4	{}
9393	6mligzsssc52sysnvdciaf	{}
9394	i77ik8qecsb97w2q1oiis	{}
9395	pmwkrdj7fdpn3ri1v27wj	{}
9396	ocpduc1fi7sb5amq4breb	{}
9397	5ehou2tlusi546q3c1ldat	{}
9398	zf2icm6tozb4rf5i7wwt5p	{}
9399	mztqsluu0fnk3gtqt61ueb	{}
9400	mzh71ek8otf9jhnkv1sboc	{}
9401	4fikbvuqq0zw3fk2qid3s	{}
9402	dt3d5ehca1dsq9hubvvbn	{}
9403	qkmdb4yqxkm84dktm4c9p	{}
9404	dvbvnvswuwd1fne3oej9ov	{}
9405	wkkjcb1doh9z909cnkzk3s	{}
9406	milwsmufb6fzk276mqmq5m	{}
9407	at4sx4cvdqkexa4tvimv8c	{}
9408	ig92sb6h02myfma707qqn	{}
9409	92jpogh7fuem63t4c90b2l	{}
9410	01810ke8l2q12e8unl74xn8	{}
9411	tw7g8k828xsv9q39pz22xq	{}
9412	44mn14bc6ge5fxbovs2nec	{}
9413	cf5br4idabqlbn5dwbmpxr	{}
9414	7xzu2xr198arn6cbn20d5m	{}
9415	jb9yqu43rfyyjcs64g5z9	{}
9416	1vjcwccx9f6v52t5bomxf	{}
9417	j0dhqplrm99w35t55rb4fd	{}
9418	voi4j7jrh4cnt1hp7zet6	{}
9419	h4neji37wpkujuvt1sfbip	{}
9420	87ochm7lnv4glaz6pebf06	{}
9421	otxg3sdwrvlvz1x54iilxh	{}
9422	cx4r6nf2legdihoc7szxu5	{}
9423	g74ac8t9yjkeo7hyrt308	{}
9424	oyk5yw2h0s5jct9rm7fii	{}
9425	2jf3o2yqqgq045ryntd3rkm	{}
9426	z6zwqnrg47hl987y3jyrp	{}
9427	znxvrscnm2bsf4x1ahev8	{}
9428	yl8psyuw47c1djrth1sa2u	{}
9429	8yk5vo1wqc5ceew2j7ihu	{}
9431	c7j8iez61bxnbp9qx777n	{}
9432	dufjiszipecmhdhhx4u7gd	{}
9433	vn944zp75qvh0mv3nqpmb	{}
9434	bnq46qyv92okxf42lnn7t	{}
9435	v53gmexvl6iaskijge0g	{}
9436	aaldgom80yp4cd1kq10bw5	{}
9437	sjx752x2ge5xtolz462oq	{}
9438	wo5inkyk1eedajefidtt6s	{}
9439	c8x5jlpcxa6do95cknnscu	{}
9440	rppoi4iw3mrx102fr9v9cf	{}
9441	p914hhw748e757tl424g4a	{}
9442	4o714tfbbh19lkqdwygqt	{}
9443	38x3vkgpnflot6j1d3ldm	{}
9444	nvix1v2noiiitotwntdvq	{}
9445	px7binnx3nb0b4vvrzfg75h	{}
9446	vrnw3v7iew564li12xm9e	{}
9452	daaitf7lj6g6sttmdnf98t	{}
9460	heb6lzmji3s72gv2wwrpk	{}
9462	t4tuc85djjfbi81epanr	{}
9542	vmrgbyxgfibsx4nvj3miy	{}
9547	k1nqta70667368xvxkl9x4	{}
9571	12yrc408a4ed9q1not64g5j	{}
9574	fa8ecshqp2petnh7ipil69	{}
9579	kjn4y6s64rmg2hxcb75j5g	{}
9580	m5ouw5p9kxck9wngiaw25k	{}
9585	8uz3h6itiyfpdldlzs0j	{}
9587	wc4yt15uac684l7h6sos	{}
9589	7pxxt9xgcwin3d1zzv0b2r	{}
9591	6y0vdj0kq2yu51h6f2x7vo	{}
9593	cbmb7trxebvnelbz0qabs	{}
9615	26v1u22det983hfr1pn4e5	{}
9618	audhao9z8m77otcktjinmk	{}
9619	nlii9h43eednot1e2fm5vl	{}
9620	7nk1z31cpbsopk9xw1z6o	{}
9624	p719zel8xkpuztb8bubuq	{"{\\"quantity\\": 1, \\"productId\\": 17}"}
9643	qlyi5iwyygfq0cz4zwqc	{}
9662	rwz7h9a75lidk6gljgewns	{}
9709	nrjy2nbflfl4d82rp2uib4	{}
9889	yx0koku1ksge0u22cd4z	{}
9890	ys3pgcbryjor9u8jhc5b4b	{}
9893	rp10oby3yqjyyf683f1i2r	{}
9894	9i8ekt1yftusw5ugsaenok	{}
9897	nkriu1ahfdpy3vnszwefv	{}
9901	stsb5tka1mr1r06oc0bk	{}
9904	va4w7c0z19p67csbo6d2m	{}
9908	kespaw5he7zhtodiyvgh	{}
9910	x529tuq5xec1o6c7cb6jti	{}
9913	cmgus8mqevm0bic922r2na	{}
9916	lxygfpdof4igwt8ic2kdys	{}
9919	ypkaw3nf3jn0uy2iynl8lch	{}
9923	dhs86oubkuvros3l4dowi	{}
9929	erzqmq239uheeayhdrun9	{}
9934	zsjs4wx8mjqfgirr3we5b	{}
9939	qqalss52jpfx0pun1r3dk	{}
9944	m5z25sxja1b1jzfkjw5jkh	{}
9947	hn39e60m7pvd54zww39g	{}
9952	ojm7m40uuemow24w52wjh	{}
9798	xkt3anvny6q06qwky2mcw2q	{"{\\"quantity\\": 1, \\"productId\\": 52}"}
9799	8cux0ub6n0dzgckkfiy5bd	{}
9802	c66t3nww7dpsb7u095ud4h	{}
9804	p53opv02ucqd61c0htu06	{}
9958	05h65ws4ip5m6v9xqo77uyt	{}
9963	0g9vqdt7s44imkqqftitpb	{}
9968	004ab3l7r0m5ctgipwcycyo9	{}
9973	d7c1fqc1npwlkye7do2t	{}
8847	2o5h6sg4es5tcgmmvppbll	{"{\\"quantity\\": 1, \\"productId\\": 41}","{\\"quantity\\": 1, \\"productId\\": 23}","{\\"quantity\\": 1, \\"productId\\": 11}","{\\"quantity\\": 1, \\"productId\\": 25}","{\\"quantity\\": 1, \\"productId\\": 9}","{\\"quantity\\": 1, \\"productId\\": 47}"}
9862	wqzry57gxoje9v2zyazyfj	{}
9978	82ijkhi6qnyoh7kcgz2stb	{}
9983	792b063n5k6rwxwm0qq2t	{}
9989	n1yxo64jv3nlcrx5i9o8d	{}
9994	vth9ix2c7qqvbtwct6xipo	{}
9999	y9u8c2ocn5mybyheq78ql	{}
10003	m64feoxubw8e0wzpbvdm	{}
9864	y9pgea79dfaa7deksa5lz	{"{\\"quantity\\": 9, \\"productId\\": 29}"}
10011	l1ywjd83bsm43k9bwlvee2	{}
10016	qa86vms20nb9lholkv709	{}
10020	3p3mwkwzddegm8im8qly4k	{}
10029	yz9pk8a89eh4hbuwngugh	{}
10034	nhjb74wgrwcppvclqjpq	{}
10038	h5ijxnegtg9w9wl37oonb	{}
10055	dsavfepjmrbb9oabwwv9d	{}
10060	tbz02yrmd1rjfqt92iopf	{}
10065	w7xwiwxsmnp3psjm2v6s7l	{}
10068	a694ytx84h86x3j7ydwrs	{}
10072	pv0nwxtd458h9y7fesl437	{}
10077	6px5k8f8zekectcumz65ws	{}
10080	8v80opvdvw6e3vaq08s3z9	{}
10086	hbkxetxg28jd3vpeupg2ht	{}
10088	ayni4wgi2os81xick5di1	{}
10094	tg1gk27lj5kiiixsxy7ya	{}
10353	nexwkpojnqb4yczmo5qzvt	{}
10355	nxhktua6wqsfcgrpcqn8va	{}
9541	m87xujsn5w17pwtxizfa	{}
9447	saz5mvd1bxzjnqxbdh1p	{}
9448	tewe0ftvelc2ijw9h3g1d6	{}
9450	hcjfcmeyglq18coxadx4zd	{}
9454	f0psg7ikb1mewgkv2iae9	{}
9456	ov4wbd9rkqq3c9lbbixq1p	{}
9458	of5o0jwygdlqxpu16mcmyp	{}
9463	zs6hq365fz7owi21ykjpxq	{}
9464	5zvvvzgwlssvfqzcv8lx8c	{}
9465	i6ybuijh2jhvuqxhw02jse	{}
9543	xcojqf6rzsbx89m5haoec	{}
9544	1w3cwbl7l36fs6xwke91vr	{}
9546	jguklqdynjrcmve7oubvt	{}
9572	1jjukbnug7q6mzr290vu4i	{}
9573	nx00msiwx5m3cbp5bn5cb	{}
9575	t5zr5dd9aje3syok352cid	{}
9576	xw26mwqknsrh9ougzv7hw9	{}
9577	rv48z0a05z9z6zjjykn2zp	{}
9578	pk2jv9d91rmj46zidm8tol	{}
9581	i1lw17bhisrajcisvparrw	{}
9582	b7vovr8hk0whgzfwkf870l	{}
9583	svlvfldkakw89dvyg60ja	{}
9584	ax7lnscnsfimwittizhv5h	{}
9586	rvmd0gfyi2crv9e5hq8vf	{}
9588	yzcdtcp7j3n36b7yj827m	{}
9590	v3lfqe8az0kckq7xkvboqb	{}
9592	7fuif4fi8hmcn42jemhwe4	{}
9617	bawwerf1g59yq4qxgm5ktp	{}
9622	ugtktv802kbafh32jhrkc	{}
9623	gxbgah2kzp6teoefarf7sb	{}
9645	nie0p7of35golv9akz69he	{}
9647	inkeohlxsvekbp2tat5m8	{}
9648	wl26186py7ocus9fgo29i	{}
9663	jzdrwqwfom0giczjy7gd1	{}
9665	4o88eg06oy2unzsxuv9l7	{}
9666	a3g1ovjmo3i4v3shlskalw	{}
9710	yyvcdt6pzj6gultmgom4q	{}
9732	lt3xsy7dxtfeyptcldtyp	{}
9733	gpmn5e3swm8wx5j8yyujtb	{}
10356	6b0ahwatyc5dj7ih9sdm4	{}
10359	h3ndzn10glw4ubqmedqfig	{}
9863	jsq0njzxjenj6wnzff0fd	{"{\\"quantity\\": 6, \\"productId\\": 11}","{\\"quantity\\": 6, \\"productId\\": 6}"}
9891	792h6hetqqgz1w0p8fpire	{}
9896	2sbpswol9l93v556c3xpfy	{}
9899	k4imu3g9p2p93jfcdgi94v	{}
9902	3cn602tzkrtkqvkumkqv8e	{}
9905	v69qx65wc4daeury469bu	{}
9907	evqez57cyzcdt497cchlc	{}
9911	t51bgw1d7kjh1rhh264n18	{}
9914	me7sczbzt19vorgzvhtr1	{}
9917	a9evqeg9kvm4fjpnfkhvj8	{}
9921	g5uelfgyxblhk8b6ih83l	{}
9711	09dikcueribn46482mkrl0o	{"{\\"quantity\\": 1, \\"productId\\": 25}","{\\"quantity\\": 1, \\"productId\\": 7}","{\\"quantity\\": 1, \\"productId\\": 15}","{\\"quantity\\": 1, \\"productId\\": 9}","{\\"quantity\\": 1, \\"productId\\": 8}"}
9800	g2kaqfhav665o4mj4ekgd	{}
9801	pddpz31m9omvjlf94tq2j	{}
9803	s4orwxphqyhmut8ydqkul	{}
9925	tin5gmfsij75gtwxcmtw3	{}
9930	ol6yu55kmetjbr3c9x5r	{}
9935	jp3zsodzq1fpjijtjh1bm	{}
9940	ypuva4jo6sqvbhe91tp79	{}
9945	c8vnpp6wfmbwahs88iv0aa	{}
9948	vhb2s3jomdk7pkgs3wr	{}
9953	i8h0ct5r8doavdzqejpu	{}
9957	cmtefv2bw8xxwmyeue769	{}
9962	0g1lzklexjhprn40mt2y5s	{}
9967	tmg97li77tq9k9m0rpjc	{}
9972	w9moh90p3lc5kadnq6prir	{}
9977	hegfrpxz4aa2z0ot24lrs1	{}
9982	nvk8w98lg2nc77dc1m6q	{}
9987	evvtzynlizm430qhywm5ur	{}
9993	dzsh8pq6cvascklts802ba	{}
9998	37tlocnq01ywaav426d0m	{}
10005	2do0xvu55ejutxeotwlo9	{}
10008	t9cxo7lo338g2ycqcd0ikb	{}
10013	iq27b625kkhkalos71w8l	{}
10018	ilbuz0gc2nes6td8h8qdgk	{}
10023	12zkyh4nhagepa3o9vrr8ae	{}
10025	4idh1wd8swbide1yr6it7b	{}
10030	xzkqebga1ij2b5p1leqs58	{}
10035	molk0vlb5k94pqrd82q9aa	{}
10040	58n68pnbd28vgwyy9kbcq8	{}
10047	6l7yb1aww1lkgvf840ohms	{}
10050	hzaxbi19i5auhs39txrx8c	{}
10053	mclm5lk2h6e6cx3r6m5ttv	{}
10057	px1ojgcrm5vh9yb7a9f6g	{}
10059	f2zaqyaoj1ddxsa0zc4cq	{}
10064	o6ozhliv9sgcjks978u0er	{}
10067	bum953s5wsjk9xn78ghwm8	{}
10071	vyql4gez9hp4ye5cd2ew	{}
10078	7awgi6xr6p3izck2r82qah	{}
10079	no9jpnhml3sif6z17ytei	{}
10083	nre39dv58o9qfzgcx1mn6	{}
10087	964g3glsv09h5gs4qiqg2w	{}
10091	01lpxt7d6yntwan64sleslm	{}
9449	rt588pcrkryenwm3f3rlb	{}
9451	oj98xzw62cbn4800fhyk2	{}
9453	6hht71nkyevslihr3uuh6j	{}
9455	29k6eawd1gn8z618zrmg83	{}
9457	rihuxgs03srckdfnagmk3q	{}
9459	8wvrr6ybrkuz8uygsq97l	{}
9461	9l7nbjhzj3anr0hsm8vxvf	{}
9466	f9z6iwon0nk86n3f8bxv2v	{}
9545	1f5g3owkuctcfotpb412f6	{}
9594	4f84bat1423jchboam85x	{}
9596	st77c7eed6sq107env94c	{}
9597	juzhxer10juuaq6hbbtwa	{}
9598	qzcs08myrtg4lofkjziu17	{}
9600	5yb3d9lysgnurgu6canj1	{}
9892	v6e0fjm2yiz34jqi7c9qd	{}
9895	egy5i5na3xq6ge665nszc	{}
9898	k5qgd42ejjkkjhunhn6gar	{}
9900	3nbocowabsu9o84nsvafv9	{}
9903	f097qhmaepv8rq5mmlys7d	{}
9734	uuy0ko0rxqfyelb57hb4	{"{\\"quantity\\": 1, \\"productId\\": 26}","{\\"quantity\\": 1, \\"productId\\": 49}","{\\"quantity\\": 1, \\"productId\\": 34}"}
9805	geuarmnxuasv0tniq6qr1r	{}
9906	ijw9yg53bi95lsk3l4y98c	{}
9909	sijpa1ktaefr89g52doz	{}
9912	qzijum115w8kwxc5h6i2b	{}
9915	zdzjybwcsfd7fqtdn77r8f	{}
9920	ippp13wkxjvi4tayxoha	{}
9621	ijhl90bjf4pzbjt0cu0b7	{}
9625	7fdxiygp4a29suizyr70dt	{}
9649	mbxxrsdr2wmre656rva6y	{}
9650	duk3j9p6lz246now0dn14	{}
9924	sm0ofsoepy9pt26ugmw8j	{}
9928	gl6l07w8dr5desut2tsxbp	{}
9933	aa7ypkotytermay84a0j6b	{}
9937	sq176gcww5nnxair4gacyn	{}
9942	wtwwwrwq67fg9zi83cfdri	{}
9949	ukzmie9gc5nrro9bf2oyb	{}
9954	7xctybsa32kab2kp0o4yki	{}
9667	9f3qfizp6pclo6j00bgpzq	{"{\\"quantity\\": 1, \\"productId\\": 18}"}
9959	8c9od1slgbf76f97bhycer	{}
9964	f72kqmzax385l7k8e9fnaw	{}
9970	5alhn08s9ly280llj65do1	{}
9975	5kgz1fyltuku5i6qng3ygk	{}
9981	grpz0ly82bsniisoip390p	{}
9986	um7r6fbpkghd8z2kuxrli	{}
9991	amsm2kdjyos2id23a6ylke	{}
9996	9b8dfi2allhl46fnebrp	{}
10001	ruowo4f4vt0ggn2gvodz4j	{}
10006	oscki2yhbsv0weeoeullo	{}
10009	3qbn6kk4lllpumfd7esc0n	{}
10014	zmlgkb2qnbllrkomcz7i9	{}
10019	kyzqoxqnzxca18b0sefe	{}
10024	8deukrqxtbfry4qfvpd68o	{}
10026	kv7ao4n5dqimgl4yo454ri	{}
10031	m24rl7qddbqemzk17sr66	{}
10036	dtygzms5ix6c3mf1a1dtbr	{}
10039	qh1nkfcz8qmhsclk7w2eoj	{}
10043	cbn6yrbioa9nn3420e5noh	{}
10046	rrwz2u2erxgjtzvgppcbpk	{}
10049	nbqer1qqpdx3nii5s4nzq	{}
10054	9fuhxcv1ppukfnqq8nhtlf	{}
10061	qvddd5p4lkrvsg28bfoou	{}
10093	e7ep84bpwvpthrok34wqgr	{}
9712	ghflh0e0tgr1sjewu5u6bo	{"{\\"quantity\\": 1, \\"productId\\": 30}","{\\"quantity\\": 1, \\"productId\\": 23}","{\\"quantity\\": 1, \\"productId\\": 16}","{\\"quantity\\": 1, \\"productId\\": 52}","{\\"quantity\\": 1, \\"productId\\": 35}","{\\"quantity\\": 1, \\"productId\\": 25}","{\\"quantity\\": 1, \\"productId\\": 26}","{\\"quantity\\": 1, \\"productId\\": 49}","{\\"quantity\\": 1, \\"productId\\": 29}"}
8805	fif84907bkf0ofi82579	{"{\\"quantity\\": 1, \\"productId\\": 39}","{\\"quantity\\": 1, \\"productId\\": 6}","{\\"quantity\\": 1, \\"productId\\": 24}","{\\"quantity\\": 1, \\"productId\\": 21}","{\\"quantity\\": 1, \\"productId\\": 45}"}
10360	ixy89zx57m979pph8rci4r	{}
10361	p3ktdq4jt7k849qaf74nz	{}
9918	u1c9dbu4aie14x1txyhwd3	{}
9806	k6dz25dam6nhp3fk6u2c9s	{"{\\"quantity\\": 1, \\"productId\\": \\"36\\"}"}
9865	h26zmb1r0b5ey0c3zs4e8l	{}
9922	nkhq3ucj01oyuacwxfnqoi	{}
9927	zty7tsqsn7vbq3070a23	{}
9932	8elfw7759kv4b8dtxbmows	{}
9938	eaw5x5y179ka2ngq6kiefw	{}
9943	2v05yt2ysfpv0phvxd9lac	{}
9950	s821zthf1j5nkuvjejg7f	{}
9955	5in2mdr9r3ubg874hqpmwt	{}
9960	8kn8iwj4kuwmwbp3qcs8b	{}
9965	a7jygoni9t5gqy5hklbqhm	{}
9969	sjboeqmsld954yztibscp	{}
9974	fvsxbo4uq5hqdzb8wpbi1m	{}
9979	1e0xzhtzvdt72p7w8mn2oh	{}
9984	0l21lge0spakw3ghycktld	{}
9988	pwcx38f8v3tijvf8b8q5s	{}
9992	7n7g00o1nkj06mpik3lkned	{}
9997	u2jnqc9gn1oqjdk3f8koh	{}
10002	xu9o7v5ovtrp8511k9sp5	{}
10007	kfuknvthnulkjj14g8tfq	{}
10010	k2f8u6h7kg9thfrhmz77bs	{}
10015	6m1icljvrodn70tt600q1s	{}
10021	77t0d6i2wxgffeynk0afs8	{}
10028	o96zdezu5hwrh6x5lneab	{}
10033	ylvrq0xrvhh9id6cu0hjyp	{}
10037	cegf8tvxgqgvesje9pmrb	{}
10042	m5hc4hvuzykofm0bd0o61b	{}
10044	hy1lvyh0rdbfkp281r2xk	{}
10051	vdl2vmz2bf9bmbk2592hs4	{}
10062	myboinsnwhjcdajwmcybdg	{}
10069	rvd2f86uprmlf7vwzqgaed	{}
10073	inzn4q9vali81tp40nyquc	{}
10076	d2px2lgyz7jbq29doq88y6	{}
10081	jt1y5q3qffc446h0fu0m32	{}
10084	5wnmsok33ywpcmkb3xei6	{}
10092	dhjrlg0u037bs9zv2megd6	{}
10362	xundnn7ukbmurgebnwbqc	{}
10363	rgbbf9vqenala8kib7k4g	{}
8785	tp0o4oedbjjd96s2mmz4p	{"{\\"quantity\\": 1, \\"productId\\": 40}"}
9926	spnoknxsy68orj2juj358a	{}
9807	yy6uqj258xrn4tqd3lv0h	{}
9931	ni48z1692na6l1lpid46	{}
9936	0qnq4z1puqtk2cw65mwy8ir	{}
9941	xqh6h5yojmkatb3lfai8hn	{}
9946	4kkdblrqkxat00bp3fb8ug	{}
9951	w0mgcg93k8g3t981e75db3	{}
9956	qnzv72shqwltgml67co3nr	{}
9961	pp5gf608zpd56lj0db0b9k	{}
9966	9o2nit7k398o6d7q34rl8	{}
9971	4iibcay7eve1c701a80cbm	{}
9866	g4e4vraxvhg7nxb5kx01qq	{}
9976	gzkn0z791f52dyaagbxjqz	{}
9980	nejfq9kzc1brw8692hoki	{}
9985	zd6g6btyob8zih1w6kg7ed	{}
9990	oz7d3409tekpfzosqp49s	{}
9995	psn2onotccg8mkxa1opf24	{}
10000	i2hagkcfsfd325913xylf	{}
10004	94uadwf32vgs8yrrifudf	{}
10012	6yjl0fuxlvt1ysk33cw7n	{}
10017	2ioi8h8lkrcpt0egk8wigm	{}
10022	g7teiast1yclm5wum23sef	{}
10027	hnzrcodcpb6guga3gajja	{}
10032	wvpjb3erp4nl8g0xtffiid	{}
10041	w5g44mpf5ze09yfr5mozxan	{}
10045	plswwga35asl2jwv99npg	{}
10048	ythoo27q2bsa0saz0160q	{}
10052	neyqcevha2qh1ugjhzlalg	{}
10056	cmzzm886c5jkjgf4n8czg	{}
10058	ymbv8k53q6ym6nc0s1lh	{}
10063	ohk6fwoxfr0livp2lanz5n	{}
10066	jkbnd0en1hinxwprrlxw	{}
10070	afkofo89snmfr5x9c6mbh	{}
10074	sya93ymw77dmd61rwfr5mh	{}
10075	npkupoq6n3m8u0ew8ij20g	{}
10082	lmg3ko1af7eoedearl0d8o	{}
10085	q0z2sf9ndpsv6v3fxzmaqa	{}
10089	pekqmu5udgaf7523hkttl	{}
10090	p332f6keyokmnfeqkk33d	{}
9808	luu2jxtmf8sobzs0ks7zmf	{"{\\"quantity\\": 1, \\"productId\\": 6}"}
10435	me54vsvkj6p2y3msrc8e	{}
10364	8vnzbn2fb7k92kfwilh89h	{}
10095	vpglprjgc53ny6jlxp184	{}
9867	bbo20mmhffmpysydofsp1o	{}
10100	e7kvn8q2cpqwmb6954wqr	{}
10104	gcf94nue4zyhugsoo0sei	{}
10109	1zq1iahqkg6hrskqmpgeh5	{}
9868	58z48btzqub5744h8qikwv	{"{\\"quantity\\": 1, \\"productId\\": 49}","{\\"quantity\\": 1, \\"productId\\": 52}","{\\"quantity\\": 1, \\"productId\\": 31}","{\\"quantity\\": 1, \\"productId\\": 35}"}
10116	rhnc5blwmak4b7oytszyui	{}
10118	86essgvgayw6wribfad0k7	{}
10121	eftmfoylocm89l6ok5x3xs	{}
10126	v6meq3bvh3h54j4g4lb5qg	{}
10132	v2s5rtxt4ofcks7fgvevde	{}
10136	45qv2mjva7aak50v0t5ycp	{}
10142	gwgrhqc1odzr62m86o57	{}
10145	j1v8yuwqmzj1sim1b677r	{}
10148	dm9i5wupj3a7p10w7y98l	{}
10150	ueiyrm3hmzq0iqhj0b5xjg	{}
10154	ffx2nwbbaxg6ue18mx3l9p	{}
10159	ck7mpol9ux98ri4rmxw6w	{}
10163	6h41qvagzwrjowblo6wmp	{}
10165	wnokkrflw454xdge2j7m	{}
10170	kn9rqb38scsko6bdrjcw5h	{}
10174	ao01x8o04gpkiibbusyuwo	{}
10178	aoye9qlku48lx55ozrjejp	{}
10180	6n8xp2310ivew7kd7pj2ml	{}
10184	z3lwt48b5dm30jpmbo81g	{}
10186	tz1tx5cydwmzfluk1x6v5n	{}
10188	97iz6vsdvcbep5jin5q3lt	{}
10194	6epjddgoh85nht6tgbdgtn	{}
10197	uz5kswaz8j7hv3rswcboa	{}
10201	nt1mo01liyvudsqtjuct	{}
10207	xeoj9qgnqt7w609cjk11w	{}
10211	7tueff20jfceb9rsl9abf5	{}
10213	1ub1fi2a18cmuguk9qem9b	{}
10220	294s0f25e1uqg88795axmb	{}
10223	ivf05tv9z2clgz7b7c1i5n	{}
10225	i64euhiuocj3j1dlmjdf	{}
10232	udqtts8zs8ao9ha91exxmp	{}
10235	4cfhdph4096laufetv3lfc	{}
10436	dabxvigclei55j4j61fdiq	{}
10366	9q6t5cfgefq46g5fgy8vl2	{}
10096	in63jlcyvaf0umq54uowg	{}
10103	fea2faz34xgdreqnd2zlkr	{}
10108	gf235s1mferrqctmasbjj	{}
10112	jzopj5son27r7f5rtllrl	{}
10113	3pmn6ohfnknn3t7ftf53um	{}
10120	b602jxy1txqq2o1zid58v	{}
10123	ajhxh4imnqbdhumih0367u	{}
10129	fanqt1houuj4l4bnvlibhd	{}
10134	w9mxv4k4x6ev8vikjriccq	{}
10140	rrmh5vvhip8j8cl400nc6t	{}
10144	cm958dgcx6stofub3vzzjb	{}
10151	yx2b57cxg3bynpxwj6oczi	{}
10156	isz0xqpivj0pmx56d7s889	{}
10160	nv3xrvw25cs7e10vmvj05o	{}
10167	hmff7jda6tcfrflndw8t2p	{}
10171	2ltdk5upvj5vz3ebnpydk	{}
10177	di3isunojl4sny6hsg1w	{}
10181	9kwm485sdfl0unrcivxg	{}
10191	5px0xnmc2umr9uzx3n13j	{}
10192	qq4z1e5p8eox82h0k6d5j	{}
10193	yk7jborrnqouipsdz0ht9	{}
10200	ohfy15o55khos7p7707nl	{}
10202	j7usbfdqu3ztkip0wked8	{}
10208	cf807az8w28i4px4ejidl	{}
10212	6giywqkwssjcravplktl9w	{}
10216	7g0xpjnpi58vim9h6zxkhl	{}
10217	1k4jq0sbqi1j806wa5h7w9	{}
10224	hepz6qck88po38h5qp65ob	{}
10226	hagzbhnnhced4pviqd0e7	{}
10229	7in7kyvw0efoe81ub4od6d	{}
10233	bz999xqyfib05fuo7iaktp	{}
10367	tw8ydlx1mcikfx2c994hnp	{"{\\"quantity\\": 1, \\"productId\\": 15}","{\\"quantity\\": 1, \\"productId\\": 16}"}
10369	h3iz9zvuzaq0yce4doo0du	{"{\\"quantity\\": 1, \\"productId\\": 37}"}
10437	1jhs2om2ehjh8io7ifbqnp	{}
10097	77zle0lmxw9ixjnvlyd1u	{}
10107	4oz5z5vdv72r56kyo718wj	{}
10111	akb2b4890ci384gz0zq6	{}
10114	1wt38e976k394s8ohh20yj	{}
10117	g16ojjs3elnmvogp3gmlp	{}
10122	ftu4ss3fh9m2iyojwo52ee	{}
10127	slibojxcj0n7zz79499jib	{}
10131	vhk6qa02d173abtjy7yx5	{}
10137	cu83fmeeuclmjamzsmlg7p	{}
10141	chrwh4bow6wzspful5h8hn	{}
10153	72qnhsfj9cqzsw29gppg8p	{}
10157	s4mgetdw7aeq6xmrshuues	{}
10161	linlfsx7qf7i26q7ap2qr	{}
10166	jz7ozujva6oirhj93vkt	{}
10169	hlyznrg5136p1tgwx00wpl	{}
10172	qhi7qd4jdlhvlxo7upf50b	{}
10176	1e4z2o4xyet6yv0flfnvqc	{}
10179	og1tbzmsrk8pqvpigkudv	{}
10183	wfc4gocct7fa0ob7nn1il	{}
10185	noc8m95r7s4763kd6mprk	{}
10190	u6oc5c7gfdegq3zdmer5v	{}
10195	yr74zb97zpvjbfwo92shd	{}
10199	0ngqpjfbh6czihocpghx4	{}
10203	y29nvatit2g52olpcnyzfa	{}
10205	7pwc5bzmink0erfha301x6v	{}
10210	11324d4mvvvhntfjl2i97p	{}
10214	aeftxkmcbfqaw2ylf1o1ut	{}
10218	4712mhlfi267gwwlhucx5b	{}
10222	jhv4qmai0pwckm6pxbmrk	{}
10227	6rxh3cppkpwgd18qbyur1a	{}
10230	7i4rzxkdgbrr5af1t7w5ln	{}
10234	xoys1jqkkzj6djlm66k8ex	{}
10368	s2il1egezadtp2dl5me38	{}
10438	zw8f44g4ehf2e5qhxk0k5	{}
10098	x77aih9y5epey3taupova	{}
10101	jcbl4tm20he8bzco9738to	{}
10105	o7rnft0timbw0tuljwq2qa	{}
10110	ukjhopy49ydx1x7lfu3wm	{}
10115	nv9o967edll6qjqh6gifxk	{}
10119	x23cufrr8dfoyitz1z81s	{}
10124	gbi2a0r0ctte345fh29ods	{}
10128	4enc0iqh0in06jtbuzcd9	{}
10133	bt51tj5x9g9pcol46gma3	{}
10138	1pwe1h7ab53ekht0nfsfaq	{}
10143	l0txehgc7b5xh8etv8us	{}
10146	f090bomaxkwgc9lp5z32r	{}
10147	6193x39tv5saqcai0ggp05	{}
10149	iddb8o2oil91pa02pn3ns4	{}
10152	4w70w15oqkccaxkkpegslr	{}
10439	7c1btn2oywu7hydm076m1g	{}
9146	gs8wvlwooujhrm6vsvjomr	{}
10099	dgcyof2p857w1ft9thpfio	{}
10102	f38ez40qdz8fpkoekyr2hc	{}
10106	kwdbdrcs0yhccfu25g057c	{}
10125	6kq2cqnakpip3t6da085sp	{}
10130	ooo7k6j6j4dtzk0t1cyvqk	{}
10135	pngk9xyknwoh2kbm998bu5	{}
10139	y0935yhf8prndzdnjqxga	{}
10155	qegoia3vgs8rr9jjelfpa	{}
10158	lqmvoks7fvdknax2np91qc	{}
10162	pw9t63i13v42w10qjhn79	{}
10164	5d4wkv6agug4xkpsl0wyi8	{}
10168	bu84fup32yswpsmwf6jgfi	{}
10173	u5grnhe1rgu25n0ddan9	{}
10175	drn6df28j0ivz91u0zu3re	{}
10182	kb9scb2e4f8oi11ec7zxgj	{}
10187	coa5atepxlsipevogys0qi	{}
10189	a1drrevu01lijaeoxnsuwf	{}
10196	ugldb86rtr1b0nucwd6un	{}
10198	o5s386imqqxcevgi2hsud	{}
10204	2zekgbw8he16kjmlwkay04	{}
10206	jygifrq5j2bz4fj5mrav	{}
10209	0x5gqbtmgfnipg3dm063utr	{}
10215	vvorprwga6ru7etyg3hd6e	{}
10219	ruv7h4bleqmj4b11nav5sb	{}
10221	5nnioys5i78il4n3j4qdn	{}
10228	34dyk1zj8vu6gbnfyx9cac	{}
10231	bv9km4lxm8wva28j0xblw	{}
10371	y22spx9mnj3uu8yabfe51	{}
10379	y6guhjyubkpn7gqpi2s2zj	{}
10381	x3gozyhrsjnmmsusi6u0s	{}
10440	xlimivgf3298nskawnrwn7	{}
10370	bqb64c4hb5ythwk605vu	{"{\\"quantity\\": 1, \\"productId\\": 7}","{\\"quantity\\": 1, \\"productId\\": 18}"}
10441	0hms1ywdzkfbkojs2i19o1	{}
10236	wpo22a0gwiaotmlfl1qmn	{}
10237	9ulsf6x3h9u0qa4lodjm2zh	{}
10238	mmoqzxcu6rhbpnwzqeghbm	{}
10239	7orx8xpio1mumzctm7npzs	{}
10240	f0hzv55hc38zaq519q5xx	{}
10241	fmu0k16c23v43t4cv27n17	{}
10242	k0jf62pej9mgemjkv47x1a	{}
10243	12q7tftyoulq20crvz712ya	{}
10244	7ifm251ju364ske8gpl5bc	{}
10245	ehm435x10wn245sxvy0a3l	{}
10246	rluwxjjxx93nt7fsu0kqp	{}
10372	ubyjlc1p3octieupya0lh	{}
10442	qofycu1wuwgs71o7v7f8gn	{}
10247	m0ih0jb6lydbrwuj4fmi5m	{}
10248	vsiwtzydcx9lxjdgjsuiv	{}
10249	z9je54v0b5rjsv2hhip8ca	{}
10250	q32ndf6co1a8c14n4ae7l	{}
10251	hc01jwxoo8vbmqhktppjoe	{}
10252	jevl0zimpzqrjxteyew4da	{}
10253	8gxbas62l4698oyj6qokfb	{}
10254	3xltaz58zv9xnlbkbq0pg	{}
10255	ex0ipnucewhy0dxnbdhsq	{}
10256	b1zmh6ixgoqx14n848l58	{}
10257	4z9jdn2e65tu19a06dfey	{}
10373	et8ctfp7kfs4c86j28eays	{}
10374	gd171iiag1ihqu4j65dth	{}
10383	0j4t7bp24lxbs8ohg7evvyn	{}
10384	b9pr9atayvpsfad5trk	{}
10443	f3pyfw03vajfudgijkigp	{}
10258	g4xumnuyfqfcjurfpj6ahr	{}
10259	rmh28i5nb2ssoean850kb	{}
10260	8kjvo5oh3m35co1anj1a8x	{}
10375	p3r0hlobi7q2eyy331qsa	{}
10378	usdcqcanasvax9fxexses	{}
10392	oz1sj860gbak814kpx29	{}
10365	q8rg3e0z1e1sqx0mlnsjh	{"{\\"quantity\\": 1, \\"productId\\": {}}","{\\"quantity\\": 1, \\"productId\\": {}}","{\\"quantity\\": 1, \\"productId\\": {}}","{\\"quantity\\": 1, \\"productId\\": {}}","{\\"quantity\\": 1, \\"productId\\": {}}","{\\"quantity\\": 1, \\"productId\\": {}}","{\\"quantity\\": 1, \\"productId\\": {}}","{\\"quantity\\": 1, \\"productId\\": {}}","{\\"quantity\\": 1, \\"productId\\": {}}","{\\"quantity\\": 1, \\"productId\\": {}}","{\\"quantity\\": 1, \\"productId\\": {}}","{\\"quantity\\": 1, \\"productId\\": 42}","{\\"quantity\\": 1, \\"productId\\": 20}","{\\"quantity\\": 1, \\"productId\\": 10}","{\\"quantity\\": 1, \\"productId\\": 4}","{\\"quantity\\": 1, \\"productId\\": 47}","{\\"quantity\\": 1, \\"productId\\": 24}","{\\"quantity\\": 1, \\"productId\\": 7}","{\\"quantity\\": 1, \\"productId\\": 43}","{\\"quantity\\": 1, \\"productId\\": 37}","{\\"quantity\\": 1, \\"productId\\": 25}","{\\"quantity\\": 1, \\"productId\\": 48}","{\\"quantity\\": 1, \\"productId\\": 9}","{\\"quantity\\": 1, \\"productId\\": 39}"}
10444	ivyne0n0cthf55wuol8lkg	{}
10446	i0yjzjw97gj3u4ow2t046o	{}
10261	eptpkf9el6nx6cud2q8ly9	{}
10376	dpmjqeyfuhf5sjm5pchlk	{}
10377	tb60lpdi99ne799n474ptv	{"{\\"quantity\\": 1, \\"productId\\": 30}"}
10380	vc3zeqkij1j8qv9xrthdlc	{}
10385	2n8ww5x15gkdw9wbsy6ej5	{}
10386	k5cgta9tspd42tt20l1owd	{"{\\"quantity\\": 1, \\"productId\\": 40}"}
10387	gq66u18iejor68xyuydy	{}
10445	2gwa6ojy345joa6r9vybbl	{}
10388	lx39vdq3f3ker6oa925dtp	{"{\\"quantity\\": 1, \\"productId\\": 23}","{\\"quantity\\": 1, \\"productId\\": 5}"}
10391	urv3rxczq58xv0y0uhbry	{}
10262	3081hn2tshhvcgcdcy0pbp	{}
10382	9vbn1nk9ryfdf3oih7d4r	{}
10447	5x00r6g3vldfad19w1mypc	{}
10448	c2wc3tttpotghve51ezwzd	{}
10449	s95xwiyc1odkcxhof25n0t	{}
10450	pkq8wpabvt7hbkcdy43ber	{}
10452	sed9gut1tel3us9ncc8hti	{}
10263	wxy1n8tyrwlpsmuidgmq1d	{}
10451	0jltb8ubpo8wtyynx5zijms	{}
10264	v9488fs1jym0zt30ac9bii	{}
10389	tmhzl75w2i9ju96haoucf	{}
10453	ace45eanivnz50wpjzch	{}
10265	y450zkrckop3afqd00reo3	{}
10454	47nu2bot8z2s2bq1bjcvnp	{}
10390	704fy245gel95mhdv8t6le	{}
10266	2h4kfhr67odql81a0y1trj	{}
10393	7xz99nkixvifh65qw7e9t	{}
10394	ot1pizekcfr582pijy90k	{}
10455	e1hkp518nnop7ofugo9mqr	{"{\\"quantity\\": 1, \\"productId\\": 21}"}
10456	2iy60i608yeajbrd18pfsn	{}
10395	76wqji5kk485458avpgk2g	{"{\\"quantity\\": 1, \\"productId\\": 20}","{\\"quantity\\": 1, \\"productId\\": 33}","{\\"quantity\\": 1, \\"productId\\": 11}","{\\"quantity\\": 1, \\"productId\\": 7}","{\\"quantity\\": 1, \\"productId\\": 44}"}
10457	f0z3iov7mj3kqwzxuq00o	{}
10458	zqgvuzm6b3ftyobzymb89k	{"{\\"quantity\\": 1, \\"productId\\": 6}","{\\"quantity\\": 1, \\"productId\\": 4}","{\\"quantity\\": 1, \\"productId\\": 5}"}
9258	a8ybjtqk06bxs4brudojcr	{"{\\"quantity\\": 1, \\"productId\\": 32}"}
10396	xoa6wkzel2jap1me3gtmu5	{}
10267	qi1nqciiqbrgxorpjqtn9j	{}
10397	lq1qcwon67a3dw18rwjak3	{}
10459	gesxmv3z4y53euplaiyp0q	{}
10460	bqvdgrd24zb61gx6409nl	{}
10268	5r08gpzz5zef18aiofz47n	{"{\\"quantity\\": 1, \\"productId\\": 51}","{\\"quantity\\": 1, \\"productId\\": 13}","{\\"quantity\\": 1, \\"productId\\": 52}"}
10398	n4xw2djg4mdhndlxtf0i7	{}
10399	7fhby8brhlvfo6aw0nkzf6	{}
10461	bnpq67x7i8kr7fgvpumdt	{}
10462	1wo36enokq3u0aorkth8r8	{}
10269	6ohbakmxvw8xjmiinlm0o9	{"{\\"quantity\\": 1, \\"productId\\": 4}","{\\"quantity\\": 1, \\"productId\\": 43}","{\\"quantity\\": 1, \\"productId\\": 31}"}
10400	27t6is1s99tf70ifxdwgc5	{}
10401	4s3oe0qwhzve9llci2ptkj	{}
10270	lwp6011szwpq7te8xp89x	{}
10402	37d99qoyfyh12onvofa9hen	{}
10463	9pgvnun816ok9vo5ehhdtg	{}
10271	ow028zkpzol0351a99wksn2	{}
10403	yyn9mzoculkwien92x2vrt	{}
10404	ensckj5cc5a8b3oknvz6	{}
10405	ehh56icrcmg4cmr6juk7cr	{"{\\"quantity\\": 1, \\"productId\\": 22}"}
10464	emdd5xkf32po9q6y1teesf	{}
10465	8vznn43ujkpv6pb5y7buli	{}
10466	waspelfjymvwk33b0snf	{}
10272	t26fmnxc62l9t5e3pxi56w	{"{\\"quantity\\": 1, \\"productId\\": 32}"}
10467	z32w2i7ffzwbn3eijfuo	{"{\\"quantity\\": 1, \\"productId\\": 39}","{\\"quantity\\": 1, \\"productId\\": 43}","{\\"quantity\\": 2, \\"productId\\": 3}","{\\"quantity\\": 1, \\"productId\\": 42}"}
10406	agghu4zdl6iclle1btv29	{"{\\"quantity\\": 3, \\"productId\\": 42}"}
9809	7uhyyy4plxkhgsxursfc87	{"{\\"quantity\\": 1, \\"productId\\": \\"31\\"}","{\\"quantity\\": \\"1\\", \\"productId\\": \\"30\\"}","{\\"quantity\\": 1, \\"productId\\": \\"32\\"}"}
10273	xrnq0y0g47m8e7h6oeyrf	{}
10407	n6d2a5bmpuxc9463lnn1b	{"{\\"quantity\\": 1, \\"productId\\": 4}","{\\"quantity\\": 1, \\"productId\\": 18}","{\\"quantity\\": 2, \\"productId\\": 41}"}
10468	kgt9k9vp22b6kecszpee1o	{}
10469	tn3lplqgbeg2mrnphx070x	{"{\\"quantity\\": 3, \\"productId\\": 37}","{\\"quantity\\": 2, \\"productId\\": 5}","{\\"quantity\\": 1, \\"productId\\": 9}"}
10274	955lobb0s4edqbvgndwg6f	{}
10408	qp57ui8ejcfzi948iylupm	{}
10409	iqgh5vf73y9pqbv48lzt7	{}
10410	lkc0rawyh8rdhcuwy0plkv	{"{\\"quantity\\": 1, \\"productId\\": 14}","{\\"quantity\\": 1, \\"productId\\": 47}"}
10411	fw9pv8p47cp1uwuhsbtjnr	{}
10412	ea6uxswhzc29oy15wpcmd	{}
10413	t6dmgamtvs8d8uix5mc9f	{"{\\"quantity\\": 1, \\"productId\\": 47}"}
10470	k0692qarm2odyjxqbjdmt	{}
10471	avh93xas5ijx0iiui6qx4	{}
10275	ozddn0isgorwzdqmj7up7l	{}
10414	i0819iightqkrdj2t3j2l	{}
10472	hd0bbno6i653p81vu228yh	{}
10276	kmtnnn395e8ea8zupch086	{}
10415	gp6xnwuumqvrl7m36adc7c	{}
10277	dgb4qhsq3ye7xi2xx6zb94	{}
10278	iifuvirbgti3p5lztgc9gf	{}
10416	lkjqafrjxy8gzf3rb49gfq	{}
10473	pg3qczn5jnagw6ocm7gdws	{"{\\"quantity\\": 1, \\"productId\\": 15}"}
9384	ltpf9yuqkdpsmdl8igbxqn	{"{\\"quantity\\": 1, \\"productId\\": 16}","{\\"quantity\\": 1, \\"productId\\": 19}"}
10474	88253di9ac5cf9b6po8kvf	{}
10475	74la2uzj4kelgzvsiqu2ro	{}
10476	yx5xmhe4vds0yve49hxk4d	{}
10279	r1h2we863pmoxqdjxeddjr	{}
10280	zfdx8fzkbiftemax03tati	{}
9810	pf4k88djjwfnjk0tasqfpm	{"{\\"quantity\\": 1, \\"productId\\": 12}","{\\"quantity\\": 1, \\"productId\\": 6}","{\\"quantity\\": 1, \\"productId\\": 45}"}
10281	lss62ntr2jdbt0ty6ih9hn	{}
10282	114p221qsggmbj3s6ieza6	{}
10283	hut74taczce28twv3c3b6	{}
10477	ccpqqegn42h07j6qvk8vefd	{"{\\"quantity\\": 1, \\"productId\\": 12}"}
8291	tg1il2r13qundws2yr8eq	{"{\\"quantity\\": 2, \\"productId\\": 4}","{\\"quantity\\": 1, \\"productId\\": 15}"}
10478	6ndmuzazuj7tc2ih7rqphn	{"{\\"quantity\\": 1, \\"productId\\": 49}"}
8287	oakdqq3wmws04zq5e0sdo	{"{\\"quantity\\": 1, \\"productId\\": 22}","{\\"quantity\\": 1, \\"productId\\": 38}","{\\"quantity\\": 2, \\"productId\\": 4}","{\\"quantity\\": 1, \\"productId\\": 49}","{\\"quantity\\": 1, \\"productId\\": 30}","{\\"quantity\\": 1, \\"productId\\": 21}","{\\"quantity\\": 1, \\"productId\\": 16}","{\\"quantity\\": 1, \\"productId\\": 37}","{\\"quantity\\": 1, \\"productId\\": \\"37\\"}","{\\"quantity\\": 1, \\"productId\\": 24}","{\\"quantity\\": 2, \\"productId\\": 20}","{\\"quantity\\": 1, \\"productId\\": 53}","{\\"quantity\\": 1, \\"productId\\": 13}"}
10284	fw7jferyjxne8gcp01wyb9	{}
10285	09i7p0caaezzxc3rz6zee	{}
9811	27k2qhhlm7k4czsk2q7fhf	{"{\\"quantity\\": 1, \\"productId\\": \\"44\\"}"}
10286	1yb8m3k4ipjm7e7vn1yzq	{}
10287	mxm0v6m9f6ibp384hf44b	{}
10479	cnst7b4oswhs3bvw577fp	{}
10288	2dqh3276b1yhh7ix6md035	{}
9812	uknb4g7otxm71f9utqzh9b	{}
9813	mlv3lvbtccbphxez7wopae	{"{\\"quantity\\": 1, \\"productId\\": \\"41\\"}","{\\"quantity\\": 1, \\"productId\\": \\"22\\"}"}
10480	gycueoj1bhflnufgi0mhm	{"{\\"quantity\\": 9, \\"productId\\": 44}"}
10485	0viav48uvfochql5owkff2	{}
10486	nlysf01bcops0v6r7rtaws	{}
10487	jtz5aoxud88qp4pfp4a4w	{}
10488	ulil2z04yte76mqruug4b	{}
10289	7l0gq6mr0z3htndrwrera6	{}
9814	hnjgrw2bty8r2vl0jhg1bi	{}
10290	42ji6egc26rxs93jq9j4	{}
10481	uqwm1r73c58em290o29bf	{}
9817	kzuon06vqjduiz8upvtqcc	{"{\\"quantity\\": 1, \\"productId\\": \\"33\\"}","{\\"quantity\\": 1, \\"productId\\": \\"11\\"}"}
10490	p75tm5anutp7crs2usf1m	{}
10482	eren3q5zh1etxigg46lc9	{}
10494	p02grdro2xlbs577lvxj5i	{}
10496	kfkp6717gmk5fbi4tv7k8	{}
9816	r1e6dtonvzs3sojz5rtxd6	{}
10483	nijwznrodkogqcxv2gxusf	{}
10484	qet1gkv5vp341fkl7z6ji	{"{\\"quantity\\": 3, \\"productId\\": 36}","{\\"quantity\\": 1, \\"productId\\": 21}"}
10291	xa0iz8oo31smcfbb7dyxk	{}
9818	0tfr0da4uvfhrj8ep8wo7v	{"{\\"quantity\\": 1, \\"productId\\": 3}"}
10489	pv9kdmfd8pcxxwic08au2	{}
10491	ygywso1wqhuzvsfmdesr	{}
10495	0mgsh2xqqys9h3nbzfh592b	{}
8421	6okj4nr8ye27qnsefab8u3	{"{\\"quantity\\": 38, \\"productId\\": 38}","{\\"quantity\\": 1, \\"productId\\": 20}","{\\"quantity\\": 1, \\"productId\\": 18}","{\\"quantity\\": 1, \\"productId\\": 31}","{\\"quantity\\": 1, \\"productId\\": 42}","{\\"quantity\\": 1, \\"productId\\": 11}","{\\"quantity\\": 1, \\"productId\\": 12}","{\\"quantity\\": 1, \\"productId\\": 7}","{\\"quantity\\": 1, \\"productId\\": 3}","{\\"quantity\\": 1, \\"productId\\": 41}","{\\"quantity\\": 1, \\"productId\\": 51}","{\\"quantity\\": 1, \\"productId\\": 40}","{\\"quantity\\": 1, \\"productId\\": 37}","{\\"quantity\\": 1, \\"productId\\": 49}","{\\"quantity\\": 1, \\"productId\\": 46}","{\\"quantity\\": 1, \\"productId\\": 35}","{\\"quantity\\": 1, \\"productId\\": 47}","{\\"quantity\\": 1, \\"productId\\": 48}","{\\"quantity\\": 1, \\"productId\\": 14}","{\\"quantity\\": 1, \\"productId\\": 17}","{\\"quantity\\": 1, \\"productId\\": 22}","{\\"quantity\\": 1, \\"productId\\": 24}"}
9819	v91lzgft1quknq7ei8m3	{"{\\"quantity\\": 1, \\"productId\\": \\"4\\"}","{\\"quantity\\": 1, \\"productId\\": \\"53\\"}"}
10292	2nfyz8qrb1ewa396p284cc	{}
10295	hy3q2mpzcrjzfmh8x7dud	{}
8212	9c8ykt66ikn6l7y55zuah	{"{\\"quantity\\": 1, \\"productId\\": 21}","{\\"quantity\\": 1, \\"productId\\": 15}","{\\"quantity\\": 1, \\"productId\\": 10}","{\\"quantity\\": 1, \\"productId\\": 48}","{\\"quantity\\": 1, \\"productId\\": 42}","{\\"quantity\\": 1, \\"productId\\": 26}"}
10492	123cj1m8ccp3xife0qwexv	{}
10493	7kpxqlkuwv8j5j3fpybmo	{}
10498	ky5h3cy3jcrcpxkg0va5bg	{}
9820	arpy4d3hd6sr3l0zhbeu5g	{"{\\"quantity\\": 1, \\"productId\\": 3}"}
10293	t6q6567x1gilr8i699fe	{}
10499	c6o0x8pencm1qwx3th35ns	{}
10500	jmqvy3h1cgjecq6j27va	{}
10501	49k2uxek31ceoyaqhwkn6	{}
10502	92bl6oauiktezjzdzt05sf	{}
10296	kdh7h66zv0fwatsyo0vjd	{}
10294	stxv0cgrgd8sjtr0in0u	{}
9821	24wyvx70l3egqrmed1jzp	{"{\\"quantity\\": 1, \\"productId\\": \\"51\\"}"}
10497	p1nrn93fvikwkl7vah4vt	{}
10503	azcrjmh330f19tqopw8ub4i	{}
10297	xdj64v6lssp1wrmjyqx1qz	{}
10298	lzrdzecax9oa5gu9q8lt	{}
10299	0u4n3ki48j4ntct583w74a	{}
10300	ayfcs7ovf0sezc4s26pyms	{}
10301	ggi0r0z3cyb9dxhfwjbf3m	{}
10302	awb7m5c2txog958kgvd9bb	{}
9823	3338p3s6hg76ti405a0px4	{}
9822	2qtain1asohn0ovwkl8k6	{"{\\"quantity\\": 1, \\"productId\\": \\"11\\"}","{\\"quantity\\": 1, \\"productId\\": \\"8\\"}","{\\"quantity\\": 1, \\"productId\\": \\"19\\"}","{\\"quantity\\": 1, \\"productId\\": \\"26\\"}","{\\"quantity\\": 1, \\"productId\\": \\"20\\"}"}
9736	c9w21sefdlt9ha305v6jtw	{}
9737	ylkpy8ckneq1966u2bwg42j	{"{\\"quantity\\": 1, \\"productId\\": 45}"}
9824	h8uv38o4y7qlm7kotdn2sq	{}
9826	ou1fpyvzzglfgjohiwaf19	{"{\\"quantity\\": 1, \\"productId\\": 13}"}
10303	6pp7ms37qes8ub51fkpr8	{}
10504	ee3bsy7dnd70j2o14gto	{}
10304	im1k575r65egp727byum2o	{}
10505	lwhbvghgvo873jakzv2zxe	{}
9738	ekfwafyc2owt85y3lcidj	{"{\\"quantity\\": 1, \\"productId\\": 52}"}
9825	5dx6kio4wo7tcdfvkowtef	{}
9827	cw5ndviua6otrkg1hs591	{}
9828	1sw76fljx78mi60y8catq	{}
10506	n285smlxc4p5g21qh2a089	{"{\\"quantity\\": 1, \\"productId\\": 16}","{\\"quantity\\": 1, \\"productId\\": 14}"}
9739	bnahcc4qoq1apnnvjq2gd	{}
10507	eullweq8pnbvmjep2g926	{}
9831	qos5rfhymtlkxbyy7hwve	{"{\\"quantity\\": 1, \\"productId\\": 47}","{\\"quantity\\": 1, \\"productId\\": 7}"}
10305	vx94bu26rjlnt5xqb2ppkr	{}
9741	h9gmlh9qtveyw6p3uzcgz	{}
9829	zk4ygg5f7ku1nozc1bjbn	{}
9830	oldzl26l5ecbi8hgfn57ri	{"{\\"quantity\\": 1, \\"productId\\": 7}"}
9740	pts44k2sogy742wogx06i	{}
10508	npqx9kcp3xkfmt0l43r4sp	{}
10306	rekriqgdm9pkwj79q834wr	{}
9742	qqvgm05kmrordqlt9ng5yo	{}
10509	s2emonlhxf83i35mnjszoj	{}
10510	gmwh5o3bm8s4yl0dwg1b	{}
10511	xlcy62powe2g692fwy5ft	{}
10512	b2qiyjh5dr4sbmigi80el	{}
10513	hbug6z2qmg6sr942e0chs	{}
10514	girbqy0vk1mg1i618hkklb	{}
10307	tvk0qlpx37ivgf34gnksno	{}
9743	zqfpz8gf1sczpkjgus6ppc	{}
10308	6ko78hnnuc9al7z5z2ouy	{}
9744	0qry2hw0ongltsor5y4thqo	{"{\\"quantity\\": 1, \\"productId\\": 23}","{\\"quantity\\": 1, \\"productId\\": 5}"}
10515	6vu11pvdbcn3422bu56bk9	{}
10516	dj45v6479ztw4arhfjzx9	{}
10309	pbmc1mgarvjv2u2x60qem	{}
10517	29u4v6y3lfk77pdv4in0dj	{}
10518	ww2jqknv2z9hf7z3ds8x7u	{}
10519	xjhqqkqsy1qlhb5f7ln9k	{}
9745	fduvmp3d4bksqu9g3rvzy	{"{\\"quantity\\": 1, \\"productId\\": 21}","{\\"quantity\\": 1, \\"productId\\": 20}","{\\"quantity\\": 1, \\"productId\\": 7}","{\\"quantity\\": 1, \\"productId\\": 12}"}
10520	nz2djajkgdlfixv8f4dz	{}
10311	nm26irh3e5u0wv9pzb31m	{}
10521	yqgpxfcp4ozuzuhmfgivs	{}
10522	rup3iaihsedvgjudpjm6lb	{}
10523	pjc1yqdg8l3911kwiovae	{}
10524	f8apsu5cx9w9uhuu4g9kvd	{}
10525	6hiyh6g6trtlaw0dpo30vl	{}
10526	8xheq06sefn1qihsemnwbr	{}
10527	3czcmzspv6jcuqxugman3i	{}
10528	7t199l8vf36r2olxje5dk	{}
10529	s06o3xgfr7ev1xhlh3899	{}
10530	c5wb82f4swh08wofszrtle7	{}
10531	fhmo58zye5oevptm6t0zf	{}
10532	gdwd5ev1q8v9swltra19z6	{}
9145	rcfsnh6npukq3vw9onyyg	{"{\\"quantity\\": 1, \\"productId\\": 5}"}
10310	ni2xs8zyliftz1b2hpnu	{}
10533	s4m8oyizuaprh8mgu4ah9c	{}
10534	bn6inzp2h2un5j9rzoi8wi	{}
10535	g93rcxltj8pnai9efn2j	{}
10312	3bqrr2lh58endw2sp827s	{}
10313	a9y2rctwunfsljzw84vbt	{}
10314	x80ybft39l7qyfrf6e4omh	{}
9746	fu4ot2cpj6gh8nvtycmzsm	{"{\\"quantity\\": 1, \\"productId\\": \\"6\\"}","{\\"quantity\\": 1, \\"productId\\": \\"25\\"}","{\\"quantity\\": 1, \\"productId\\": \\"47\\"}","{\\"quantity\\": 1, \\"productId\\": \\"37\\"}"}
10315	v9wrnp4zzosmz1m3166	{}
10316	apvmoo6hnc68r1g4zu3136	{}
10536	pkvto4wdcfehg9gkds5ddc	{"{\\"quantity\\": 4, \\"productId\\": 38}","{\\"quantity\\": 4, \\"productId\\": 8}"}
10537	bu7vze1nmsbmmvktz13afg	{}
10317	5eon382xvb20nwpwxvth0wa	{}
9747	ic229571grbgwqls4yxk49	{"{\\"quantity\\": 1, \\"productId\\": \\"12\\"}","{\\"quantity\\": 1, \\"productId\\": \\"48\\"}","{\\"quantity\\": 1, \\"productId\\": \\"7\\"}","{\\"quantity\\": 1, \\"productId\\": 45}","{\\"quantity\\": 1, \\"productId\\": \\"4\\"}","{\\"quantity\\": 1, \\"productId\\": \\"5\\"}","{\\"quantity\\": 1, \\"productId\\": \\"45\\"}","{\\"quantity\\": 1, \\"productId\\": \\"35\\"}","{\\"quantity\\": 1, \\"productId\\": \\"50\\"}"}
10538	omst6m075jdz1wny9n9gv	{}
10318	cy7ophsw5gupm48ug4k36i	{}
9749	lykshywtcsd3butl9qjzjv	{"{\\"quantity\\": 1, \\"productId\\": \\"14\\"}","{\\"quantity\\": 1, \\"productId\\": \\"13\\"}","{\\"quantity\\": 1, \\"productId\\": \\"18\\"}","{\\"quantity\\": 1, \\"productId\\": \\"11\\"}"}
8808	p2y872oqzwmihrv8zbgb4	{"{\\"quantity\\": 1, \\"productId\\": 37}","{\\"quantity\\": 5, \\"productId\\": 4}","{\\"quantity\\": 1, \\"productId\\": 41}","{\\"quantity\\": 1, \\"productId\\": 43}","{\\"quantity\\": 1, \\"productId\\": 11}"}
10319	8v80o3wy28om8nclyjnw9g	{}
10539	m7i2ep4igipgedne3884n	{}
10543	cggkcp63537rvbih1ibd8	{}
9748	0ls6iyhicdkovcuye19kya	{"{\\"quantity\\": 1, \\"productId\\": \\"25\\"}","{\\"quantity\\": 1, \\"productId\\": \\"12\\"}","{\\"quantity\\": 1, \\"productId\\": \\"11\\"}","{\\"quantity\\": 1, \\"productId\\": \\"9\\"}","{\\"quantity\\": 1, \\"productId\\": \\"23\\"}"}
9750	39vq1hsuc3i6l9d7pydcnm	{"{\\"quantity\\": 1, \\"productId\\": 14}","{\\"quantity\\": 1, \\"productId\\": 41}","{\\"quantity\\": 1, \\"productId\\": 25}","{\\"quantity\\": 1, \\"productId\\": 32}","{\\"quantity\\": 1, \\"productId\\": 45}","{\\"quantity\\": 1, \\"productId\\": 29}","{\\"quantity\\": 1, \\"productId\\": 24}","{\\"quantity\\": 1, \\"productId\\": 44}","{\\"quantity\\": 1, \\"productId\\": 7}","{\\"quantity\\": 1, \\"productId\\": 36}","{\\"quantity\\": 1, \\"productId\\": 33}","{\\"quantity\\": 1, \\"productId\\": 48}","{\\"quantity\\": 1, \\"productId\\": 31}","{\\"quantity\\": 1, \\"productId\\": 22}","{\\"quantity\\": 1, \\"productId\\": 8}","{\\"quantity\\": 1, \\"productId\\": 9}"}
10540	goe34tj42n89yd30o5qqq6	{}
10320	w30zn1afnqm2gqp2x4bpps	{}
10541	pnlt5ax5impzm7dw2xsyqj	{}
9753	jo77t10onh7u97vt33m6	{"{\\"quantity\\": 1, \\"productId\\": 36}","{\\"quantity\\": 1, \\"productId\\": 35}","{\\"quantity\\": 1, \\"productId\\": 50}","{\\"quantity\\": 1, \\"productId\\": 44}","{\\"quantity\\": 1, \\"productId\\": 16}"}
9751	x7zasmi7rcmsrsrnnrzk2	{}
9755	yu7pnkdfscdq7o2nugz8	{}
9756	egj4d7sevp5c29m8qfbiou	{}
10542	z64bp6no8pl28tnkgzskwf	{}
10321	njlcwrun7v02cvihuuv1z4	{}
9752	7xthw88ftq42qcdqqdkmux	{"{\\"quantity\\": 1, \\"productId\\": \\"33\\"}","{\\"quantity\\": 1, \\"productId\\": \\"39\\"}","{\\"quantity\\": 1, \\"productId\\": 44}","{\\"quantity\\": 1, \\"productId\\": 4}","{\\"quantity\\": 1, \\"productId\\": 29}"}
10544	4rl4be4aydgri9ifv58ft	{}
10545	hxeltemumgc0m9iy3qdy6pa	{}
10322	k8wa5fuena67mnv6jjcil	{"{\\"quantity\\": 1, \\"productId\\": 11}"}
9754	yyy4ymr1emjong9zg74uw	{"{\\"quantity\\": 1, \\"productId\\": 6}","{\\"quantity\\": 1, \\"productId\\": 41}","{\\"quantity\\": 1, \\"productId\\": 48}","{\\"quantity\\": 1, \\"productId\\": 36}"}
10326	4q24fdhjpdp0wrxp86abf7q	{}
10325	652ufz4u5v44aw0n91tyt8	{}
10323	ze232wb8wib8b4mtxiw6i5	{}
10324	84tn68m7gaxq5bdsifjfxf	{}
10546	2486yfqwg9jqvom0bood4	{"{\\"quantity\\": 1, \\"productId\\": 17}"}
9757	58l70vi166pdhu1hee27o	{"{\\"quantity\\": 3, \\"productId\\": 33}","{\\"quantity\\": 3, \\"productId\\": 47}"}
9832	swtc3dbvey0kcvj5k6dj8a	{}
9758	28vv87fay0u8lhf9uxjyv9	{}
9759	n1c2a1gwtnriocqa1tb9n	{}
10547	hm6c8oan4esjm0ld2jfq7	{}
9833	5gtfj6v03skhjmgbrtgn1	{"{\\"quantity\\": 6, \\"productId\\": 6}","{\\"quantity\\": 1, \\"productId\\": 17}","{\\"quantity\\": 1, \\"productId\\": 47}","{\\"quantity\\": 1, \\"productId\\": 44}","{\\"quantity\\": 1, \\"productId\\": 26}"}
10327	waa7xik5pwna5ex1qzlxb	{}
10328	shre43iz2p80zzfq7mo65a	{}
10329	q0sgo4d9x2vducxhn7cs	{}
9760	3jr1zrx99s50vunhqmvcjqa	{}
10330	lblnszxw7cmy5cn8466yib	{}
10548	i8r8danwswox3jpjztpxvh	{"{\\"quantity\\": 1, \\"productId\\": 7}"}
10550	jz57gj10ixn3z9ci9fhy	{"{\\"quantity\\": 1, \\"productId\\": 43}","{\\"quantity\\": 1, \\"productId\\": 13}","{\\"quantity\\": 1, \\"productId\\": 15}"}
10552	vlrbr64bumcj2sqvmkn7zh	{}
10554	8ncj8aohmptyc7wkyzjn9	{}
9834	e6o8lm10uzfcfirypwjbin	{"{\\"quantity\\": 27, \\"productId\\": 42}"}
9761	ixl60apq62a64xc7dqq1wh	{}
9762	ey8m2dvq3hno7t56oi6k1n	{}
10549	ni2ap1pzn5ag4wgo3lq7gd	{}
10331	xz2h473hqzjsxylr0707ls	{"{\\"quantity\\": 1, \\"productId\\": 31}"}
9815	n0t76gdj65ldsk2f9posrt	{"{\\"quantity\\": 5, \\"productId\\": 53}"}
9764	jy6ior20ul49iauzk51f6	{}
9768	osjx5lc30hh0s63arka8vz	{}
9763	djem8u7wpqwmtc3csno59e	{"{\\"quantity\\": 1, \\"productId\\": 48}","{\\"quantity\\": 1, \\"productId\\": 4}","{\\"quantity\\": 1, \\"productId\\": 36}","{\\"quantity\\": 1, \\"productId\\": 12}","{\\"quantity\\": 1, \\"productId\\": 9}","{\\"quantity\\": 1, \\"productId\\": 26}"}
10332	ksh7ygpn0ufzdn8h0uie7	{"{\\"quantity\\": 1, \\"productId\\": 39}","{\\"quantity\\": 1, \\"productId\\": 21}"}
9835	hnxp355ys49jeygwj0es4	{"{\\"quantity\\": 1, \\"productId\\": 21}","{\\"quantity\\": 2, \\"productId\\": 20}"}
10551	ecyu08rxrmgm11foyqr62h	{}
10333	bvidi3tr4pbozwsrfbcva	{"{\\"quantity\\": 1, \\"productId\\": 3}"}
9765	7l6iinkgxdew0dgjfd0zs	{"{\\"quantity\\": 1, \\"productId\\": 11}"}
10334	qb2r2z9aumj7d6gmo59fx	{}
9766	at4atc20amgnpedu1m80n	{"{\\"quantity\\": 1, \\"productId\\": 43}","{\\"quantity\\": 1, \\"productId\\": 35}"}
9767	14wz8ezvg4793d0zgbxb6j	{}
9836	cgqdy7n6n2um1c8bsjbt9q	{"{\\"quantity\\": 1, \\"productId\\": \\"29\\"}","{\\"quantity\\": 1, \\"productId\\": \\"40\\"}","{\\"quantity\\": 1, \\"productId\\": \\"37\\"}","{\\"quantity\\": 1, \\"productId\\": \\"43\\"}","{\\"quantity\\": 1, \\"productId\\": \\"45\\"}","{\\"quantity\\": 1, \\"productId\\": \\"15\\"}","{\\"quantity\\": 1, \\"productId\\": \\"16\\"}","{\\"quantity\\": 1, \\"productId\\": \\"34\\"}","{\\"quantity\\": 1, \\"productId\\": \\"17\\"}","{\\"quantity\\": 1, \\"productId\\": \\"26\\"}","{\\"quantity\\": 1, \\"productId\\": \\"36\\"}","{\\"quantity\\": 1, \\"productId\\": \\"7\\"}","{\\"quantity\\": 1, \\"productId\\": \\"4\\"}","{\\"quantity\\": 1, \\"productId\\": \\"9\\"}","{\\"quantity\\": 1, \\"productId\\": \\"53\\"}","{\\"quantity\\": 1, \\"productId\\": \\"41\\"}"}
10553	3kl3psgimvsbnck9xb43h	{}
\.


--
-- TOC entry 4140 (class 0 OID 0)
-- Dependencies: 226
-- Name: goods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: okyxasqz
--

SELECT pg_catalog.setval('public.goods_id_seq', 53, true);


--
-- TOC entry 4141 (class 0 OID 0)
-- Dependencies: 230
-- Name: orders_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: okyxasqz
--

SELECT pg_catalog.setval('public.orders_id_seq1', 340, true);


--
-- TOC entry 4142 (class 0 OID 0)
-- Dependencies: 228
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: okyxasqz
--

SELECT pg_catalog.setval('public.users_id_seq', 10569, true);


--
-- TOC entry 3968 (class 2606 OID 3240321)
-- Name: goods goods_pkey; Type: CONSTRAINT; Schema: public; Owner: okyxasqz
--

ALTER TABLE ONLY public.goods
    ADD CONSTRAINT goods_pkey PRIMARY KEY (id);


--
-- TOC entry 3972 (class 2606 OID 3244891)
-- Name: orders orders_pkey1; Type: CONSTRAINT; Schema: public; Owner: okyxasqz
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey1 PRIMARY KEY (id);


--
-- TOC entry 3970 (class 2606 OID 3244643)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: okyxasqz
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4115 (class 0 OID 0)
-- Dependencies: 25
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2024-02-03 14:29:14

--
-- PostgreSQL database dump complete
--

