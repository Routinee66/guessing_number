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

DROP DATABASE guess;
--
-- Name: guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE guess OWNER TO freecodecamp;

\connect guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO freecodecamp;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (77, 'user_1659007571273', NULL, NULL);
INSERT INTO public.users VALUES (78, 'user_1659007571272', NULL, NULL);
INSERT INTO public.users VALUES (79, 'user_1659007578208', NULL, NULL);
INSERT INTO public.users VALUES (80, 'user_1659007578207', NULL, NULL);
INSERT INTO public.users VALUES (146, 'user_1659010063652', 2, 476);
INSERT INTO public.users VALUES (82, 'user_1659007590851', 2, 19);
INSERT INTO public.users VALUES (81, 'user_1659007590852', 3, 255);
INSERT INTO public.users VALUES (145, 'user_1659010063653', 3, 107);
INSERT INTO public.users VALUES (101, 'user_1659007958495', 2, 125);
INSERT INTO public.users VALUES (84, 'user_1659007623616', 2, 596);
INSERT INTO public.users VALUES (83, 'user_1659007623617', 3, 52);
INSERT INTO public.users VALUES (100, 'user_1659007958496', 3, 343);
INSERT INTO public.users VALUES (116, 'user_1659008584920', 2, 405);
INSERT INTO public.users VALUES (132, 'user_1659009360273', 2, 127);
INSERT INTO public.users VALUES (115, 'user_1659008584921', 3, 21);
INSERT INTO public.users VALUES (131, 'user_1659009360274', 3, 155);
INSERT INTO public.users VALUES (87, 'user_1659007785958', 2, 146);
INSERT INTO public.users VALUES (103, 'user_1659007981964', 2, 237);
INSERT INTO public.users VALUES (86, 'user_1659007785959', 3, 447);
INSERT INTO public.users VALUES (102, 'user_1659007981965', 3, 119);
INSERT INTO public.users VALUES (89, 'user_1659007793744', 2, 539);
INSERT INTO public.users VALUES (88, 'user_1659007793745', 3, 165);
INSERT INTO public.users VALUES (105, 'user_1659007985385', 2, 168);
INSERT INTO public.users VALUES (104, 'user_1659007985386', 3, 133);
INSERT INTO public.users VALUES (106, 'cek3', NULL, NULL);
INSERT INTO public.users VALUES (91, 'user_1659007797074', 2, 554);
INSERT INTO public.users VALUES (90, 'user_1659007797075', 3, 307);
INSERT INTO public.users VALUES (118, 'user_1659008742237', 2, 494);
INSERT INTO public.users VALUES (117, 'user_1659008742238', 3, 1);
INSERT INTO public.users VALUES (93, 'user_1659007846354', 2, 326);
INSERT INTO public.users VALUES (92, 'user_1659007846355', 3, 249);
INSERT INTO public.users VALUES (108, 'user_1659008058235', 2, 150);
INSERT INTO public.users VALUES (107, 'user_1659008058236', 3, 262);
INSERT INTO public.users VALUES (134, 'user_1659009401187', 2, 220);
INSERT INTO public.users VALUES (95, 'user_1659007868739', 2, 421);
INSERT INTO public.users VALUES (94, 'user_1659007868740', 3, 322);
INSERT INTO public.users VALUES (133, 'user_1659009401188', 3, 117);
INSERT INTO public.users VALUES (110, 'user_1659008062437', 2, 520);
INSERT INTO public.users VALUES (109, 'user_1659008062438', 3, 730);
INSERT INTO public.users VALUES (97, 'user_1659007874455', 2, 466);
INSERT INTO public.users VALUES (96, 'user_1659007874456', 3, 362);
INSERT INTO public.users VALUES (120, 'user_1659008907497', 2, 502);
INSERT INTO public.users VALUES (119, 'user_1659008907498', 3, 158);
INSERT INTO public.users VALUES (99, 'user_1659007878299', 2, 258);
INSERT INTO public.users VALUES (98, 'user_1659007878300', 3, 298);
INSERT INTO public.users VALUES (148, 'user_1659010072574', 2, 708);
INSERT INTO public.users VALUES (147, 'user_1659010072575', 3, 127);
INSERT INTO public.users VALUES (112, 'user_1659008106490', 2, 283);
INSERT INTO public.users VALUES (111, 'user_1659008106491', 3, 289);
INSERT INTO public.users VALUES (85, 'cek2', 8, 1);
INSERT INTO public.users VALUES (122, 'user_1659008925555', 2, 158);
INSERT INTO public.users VALUES (114, 'user_1659008321792', 2, 226);
INSERT INTO public.users VALUES (113, 'user_1659008321793', 3, 131);
INSERT INTO public.users VALUES (121, 'user_1659008925556', 3, 634);
INSERT INTO public.users VALUES (136, 'user_1659009404863', 2, 161);
INSERT INTO public.users VALUES (135, 'user_1659009404864', 3, 199);
INSERT INTO public.users VALUES (124, 'user_1659009280822', 2, 160);
INSERT INTO public.users VALUES (123, 'user_1659009280823', 3, 322);
INSERT INTO public.users VALUES (150, 'user_1659010129665', 2, 298);
INSERT INTO public.users VALUES (138, 'user_1659009988603', 2, 67);
INSERT INTO public.users VALUES (126, 'user_1659009287080', 2, 838);
INSERT INTO public.users VALUES (125, 'user_1659009287081', 3, 524);
INSERT INTO public.users VALUES (137, 'user_1659009988604', 3, 248);
INSERT INTO public.users VALUES (149, 'user_1659010129666', 3, 328);
INSERT INTO public.users VALUES (128, 'user_1659009350535', 2, 277);
INSERT INTO public.users VALUES (127, 'user_1659009350536', 3, 483);
INSERT INTO public.users VALUES (140, 'user_1659010007599', 2, 315);
INSERT INTO public.users VALUES (139, 'user_1659010007600', 3, 33);
INSERT INTO public.users VALUES (130, 'user_1659009354321', 2, 676);
INSERT INTO public.users VALUES (129, 'user_1659009354322', 3, 137);
INSERT INTO public.users VALUES (142, 'user_1659010011233', 2, 236);
INSERT INTO public.users VALUES (141, 'user_1659010011234', 3, 187);
INSERT INTO public.users VALUES (143, 'user_1659010034760', NULL, NULL);
INSERT INTO public.users VALUES (144, 'user_1659010034759', NULL, NULL);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_id_seq', 150, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- PostgreSQL database dump complete
--

