--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: guess; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.guess (
    username character varying(22),
    guesses integer
);


ALTER TABLE public.guess OWNER TO freecodecamp;

--
-- Data for Name: guess; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.guess VALUES ('user_1709662974574', 390);
INSERT INTO public.guess VALUES ('user_1709662974574', 861);
INSERT INTO public.guess VALUES ('user_1709662974573', 875);
INSERT INTO public.guess VALUES ('user_1709662974573', 689);
INSERT INTO public.guess VALUES ('user_1709662974574', 799);
INSERT INTO public.guess VALUES ('user_1709662974574', 42);
INSERT INTO public.guess VALUES ('user_1709662974574', 595);
INSERT INTO public.guess VALUES ('user_1709663024867', 177);
INSERT INTO public.guess VALUES ('user_1709663024867', 782);
INSERT INTO public.guess VALUES ('user_1709663024866', 754);
INSERT INTO public.guess VALUES ('user_1709663024866', 372);
INSERT INTO public.guess VALUES ('user_1709663024867', 902);
INSERT INTO public.guess VALUES ('user_1709663024867', 1002);
INSERT INTO public.guess VALUES ('user_1709663024867', 132);


--
-- PostgreSQL database dump complete
--

