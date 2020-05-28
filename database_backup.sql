--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: Ryan
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "Ryan";

--
-- Name: divisions; Type: TABLE; Schema: public; Owner: Ryan
--

CREATE TABLE public.divisions (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    duty character varying
);


ALTER TABLE public.divisions OWNER TO "Ryan";

--
-- Name: divisions_id_seq; Type: SEQUENCE; Schema: public; Owner: Ryan
--

CREATE SEQUENCE public.divisions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.divisions_id_seq OWNER TO "Ryan";

--
-- Name: divisions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Ryan
--

ALTER SEQUENCE public.divisions_id_seq OWNED BY public.divisions.id;


--
-- Name: employees; Type: TABLE; Schema: public; Owner: Ryan
--

CREATE TABLE public.employees (
    id bigint NOT NULL,
    name character varying,
    division_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.employees OWNER TO "Ryan";

--
-- Name: employees_id_seq; Type: SEQUENCE; Schema: public; Owner: Ryan
--

CREATE SEQUENCE public.employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employees_id_seq OWNER TO "Ryan";

--
-- Name: employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Ryan
--

ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: Ryan
--

CREATE TABLE public.projects (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.projects OWNER TO "Ryan";

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: Ryan
--

CREATE SEQUENCE public.projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_id_seq OWNER TO "Ryan";

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Ryan
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: Ryan
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "Ryan";

--
-- Name: divisions id; Type: DEFAULT; Schema: public; Owner: Ryan
--

ALTER TABLE ONLY public.divisions ALTER COLUMN id SET DEFAULT nextval('public.divisions_id_seq'::regclass);


--
-- Name: employees id; Type: DEFAULT; Schema: public; Owner: Ryan
--

ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);


--
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: Ryan
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: Ryan
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-05-28 16:52:57.818268	2020-05-28 16:52:57.818268
\.


--
-- Data for Name: divisions; Type: TABLE DATA; Schema: public; Owner: Ryan
--

COPY public.divisions (id, name, created_at, updated_at, duty) FROM stdin;
17	Division1	2020-05-28 23:19:25.614307	2020-05-28 23:19:25.614307	Advertising
18	Division2	2020-05-28 23:19:25.656944	2020-05-28 23:19:25.656944	Marketing
19	Division3	2020-05-28 23:19:25.660475	2020-05-28 23:19:25.660475	IT
20	Division4	2020-05-28 23:19:25.66242	2020-05-28 23:19:25.66242	Sales
22	Div100	2020-05-28 23:20:16.835866	2020-05-28 23:20:16.835866	sales
23	It	2020-05-28 23:20:23.78623	2020-05-28 23:20:23.78623	show
\.


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: Ryan
--

COPY public.employees (id, name, division_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: Ryan
--

COPY public.projects (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: Ryan
--

COPY public.schema_migrations (version) FROM stdin;
20200528162931
20200528162956
20200528163008
20200528170352
20200528221758
\.


--
-- Name: divisions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Ryan
--

SELECT pg_catalog.setval('public.divisions_id_seq', 23, true);


--
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Ryan
--

SELECT pg_catalog.setval('public.employees_id_seq', 11, true);


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Ryan
--

SELECT pg_catalog.setval('public.projects_id_seq', 1, false);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: Ryan
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: divisions divisions_pkey; Type: CONSTRAINT; Schema: public; Owner: Ryan
--

ALTER TABLE ONLY public.divisions
    ADD CONSTRAINT divisions_pkey PRIMARY KEY (id);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: Ryan
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: Ryan
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Ryan
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: employees fk_rails_550e0790c5; Type: FK CONSTRAINT; Schema: public; Owner: Ryan
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT fk_rails_550e0790c5 FOREIGN KEY (division_id) REFERENCES public.divisions(id);


--
-- PostgreSQL database dump complete
--

