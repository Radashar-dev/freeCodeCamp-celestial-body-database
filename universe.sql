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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    type character varying(50),
    diameter_in_km numeric(10,1)
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
    planet_id integer,
    orbit_period_in_days numeric(5,1),
    has_rings boolean
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
    distance_from_earth numeric(5,1),
    description text,
    has_life boolean,
    is_spherical boolean,
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    galaxy_id integer,
    is_neutron_star boolean
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
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 10000, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Whirlpool', 40000, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Cartwheel', 10000, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'M87', 13500, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'NGC 1300', 11000, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 13000, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (7, 'Luna', 2, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Europa', 3, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Phobos', 4, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Deimos', 5, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Titan', 6, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Ganymede', 7, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Io', 8, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Callisto', 9, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Mimas', 10, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Enceladus', 11, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Triton', 12, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Oberon', 13, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Miranda', 2, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Rhea', 3, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Iapetus', 4, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Tethys', 5, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'Dione', 6, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'Titania', 7, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'Ariel', 8, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'Umbriel', 9, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Lira', 2, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Vega', 2, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Crisalis', 3, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Kepler-442b', 1200.5, 'Un esopianeta potenzialmente abitabile situato nella costellazione della Lira', false, true, 1);
INSERT INTO public.planet VALUES (3, 'Exo-Prime', 120.5, 'Un pianeta roccioso con atmosfera sottile.', false, true, 1);
INSERT INTO public.planet VALUES (4, 'Oceanis-9', 300.2, 'Un mondo coperto da vasti oceani e con possibili forme di vita acquatica.', true, true, 2);
INSERT INTO public.planet VALUES (5, 'Zeta-4', 245.6, 'Pianeta di tipo gassoso, con atmosfere dense e tempeste costanti.', false, true, 1);
INSERT INTO public.planet VALUES (6, 'Alpha-Prime', 120.3, 'Pianeta roccioso con paesaggi desertici e dune.', false, true, 1);
INSERT INTO public.planet VALUES (7, 'Beta-9', 432.8, 'Un pianeta gelido, coperto di ghiaccio e con forti venti.', false, true, 2);
INSERT INTO public.planet VALUES (8, 'Gama-7', 160.4, 'Un pianeta di tipo oceanico, con una fauna acquatica unica.', true, true, 2);
INSERT INTO public.planet VALUES (9, 'Delta-12', 500.1, 'Pianeta gigante con anelli e condizioni atmosferiche estremamente instabili.', false, true, 3);
INSERT INTO public.planet VALUES (10, 'Sigma-5', 750.3, 'Un mondo selvaggio con flora e fauna uniche, ma condizioni di vita difficili.', true, true, 3);
INSERT INTO public.planet VALUES (11, 'Omega-3', 100.7, 'Pianeta roccioso con vulcani attivi e vasti paesaggi montuosi.', false, true, 4);
INSERT INTO public.planet VALUES (12, 'Lambda-10', 300.2, 'Pianeta ricoperto da ampie foreste tropicali e un’atmosfera ricca di ossigeno.', true, true, 5);
INSERT INTO public.planet VALUES (13, 'Kappa-8', 800.4, 'Pianeta oscuro, con temperature estremamente basse e privo di luce solare diretta.', false, true, 6);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Terrestre', 'Pianeti rocciosi con una superficie solida, simili alla Terra.');
INSERT INTO public.planet_types VALUES (2, 'Gassoso', 'Pianeti composti principalmente da gas, come Giove e Saturno.');
INSERT INTO public.planet_types VALUES (3, 'Oceanico', 'Pianeti coperti quasi interamente da oceani.');
INSERT INTO public.planet_types VALUES (4, 'Nano', 'Piccoli pianeti che non dominano la loro orbita, come Plutone.');
INSERT INTO public.planet_types VALUES (5, 'Lavico', 'Pianeti con attività vulcanica estrema e superficie ricoperta di lava.');
INSERT INTO public.planet_types VALUES (6, 'Icy', 'Pianeti ghiacciati con temperature estremamente basse.');
INSERT INTO public.planet_types VALUES (7, 'Esotico', 'Pianeti con caratteristiche uniche e rare, spesso immaginari.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 242, 1, NULL);
INSERT INTO public.star VALUES (2, 'Vega', 455, 1, NULL);
INSERT INTO public.star VALUES (3, 'Rigel', 8, 2, NULL);
INSERT INTO public.star VALUES (4, 'Antares', 120, 1, NULL);
INSERT INTO public.star VALUES (5, 'Alpha Centauri', 5000, 2, NULL);
INSERT INTO public.star VALUES (6, 'Polaris', 700, 3, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_id_seq', 7, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


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

