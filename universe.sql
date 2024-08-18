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
-- Name: additional; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.additional (
    additional_id integer NOT NULL,
    name character varying NOT NULL,
    x_location integer,
    y_location integer,
    note text
);


ALTER TABLE public.additional OWNER TO freecodecamp;

--
-- Name: additional_additional_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.additional_additional_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.additional_additional_id_seq OWNER TO freecodecamp;

--
-- Name: additional_additional_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.additional_additional_id_seq OWNED BY public.additional.additional_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    x_location integer NOT NULL,
    y_location integer NOT NULL,
    explored boolean,
    spiral boolean,
    life_probability numeric
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
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    x_location integer NOT NULL,
    y_location integer NOT NULL,
    life_probability numeric
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying NOT NULL,
    x_location integer NOT NULL,
    y_location integer NOT NULL,
    life_probability numeric
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    x_location integer NOT NULL,
    y_location integer NOT NULL,
    explored boolean,
    galaxy_id integer NOT NULL,
    gas boolean,
    life_probability numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: additional additional_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.additional ALTER COLUMN additional_id SET DEFAULT nextval('public.additional_additional_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: additional; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.additional VALUES (1, 'blabla1', 4440, 1198, 'note1');
INSERT INTO public.additional VALUES (2, 'blabla2', 7460, 954, 'note2');
INSERT INTO public.additional VALUES (3, 'blabla3', 8712, 4302, 'note3');
INSERT INTO public.additional VALUES (4, 'blabla4', 1374, 2422, 'note4');
INSERT INTO public.additional VALUES (5, 'blabla5', 9169, 9510, 'note5');
INSERT INTO public.additional VALUES (6, 'blabla6', 2194, 2556, 'note6');
INSERT INTO public.additional VALUES (7, 'blabla7', 9051, 5310, 'note7');
INSERT INTO public.additional VALUES (8, 'blabla8', 5458, 8441, 'note8');
INSERT INTO public.additional VALUES (9, 'blabla9', 109, 7830, 'note9');
INSERT INTO public.additional VALUES (10, 'blabla10', 3812, 1901, 'note10');
INSERT INTO public.additional VALUES (11, 'blabla11', 42, 5037, 'note11');
INSERT INTO public.additional VALUES (12, 'blabla12', 174, 2315, 'note12');
INSERT INTO public.additional VALUES (13, 'blabla13', 1373, 8709, 'note13');
INSERT INTO public.additional VALUES (14, 'blabla14', 5727, 2371, 'note14');
INSERT INTO public.additional VALUES (15, 'blabla15', 123, 6458, 'note15');
INSERT INTO public.additional VALUES (16, 'blabla16', 4244, 6437, 'note16');
INSERT INTO public.additional VALUES (17, 'blabla17', 4210, 1843, 'note17');
INSERT INTO public.additional VALUES (18, 'blabla18', 2804, 1470, 'note18');
INSERT INTO public.additional VALUES (19, 'blabla19', 2175, 2166, 'note19');
INSERT INTO public.additional VALUES (20, 'blabla20', 5188, 5063, 'note20');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'alpha', 7341, 8437, false, false, 0.582222156097318);
INSERT INTO public.galaxy VALUES (2, 'beta', 5929, 4773, true, false, 0.965379171692174);
INSERT INTO public.galaxy VALUES (3, 'gamma', 4114, 9115, true, true, 0.36920898184138);
INSERT INTO public.galaxy VALUES (4, 'zeta', 8658, 4300, true, true, 0.455095765616632);
INSERT INTO public.galaxy VALUES (5, 'theta', 9795, 3806, false, true, 0.0158934874516274);
INSERT INTO public.galaxy VALUES (6, 'majoneta', 5930, 400, true, false, 0.367239678660678);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'korfi', 141, 6605, 0.656641545145698);
INSERT INTO public.moon VALUES (2, 1, 'ir234', 7387, 9004, 0.474864668685248);
INSERT INTO public.moon VALUES (3, 1, 'qr234', 2208, 5841, 0.523692778379158);
INSERT INTO public.moon VALUES (4, 1, 'moonia', 6033, 8104, 0.345621160878232);
INSERT INTO public.moon VALUES (5, 1, 'lavenda', 9236, 4424, 0.645118936955272);
INSERT INTO public.moon VALUES (6, 1, 'quercus', 1463, 9804, 0.853766325256696);
INSERT INTO public.moon VALUES (7, 1, 'betula', 6175, 1866, 0.578380464704227);
INSERT INTO public.moon VALUES (8, 6, 'spirula', 2960, 9471, 0.494458456181668);
INSERT INTO public.moon VALUES (9, 6, 'savia', 3788, 6421, 0.320303753771792);
INSERT INTO public.moon VALUES (10, 6, 'lunia', 3751, 1376, 0.906649018447549);
INSERT INTO public.moon VALUES (11, 2, 'mania', 4725, 1317, 0.906219517687287);
INSERT INTO public.moon VALUES (12, 1, 'carata', 4373, 6235, 0.273420117678301);
INSERT INTO public.moon VALUES (13, 1, 'burata', 4849, 1838, 0.622666881055765);
INSERT INTO public.moon VALUES (14, 6, 'shrimp', 1974, 1045, 0.931292367976401);
INSERT INTO public.moon VALUES (15, 2, 'anala', 4300, 8664, 0.667756473745569);
INSERT INTO public.moon VALUES (16, 2, 'ulika', 1846, 3756, 0.199470512960794);
INSERT INTO public.moon VALUES (17, 6, 'marana', 3102, 760, 0.76473085222341);
INSERT INTO public.moon VALUES (18, 6, 'ursus', 8921, 8785, 0.0206225922252437);
INSERT INTO public.moon VALUES (19, 6, 'negro', 2204, 2247, 0.591682680745459);
INSERT INTO public.moon VALUES (20, 2, 'ilis', 1666, 5748, 0.852571348272245);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 6, 'terra', 1553, 5130, 0.187795276766592);
INSERT INTO public.planet VALUES (2, 1, 'marsia', 8659, 756, 0.341634515566972);
INSERT INTO public.planet VALUES (3, 6, 'urania', 1372, 1519, 0.769037030316613);
INSERT INTO public.planet VALUES (4, 3, 'jupiteria', 6445, 4926, 0.281388379383492);
INSERT INTO public.planet VALUES (5, 1, 'mercuria', 4255, 9014, 0.0236704470962088);
INSERT INTO public.planet VALUES (6, 1, 'venus', 7339, 8154, 0.891715838927108);
INSERT INTO public.planet VALUES (7, 3, 'LV210', 2618, 7137, 0.413643182833692);
INSERT INTO public.planet VALUES (8, 3, 'LV313', 7264, 2353, 0.456884920485639);
INSERT INTO public.planet VALUES (9, 1, 'LV123', 640, 9812, 0.619259989663722);
INSERT INTO public.planet VALUES (10, 6, 'LV003', 9038, 5362, 0.54714696469985);
INSERT INTO public.planet VALUES (11, 1, 'LV234', 8355, 2073, 0.115755795266267);
INSERT INTO public.planet VALUES (12, 1, 'LV222', 1031, 2957, 0.735279783812365);
INSERT INTO public.planet VALUES (13, 3, 'LV001', 5040, 2039, 0.478112690441336);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sol', 2541, 6688, false, 1, false, 0.262086268748639);
INSERT INTO public.star VALUES (2, 'proxima', 340, 6605, true, 1, false, 0.253033483283854);
INSERT INTO public.star VALUES (3, 'RK390', 3160, 9569, true, 1, true, 0.673877496418272);
INSERT INTO public.star VALUES (4, 'arakis', 2365, 7011, true, 1, true, 0.417050845699206);
INSERT INTO public.star VALUES (5, 'bombardia', 8876, 7747, false, 5, true, 0.109888125288574);
INSERT INTO public.star VALUES (6, 'venus', 5269, 840, true, 3, false, 0.0611584549020486);


--
-- Name: additional_additional_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.additional_additional_id_seq', 20, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: additional additional_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.additional
    ADD CONSTRAINT additional_name_key UNIQUE (name);


--
-- Name: additional additional_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.additional
    ADD CONSTRAINT additional_pkey PRIMARY KEY (additional_id);


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

