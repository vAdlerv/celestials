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
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(64) NOT NULL,
    description text,
    age_in_million_of_yearrs integer,
    galaxy_types character varying(32)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(32) NOT NULL,
    planet_id integer,
    description text,
    distance_from_earth numeric,
    has_life boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(32) NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth numeric,
    star_id integer,
    planet_types character varying(32)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(32) NOT NULL,
    start_date character varying(10)
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(28) NOT NULL,
    description text,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    is_spherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'The Milky Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic Cloud', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Small Magellanic Cloud (NGC 292)', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Andromeda Galaxy (M31, NGC 224)', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Black Eye Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Bodes Galaxy', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Europa', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Ganymede', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Callisto', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Himalia', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Pan', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Atlas', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Prometheus', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Pandora', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Janus', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Epimetheus', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Mimas', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Enceladus', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Tethys', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Dione', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Amalthea', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Thebe', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Io', NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Mercury', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Jupiter', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Neptune', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Mars', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Uranus', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Saturn', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Venus', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Kepler-7b', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, '51 Pegasi b', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'HD 209458 b', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'Sputnik 1', NULL);
INSERT INTO public.satellite VALUES (2, 'Sputnik 2', NULL);
INSERT INTO public.satellite VALUES (3, 'Aryabhatta', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'a Centauri A', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'a Centauri B', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Barnards Star', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Wolf 359', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Lalande 21185', NULL, NULL, NULL, NULL, NULL);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy uc_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uc_galaxy UNIQUE (name);


--
-- Name: moon uc_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uc_moon UNIQUE (name);


--
-- Name: planet uc_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uc_planet UNIQUE (name);


--
-- Name: satellite uc_satellite; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT uc_satellite UNIQUE (name);


--
-- Name: star uc_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uc_star UNIQUE (name);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

