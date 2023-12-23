--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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
-- Name: Monuments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Monuments" (
                                    "OSM_ID" bigint NOT NULL,
                                    "Name" text,
                                    "Country" text,
                                    "City" text,
                                    "Longitude" double precision,
                                    "Latitude" double precision,
                                    "Adress" text,
                                    "Heritage_Type" text,
                                    "Opening_Hours" text,
                                    "Email_adress" text,
                                    "Phone" bigint
);


ALTER TABLE public."Monuments" OWNER TO postgres;

--
-- Data for Name: Monuments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Monuments" ("OSM_ID", "Name", "Country", "City", "Longitude", "Latitude", "Adress", "Heritage_Type", "Opening_Hours", "Email_adress", "Phone") FROM stdin;
2024605291	Memorijalen centar ASNOM	North Macedonia	Pelince	21.8500367	42.2782511	Memorial Center ASNOM, R1207, Pelince, North Macedonia	memorial	always open	\N	\N
1879461479	Kokino	North Macedonia	Kokino	21.953118	42.2633818	Kokino, R2244, Kokino, North Macedonia	archaeological_site	always open	\N	38972213249
356302520	Sv. Velikomachenik Georgij	North Macedonia	Staro Nagorichane	21.8280767762955	42.19823985	Church of St. George, R1207, Staro Nagorichane, North Macedonia	church	Mon-Sunday 07:00-19:00	\N	38974440645
1879436069	Kostoperska Karpa	North Macedonia	Mlado Nagorichane	21.809838	42.1706665	Kostoperska Karpa, A2, Mlado Nagorichane, North Macedonia	archaeological_site	always open	\N	38971615016
2616082758	Zebrnjak	North Macedonia	Mlado Nagorichane	21.7853235	42.1491368	Zebrnjak, R2237, 1300 Mlado Nagorichane, North Macedonia	memorial	always open	\N	38979405111
159068224	Spomenik Kosturnica	North Macedonia	Kumanovo	21.7226476778911	42.1454142	Spomenik Kosturnica, Sredorek, 1300 Kumanovo, North Macedonia	monument	\N	\N	38977734634
1995790447	Josip Broz - Tito	North Macedonia	Kumanovo	21.7194275	42.1355778	Josip Broz - Tito, Ivo Lola Ribar, 1300 Kumanovo, North Macedonia	monument	\N	\N	38973463626
1708412126	Zhena	North Macedonia	Kumanovo	21.7200501	42.1355189	Zena, Ivo Lola Ribar, 1300 Kumanovo, North Macedonia	monument	\N	\N	38975468954
2136716883	Kude sat	North Macedonia	Kumanovo	21.7192303	42.1346962	Kude sat, Gane georgiev, 1300 Kumanovo, North Macedonia	monument	\N	\N	38978211542
182927657	Manastir Sv. Bogorodica	North Macedonia	Pobozhje	21.4282950847089	42.12561345	St. Holy Mother of God Monastery, R2239, Pobozhje, North Macedonia	attraction	\N	\N	38974082477
182933841	Manastir Sv. Nikola	North Macedonia	Brodec	21.4695997312031	42.10977925	Saint Nicholas Monastery, Ljubanci - Brodec, Brodec, North Macedonia	attraction	\N	\N	38979882985
453048240	sv. Trojica	North Macedonia	Banjane	21.37854295	42.1027654	Sv. Trojitca, Manastir Sv. Ilija, Banjane, North Macedonia	monastery	\N	\N	38977093068
5722266446	Konjuh	North Macedonia	Konjuh	21.9665342	42.1003011	R29277, Konjuh, North Macedonia	archaeological_site	always open	\N	38979628504
5724929432	Boshko Chapel	North Macedonia	Konjuh	21.9606298	42.0995746	Bosko Chapel, R29277, Konjuh, North Macedonia	wayside_shrine	\N	\N	38971783143
5724919828	Rotonda Konjuh	North Macedonia	Konjuh	21.9658672	42.0949995	Rotonda Konjuh, R29277, Konjuh, North Macedonia	ruins	\N	\N	38977498748
2829462221	Machka kamen	North Macedonia	Konjuh	21.9627449	42.0853984	Macka kamen, R29277, Konjuh, North Macedonia	archaeological_site	always open	\N	38972628705
1475331129	Davina Kula	North Macedonia	Gluvo	21.3548716	42.0843452	Davina Kula, A4, Gluvo, North Macedonia	archaeological_site	always open	\N	38973442711
2373710718	Cocev Kamen	North Macedonia	Shopsko Rudare	21.9862589	42.0836218	Cocev Kamen, Shopsko Rudare, Northeastern Region, North Macedonia	archaeological_site	always open	\N	38971328729
5055455123	Saat-kula	North Macedonia	Kratovo	22.1818109	42.0792053	Clock Tower, Brakja Miladinovi, Kratovo, North Macedonia	monument	\N	\N	38971988865
5055455125	Zlatkovicheva kula	North Macedonia	Kratovo	22.1809805	42.0788289	Zlatkovich Tower, Goce Delchev, Kratovo, North Macedonia	monument	\N	\N	38977859736
5055455126	Simikjeva kula	North Macedonia	Kratovo	22.1794714	42.0786957	Simikj Tower, Trajche Arsov, Kratovo, North Macedonia	monument	\N	\N	38972521104
5055432425	Emin-begova kula	North Macedonia	Kratovo	22.1823517	42.0769461	Emin Bey Tower, Skopska, Kratovo, North Macedonia	monument	\N	\N	38975099437
5055432426	Krsteva kula	North Macedonia	Kratovo	22.1826261	42.0768838	Krste's Tower, Skopska, Kratovo, North Macedonia	monument	\N	\N	38972574970
5055444426	Hadzhikostova kula	North Macedonia	Kratovo	22.1822635	42.0768628	Hadji Kostov Tower, Josif Daskalov, Kratovo, North Macedonia	monument	\N	\N	38974490991
1734593430	Gradishte kaj s. Brazda	North Macedonia	Brazda	21.398848	42.0766913	Gradiste kaj s.Brazda, R2239, Brazda, North Macedonia	archaeological_site	always open	\N	38973165201
470409981	Manastir Sv. Gjorgjija	North Macedonia	Kuchkovo	21.3001786	42.0690911	Manastir Sv. Gjorgjija, Ulica 103, Kuchkovo, North Macedonia	attraction	\N	\N	38974351917
1475333181	Golema Kula - Kuchkovo	North Macedonia	Gorno Svilare	21.2786993	42.0587494	Golema Kula - Kuchkovo, Street 1, 1060 Gorno Svilare, North Macedonia	archaeological_site	always open	\N	38975861203
1475328742	Rimska crkva	North Macedonia	Orman	21.3527926	42.0586697	Rimska crkva, Mother Teresa, 1060 Orman, North Macedonia	archaeological_site	always open	\N	38972841751
1475333182	Mala Kula - Kuchkovo	North Macedonia	Kuchkovo	21.2844339	42.0585741	Mala Kula - Kuchkovo, Ulica 103, Kuchkovo, North Macedonia	archaeological_site	always open	\N	38978506132
7508523397	Erol Gotak	North Macedonia	Brnjarci	21.5486015	42.0227044	Erol Gotak, Metodija Andonov Chento, 1041 Brnjarci, North Macedonia	memorial	always open	\N	38976310062
7508523396	Kiril Petrushevski	North Macedonia	Brnjarci	21.5480468	42.0225556	Kiril Petrushevski, Metodija Andonov Chento, 1041 Brnjarci, North Macedonia	memorial	always open	\N	38978609263
7508523395	Aco Angelovski	North Macedonia	Brnjarci	21.5476216	42.022416	Aco Angelovski, Metodija Andonov Chento, 1041 Brnjarci, North Macedonia	memorial	always open	\N	38977447938
180360206	Akvadukt Skopje	North Macedonia	Skopje	21.4189735	42.0222287	Skopje Aqueduct, Bulevar Slovenija, 1009 Skopje, North Macedonia	aqueduct	\N	\N	38971126139
424490169	Skupi	North Macedonia	Skopje	21.3882070029307	42.02043115	Scupi, Ulica 10, 1020 Skopje, North Macedonia	archaeological_site	always open	\N	38977863398
181986735	Lesnovski manastir	North Macedonia	Dreveno	22.2282939157113	42.01325205	Lesnovo Monastery, R1309, Dreveno, North Macedonia	attraction	\N	\N	38971265007
32885596	Francuski grobishta	North Macedonia	Skopje	21.4298353806119	42.00834675	French Cemetery, Samoilova, 1009 Skopje, North Macedonia	monument	\N	\N	38972211736
10733732764	99.4-025	North Macedonia	Skopje	21.3631045	42.0080767	99.4-025, Bulevar Makedonska Vojska, 1060 Skopje, North Macedonia	locomotive	\N	\N	38978158076
44039295	Jaja-pashina dzhamija	North Macedonia	Skopje	21.4421419901038	42.00754015	Yaya Pacha Mosque, Bulevard Cvetan Dimov, 1000 Skopje, North Macedonia	attraction	\N	\N	38978435386
172348137	Prirodonauchen Muzej	North Macedonia	Skopje	21.4174425	42.005709	Macedonian Museum of Natural History, Boulevard Ilinden, 1000 Skopje, North Macedonia	museum	Mon-Fri 08:00-16:00	\N	38971206230
4895300521	Hadzhi Balaban	North Macedonia	Skopje	21.4368762	42.0048505	Haji Balaban Masjid, Drvarska, 1009 Skopje, North Macedonia	monument	\N	\N	38975430483
9200216569	Dane Krapchev	North Macedonia	Skopje	21.4185013	42.0043082	Dane kraptzew, Albert Ajnshtajn, 1000 Skopje, North Macedonia	memorial	always open	\N	38977052851
32887087	Muzej na sovremenata umetnost	North Macedonia	Skopje	21.4329514419064	42.00388665	Contemporary Art Museum of Macedonia, Samoilova, 1000 Skopje, North Macedonia	museum	Mon-Fri 08:00-16:00	msu-info@msuskopje.org.mk	38977116988
367860262	Goce Delchev	North Macedonia	Skopje	21.4233737	42.0032812	Goce Delchev, Naum Naumovski Borche, 1111 Skopje, North Macedonia	monument	\N	\N	38977083104
44038732	Isa-begova dzhamija	North Macedonia	Skopje	21.4417614875537	42.0032292	Isa-begova dzhamija, Petre Georgiev, 1000 Skopje, North Macedonia	attraction	\N	\N	38978452557
5360062	Kurshumli-an	North Macedonia	Skopje	21.4368430190834	42.0031499	Kurshumli-an, Atanas Babata, 1000 Skopje, North Macedonia	museum	Mon-Fri 08:00-16:00	\N	38974776839
32812963	Muzej na Makedonija	North Macedonia	Skopje	21.4358070861854	42.0026418	Museum of Macedonia, Sv. Prohor Pchinjski, 1000 Skopje, North Macedonia	museum	Mon-Fri 08:00-16:00	\N	38972794603
172178304	Mustafa-pashina dzhamija	North Macedonia	Skopje	21.4354653054777	42.00202345	Mustafa Pasha's Mosque, Svekjarska, 1000 Skopje, North Macedonia	attraction	\N	\N	38976137980
44038503	Saat-kula	North Macedonia	Skopje	21.4413465229084	42.0019954	Saat-kula, Vasil Andzhelarski, 1000 Skopje, North Macedonia	attraction	\N	\N	38975825283
1857486060	Filip Vtori	North Macedonia	Skopje	21.4617772	42.0017233	Filip Vtori, Ploshtad Avtokomanda, 1001 Skopje, North Macedonia	monument	\N	\N	38975113791
4477202789	Vera Jocikj	North Macedonia	Skopje	21.4283664	42.0016804	Vera Jocik, Jordan Hadzhikonstantinov Dzhinot, 1111 Skopje, North Macedonia	monument	\N	\N	38974504785
231344771	Tumba Madzhari	North Macedonia	Skopje	21.5054241013394	42.0013717	Tumba Madzhari, 22, Skopje, North Macedonia	archaeological_site	always open	\N	38977055907
474869860	Turska Charshija	North Macedonia	Skopje	21.4371614252821	42.0011587	Turkish Bazaar, Leblebidzhiska, 1009 Skopje, North Macedonia	attraction	\N	\N	38971291090
180363121	Nacionalna galerija na Makedonija „Chifte-amam“	North Macedonia	Skopje	21.43727285	42.0011289	Chifte Hammam National Gallery of Macedonia, Leblebidzhiska, 1000 Skopje, North Macedonia	gallery	\N	contact@nationalgallery.mk	38978728721
369750026	Vlez na Skopskoto kale	North Macedonia	Skopje	21.4338778	42.0008716	Skopje Fortress Gate, Samoilova, 1111 Skopje, North Macedonia	city_gate	Mon-Sunday 07:00-19:00	\N	38979241323
4365876494	Mustafa-pashina dzhamija	North Macedonia	Skopje	21.4375046	42.000853	Murat Pasha Mosque, Bitpazarska, 1009 Skopje, North Macedonia	monument	\N	\N	38979219185
474873958	Skopsko kale	North Macedonia	Skopje	21.433047458508	42.00080145	Skopje Fortress, Samoilova, 1111 Skopje, North Macedonia	castle	Mon-Sunday 07:00-19:00	\N	38979779335
10006874002	Jakim D Stojkovski	North Macedonia	Probishtip	22.1778987	42.0001506	Jakim D Stojkovski, Jordan Stojanov, Probishtip, North Macedonia	memorial	always open	\N	38973167857
5360060	Kapan AN	North Macedonia	Skopje	21.4365900117805	42.00007785	Kapan AN, Salih Asim, 1000 Skopje, North Macedonia	attraction	\N	\N	38971283274
8433354043	Osloboditeli na Skopje	North Macedonia	Skopje	21.4292436	41.9998632	The Liberators of Skopje Monument, Boulevard Ilinden, 1111 Skopje, North Macedonia	monument	\N	\N	38978548561
8880547039	General Mihailo Apostolski	North Macedonia	Skopje	21.4485415	41.9998618	General Mihailo Apostolski, Alexander of Macedon Boulevard, 1001 Skopje, North Macedonia	monument	\N	\N	38977034227
1867151652	Skenderbeg	North Macedonia	Skopje	21.437162	41.9993163	Skanderbeg Square, 1111 Skopje, North Macedonia	memorial	always open	\N	38976736125
585158922	Ploshtad Skenderbeg	North Macedonia	Skopje	21.4371439773891	41.99928785	Skanderbeg Square, Dukjandzhik, Skopje, City of Skopje, North Macedonia	\N	\N	\N	38975290270
7102244287	Galerija RA	North Macedonia	Skopje	21.3865879	41.9989569	Gallery RA, Vojvoda Vasil Chakalarov 94, 1000 Skopje, North Macedonia	museum	Mon-Fri 08:00-16:00	galerija.ra@gmail.com	38975476410
8883349543	General Mihajlo Apostolski	North Macedonia	Skopje	21.4506665	41.9988251	General Mihajlo Apostolski, Belasica, 1001 Skopje, North Macedonia	memorial	always open	\N	38972902542
172171547	Nacionalna galerija „Daut-pashin amam“	North Macedonia	Skopje	21.43572365	41.9987239	Daut Pasha Hamam National Gallery, Ploshtad Karposhovo Vostanie, 1000 Skopje, North Macedonia	museum	Mon-Fri 08:00-16:00	contact@nationalgallery.mk	38971597523
175265123	Soboren hram Sveti Kliment Ohridski	North Macedonia	Skopje	21.4264089478023	41.99852765	Church of St. Clement of Ohrid, Boulevard Partizanski Odredi, 1000 Skopje, North Macedonia	attraction	\N	\N	38973785382
172186249	Memorijalen centar na holokaustot na Evreite od Makedonija	North Macedonia	Skopje	21.4333832383256	41.9984656	Holocaust Memorial Center for the Jews of Macedonia, Samoilova 2, 1000 Skopje, North Macedonia	memorial	Mon-Fri 08:00-16:00always open	info@holocaustfund.org.mk	38972043938
1859114111	Filip II Makedonski	North Macedonia	Skopje	21.4349949	41.9984602	Philip II of Macedon, Ploshtad Karposhovo Vostanie, 1111 Skopje, North Macedonia	memorial	always open	\N	38972376933
1866944575	Sv. Kliment Ohridski	North Macedonia	Skopje	21.4254968	41.9983057	Clement of Ohrid, Bulevard Kliment Ohridski, 1111 Skopje, North Macedonia	memorial	always open	\N	38979112952
172180530	Muzej na makedonskata borba	North Macedonia	Skopje	21.4331864657782	41.9979421	Museum of the Macedonian struggle, 11 Mart 1, 1000 Skopje, North Macedonia	museum	Mon-Fri 08:00-16:00	mmb@mmb.org.mk	38973901579
4161249330	Olimpija	North Macedonia	Skopje	21.4344182	41.9979046	Olympias, Ploshtad Karposhovo Vostanie, 1111 Skopje, North Macedonia	memorial	always open	\N	38978397277
4128156210	Sv. Kliment Ohridski i Naum Ohridski Chudotvorec	North Macedonia	Skopje	21.4341509	41.9975624	Saints Clement of Ohrid and Naum, Ploshtad Karposhovo Vostanie, 1111 Skopje, North Macedonia	memorial	always open	\N	38975357499
411079115	Kamen most	North Macedonia	Skopje	21.4334562	41.9972545	Kamen most, Stone Bridge, 1111 Skopje, North Macedonia	monument	\N	\N	38977585418
229930502	Arheoloshki muzej na Makedonija	North Macedonia	Skopje	21.4343656878028	41.9968813	Archaeological Museum of Macedonia, Most na civilizaciite vo Makedonija, 1000 Skopje, North Macedonia	museum	Mon-Fri 08:00-16:00	\N	38977821373
4161113453	Justinijan I	North Macedonia	Skopje	21.4323054	41.9968799	Justinian I, Macedonia Square, 1111 Skopje, North Macedonia	memorial	always open	\N	38978109317
4161113452	Dame Gruev	North Macedonia	Skopje	21.4321474	41.9964949	Dame Gruev, Macedonia Square, 1111 Skopje, North Macedonia	memorial	always open	\N	38978113010
10913797906	Spomenik „Solunski atentatori i Gemidzhii“	North Macedonia	Skopje	21.4328484	41.9964125	Spomenik „Solunski atentatori i Gemidzhii“, Ploshtad Makedonija, 1111 Skopje, North Macedonia	memorial	always open	\N	38979585315
553070358	Kolonada	North Macedonia	Skopje	21.4358443186497	41.9963886	Kolonada, Mother Teresa Square, 1111 Skopje, North Macedonia	monument	\N	\N	38979435128
5841674945	Most na civilizaciite	North Macedonia	Skopje	21.4339472	41.9963717	The Bridge of Civilizations in Macedonia, Bridge of Civilizations, 1111 Skopje, North Macedonia	memorial	always open	\N	38971461585
5711419372	Goce Delchev	North Macedonia	Skopje	21.4323793	41.9963577	Goce Delchev, Macedonia Square, 1111 Skopje, North Macedonia	memorial	always open	\N	38975994707
6987611917	Muzej na iluzii	North Macedonia	Skopje	21.4291373	41.9962134	Museum of illusions, Maksim Gorki 10, 1111 Skopje, North Macedonia	museum	Mon-Fri 08:00-16:00	\N	38975706954
176164721	Ploshtad Makedonija	North Macedonia	Skopje	21.4317366232432	41.996094	Macedonia Square, Debar Maalo, Skopje, City of Skopje, North Macedonia	\N	\N	\N	38972935784
8883349545	Blazhe Koneski	North Macedonia	Skopje	21.4408764	41.9960802	Blaže Koneski, Bulevar Krste Misirkov, 1001 Skopje, North Macedonia	monument	\N	\N	38977082646
8883349544	Krste Petkov Misirkov	North Macedonia	Skopje	21.4412009	41.9960184	Krste Petkov Misirkov, Kej Dimitar Vlahov, 1001 Skopje, North Macedonia	monument	\N	\N	38971232397
908273421	Voin na konj	North Macedonia	Skopje	21.4314474	41.9959035	Warrior on a Horse, Macedonia Square, 1111 Skopje, North Macedonia	monument	\N	\N	38971545708
476192899	Most na umetnosta	North Macedonia	Skopje	21.4359349693431	41.9957163	Bridge of Artists, Bridge of the Arts, 1111 Skopje, North Macedonia	attraction	\N	\N	38972157329
6054048485	Metodija Andonov - Chento	North Macedonia	Skopje	21.4306041	41.9957136	Metodija Andonov - Chento, Maksim Gorki, 1111 Skopje, North Macedonia	memorial	always open	\N	38975530614
4149143991	Car Samoil	North Macedonia	Skopje	21.4313414	41.9953917	Tsar Samuel, Macedonia Square, 1000 Skopje, North Macedonia	memorial	always open	\N	38975200525
5901740885	Spomen plocha na Majka Tereza	North Macedonia	Skopje	21.4319995	41.9952759	Mother Teresa Old House Place, 11 Oktomvri, 1000 Skopje, North Macedonia	memorial	always open	\N	38977320538
3713662739	Josip Broz - Tito	North Macedonia	Skopje	21.426153	41.9952169	Josip Broz Tito, Dimitrie Čupovski, 1000 Skopje, North Macedonia	memorial	always open	\N	38976068426
6054048494	Memorijalna kukja na Hristo Uzunov	North Macedonia	Skopje	21.4293515	41.9950349	Monument Hristo Uzunov, Nikola Vapcarov, 1111 Skopje, North Macedonia	memorial	always open	\N	38976848212
4380846206	Spomenik na Jurij Gagarin	North Macedonia	Skopje	21.4108745	41.9949279	Yuri Gagarin Monument, Yuri Gagarin, 1020 Skopje, North Macedonia	monument	\N	\N	38972764651
9026624343	Pavel Shatev	North Macedonia	Skopje	21.4326511	41.9945304	Pavel Šatev, 11 Oktomvri, 1111 Skopje, North Macedonia	monument	\N	\N	38972147297
239422349	Porta Makedonija	North Macedonia	Skopje	21.43242535	41.9944541	Porta Macedonia, 11 Oktomvri 4A, 1000 Skopje, North Macedonia	monument	\N	PortaMK@mmb.org.mk	38974719166
6821158694	Dvajca muzichari i eden chovek shto igra	North Macedonia	Skopje	21.4307922	41.9943288	2 musicians and one dancing man, Makedonija, 1111 Skopje, North Macedonia	memorial	always open	\N	38972124516
176051871	Spomen kukja na Majka Tereza	North Macedonia	Skopje	21.4308634552968	41.9938448	Memorial House of Mother Teresa, Makedonija, 1000 Skopje, North Macedonia	museum	Mon-Fri 08:00-16:00	info@memorialhouseofmotherteresa.org	38979539431
9078062189	Nevena Georgieva-Dunja	North Macedonia	Skopje	21.4332709	41.993726	Nevena Georgieva-Dunja, Dimitrie Chupovski, 1111 Skopje, North Macedonia	memorial	always open	\N	38971911756
367853384	Pitu Guli	North Macedonia	Skopje	21.433319	41.9936737	Pitu Guli, Dimitrie Chupovski, 1111 Skopje, North Macedonia	monument	\N	\N	38971408470
4271160712	Begova kula	North Macedonia	Skopje	21.4317487	41.9936684	Bey's Tower, Dimitrie Chupovski, 1111 Skopje, North Macedonia	monument	\N	\N	38973600207
4183631289	Prometej	North Macedonia	Skopje	21.4337226	41.993303	Prometheus, Dimitrie Chupovski, 1111 Skopje, North Macedonia	monument	\N	\N	38973553429
4386764089	Nikola Karev	North Macedonia	Skopje	21.4332009	41.9930188	Nikola Karev, Dimitrie Chupovski, 1111 Skopje, North Macedonia	monument	\N	\N	38979672445
9269907745	Atentat na Kiro Gligorov	North Macedonia	Skopje	21.4296159	41.9918182	Atentat of Kiro Gligorov, Makedonija, 1111 Skopje, North Macedonia	memorial	always open	\N	38974716634
176040285	Muzej na Grad Skopje	North Macedonia	Skopje	21.429198166348	41.99083115	Museum of the City of Skopje, Bulevard Makedonija, 1000 Skopje, North Macedonia	museum	Mon-Fri 08:00-16:00	\N	38979447468
244812164	El Kalem	North Macedonia	Arnakija	21.2876486945571	41.9869501	El Kalem, R1206, Arnakija, North Macedonia	museum	Mon-Fri 08:00-16:00	\N	38972335253
4266031693	Stara Rampa	North Macedonia	Skopje	21.4369668	41.986749	Stara Rampa, Bulevar Makedonija, 1111 Skopje, North Macedonia	monument	\N	\N	38972039766
4242928035	Todor Aleksandrov	North Macedonia	Skopje	21.439106	41.9834333	Todor Aleksandrov, Ivan Kozarov, 1111 Skopje, North Macedonia	monument	\N	\N	38974337841
7564125585	Goran Minoski	North Macedonia	Rogle	21.1745241	41.9781971	Goran Minoski, Masakr kaj Karpalak, Rogle, North Macedonia	memorial	always open	\N	38975213430
10733732766	83-064	North Macedonia	Skopje	21.4618597	41.9780627	83-064, 3 Makedonska Brigada, 1001 Skopje, North Macedonia	locomotive	\N	\N	38975872410
7473959214	PMK301 / PH-KXL	North Macedonia	Bunardjik	21.6157628	41.9779001	PMK301 / PH-KXL, A2, 1043 Bunardjik, North Macedonia	memorial	always open	\N	38976700871
7564125586	Marko Despotoski	North Macedonia	Rogle	21.1713626	41.977893	Marko Despotoski, Masakr kaj Karpalak, Rogle, North Macedonia	memorial	always open	\N	38976086032
7564103282	Sasho Kitanoski	North Macedonia	Rogle	21.1773385	41.977847	Sasho Kitanoski, Masakr kaj Karpalak, Rogle, North Macedonia	memorial	always open	\N	38971746549
7564103283	Branko Sekuloski	North Macedonia	Rogle	21.1679024	41.97753	Branko Sekuloski, Masakr kaj Karpalak, Rogle, North Macedonia	memorial	always open	\N	38975843326
7564125591	Pece Sekuloski	North Macedonia	Rogle	21.1770879	41.977042	Pece Sekuloski, R1206, Rogle, North Macedonia	memorial	always open	\N	38974634449
7564125589	Darko Veljanoski	North Macedonia	Rogle	21.1717935	41.9770406	Darko Veljanoski, R1206, Rogle, North Macedonia	memorial	always open	\N	38973753836
808916278	Masakr kaj Karpalak	North Macedonia	Rogle	21.1675648359758	41.9769697	Karpalak massacre, Rogle, Polog Region, North Macedonia	battlefield	\N	\N	38979020492
123273638	Manastir Sv. Pantelejmon	North Macedonia	Gorno Nerezi	21.3744835072828	41.9768751	Monastery Sv. Pantelejmon, R2138, 1000 Gorno Nerezi, North Macedonia	attraction	\N	\N	38971503474
7564125590	Vebi Rushitoski	North Macedonia	Rogle	21.1747438	41.9767893	Vebi Rushitoski, R1206, Rogle, North Macedonia	memorial	always open	\N	38972836608
7564125587	Erdovan Shabanoski	North Macedonia	Rogle	21.1675604	41.9767167	Erdovan Shabanoski, R1206, Rogle, North Macedonia	memorial	always open	\N	38976190344
7564103281	Nane Naumoski	North Macedonia	Rogle	21.1660504	41.9764851	Nane Naumoski, Masakr kaj Karpalak, Rogle, North Macedonia	memorial	always open	\N	38975126058
9673875423	Suhoi Su-25UB	North Macedonia	Miladinovci	21.6216919	41.9755167	Sukhoi Su25UB, A2, 1043 Miladinovci, North Macedonia	aircraft	\N	\N	38979063914
9673875424	Suhoi Su-25K	North Macedonia	Miladinovci	21.6219516	41.9754577	Sukhoi Su25K, A2, 1043 Miladinovci, North Macedonia	aircraft	\N	\N	38975085832
9673875425	Suhoi Su-25K	North Macedonia	Miladinovci	21.6221983	41.9753556	Sukhoi Su25K, A2, 1043 Miladinovci, North Macedonia	aircraft	\N	\N	38972903818
9673875426	Suhoi Su-25K	North Macedonia	Miladinovci	21.6224322	41.975287	Sukhoi Su25K, A2, 1043 Miladinovci, North Macedonia	aircraft	\N	\N	38976745665
3951819342	Markovi Kuli	North Macedonia	Skopje	21.4313461	41.9682709	Markovi Kuli, R2138, 1054 Skopje, North Macedonia	ruins	\N	\N	38973857498
229939246	Mileniumski krst	North Macedonia	Skopje	21.3945880069629	41.96497835	Millennium Cross, Karpi, 1054 Skopje, North Macedonia	attraction	\N	\N	38977022949
5932385385	Rezidencijata Glavinov	North Macedonia	Skopje	21.4422187	41.958616	Residence Glavinov, Hristo Tatarchev 292 A, 1000 Skopje, North Macedonia	castle	Mon-Sunday 07:00-19:00	aleksglavinov@gmail.com	38976729613
10914553383	Sveta Troica i Sveti Gjorgjija	North Macedonia	Matka	21.288822	41.9538189	Holy Trinity and Holy George, Sveta Nedela, Matka, North Macedonia	ruins	\N	\N	38975267125
537926854	Sv. Andrej	North Macedonia	Matka	21.2988152	41.952326	Sv. Andrej, Matka, City of Skopje, North Macedonia	attraction	\N	\N	38972726073
1831180502	Manastir Sv. Andrej	North Macedonia	Matka	21.2991931	41.9505936	Monastery St. Andrej, Přehrada Matka - hráz, Matka, North Macedonia	monument	\N	\N	38977183266
513644247	Sveta Nedela	North Macedonia	Matka	21.29151425	41.9497131	Holy Sunday, Sveta Nedela, Matka, North Macedonia	monastery	\N	\N	38978300039
184313963	Srednovekovna Kula	North Macedonia	Kochani	22.41208105	41.92340425	Medieval Tower, Krushevska, 2300 Kochani, North Macedonia	tower	\N	\N	38977750332
184307286	Srednovekovna Kula	North Macedonia	Kochani	22.4090663521406	41.921549	Medieval Tower, Ilindenska, 2300 Kochani, North Macedonia	tower	\N	\N	38979806924
444334991	Spomenik na slobodata	North Macedonia	Kochani	22.4069917	41.9188903	Monument of Freedom, Kirili i Metodij, 2300 Kochani, North Macedonia	monument	\N	\N	38974578203
1044325422	Spomenin na Slobodata	North Macedonia	Kochani	22.4069936376441	41.91888895	Freedom Monument, Kirili i Metodij, 2300 Kochani, North Macedonia	monument	\N	\N	38975023339
7947878810	Spomenik na Nikola Karev	North Macedonia	Kochani	22.412778	41.9156602	Monument to Nikola Karev, Kej na revolucijata, 2300 Kochani, North Macedonia	monument	\N	\N	38973119078
849621044	Loven Dom	North Macedonia	Kochani	22.413791841905	41.9151239	Loven Dom, 8mi Septemvri, 2300 Kochani, North Macedonia	museum	Mon-Fri 08:00-16:00	\N	38972886606
9661483288	Ljupcho Santov	North Macedonia	Kochani	22.410612	41.9143473	Ljupcho Santov, Stevo Teodosievski, 2300 Kochani, North Macedonia	monument	\N	\N	38976841684
9661472617	Brakjata Prosvetiteli Sv. Kiril i Metodij	North Macedonia	Kochani	22.4105061	41.9135927	Brakjata Prosvetiteli Sv. Kiril i Metodij, Gligor Apostolov Gocho, 2300 Kochani, North Macedonia	monument	\N	\N	38975813394
4378846992	Vila Varvarka	North Macedonia	Rakotinci	21.4333848	41.9130467	Vila Varvarka, R1106, 1050 Rakotinci, North Macedonia	castle	Mon-Sunday 07:00-19:00	\N	38977507015
3039854149	Spomenik na zhrtvi od NOV	North Macedonia	Radiovce	20.9636151	41.9062629	Spomenik na zhrtvi od NOV, 102, 1213 Radiovce, North Macedonia	monument	\N	\N	38978055215
177490047	Markov Manastir	North Macedonia	Markova Sushica	21.402077428719	41.89334405	Marko's Monastery, R104, 1054 Markova Sushica, North Macedonia	attraction	\N	\N	38977328037
5541143272	Terakota	North Macedonia	Vinica	22.5039935	41.8845661	Terakota, Angel of Vinica, 2310 Vinica, North Macedonia	memorial	always open	\N	38977427704
1272898175	Muzej Terakota	North Macedonia	Vinica	22.5049622	41.8841902	Museum Teracotta, Angel of Vinica 1a, 2310 Vinica, North Macedonia	museum	Mon-Fri 08:00-16:00	\N	38973207376
1110133260	Svet Krst	North Macedonia	Vinica	22.5106037306708	41.8789089	Svet Krst, 4-ta Makedonska Brigada, 2310 Vinica, North Macedonia	attraction	\N	\N	38979875511
1109661815	Vinichko Kale	North Macedonia	Vinica	22.5027352999978	41.87728705	Viničko Kale, 30 Avgust, 2310 Vinica, North Macedonia	ruins	\N	\N	38979257597
8402562316	VAM-304	North Macedonia	Katlanovo	21.6650899	41.8668125	VAM-304, R2131, 1034 Katlanovo, North Macedonia	monument	\N	\N	38974136611
839150822	Naroden Muzej	North Macedonia	Sveti Nikole	21.9419066842799	41.8650268	Naroden Muzej, Karposheva, 2220 Sveti Nikole, North Macedonia	museum	Mon-Fri 08:00-16:00	\N	38976412819
839150823	Spomenik na Narodoosloboditelnata borba	North Macedonia	Sveti Nikole	21.9388571030195	41.8647413	Spomenik na Narodoosloboditelnata borba, Kocho Racin, 2220 Sveti Nikole, North Macedonia	memorial	always open	\N	38975648872
839150824	Spomenik „Aleksandar Serafimov“	North Macedonia	Sveti Nikole	21.9398167511574	41.8647297	Spomenik „Aleksandar Serafimov“, City square Ilinden, 2220 Sveti Nikole, North Macedonia	monument	\N	\N	38975932703
7833094677	Spomenik Sv. Nikola	North Macedonia	Sveti Nikole	21.942062	41.8646892	Monument of St. Nicholas, Ploshtad Ilinden, 2220 Sveti Nikole, North Macedonia	monument	\N	\N	38976874583
7833095397	Spomenik „Lazar Kolishevski“	North Macedonia	Sveti Nikole	21.9410121	41.8644645	Spomenik „Lazar Kolishevski“, City square Ilinden, 2220 Sveti Nikole, North Macedonia	monument	\N	\N	38971952647
7836134125	Sv. Ilija	North Macedonia	Sveti Nikole	21.9386585	41.8627557	Sv. Ilija, Angel Trajchev, 2220 Sveti Nikole, North Macedonia	memorial	always open	\N	38971206377
514513452	Bilazora	North Macedonia	Sveti Nikole	21.9124754977322	41.84715315	Bilazora, Septemvriska, 2220 Sveti Nikole, North Macedonia	archaeological_site	always open	\N	38973868756
232843018	Markovi Kuli	North Macedonia	Letevci	21.6993359608108	41.83810685	Markovi Kuli, Friendship, Letevci, North Macedonia	castle	Mon-Sunday 07:00-19:00	\N	38975031959
677981810	Geoglif Sv. Nikole	North Macedonia	Dolno Crnilishte	21.9565055740668	41.82913655	Geoglif Sv. Nikole, R1204, 2220 Dolno Crnilishte, North Macedonia	archaeological_site	always open	\N	38976012284
3418320912	Masakr kaj Pusta Kula	North Macedonia	Rudnik	21.7360635	41.822914	Masakr kaj Pusta Kula, 10113, Rudnik, North Macedonia	memorial	always open	\N	38976582164
189909367	Bargala	North Macedonia	Radanje	22.2904031222993	41.79875415	Bargala, R2431, Radanje, North Macedonia	ruins	\N	\N	38976703289
2026119373	Saat Kula	North Macedonia	Gostivar	20.9108574	41.794932	Sahat Kula, Nikola Parapunov, 1230 Gostivar, North Macedonia	monument	\N	\N	38979607878
417361065	Isar	North Macedonia	Shtip	22.1869327893771	41.7387539	Isar, 4 ta Makedonska brigada, 2000 Shtip, North Macedonia	ruins	\N	\N	38971724422
417361056	Memorijalen kompleks na padnatite borci na Revolucijata	North Macedonia	Shtip	22.1875375952951	41.73838535	Memorijalen kompleks na padnatite borci na Revolucijata, 4 ta Makedonska brigada, 2000 Shtip, North Macedonia	memorial	always open	\N	38971649418
443072144	Bezisten Shtip	North Macedonia	Shtip	22.1926996616339	41.73754	Bezisten Shtip, Kuzman Josifovski Pitu, 2000 Shtip, North Macedonia	museum	Mon-Fri 08:00-16:00	\N	38978610681
679215630	Aleksandar Makedonski	North Macedonia	Shtip	22.1940374652225	41.73725115	Aleksandar Makedonski, Marshal Tito St., 2000 Shtip, North Macedonia	monument	\N	\N	38975298667
439347125	Muzej Shtip	North Macedonia	Shtip	22.1897512538222	41.73666625	Muzej Shtip, Marshal Tito St., 2000 Shtip, North Macedonia	museum	Mon-Fri 08:00-16:00	\N	38973027442
4357166289	Spomenik na zaginatite evrei	North Macedonia	Shtip	22.1903758	41.736405	Spomenik na zaginatite evrei, Marshal Tito St., 2000 Shtip, North Macedonia	monument	\N	\N	38974768227
445947375	Goce Delchev	North Macedonia	Shtip	22.18210515	41.73631045	Goce Delchev, Dimitar Vlahov, 2000 Shtip, North Macedonia	monument	\N	\N	38971068766
1146996488	Sv Kiril i Metodi	North Macedonia	Shtip	22.1882958446007	41.7362862	Sv Kiril i Metodi, Most Sv.Nikola, 2000 Shtip, North Macedonia	monument	\N	\N	38973700049
150596710	Spomen Kosturnica	North Macedonia	Veles	21.7894536830379	41.72329265	Kosturnica Memorial, Gancho Hadzhi Panzov, 1400 Veles, North Macedonia	museum	Mon-Fri 08:00-16:00	\N	38978794903
6349721704	Spomenik na Maleshevskiot narodnoosloboditelen odred	North Macedonia	Budinarci	22.6569551	41.7213441	Spomenik na Maleshevskiot (Maleshki) narodnoosloboditelen odred, Budinarci, Eastern Region, North Macedonia	memorial	always open	\N	38976777336
704079412	Veleshki Gemidzhija	North Macedonia	Veles	21.783420514608	41.716152	Veleshki Gemidzhija, R1312, 1400 Veles, North Macedonia	monument	\N	\N	38975362341
2026930302	Saat kula	North Macedonia	Veles	21.7840512	41.7140782	Saat kula, 8-mi Septemvri, 1400 Veles, North Macedonia	monument	\N	\N	38979391410
6535106716	Banjichko Kale	North Macedonia	Drenovo	21.628172	41.6952366	Banjica Fortress, R2344, Drenovo, North Macedonia	archaeological_site	always open	\N	38977515220
8901338318	Sultana	North Macedonia	Kjafa	21.0216359	41.6560282	Sultana, Papradishte - Kjafa, 6254 Kjafa, North Macedonia	memorial	always open	\N	38973024417
209092691	Stobi	North Macedonia	Gradsko	21.9732769754547	41.55197745	Stobi, Friendship, 1422 Gradsko, North Macedonia	archaeological_site	always open	contact@stobi.mk	38975287127
2350137461	Rimski teatar	North Macedonia	Gradsko	21.9751675	41.5516379	Roman theater, Friendship, 1422 Gradsko, North Macedonia	ruins	\N	\N	38976150209
226161294	Antichki teatar	North Macedonia	Gradsko	21.9745916461613	41.55140205	ancient theater of Stobi, Friendship, 1422 Gradsko, North Macedonia	ruins	\N	\N	38976267783
1050278253	Devini Kuli	North Macedonia	Devich	21.2374158050073	41.5417571	Devini Kuli, R1106, 6530 Devich, North Macedonia	archaeological_site	always open	\N	38972433449
875859703	Kale	North Macedonia	Zrze	21.3423074532259	41.5229554	Kale, R29375, 7505 Zrze, North Macedonia	archaeological_site	always open	\N	38971369263
1054098604	Sv. Nikola	North Macedonia	Zrze	21.349978474491	41.5183837	St. Nicholas, R29375, 7505 Zrze, North Macedonia	archaeological_site	always open	\N	38973913594
4585716598	Kitino Kale	North Macedonia	Kichevo	20.9663459	41.5130946	Kita Castle, Amit Chelopechanec, 6250 Kichevo, North Macedonia	castle	Mon-Sunday 07:00-19:00	\N	38974422973
2359124380	99.4-053	North Macedonia	Kichevo	20.951411	41.5126479	99.4-053, Boulevard Osloboduvanje, 6250 Kichevo, North Macedonia	locomotive	\N	\N	38971058055
2026911763	Saat kula	North Macedonia	Kichevo	20.9702432	41.5119269	Saat kula, Jane Sandanski, 6250 Kichevo, North Macedonia	monument	\N	\N	38975111221
903328344	Kula	North Macedonia	Barbaros	21.2735584715923	41.5070505	Kula, R1303, 6530 Barbaros, North Macedonia	archaeological_site	always open	\N	38974175216
334649006	Antigona	North Macedonia	Negotino	22.1002723944254	41.50339145	Antigona, R1103, 1440 Negotino, North Macedonia	archaeological_site	always open	\N	38972106985
7796229746	Hristo Uzunov	North Macedonia	Drugovo	20.9222623	41.483575	Hristo Uzunov, Goce Delchev, 6261 Drugovo, North Macedonia	monument	\N	\N	38973810484
7796229745	Goce Delchev	North Macedonia	Drugovo	20.9229426	41.4831122	Goce Delchev, 6261 Drugovo, North Macedonia	monument	\N	\N	38975674614
838638808	Spomen plocha - Gjurgjejca	North Macedonia	Karbunica	20.9661159395596	41.45308785	Spomen plocha - Gjurgjejca, Pateka kon s.Kladnik / repetitor, 6250 Karbunica, North Macedonia	memorial	always open	\N	38971686040
7826733791	Bitkata na Gjurgjejca	North Macedonia	Karbunica	20.9658462	41.4528994	Battle of Gjurgjejca, Pateka kon s.Kladnik / repetitor, 6250 Karbunica, North Macedonia	battlefield	\N	\N	38977745711
1054395729	Spomen-dom Blazhe Koneski	North Macedonia	Prilep (Vicinity)	21.5584325224493	41.4492956	Blazhe Koneski Memorial House, Hiking trail Prilep - Treskavec, 7513 Prilep (Vicinity), North Macedonia	museum	Mon-Fri 08:00-16:00	\N	38978306356
529811458	Muzej Galerija Kavadarci	North Macedonia	Kavadarci	22.0163228	41.4343634	Muzej Galerija Kavadarci, 7 Septemvri, 1430 Kavadarci, North Macedonia	museum	Mon-Fri 08:00-16:00	\N	38972701155
382635381	Kosturnica	North Macedonia	Kavadarci	22.0228463	41.4325212	Kosturnica, Disanska, 1430 Kavadarci, North Macedonia	monument	\N	\N	38971325069
212703196	Carevi Kuli	North Macedonia	Strumica	22.6298580963576	41.43246945	Czar’s Towers, Vasil Glavinov, 2400 Strumica, North Macedonia	archaeological_site	always open	\N	38971531794
2138788013	Nozhot	North Macedonia	Rakle	21.7629669	41.4293251	Nozhot, Rakle, Pelagonia Region, North Macedonia	memorial	always open	\N	38972211764
9723408984	Igumenija Katerina	North Macedonia	Prisad	21.6200758	41.4286415	Igumenija Katerina, R1312, Prisad, North Macedonia	tomb	\N	\N	38971456923
2535153634	Spomen kukja na Strasho Pindzhur	North Macedonia	Municipality of Kavadarci	22.0181317	41.4184594	Memorial house - Strasho Pindjur, Boro Vataskhi, 1430 Municipality of Kavadarci, North Macedonia	museum	Mon-Fri 08:00-16:00	\N	38977250782
2851570672	Hristo Uzunov	North Macedonia	Cer	21.0770931	41.4182291	R.I.P. Hristo Uzunov, Cer, North Macedonia	monument	\N	\N	38977993730
2015829492	Markov Grad	North Macedonia	Koreshnica	22.2541295	41.4094203	Markov Grad, Friendship, 1442 Koreshnica, North Macedonia	ruins	\N	\N	38976197592
1999950866	Muzej na vinoto	North Macedonia	Demir Kapija	22.2447656	41.4085959	Museum of Wine, Marshal Tito, 1442 Demir Kapija, North Macedonia	museum	Mon-Fri 08:00-16:00	\N	38976965615
414261893	Treskavec	North Macedonia	Prilep (Vicinity)	21.5379220359726	41.40530025	Hiking trail Prilep - Treskavec, 7513 Prilep (Vicinity), North Macedonia	archaeological_site	always open	\N	38978036663
7626158238	Masakr vo Vatasha	North Macedonia	Municipality of Kavadarci	22.0284286	41.4014262	Vatasha Massacre, R1107, 1430 Municipality of Kavadarci, North Macedonia	memorial	always open	\N	38971689216
410115785	Sliva	North Macedonia	Krushevo OT	21.2273776	41.3880768	Sliva, R2337, 7550 Krushevo OT, North Macedonia	monument	\N	\N	38975794147
217568679	Makedonium	North Macedonia	Krushevo OT	21.2483715068304	41.3774084	Makedonium, Plato, 7550 Krushevo OT, North Macedonia	monument	Mon-Fri 08:00-16:00	\N	38977298742
8193704891	Miroslav Joksimovikj	North Macedonia	Krushevo	21.2464617	41.3761727	Miroslav Joksimovikj, Nikola Karev, 7550 Krushevo, North Macedonia	memorial	always open	\N	38975432046
217561610	Muzej na NOV	North Macedonia	Krushevo	21.2457198295887	41.37561085	Muzej na NOV, Nikola Karev, 7550 Krushevo, North Macedonia	museum	Mon-Fri 08:00-16:00	\N	38975449933
2268500995	Toshe Proeski	North Macedonia	Krushevo	21.2482546	41.3748686	Toshe Proeski, Gumenje, 7550 Krushevo, North Macedonia	tomb	\N	\N	38977835372
2268500979	Pitu Guli	North Macedonia	Krushevo	21.2480535	41.3748344	Pitu Guli, Gumenje, 7550 Krushevo, North Macedonia	tomb	\N	\N	38975368423
217563724	Spomen kukja Toshe Proeski	North Macedonia	Krushevo	21.2462893310612	41.3744405	Spomen kukja Toshe Proeski, Gumenje, 7550 Krushevo, North Macedonia	memorial	always open	\N	38973175587
4907386415	Borecot	North Macedonia	Prilep (Vicinity)	21.5025867	41.3738524	Borecot, R1303, 7513 Prilep (Vicinity), North Macedonia	monument	\N	\N	38973825946
2269431831	Nikola Karev	North Macedonia	Krushevo	21.2463296	41.3736665	Nikola Karev, Nikola Karev, 7550 Krushevo, North Macedonia	monument	\N	\N	38978878606
7475537800	Dabnichki masakr	North Macedonia	Prilep	21.5605466	41.3724643	Masacre of Dabnica, Dabnichka, 7510 Prilep, North Macedonia	memorial	always open	\N	38971192230
896149100	Learnica	North Macedonia	Krushevo OT	21.2466584024971	41.37217175	Foundry, Toma Niklev 0, 7550 Krushevo OT, North Macedonia	museum	Mon-Fri 08:00-16:00	\N	38974921201
224254694	Muzej na Ilindenskoto vostanie i Krushevskata Republika	North Macedonia	Krushevo OT	21.2453034	41.3690527	Museum of the Ilinden Uprising and the Republic of Krushevo, Dimitar Berberoski - Takja Berber 44A, 7550 Krushevo OT, North Macedonia	museum	Mon-Fri 08:00-16:00	\N	38979727182
217467174	Nikola Martinoski	North Macedonia	Krushevo OT	21.2523139062646	41.36894095	Nikola Martinoski, Niko Doaga-Koljka, 7550 Krushevo OT, North Macedonia	gallery	\N	\N	38975353505
8069229451	Manchu Matak	North Macedonia	Krushevo OT	21.249738	41.3677912	Manchu Matak, Ilindenska, 7550 Krushevo OT, North Macedonia	memorial	always open	\N	38973721521
4306447780	Borka Taleski-Modernoto / Lazo Filipovski-Lavski	North Macedonia	Pletvar	21.6749495	41.3661079	Borka Taleski / Lazo Filipovski, R1101, Pletvar, North Macedonia	memorial	always open	\N	38973383414
2330629820	Naum Naumoski-Borche	North Macedonia	Krushevo OT	21.2484409	41.3653856	Naum Naumoski-Borche, Kocha Milenku, 7550 Krushevo OT, North Macedonia	monument	\N	\N	38975469244
8279921462	Kica Petreski	North Macedonia	Krushevo OT	21.2488407	41.3653786	Kica Petreski, Kocha Milenku, 7550 Krushevo OT, North Macedonia	monument	\N	\N	38972080943
2327281126	Pitu Guli	North Macedonia	Krushevo OT	21.2497316	41.3649692	Pitu Guli, Kocha Milenku, 7550 Krushevo OT, North Macedonia	monument	\N	\N	38979125129
9633312940	Sv. Petka	North Macedonia	Lenishte	21.6070578	41.3643261	St. Parascheva, R1101, 7510 Lenishte, North Macedonia	wayside_shrine	\N	\N	38976809655
6620184	Markovi Kuli	North Macedonia	Prilep (Vicinity)	21.5387586277664	41.3616628	Marko's Towers, Markukule, 7513 Prilep (Vicinity), North Macedonia	castle	Mon-Sunday 07:00-19:00	\N	38973489754
1126512716	Kukjata na Gjoshevi	North Macedonia	Prilep	21.5329404575631	41.3588274	House of Gjoshev, Borka Lopach, 7513 Prilep, North Macedonia	archaeological_site	always open	\N	38971979609
7623493347	Karpalak	North Macedonia	Lenishte	21.6256855	41.3575814	Karpalak, R1101, Lenishte, North Macedonia	memorial	always open	\N	38972308862
15078753	Kukjata na Mantovi	North Macedonia	Prilep	21.5403343488194	41.3555998	House of Mantov, Naroden Heroj Jordan Chopela-Kulak, 7513 Prilep, North Macedonia	archaeological_site	always open	\N	38977111126
2598104053	Karpalak	North Macedonia	Prilep	21.5564074	41.3475544	Karpalak, Gjorgji Delchev-Goce, 7500 Prilep, North Macedonia	monument	\N	\N	38971485990
8048135011	Kire Gavriloski-Jane / Krume Volnaroski-Kolja	North Macedonia	Prilep	21.5629735	41.3464944	Kire Gavriloski-Jane / Krume Volnaroski-Kolja, Spase Temelkoski, 7510 Prilep, North Macedonia	memorial	always open	\N	38974339615
3409068904	Metodija Andonov-Chento	North Macedonia	Prilep	21.5528281	41.3462544	Metodija Andonov-Chento, Alexandria Square, 7500 Prilep, North Macedonia	monument	\N	\N	38972789742
3409074126	Sv. Nikola	North Macedonia	Prilep	21.553243	41.3462194	Sv. Nikola, Alexandria Square, 7500 Prilep, North Macedonia	monument	\N	\N	38974218260
3409068903	Aleksandar Makedonski	North Macedonia	Prilep	21.5524989	41.3460556	Aleksandar Makedonski, Alexandria Square, 7500 Prilep, North Macedonia	monument	\N	\N	38972661967
4575831104	Marko Mrnjavchevikj	North Macedonia	Prilep	21.5532375	41.3455416	Marko Mrnjavchevikj, Metodija Andonov - Chento, 7500 Prilep, North Macedonia	monument	\N	\N	38979021666
3642663981	Itar Pejo	North Macedonia	Prilep	21.5548417	41.345456	Itar Pejo, Sly Peter, 7500 Prilep, North Macedonia	monument	\N	\N	38971868815
2189840958	Gjorche Petrov	North Macedonia	Prilep	21.5522173	41.3452617	Gjorche Petrov, Metodija Andonov - Chento, 7500 Prilep, North Macedonia	monument	\N	\N	38972511629
4575841430	Marko Cepenkov	North Macedonia	Prilep	21.5505581	41.3451792	Marko Cepenkov, Art Square, 7500 Prilep, North Macedonia	monument	\N	\N	38979581069
2189840898	Pece Atanasoski	North Macedonia	Prilep	21.554267	41.3451518	Pece Atanasoski, Borka Taleski-Modernoto, 7500 Prilep, North Macedonia	monument	\N	\N	38972055013
4575841429	Blazhe Koneski	North Macedonia	Prilep	21.5506707	41.3451329	Blazhe Koneski, Art Square, 7500 Prilep, North Macedonia	monument	\N	\N	38977032126
2189840728	Naroden Heroj Kuzman Josifoski-Pitu	North Macedonia	Prilep	21.5519842	41.3451182	People's hero Kuzman Josifoski-Pitu, Metodija Andonov - Chento, 7500 Prilep, North Macedonia	monument	\N	\N	38978584899
4575841428	Krume Kepeski	North Macedonia	Prilep	21.5505634	41.3450704	Krume Kepeski, Art Square, 7500 Prilep, North Macedonia	monument	\N	\N	38975034472
208711817	11 Oktomvri 1941	North Macedonia	Prilep	21.5523594880359	41.345014	October the 11th, 1941, Metodija Andonov - Chento, 7500 Prilep, North Macedonia	museum	Mon-Fri 08:00-16:00	\N	38976574669
816604528	Muzej na ikoni	North Macedonia	Prilep	21.5586755484341	41.3439183	Muzej na ikoni, Republikanska, 7500 Prilep, North Macedonia	gallery	\N	\N	38979484262
8534237588	12/8/1941	North Macedonia	Prilep	21.5549177	41.3435127	08.12.1941, Borka Taleski-Modernoto 64, 7500 Prilep, North Macedonia	memorial	always open	\N	38977932695
3456913802	Karpalak 2001	North Macedonia	Prilep	21.5479723	41.3434323	Karpalak 2001, Gjorgji Delchev-Goce, 7500 Prilep, North Macedonia	monument	\N	\N	38977451860
7626874879	Pere Toshev	North Macedonia	Prilep	21.5583071	41.3428704	Pere Toshev, Aleksandar Makedonski, 7500 Prilep, North Macedonia	tomb	\N	\N	38978156913
1144895703	Muzej	North Macedonia	Prilep	21.559393535231	41.342827	Museum, Aleksandar Makedonski 400, 7500 Prilep, North Macedonia	museum	Mon-Fri 08:00-16:00	\N	38976934764
1143774305	Memorijalen muzej Naroden heroj Kuzman Josifoski-Pitu	North Macedonia	Prilep	21.55973095	41.34252545	People's hero Kuzman Josifoski-Pitu Memorial museum, Mara Josifoska-Gjurgja 20, 7500 Prilep, North Macedonia	museum	Mon-Fri 08:00-16:00	\N	38975842367
8063563409	Aleksandar Makedonski	North Macedonia	Prilep	21.5572532	41.3421058	Alexander The Great, Aleksandar Makedonski, 7500 Prilep, North Macedonia	memorial	always open	\N	38978966064
410115784	Mechkin Kamen	North Macedonia	Krushevo OT	21.257898	41.3377228	Mechkin Kamen, R1306, 7550 Krushevo OT, North Macedonia	monument	\N	\N	38975522619
338675543	Mogila na nepobedenite	North Macedonia	Prilep	21.5546005592975	41.33419995	Mogila na nepobedenite, Mound of the undefeated, Prilep, North Macedonia	memorial	always open	\N	38978940792
3457966074	Kripta	North Macedonia	Prilep	21.554646	41.3341123	Cript, Car Samoil BB, 7500 Prilep, North Macedonia	monument	\N	\N	38973454790
180725215	Vinarija Grkov	North Macedonia	Krnjevo	22.1280642771868	41.3154452	Grkov Winery, R29171, Krnjevo, North Macedonia	winery	\N	\N	38978907017
899461223	Markov Dzid	North Macedonia	Shtavica	21.5896205241987	41.29936995	Marko's Wall, R1107, Shtavica, North Macedonia	castle	Mon-Sunday 07:00-19:00	\N	38972277325
1102966574	12/19/1942	North Macedonia	Shtavica	21.5960669122385	41.28955205	19.12.1942, R1107, Shtavica, North Macedonia	memorial	always open	\N	38974336721
229632394	Isar (Marvinci)	North Macedonia	Marvinci	22.4937177918843	41.2774695	Isar-Marvinci, R1401, 2463 Marvinci, North Macedonia	archaeological_site	always open	\N	38977265182
6901630767	Ljube Grujoski	North Macedonia	Pashino Ruvci	21.3684104	41.2754595	Ljube Grujoski, Ljube Grujoski, 7525 Pashino Ruvci, North Macedonia	monument	\N	\N	38979603992
223008200	Kale	North Macedonia	Buchin	21.3147459235998	41.2581743	Kale, R2335, 7525 Buchin, North Macedonia	archaeological_site	always open	\N	38972827912
240622723	Stibera	North Macedonia	Topolchani	21.3985736690164	41.2441667	Stibera, Topolchani, 7512 Topolchani, North Macedonia	archaeological_site	always open	\N	38976839755
243981081	Stibera	North Macedonia	Topolchani	21.3975319304045	41.2437681	Stibera, Topolchani, 7512 Topolchani, North Macedonia	archaeological_site	always open	\N	38974593462
240346454	Gradishte	North Macedonia	Graishte	21.218560516458	41.2409898	Gradishte, R2339, 7240 Graishte, North Macedonia	archaeological_site	always open	\N	38979900549
821781063	Goriche	North Macedonia	Belche	21.2009467425454	41.23813075	Goriche, R1305, 7240 Belche, North Macedonia	archaeological_site	always open	\N	38972864228
899481751	Pelagon	North Macedonia	Kalen	21.616242592878	41.20789235	Pelagon, R1107, Kalen, North Macedonia	archaeological_site	always open	\N	38971716621
899481750	Staro Bonche	North Macedonia	Bonche	21.5883962800984	41.2066558	Staro Bonche, R1107, Bonche, North Macedonia	archaeological_site	always open	\N	38974912696
7504362426	Tole Pasha	North Macedonia	Dunje	21.6536957	41.2064953	Tole Pasha, R1107, Dunje, North Macedonia	monument	\N	\N	38975817536
899472741	Markovi Kuli	North Macedonia	Manastir	21.7184588102329	41.2061566	Gradot / Markovi Kuli, R1107, Manastir, North Macedonia	archaeological_site	always open	\N	38972075530
899479869	Gradishte	North Macedonia	Kalen	21.644284854163	41.20492915	Gradishte, R1107, Kalen, North Macedonia	archaeological_site	always open	\N	38975423194
9663795290	Bratska grobnica	North Macedonia	Klepach	21.4572557	41.204511	Bratska grobnica, R2340, 7512 Klepach, North Macedonia	tomb	\N	\N	38978648004
1136815836	Mucheinci	North Macedonia	Loznani	21.40006855	41.2017673	Mucheinci, A3, 7512 Loznani, North Macedonia	archaeological_site	always open	\N	38977891796
899479870	Babo	North Macedonia	Dunje	21.6521190257961	41.1967792	Babo, R1107, Dunje, North Macedonia	archaeological_site	always open	\N	38978193864
899465453	Mariovski Manastir	North Macedonia	Manastir	21.7260695156163	41.16506545	Monastery of Mariovo, Path to Chebren, Manastir, North Macedonia	archaeological_site	always open	\N	38979261274
899302511	Peshta	North Macedonia	Gradeshnica	21.7443533535273	41.08806725	Peshta, R2338, Gradeshnica, North Macedonia	archaeological_site	always open	\N	38977988310
10932198705	Auto and etno museum Filip	North Macedonia	Krklino	21.3299172	41.0748026	Auto and etno museum Filip, R1305, 7000 Krklino, North Macedonia	museum	Mon-Fri 08:00-16:00	\N	38974827322
192121734	Dzhamija Ajdar Kadi	North Macedonia	Bitola	21.3384691831291	41.0349732	Dzhamija Ajdar Kadi, Cane Vasilev, 7000 Bitola, North Macedonia	attraction	\N	\N	38979550780
\.


--
-- Name: Monuments Monuments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Monuments"
    ADD CONSTRAINT "Monuments_pkey" PRIMARY KEY ("OSM_ID");


--
-- PostgreSQL database dump complete
--
