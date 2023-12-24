--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1


--
-- Name: Monuments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE IF NOT EXISTS public.monuments (
                                           "id" BIGINT PRIMARY KEY ,
                                           "name" TEXT,
                                           "country" TEXT,
                                           "city" TEXT,
                                           "longitude" NUMERIC(15, 13),
                                           "latitude" NUMERIC(10, 8),
                                           "address" TEXT,
                                           "type" TEXT,
                                           "opening_hours" TEXT,
                                           "email" TEXT,
                                           "phone" BIGINT
);

ALTER TABLE public.monuments OWNER TO postgres;

truncate public.monuments;

INSERT INTO public.monuments ("id", "name", "country", "city", "longitude", "latitude", "address", "type", "opening_hours", "email", "phone")
VALUES (2024605291,'Меморијален центар АСНОМ','North Macedonia','Pelince',21.8500367,42.2782511,'Memorial Center ASNOM, R1207, Pelince, North Macedonia','memorial','always open',NULL,NULL);





--
-- Data for Name: Monuments; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: Monuments Monuments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--



--
-- PostgreSQL database dump complete
--

