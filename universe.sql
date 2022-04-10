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
-- Name: compo; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.compo (
    compo_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    planet_id integer NOT NULL,
    compo_code character varying(25)
);


ALTER TABLE public.compo OWNER TO freecodecamp;

--
-- Name: compo_compo_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.compo_compo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.compo_compo_id_seq OWNER TO freecodecamp;

--
-- Name: compo_compo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.compo_compo_id_seq OWNED BY public.compo.compo_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_info text,
    age_billion_years numeric(4,2),
    discovered integer
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
    name character varying(30) NOT NULL,
    moon_info text,
    planet_id integer NOT NULL,
    avg_orbit_dis_km integer
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    num_moons integer,
    ring_system boolean,
    magnetic_field boolean
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
    name character varying(30) NOT NULL,
    star_info text,
    galaxy_id integer NOT NULL,
    constellation character varying(30)
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
-- Name: compo compo_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.compo ALTER COLUMN compo_id SET DEFAULT nextval('public.compo_compo_id_seq'::regclass);


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
-- Data for Name: compo; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.compo VALUES (1, 'ajslkd', 1, 1, '1s1c');
INSERT INTO public.compo VALUES (2, 'asdlkja', 3, 5, '3s5c');
INSERT INTO public.compo VALUES (3, 'askdb', 2, 6, '2s6c');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (6, 'Milky-Way', 'The galaxy where We are now', 7.00, 1920);
INSERT INTO public.galaxy VALUES (1, 'IOK-1', 'jasdh jklasjdl jalskdjas dlkj', 12.88, 2006);
INSERT INTO public.galaxy VALUES (3, 'SXDF-NB1006-2', 'aksjdhasd lashdhjk dsjakldja laskjd asdsad', 12.91, 2012);
INSERT INTO public.galaxy VALUES (4, 'Z8_GND_5296', 'jashd lasdj aasdasd ñalskd añasldk', 13.10, 2013);
INSERT INTO public.galaxy VALUES (5, 'EGS-ZS8-1', 'asd laksjd lñasdj laksdj', 13.13, 2015);
INSERT INTO public.galaxy VALUES (2, 'GN-108036', 'asdlkd ñlasdk añwjd ei asdñl', 12.90, 2011);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 'sdasd lkashdalsd alsdj', 3, 384400);
INSERT INTO public.moon VALUES (2, 'deimos', 'asdasd kadjasda', 5, 23458);
INSERT INTO public.moon VALUES (3, 'phobos', 'asdas laskd alskdj asdgldfkjsdhf', 5, 9376);
INSERT INTO public.moon VALUES (4, 'despina', 'asdlkasjd laksdja lsdlkxjasd', 9, 52526);
INSERT INTO public.moon VALUES (5, 'galatea', 'askda laskdj asda', 9, 61953);
INSERT INTO public.moon VALUES (6, 'halimede', 'asldak laksjdalsd djksadja', 9, 16611000);
INSERT INTO public.moon VALUES (7, 'hippocamp', 'asdklajs laskdjasds', 9, 105283);
INSERT INTO public.moon VALUES (8, 'laomedeia', 'asldjasd laskdja lsdjalsdj', 9, 23567000);
INSERT INTO public.moon VALUES (9, 'larissa', 'jalsdj laksdja lsdjhalsdkjas d', 9, 73548);
INSERT INTO public.moon VALUES (10, 'naiad', 'asldkjas dlskdjalsdj flkasjdasd', 9, 48227);
INSERT INTO public.moon VALUES (11, 'nereid', 'alskdj lsadjalsdj lasdjlasd', 9, 5513818);
INSERT INTO public.moon VALUES (12, 'neso', 'asldkajsd laskd asd', 9, 49285000);
INSERT INTO public.moon VALUES (13, 'proteus', 'laskdj lsjd alsdj ljalsddkja sld', 9, 117646);
INSERT INTO public.moon VALUES (14, 'adrastea', 'alsdkj lsjd alsdj alsdj ald¿', 6, 1129000);
INSERT INTO public.moon VALUES (15, 'aitne', 'aklsjd alsdja lsdkj asld', 6, 23315000);
INSERT INTO public.moon VALUES (16, 'amalthea', 'askldj alsdjda lsdadskjda sdasd', 6, 181400);
INSERT INTO public.moon VALUES (17, 'ananke', 'aslkdj asldj asldjasld', 6, 21276000);
INSERT INTO public.moon VALUES (18, 'aode', 'asdha skdha sdkh kdfbs,dfmbsdf', 6, 23969000);
INSERT INTO public.moon VALUES (19, 'arche', 'alskjda lsdj sldj alsjdfhlasdkfj', 6, 23355000);
INSERT INTO public.moon VALUES (20, 'autonoe', 'asdh lsdjfhnxmxmxz zxmcnvbufhfds', 6, 24033000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', 7, 0, false, true);
INSERT INTO public.planet VALUES (2, 'venus', 7, 0, false, false);
INSERT INTO public.planet VALUES (3, 'earth', 7, 1, false, true);
INSERT INTO public.planet VALUES (4, 'moon', 7, 0, false, false);
INSERT INTO public.planet VALUES (5, 'mars', 7, 2, false, false);
INSERT INTO public.planet VALUES (6, 'jupiter', 7, 79, true, true);
INSERT INTO public.planet VALUES (7, 'saturn', 7, 82, true, true);
INSERT INTO public.planet VALUES (8, 'uranus', 7, 27, true, true);
INSERT INTO public.planet VALUES (9, 'neptune', 7, 14, true, true);
INSERT INTO public.planet VALUES (10, 'pluto', 7, 5, false, false);
INSERT INTO public.planet VALUES (11, 'iboiter', 1, 13, false, true);
INSERT INTO public.planet VALUES (12, 'sebbenope', 3, 1, true, true);
INSERT INTO public.planet VALUES (13, 'mebarvis', 2, 15, false, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'absolutno', 'a fictional substance', 1, 'lynx');
INSERT INTO public.star VALUES (2, 'acamar', 'nothing to comment', 1, 'eridanus');
INSERT INTO public.star VALUES (3, 'achernar', 'the name was originally arabic', 1, 'eridanus');
INSERT INTO public.star VALUES (4, 'achird', 'askdljasd lasjdla sd', 1, 'cassiopeia');
INSERT INTO public.star VALUES (5, 'acubens', 'the claws', 1, 'cancer');
INSERT INTO public.star VALUES (6, 'adhafera', 'the braid (or curl, or strand)', 1, 'leo');
INSERT INTO public.star VALUES (7, 'sun', 'So warm so hot', 1, 'solar');


--
-- Name: compo_compo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.compo_compo_id_seq', 3, true);


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
-- Name: compo compo_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.compo
    ADD CONSTRAINT compo_name_key UNIQUE (name);


--
-- Name: compo compo_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.compo
    ADD CONSTRAINT compo_pkey PRIMARY KEY (compo_id);


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


