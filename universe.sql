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
-- Name: five; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.five (
    five_id integer NOT NULL,
    num1 integer NOT NULL,
    num2 integer,
    numeric1 numeric,
    bool1 boolean,
    text1 text,
    name character varying(30),
    bool2 boolean
);


ALTER TABLE public.five OWNER TO freecodecamp;

--
-- Name: fiv_five_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fiv_five_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fiv_five_id_seq OWNER TO freecodecamp;

--
-- Name: fiv_five_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fiv_five_id_seq OWNED BY public.five.five_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    num1 integer NOT NULL,
    num2 integer,
    num3 integer,
    name character varying(30),
    bool2 boolean
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
    num1 integer NOT NULL,
    num2 integer,
    num3 integer,
    name character varying(30),
    planet_id integer,
    bool2 boolean
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
    num1 integer NOT NULL,
    num2 integer,
    num3 integer,
    name character varying(30),
    star_id integer,
    bool2 boolean
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
    num1 integer NOT NULL,
    num2 integer,
    num3 integer,
    name character varying(30),
    galaxy_id integer,
    bool2 boolean
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
-- Name: five five_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.five ALTER COLUMN five_id SET DEFAULT nextval('public.fiv_five_id_seq'::regclass);


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
-- Data for Name: five; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.five VALUES (1, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.five VALUES (2, 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.five VALUES (3, 3, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 2, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 3, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 4, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 6, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (2, 2, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (3, 3, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (4, 4, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (5, 5, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (6, 6, NULL, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (7, 7, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (8, 8, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (9, 9, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (10, 10, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (11, 11, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (12, 12, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (13, 13, NULL, NULL, NULL, 10, NULL);
INSERT INTO public.moon VALUES (14, 14, NULL, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (15, 15, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (16, 16, NULL, NULL, NULL, 8, NULL);
INSERT INTO public.moon VALUES (17, 17, NULL, NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES (18, 18, NULL, NULL, NULL, 10, NULL);
INSERT INTO public.moon VALUES (19, 19, NULL, NULL, NULL, 11, NULL);
INSERT INTO public.moon VALUES (20, 20, NULL, NULL, NULL, 1, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (2, 2, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (3, 3, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.planet VALUES (4, 4, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (5, 5, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.planet VALUES (6, 6, NULL, NULL, NULL, 5, NULL);
INSERT INTO public.planet VALUES (7, 7, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (8, 8, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (9, 9, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (10, 10, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (11, 11, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.planet VALUES (12, 12, NULL, NULL, NULL, 3, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (2, 2, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (3, 3, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.star VALUES (4, 4, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.star VALUES (5, 5, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.star VALUES (6, 6, NULL, NULL, NULL, 5, NULL);


--
-- Name: fiv_five_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fiv_five_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: five fiv_num1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.five
    ADD CONSTRAINT fiv_num1_key UNIQUE (num1);


--
-- Name: five fiv_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.five
    ADD CONSTRAINT fiv_pkey PRIMARY KEY (five_id);


--
-- Name: galaxy galaxy_num1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_num1_key UNIQUE (num1);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_num1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_num1_key UNIQUE (num1);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_num1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_num1_key UNIQUE (num1);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_num1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_num1_key UNIQUE (num1);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

