--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1


--
-- Name: Monuments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE IF NOT EXISTS public.Monuments (
                                           "OSM_ID" BIGINT PRIMARY KEY ,
                                           "name" TEXT,
                                           "Country" TEXT,
                                           "city" TEXT,
                                           "Longitude" NUMERIC(15, 13),
                                           "Latitude" NUMERIC(10, 8),
                                           "Adress" TEXT,
                                           "type" TEXT,
                                           "Opening_Hours" TEXT,
                                           "Email" TEXT,
                                           "Phone" BIGINT
);

ALTER TABLE public.Monuments OWNER TO postgres;

INSERT INTO public.Monuments ("OSM_ID", "name", "Country", "city", "Longitude", "Latitude", "Adress", "type", "Opening_Hours", "Email", "Phone")
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

