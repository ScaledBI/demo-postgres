--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE admin;
ALTER ROLE admin WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:7CzH5EA1BKmg0mdK/Pbifw==$zPNnvcvoelmWV7WndJ57bIUo7V0GVESERYp1CZP4LGs=:WGcbN+wzdzeuOM1BCkHHIljwkEZgnx6WZeKYztbjrts=';
CREATE ROLE controlling;
ALTER ROLE controlling WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:zgzA3MxW2awEQJHTYFT1AA==$wjkmr/UAiX8M3hokgKD0oQqhoCYuBL4DGuF1HhUAcvU=:0f8fX466rakZRAGBiDK2D+ET3rY8DAmAMh+ADK+1VIc=';
CREATE ROLE crm;
ALTER ROLE crm WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:mOZNUZflYYEfGi4cqeR9Xw==$CsgEtusLKX+9mAsjbI2nymcvn9zGT0gJF7TT+L/6PWk=:c/qxrwAeK6nGTdaufMEV02srlCe5HQ9m9d4skMSyZtM=';
-- CREATE ROLE shinyproxy;
ALTER ROLE shinyproxy WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:1LlhbGbPNYB95PbUN2LsBw==$omdgiQwyxs9yxoxfx85J9hIxcnQcuHYo1p8TxlcXkUs=:/oUh5YjMLK0Ufs9ZypfUBe62sE/ovLYJRJsUtadueRE=';






--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

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
-- PostgreSQL database dump complete
--

--
-- Database "data" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

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
-- Name: data; Type: DATABASE; Schema: -; Owner: shinyproxy
--

CREATE DATABASE data WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE data OWNER TO shinyproxy;

\connect data

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
-- Name: booking; Type: TABLE; Schema: public; Owner: shinyproxy
--

CREATE TABLE public.booking (
    id bigint NOT NULL,
    userid bigint NOT NULL,
    entrytime timestamp without time zone NOT NULL,
    hotelid bigint NOT NULL,
    price double precision NOT NULL,
    status character varying NOT NULL
);


ALTER TABLE public.booking OWNER TO shinyproxy;

--
-- Name: user; Type: TABLE; Schema: public; Owner: shinyproxy
--

CREATE TABLE public."user" (
    id bigint NOT NULL,
    firstname character varying NOT NULL,
    lastname character varying NOT NULL,
    emailid bigint NOT NULL
);


ALTER TABLE public."user" OWNER TO shinyproxy;

--
-- Data for Name: booking; Type: TABLE DATA; Schema: public; Owner: shinyproxy
--

COPY public.booking (id, userid, entrytime, hotelid, price, status) FROM stdin;
1	1	2022-09-01 10:05:34	5	1206.4	valid
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: shinyproxy
--

COPY public."user" (id, firstname, lastname, emailid) FROM stdin;
1	Jack	Last	1
2	Jane	Doe	2
3	James	Ryan	3
4	Ned	Stark	4
5	Lara	Croft	5
\.


--
-- Name: booking booking_pkey; Type: CONSTRAINT; Schema: public; Owner: shinyproxy
--

ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_pkey PRIMARY KEY (id);


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: shinyproxy
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: TABLE booking; Type: ACL; Schema: public; Owner: shinyproxy
--

GRANT SELECT ON TABLE public.booking TO controlling;
GRANT SELECT ON TABLE public.booking TO crm;
GRANT SELECT ON TABLE public.booking TO admin;


--
-- Name: TABLE "user"; Type: ACL; Schema: public; Owner: shinyproxy
--

GRANT SELECT ON TABLE public."user" TO crm;
GRANT SELECT ON TABLE public."user" TO admin;


--
-- PostgreSQL database dump complete
--

--
-- Database "db" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

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
-- Name: db; Type: DATABASE; Schema: -; Owner: shinyproxy
--

-- CREATE DATABASE db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE db OWNER TO shinyproxy;

\connect db

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
-- Name: event; Type: TABLE; Schema: public; Owner: shinyproxy
--

CREATE TABLE public.event (
    event_time timestamp without time zone NOT NULL,
    username character varying NOT NULL,
    type character varying NOT NULL,
    data text
);


ALTER TABLE public.event OWNER TO shinyproxy;

--
-- Data for Name: event; Type: TABLE DATA; Schema: public; Owner: shinyproxy
--

COPY public.event (event_time, username, type, data) FROM stdin;
\.


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: shinyproxy
--

REVOKE ALL ON SCHEMA public FROM shinyproxy;
GRANT ALL ON SCHEMA public TO shinyproxy WITH GRANT OPTION;


--
-- Name: TABLE event; Type: ACL; Schema: public; Owner: shinyproxy
--

REVOKE ALL ON TABLE public.event FROM shinyproxy;
GRANT ALL ON TABLE public.event TO shinyproxy WITH GRANT OPTION;
GRANT SELECT ON TABLE public.event TO admin;


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

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
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--
