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
-- Name: cluster; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cluster (
    cluster_id integer NOT NULL,
    galaxy_id integer,
    type character varying(20),
    name character varying(20) NOT NULL
);


ALTER TABLE public.cluster OWNER TO freecodecamp;

--
-- Name: cluster_cluster_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cluster_cluster_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cluster_cluster_id_seq OWNER TO freecodecamp;

--
-- Name: cluster_cluster_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cluster_cluster_id_seq OWNED BY public.cluster.cluster_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    numofstars numeric,
    diameter_light_years integer,
    galaxy_type character varying(20),
    shape character varying(20)
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
    name character varying(20) NOT NULL,
    planet_id integer,
    age_billion integer,
    size_km double precision,
    shape character varying(20)
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
    name character varying(20) NOT NULL,
    star_id integer,
    hasmoon boolean,
    description text,
    age_billion double precision,
    has_life boolean,
    type character varying(20)
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
    name character varying(20) NOT NULL,
    galaxy_id integer,
    hasplanets boolean,
    age_billion double precision,
    type character varying(30)
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
-- Name: cluster cluster_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster ALTER COLUMN cluster_id SET DEFAULT nextval('public.cluster_cluster_id_seq'::regclass);


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
-- Data for Name: cluster; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cluster VALUES (1, 1, 'Globular', 'Omega Centauri');
INSERT INTO public.cluster VALUES (2, 1, 'Globular', '47 Tucanae');
INSERT INTO public.cluster VALUES (3, 1, 'Globular', 'Messier 13');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000000000, 100000, 'barred spiral galaxy', 'spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000000000000, 152000, 'barred spiral galaxy', 'spiral');
INSERT INTO public.galaxy VALUES (3, 'Messier 81', 25000000000, 92000, 'grand design spiral', 'spiral');
INSERT INTO public.galaxy VALUES (4, 'Messier 51a', 100000000000, 77000, 'grand design spiral', 'spiral');
INSERT INTO public.galaxy VALUES (5, 'Black Eye', 100000000000, 70000, 'pinwheel spiral', 'spiral');
INSERT INTO public.galaxy VALUES (6, 'Hoags Object', 8000000000, 10000, 'background ring', 'ring');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 5, 3475, 'sphere');
INSERT INTO public.moon VALUES (2, 'Titan', 7, 5, 5140, 'oblate ellipsoid');
INSERT INTO public.moon VALUES (3, 'Enceladus', 7, 1, 505, 'scalene ellipsoid');
INSERT INTO public.moon VALUES (4, 'Mimas', 7, NULL, 349, 'oblate');
INSERT INTO public.moon VALUES (5, 'Dione', 7, 4, 1123, 'sphere');
INSERT INTO public.moon VALUES (6, 'Iapetus', 7, 5, 1471, 'walnut');
INSERT INTO public.moon VALUES (7, 'Tethys', 7, 5, 1062, 'triaxial ellipsoid');
INSERT INTO public.moon VALUES (8, 'Hyperion', 7, 5, 1000, 'nonspherical');
INSERT INTO public.moon VALUES (9, 'Epimethus', 7, 4, 1150, 'potato');
INSERT INTO public.moon VALUES (10, 'Telesto', 7, 5, 240, 'flat, potato-like');
INSERT INTO public.moon VALUES (11, 'Europa', 8, 5, 3122, 'sphere');
INSERT INTO public.moon VALUES (12, 'Ganymede', 8, 5, 5268, 'nearly spherical');
INSERT INTO public.moon VALUES (13, 'Io', 8, 5, 3643, 'slight ellipsoid');
INSERT INTO public.moon VALUES (14, 'Callisto', 8, 4, 4821, 'nearly spherical');
INSERT INTO public.moon VALUES (15, 'Amalthea', 8, 5, 262, 'potato-like');
INSERT INTO public.moon VALUES (16, 'Kallichore', 8, 4, 2, 'irregularly shaped');
INSERT INTO public.moon VALUES (18, 'Euporie', 8, 5, 2, 'irregular');
INSERT INTO public.moon VALUES (19, 'Adrastea', 8, 5, 4480, 'irregular');
INSERT INTO public.moon VALUES (20, 'Himalia', 8, 5, 170, 'non-spherical');
INSERT INTO public.moon VALUES (21, 'Orthosie', 8, 5, 170, 'non-spherical');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Mercury', 1, false, 'a rocky, terrestrial planet with a large metallic core', 4.503, false, 'Terrestrial');
INSERT INTO public.planet VALUES (1, 'Earth', 1, true, 'a rocky, terrestrial planet, the third from the Sun and the only known to harbor life, featuring a solid, dynamic surface with mountains, valleys, and oceans, and a unique atmosphere that sustains life.', 4.543, true, 'Terrestrial');
INSERT INTO public.planet VALUES (3, 'Venus', 1, false, 'a hot, rocky planet with a scorching surface', 4.503, false, 'Terrestrial');
INSERT INTO public.planet VALUES (4, 'Mars', 1, true, 'a cold, dusty, and rocky desert world with a thin atmosphere', 4.603, false, 'Terrestrial');
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, true, 'a gas giant composed primarily of hydrogen and helium', 4.603, false, 'Gas Giant');
INSERT INTO public.planet VALUES (6, 'Saturn', 1, true, 'a gas giant known for its prominent ring system', 4.503, false, 'Gas Giant');
INSERT INTO public.planet VALUES (7, 'Uranus', 1, true, 'a blue-green, ice giant with a distinctive sideways tilt', 4.503, false, 'Ice Giant');
INSERT INTO public.planet VALUES (8, 'Neptune', 1, true, 'a gas giant and ice giant', 4.503, false, 'Ice Giant');
INSERT INTO public.planet VALUES (9, 'b (Taphao Thong', 6, false, 'a gas giant exoplanet that orbits a G-type star', 6.5, false, 'Gas Giant');
INSERT INTO public.planet VALUES (10, 'c (Taphao Kaew)', 6, false, 'gas giant exoplanet, formally named Taphao Kaew, orbiting the star 47 Ursae Majoris at a distance of 3.6 AU', 6.5, false, 'Gas Giant');
INSERT INTO public.planet VALUES (11, 'd', 6, false, 'a gas giant exoplanet orbiting the star 47 Ursae Majoris', 6.5, false, 'Gas Giant');
INSERT INTO public.planet VALUES (12, 'b', 7, false, '', NULL, false, 'Terrestial');
INSERT INTO public.planet VALUES (13, 'c', 7, false, '', NULL, false, 'Terrestial');
INSERT INTO public.planet VALUES (15, 'b_d', 7, false, '', NULL, false, 'Terrestial');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sirius', 1, false, 230, 'Main-Sequence');
INSERT INTO public.star VALUES (3, 'Mirach', 2, false, NULL, 'Red Giant');
INSERT INTO public.star VALUES (4, 'Alpheratz', 2, false, 0.06, 'Blue-White Subgiant');
INSERT INTO public.star VALUES (1, 'Sun', 1, true, 4.5, 'G2V');
INSERT INTO public.star VALUES (5, 'Betelgeuse', 1, false, 0.01, 'Red Supergiant');
INSERT INTO public.star VALUES (6, '47 Ursae Majoris', 1, true, 6.5, 'Yellow Dwarf');
INSERT INTO public.star VALUES (7, 'Barnards Star', 1, true, 10.01, 'Red Dwarf');


--
-- Name: cluster_cluster_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cluster_cluster_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 2, true);


--
-- Name: cluster cluster_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster
    ADD CONSTRAINT cluster_pkey PRIMARY KEY (cluster_id);


--
-- Name: cluster constraint_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster
    ADD CONSTRAINT constraint_name UNIQUE (name);


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
-- Name: cluster cluster_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster
    ADD CONSTRAINT cluster_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

