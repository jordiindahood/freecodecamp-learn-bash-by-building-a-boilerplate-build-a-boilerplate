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
-- Name: black_holes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_holes (
    black_holes_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size character varying(30)
);


ALTER TABLE public.black_holes OWNER TO freecodecamp;

--
-- Name: black_holes_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_holes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_holes_id_seq OWNER TO freecodecamp;

--
-- Name: black_holes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_holes_id_seq OWNED BY public.black_holes.black_holes_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy character varying(30) NOT NULL,
    planet_types character varying(30),
    has_life boolean,
    discovered_in character varying(30),
    name character varying(30)
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
    planet character varying(30) NOT NULL,
    color character varying(30),
    size integer
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
    planet character varying(30) NOT NULL,
    star character varying(30) NOT NULL,
    age_in_million numeric(8,1) NOT NULL,
    has_life boolean NOT NULL,
    has_moons boolean NOT NULL,
    size integer NOT NULL,
    description text,
    name character varying(30)
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
    star character varying(50) NOT NULL,
    galaxy character varying(30) NOT NULL,
    age_in_million numeric(8,1) NOT NULL,
    size integer,
    name character varying(30)
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
-- Name: black_holes black_holes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes ALTER COLUMN black_holes_id SET DEFAULT nextval('public.black_holes_id_seq'::regclass);


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
-- Data for Name: black_holes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_holes VALUES (1, 'Sagittarius A', '4 M Solar Masses');
INSERT INTO public.black_holes VALUES (2, 'M 87', '6.5 B Solar masses');
INSERT INTO public.black_holes VALUES (3, 'TON 618', '66 B Solar masses');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Rocky Planets,Gas & ice Giants', true, '1610', NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Gas, Rocky Giants', false, '1920', NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Rocky planets', false, '1920', NULL);
INSERT INTO public.galaxy VALUES (4, 'Messier 87 (M87)', 'UNKNOWN', false, '1781', NULL);
INSERT INTO public.galaxy VALUES (6, 'WhirlPool M51', 'Rocky Planets', false, '1773', NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy (M104)', 'Gaseous planets', false, '1721', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (61, 'Luna', 'Earth', 'Gray', 3474);
INSERT INTO public.moon VALUES (62, 'Phobos', 'Mars', 'Brown', 22);
INSERT INTO public.moon VALUES (63, 'Deimos', 'Mars', 'Gray', 12);
INSERT INTO public.moon VALUES (64, 'Europa', 'Jupiter', 'White', 3121);
INSERT INTO public.moon VALUES (65, 'Io', 'Jupiter', 'Yellow', 3642);
INSERT INTO public.moon VALUES (66, 'Ganymede', 'Jupiter', 'Brown', 5262);
INSERT INTO public.moon VALUES (67, 'Callisto', 'Jupiter', 'Gray', 4821);
INSERT INTO public.moon VALUES (68, 'Titan', 'Saturn', 'Orange', 5150);
INSERT INTO public.moon VALUES (69, 'Rhea', 'Saturn', 'Gray', 1528);
INSERT INTO public.moon VALUES (70, 'Enceladus', 'Saturn', 'White', 504);
INSERT INTO public.moon VALUES (71, 'Iapetus', 'Saturn', 'Gray', 1470);
INSERT INTO public.moon VALUES (72, 'Tethys', 'Saturn', 'Gray', 1063);
INSERT INTO public.moon VALUES (73, 'Dione', 'Saturn', 'Gray', 1123);
INSERT INTO public.moon VALUES (74, 'Hyperion', 'Saturn', 'Brown', 271);
INSERT INTO public.moon VALUES (75, 'Mimas', 'Saturn', 'Gray', 396);
INSERT INTO public.moon VALUES (76, 'Phoebe', 'Saturn', 'Gray', 213);
INSERT INTO public.moon VALUES (77, 'Amalthea', 'Jupiter', 'Brown', 250);
INSERT INTO public.moon VALUES (78, 'Himalia', 'Jupiter', 'Gray', 170);
INSERT INTO public.moon VALUES (79, 'Leda', 'Jupiter', 'Gray', 17);
INSERT INTO public.moon VALUES (80, 'Ananke', 'Jupiter', 'Gray', 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (78, 'Sirius Prime', 'Sirius A', 500.0, true, true, 12000, NULL, NULL);
INSERT INTO public.planet VALUES (79, 'Sirius B', 'Sirius A', 300.0, false, false, 8500, NULL, NULL);
INSERT INTO public.planet VALUES (80, 'Centauri Terra', 'Alpha Centauri A', 4000.0, true, true, 11500, NULL, NULL);
INSERT INTO public.planet VALUES (81, 'Centauri Aqua', 'Alpha Centauri A', 2500.0, true, false, 10000, NULL, NULL);
INSERT INTO public.planet VALUES (82, 'M87-I', 'Messier 87', 5000.0, false, false, 9800, NULL, NULL);
INSERT INTO public.planet VALUES (83, 'M87-II', 'Messier 87', 4200.0, false, true, 7600, NULL, NULL);
INSERT INTO public.planet VALUES (84, 'Orionis Major', 'Betelgeuse', 10.0, false, true, 15000, NULL, NULL);
INSERT INTO public.planet VALUES (85, 'Orionis Minor', 'Betelgeuse', 8.0, false, false, 13500, NULL, NULL);
INSERT INTO public.planet VALUES (87, 'Mars', 'Sun', 4600.0, false, true, 6779, NULL, NULL);
INSERT INTO public.planet VALUES (88, 'Jupiter', 'Sun', 4600.0, false, true, 139822, NULL, NULL);
INSERT INTO public.planet VALUES (89, 'Saturn', 'Sun', 4600.0, false, true, 116464, NULL, NULL);
INSERT INTO public.planet VALUES (86, 'Earth', 'Sun', 4540.0, true, true, 12742, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 'Milky Way', 4370.0, 1, NULL);
INSERT INTO public.star VALUES (3, 'Messier 87', 'Messier 87 (M87)', 10000.0, NULL, NULL);
INSERT INTO public.star VALUES (4, 'L2 Puppis (L2 Pup)', 'Milky Way', 10.0, 15, NULL);
INSERT INTO public.star VALUES (5, 'NGC 4254 (The Virgo Cluster)', 'Messier 87 (M87)', 10000.0, NULL, NULL);
INSERT INTO public.star VALUES (1, 'Sirius A', 'Milky Way', 250.0, 2, NULL);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 'Milky Way', 9.0, 18, NULL);
INSERT INTO public.star VALUES (7, 'Sun', 'Milky Way', 4600.0, 2, NULL);


--
-- Name: black_holes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_holes_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 80, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 89, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: black_holes black_holes_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_id_key UNIQUE (black_holes_id);


--
-- Name: black_holes black_holes_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_name_key UNIQUE (name);


--
-- Name: black_holes black_holes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_pkey PRIMARY KEY (black_holes_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (galaxy);


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
    ADD CONSTRAINT planet_name_key UNIQUE (planet);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (star);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_belongs_to_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_belongs_to_planet_fkey FOREIGN KEY (planet) REFERENCES public.planet(planet);


--
-- Name: planet planet_belongs_to_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_belongs_to_star_fkey FOREIGN KEY (star) REFERENCES public.star(star);


--
-- Name: star star_belongs_to_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_belongs_to_galaxy_fkey FOREIGN KEY (galaxy) REFERENCES public.galaxy(galaxy);


--
-- PostgreSQL database dump complete
--

