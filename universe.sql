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
    name character varying(40) NOT NULL,
    size integer,
    weight integer,
    color character varying(20)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_id integer,
    size integer,
    radius integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    radius integer,
    inhabitable boolean,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    radius integer,
    weight numeric(5,1),
    larger_than_sun boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: visited; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.visited (
    name character varying(40) NOT NULL,
    type character varying(40) NOT NULL,
    times integer,
    own_galaxy boolean,
    notes text,
    visited_id integer NOT NULL
);


ALTER TABLE public.visited OWNER TO freecodecamp;

--
-- Name: visited_visited_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.visited_visited_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visited_visited_id_seq OWNER TO freecodecamp;

--
-- Name: visited_visited_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.visited_visited_id_seq OWNED BY public.visited.visited_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: visited visited_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.visited ALTER COLUMN visited_id SET DEFAULT nextval('public.visited_visited_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milkyway', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Galaxy 2', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Galaxy 3', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Galaxy 4', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Galaxy 5', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Galaxy 6', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'a', 4, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'b', 4, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'c', 4, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'd', 4, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'e', 4, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'f', 4, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'g', 5, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'h', 5, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'i', 5, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'j', 5, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'k', 5, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'l', 6, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'm', 6, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'n', 6, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'o', 6, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'p', 6, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'q', 6, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'r', 6, NULL, NULL);
INSERT INTO public.moon VALUES (20, 's', 6, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, 'Awesome', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 1, false, 'HOT', 1);
INSERT INTO public.planet VALUES (3, 'MARS', 1, false, 'COLD', 1);
INSERT INTO public.planet VALUES (4, 'Planet 2.1', 2, true, 'The great hope', 2);
INSERT INTO public.planet VALUES (5, 'Planet 2.2', 7, false, 'COLD', 2);
INSERT INTO public.planet VALUES (6, 'Planet 3.1', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (7, 'Planet 3.2', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (8, 'Planet 3.3', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (9, 'Planet 4.1', NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (10, 'Planet 4.2', NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (11, 'Planet 5.1', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (12, 'Planet 5.2', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (13, 'Planet 6.1', NULL, NULL, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1.0, false, 1);
INSERT INTO public.star VALUES (2, 'Planet 2.1', 2, 4.3, true, 2);
INSERT INTO public.star VALUES (3, 'Planet 3.1', 0, 0.3, false, 3);
INSERT INTO public.star VALUES (4, 'Planet 4.1', 4, 12.0, true, 4);
INSERT INTO public.star VALUES (5, 'Planet 5.1', 1, 2.0, false, 5);
INSERT INTO public.star VALUES (6, 'Planet 6.1', 6, 17.0, true, 6);
INSERT INTO public.star VALUES (7, 'Planet 3.3', 0, 0.3, false, 3);


--
-- Data for Name: visited; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.visited VALUES ('EARTH', 'Native', NULL, true, NULL, 1);
INSERT INTO public.visited VALUES ('The Moon', 'Man', NULL, true, NULL, 2);
INSERT INTO public.visited VALUES ('MARS', 'Robot', NULL, true, NULL, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: visited_visited_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.visited_visited_id_seq', 3, true);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (name);


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
-- Name: moon name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: visited visited_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.visited
    ADD CONSTRAINT visited_name_key UNIQUE (name);


--
-- Name: visited visited_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.visited
    ADD CONSTRAINT visited_pkey PRIMARY KEY (visited_id);


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

