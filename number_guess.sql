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

DROP DATABASE number_guessing_db;
--
-- Name: number_guessing_db; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guessing_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guessing_db OWNER TO freecodecamp;

\connect number_guessing_db

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    id integer NOT NULL,
    login character varying(22) NOT NULL,
    trials integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_id_seq OWNER TO freecodecamp;

--
-- Name: games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_id_seq OWNED BY public.games.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    login character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: games id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN id SET DEFAULT nextval('public.games_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 'user_1744239487766', 762);
INSERT INTO public.games VALUES (2, 'user_1744239487766', 90);
INSERT INTO public.games VALUES (3, 'user_1744239487765', 923);
INSERT INTO public.games VALUES (4, 'user_1744239487765', 355);
INSERT INTO public.games VALUES (5, 'user_1744239487766', 603);
INSERT INTO public.games VALUES (6, 'user_1744239487766', 434);
INSERT INTO public.games VALUES (7, 'user_1744239487766', 434);
INSERT INTO public.games VALUES (8, 'user_1744239519123', 992);
INSERT INTO public.games VALUES (9, 'user_1744239519123', 88);
INSERT INTO public.games VALUES (10, 'user_1744239519122', 701);
INSERT INTO public.games VALUES (11, 'user_1744239519122', 619);
INSERT INTO public.games VALUES (12, 'user_1744239519123', 97);
INSERT INTO public.games VALUES (13, 'user_1744239519123', 906);
INSERT INTO public.games VALUES (14, 'user_1744239519123', 496);
INSERT INTO public.games VALUES (15, 'user_1744239689526', 513);
INSERT INTO public.games VALUES (16, 'user_1744239689526', 120);
INSERT INTO public.games VALUES (17, 'user_1744239689525', 175);
INSERT INTO public.games VALUES (18, 'user_1744239689525', 765);
INSERT INTO public.games VALUES (19, 'user_1744239689526', 437);
INSERT INTO public.games VALUES (20, 'user_1744239689526', 999);
INSERT INTO public.games VALUES (21, 'user_1744239689526', 586);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('karol');
INSERT INTO public.users VALUES ('user_1744237894270');
INSERT INTO public.users VALUES ('user_1744237894269');
INSERT INTO public.users VALUES ('dupa');
INSERT INTO public.users VALUES ('abc');
INSERT INTO public.users VALUES ('as');
INSERT INTO public.users VALUES ('sfa');
INSERT INTO public.users VALUES ('aser');
INSERT INTO public.users VALUES ('swaf');
INSERT INTO public.users VALUES ('asdf');
INSERT INTO public.users VALUES ('user_1744238563315');
INSERT INTO public.users VALUES ('user_1744238563314');
INSERT INTO public.users VALUES ('asd');
INSERT INTO public.users VALUES ('asefr');
INSERT INTO public.users VALUES ('user_1744239354756');
INSERT INTO public.users VALUES ('user_1744239354755');
INSERT INTO public.users VALUES ('user_1744239487766');
INSERT INTO public.users VALUES ('user_1744239487765');
INSERT INTO public.users VALUES ('user_1744239519123');
INSERT INTO public.users VALUES ('user_1744239519122');
INSERT INTO public.users VALUES ('user_1744239689526');
INSERT INTO public.users VALUES ('user_1744239689525');


--
-- Name: games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_id_seq', 21, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (login);


--
-- Name: games games_login_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_login_fkey FOREIGN KEY (login) REFERENCES public.users(login);


--
-- PostgreSQL database dump complete
--

