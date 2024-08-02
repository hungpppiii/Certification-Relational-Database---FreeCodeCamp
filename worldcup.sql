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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    game_id integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_teams_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_teams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_teams_id_seq OWNER TO freecodecamp;

--
-- Name: teams_teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_teams_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_teams_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (72, 'Final', 123, 124, 4, 2, 2018);
INSERT INTO public.games VALUES (73, 'Third Place', 125, 126, 2, 0, 2018);
INSERT INTO public.games VALUES (74, 'Semi-Final', 124, 126, 2, 1, 2018);
INSERT INTO public.games VALUES (75, 'Semi-Final', 123, 125, 1, 0, 2018);
INSERT INTO public.games VALUES (76, 'Quarter-Final', 124, 127, 3, 2, 2018);
INSERT INTO public.games VALUES (77, 'Quarter-Final', 126, 128, 2, 0, 2018);
INSERT INTO public.games VALUES (78, 'Quarter-Final', 125, 129, 2, 1, 2018);
INSERT INTO public.games VALUES (79, 'Quarter-Final', 123, 130, 2, 0, 2018);
INSERT INTO public.games VALUES (80, 'Eighth-Final', 126, 131, 2, 1, 2018);
INSERT INTO public.games VALUES (81, 'Eighth-Final', 128, 132, 1, 0, 2018);
INSERT INTO public.games VALUES (82, 'Eighth-Final', 125, 133, 3, 2, 2018);
INSERT INTO public.games VALUES (83, 'Eighth-Final', 129, 134, 2, 0, 2018);
INSERT INTO public.games VALUES (84, 'Eighth-Final', 124, 135, 2, 1, 2018);
INSERT INTO public.games VALUES (85, 'Eighth-Final', 127, 136, 2, 1, 2018);
INSERT INTO public.games VALUES (86, 'Eighth-Final', 130, 137, 2, 1, 2018);
INSERT INTO public.games VALUES (87, 'Eighth-Final', 123, 138, 4, 3, 2018);
INSERT INTO public.games VALUES (88, 'Final', 139, 138, 1, 0, 2014);
INSERT INTO public.games VALUES (89, 'Third Place', 140, 129, 3, 0, 2014);
INSERT INTO public.games VALUES (90, 'Semi-Final', 138, 140, 1, 0, 2014);
INSERT INTO public.games VALUES (91, 'Semi-Final', 139, 129, 7, 1, 2014);
INSERT INTO public.games VALUES (92, 'Quarter-Final', 140, 141, 1, 0, 2014);
INSERT INTO public.games VALUES (93, 'Quarter-Final', 138, 125, 1, 0, 2014);
INSERT INTO public.games VALUES (94, 'Quarter-Final', 129, 131, 2, 1, 2014);
INSERT INTO public.games VALUES (95, 'Quarter-Final', 139, 123, 1, 0, 2014);
INSERT INTO public.games VALUES (96, 'Eighth-Final', 129, 142, 2, 1, 2014);
INSERT INTO public.games VALUES (97, 'Eighth-Final', 131, 130, 2, 0, 2014);
INSERT INTO public.games VALUES (98, 'Eighth-Final', 123, 143, 2, 0, 2014);
INSERT INTO public.games VALUES (99, 'Eighth-Final', 139, 144, 2, 1, 2014);
INSERT INTO public.games VALUES (100, 'Eighth-Final', 140, 134, 2, 1, 2014);
INSERT INTO public.games VALUES (101, 'Eighth-Final', 141, 145, 2, 1, 2014);
INSERT INTO public.games VALUES (102, 'Eighth-Final', 138, 132, 1, 0, 2014);
INSERT INTO public.games VALUES (103, 'Eighth-Final', 125, 146, 2, 1, 2014);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (123, 'France');
INSERT INTO public.teams VALUES (124, 'Croatia');
INSERT INTO public.teams VALUES (125, 'Belgium');
INSERT INTO public.teams VALUES (126, 'England');
INSERT INTO public.teams VALUES (127, 'Russia');
INSERT INTO public.teams VALUES (128, 'Sweden');
INSERT INTO public.teams VALUES (129, 'Brazil');
INSERT INTO public.teams VALUES (130, 'Uruguay');
INSERT INTO public.teams VALUES (131, 'Colombia');
INSERT INTO public.teams VALUES (132, 'Switzerland');
INSERT INTO public.teams VALUES (133, 'Japan');
INSERT INTO public.teams VALUES (134, 'Mexico');
INSERT INTO public.teams VALUES (135, 'Denmark');
INSERT INTO public.teams VALUES (136, 'Spain');
INSERT INTO public.teams VALUES (137, 'Portugal');
INSERT INTO public.teams VALUES (138, 'Argentina');
INSERT INTO public.teams VALUES (139, 'Germany');
INSERT INTO public.teams VALUES (140, 'Netherlands');
INSERT INTO public.teams VALUES (141, 'Costa Rica');
INSERT INTO public.teams VALUES (142, 'Chile');
INSERT INTO public.teams VALUES (143, 'Nigeria');
INSERT INTO public.teams VALUES (144, 'Algeria');
INSERT INTO public.teams VALUES (145, 'Greece');
INSERT INTO public.teams VALUES (146, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 103, true);


--
-- Name: teams_teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_teams_id_seq', 146, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

