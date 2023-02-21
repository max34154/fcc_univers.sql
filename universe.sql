--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: univers; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: expedition; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.expedition (
    expedition_id integer NOT NULL,
    name character varying(100),
    descr text,
    target_type integer NOT NULL,
    targer_id integer,
    success boolean,
    unmanned boolean
);


ALTER TABLE public.expedition OWNER TO freecodecamp;

--
-- Name: expedition_expedition_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.expedition ALTER COLUMN expedition_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.expedition_expedition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100),
    age integer NOT NULL,
    descr text,
    galaxy_type integer NOT NULL,
    distance numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.galaxy ALTER COLUMN galaxy_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.galaxy_galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100),
    age integer NOT NULL,
    descr text,
    moon_type integer NOT NULL,
    planet_id integer,
    has_life boolean,
    distance numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.moon ALTER COLUMN moon_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.moon_moon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100),
    age integer NOT NULL,
    descr text,
    planet_type integer NOT NULL,
    star_id integer,
    has_life boolean,
    distance numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.planet ALTER COLUMN planet_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.planet_planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100),
    age integer NOT NULL,
    descr text,
    star_type integer NOT NULL,
    distance numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.star ALTER COLUMN star_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.star_star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: expedition; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.expedition OVERRIDING SYSTEM VALUE VALUES (1, 'Луна-3', 'xxxxx', 1, 3, true, true);
INSERT INTO public.expedition OVERRIDING SYSTEM VALUE VALUES (2, 'Appollo-11', 'xxxxx', 1, 3, true, false);
INSERT INTO public.expedition OVERRIDING SYSTEM VALUE VALUES (3, 'Венера-6', 'xxxxx', 2, 2, true, true);
INSERT INTO public.expedition OVERRIDING SYSTEM VALUE VALUES (4, 'Фобос', 'xxxxx', 2, 2, false, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (1, 'far far galaxy', 1000, 'xxxxx', 1, NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (2, 'far galaxy', 2000, 'yyyyy', 2, NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (3, 'not so far galaxy', 100, 'zzzz', 3, NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (4, 'very far galaxy', 1000, 'xxxxx', 1, NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (5, 'close galaxy', 1200, 'xxxxx', 1, NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (6, 'our galaxy', 1200, 'xxxxx', 1, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (1, 'Fobos', 1000, 'xxxxx', 1, 13, false, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (2, 'Deimos', 1000, 'xxxxx', 1, 13, false, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (3, 'Moon', 1000, 'xxxxx', 1, 3, false, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (21, 'Io', 1000, 'xxxxx', 1, 4, false, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (4, 'Europa', 1000, 'xxxxx', 1, 4, false, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (5, 'Ganymede', 1000, 'xxxxx', 1, 4, false, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (6, 'Callisto', 1000, 'xxxxx', 1, 4, false, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (7, 'Amalthea', 1000, 'xxxxx', 1, 4, false, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (8, 'Himalia', 1000, 'xxxxx', 1, 4, false, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (9, 'Leda', 1000, 'xxxxx', 1, 4, false, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (10, 'Themisto', 1000, 'xxxxx', 1, 4, false, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (11, 'Iocaste', 1000, 'xxxxx', 1, 4, false, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (12, 'Mimas', 1000, 'xxxxx', 1, 5, false, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (13, 'Enceladus', 1000, 'xxxxx', 1, 5, false, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (20, 'Rhea', 1000, 'xxxxx', 1, 5, false, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (14, 'Phoebe', 1000, 'xxxxx', 1, 5, false, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (15, 'Epimetheus', 1000, 'xxxxx', 1, 5, false, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (16, 'Telesto', 1000, 'xxxxx', 1, 5, false, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (17, 'Calypso', 1000, 'xxxxx', 1, 5, false, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (18, 'Prometheus', 1000, 'xxxxx', 1, 5, false, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (19, 'Ymir', 1000, 'xxxxx', 1, 5, false, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (1, 'Mercury', 1000, 'xxxxx', 1, 6, false, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (2, 'Venus', 1000, 'xxxxx', 1, 6, false, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (3, 'Earth', 1000, 'xxxxx', 1, 6, true, 0);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (4, 'Jupiter', 1000, 'xxxxx', 2, 6, false, 2);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (5, 'Saturn', 1000, 'xxxxx', 2, 6, false, 2);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (6, 'Uranus', 1000, 'xxxxx', 3, 6, false, 2);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (7, 'Neptune', 1000, 'xxxxx', 3, 6, false, 2);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (14, 'Abafar', 1000, 'xxxxx', 3, 1, true, 2);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (8, 'Bracca', 1000, 'xxxxx', 3, 1, true, 2);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (9, 'Castilon', 1000, 'xxxxx', 3, 1, true, 2);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (10, 'Chandrila', 1000, 'xxxxx', 3, 1, true, 2);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (11, 'Devaron', 1000, 'xxxxx', 3, 1, true, 2);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (12, 'Geonosis', 1000, 'xxxxx', 3, 1, true, 2);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (13, 'Mars', 1000, 'xxxxx', 1, 6, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (1, 'star 1', 1000, 'xxxxx', 1, 1000.5, 1);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (2, 'star 2', 2000, 'yyyyy', 2, 200.4, 1);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (3, 'star 3', 100, 'zzzz', 3, 12.565, 2);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (4, 'star 4', 1000, 'xxxxx', 1, 11, 4);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (5, 'star 5', 1200, 'xxxxx', 1, 10.2, 5);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (6, 'Sol', 1200, 'xxxxx', 1, 0.003, 6);


--
-- Name: expedition_expedition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.expedition_expedition_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);

--
-- Name: expedition expedition_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.expedition
    ADD CONSTRAINT expedition_name_key UNIQUE (name);

--
-- Name: expedition expedition_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.expedition
    ADD CONSTRAINT expedition_pkey PRIMARY KEY (expedition_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy_pk; Type: INDEX; Schema: public; Owner: freecodecamp
--

CREATE UNIQUE INDEX galaxy_pk ON public.galaxy USING btree (galaxy_id);


--
-- Name: moon_pk; Type: INDEX; Schema: public; Owner: freecodecamp
--

CREATE UNIQUE INDEX moon_pk ON public.moon USING btree (moon_id);


--
-- Name: planet_pk; Type: INDEX; Schema: public; Owner: freecodecamp
--

CREATE UNIQUE INDEX planet_pk ON public.planet USING btree (planet_id);


--
-- Name: star_pk; Type: INDEX; Schema: public; Owner: freecodecamp
--

CREATE UNIQUE INDEX star_pk ON public.star USING btree (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

