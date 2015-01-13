--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: books; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE books (
    class text,
    title text,
    author text,
    publisher text,
    edition text,
    isbn text,
    isbn_searchable text
);


ALTER TABLE public.books OWNER TO postgres;

--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY books (class, title, author, publisher, edition, isbn, isbn_searchable) FROM stdin;
AE 2713	INTRODUCTION TO SPACE FLIGHT 	HALE	PEARSON	94	9780134819129	\N
AE 3410	GAS DYNAMICS 	JOHN	PEARSON	3	9780131206687	\N
AE 4719	ROCKET PROPULSION ELEMENTS 	SUTTON	WILEY	8	9780470080245	1
AE 4723	AIRCRAFT DYNAMICS FROM MODELING TO SIMULATION 	NAPOLITANO	WILEY	11	9780470626672	\N
AE 5200	MECHANICAL VIBRATIONS	RAO	PEARSON	5	9780132128193	1
AE 5381	Advanced Mechanics of Materials and Applied Elasticity	UGURAL	PEARSON	5	9780137079209	\N
AR 1101	AUTODESK MAYA 2014 ESSENTIALS 	NAAS	WILEY	13	9781118575079	1
AR 1101	HOW TO CHEAT IN PHOTOSHOP CC 	CAPLIN	TAYLOR	14	9780415712385	\N
AR 2114	TWENTIETH CENTURY AMERICAN LITERATURE	WISEMAN	INGRAM	0	9780393320541	\N
AR 2114	MODERN ARCHITECTURE 	COLQUHOUN	OXF	2	9780192842268	\N
AR 2114	UNDERSTANDING ARCHITECTURE 	CONWAY	TAYLOR	2	9780415320597	\N
AR 2114	AMERICAN ART AND ARCHITECTURE 	LEWIS	NORTON	6	9780500203910	\N
AREN 2023	BUILDING CONSTRUCTION 	MEHTA	PEARSON	2	9780132148696	1
AREN 3001	DESIGN DRAWING	CHING	WILEY	2	9780470533697	\N
AREN 3003	AIR CONDITIONING PRINCIPLES AND SYSTEMS 	PITA	PEARSON	4	9780130928726	1
BB 2950	MOLECULAR BIOLOGY OF THE CELL	ALBERTS	TAYLOR	5	9780815341055	1
BB 3102	HUMAN ANATOMY AND PHYSIOLOGY	MARIEB	PEARSON	9	9780321372949	1
BME 3111	HUMAN PHYSIOLOGY	FOX	MCG	13	9780073403625	\N
BME 4011	BIOMEDICAL DIGITAL SIGNAL PROCESSING 	TOMPKINS	XANEDU	\N	2818440010576	\N
BME 4828	BIOMATERIALS 	TEMENOFF	PEARSON	8	9780130097101	\N
BUS 1010	LEADERSHIP WITHOUT EASY ANSWERS 	HEIFETZ	TRILITERAL	94	9780674518582	1
BUS 1010	TRANSITIONS-25TH ANNIVERSARY ED. 	BRIDGES	PERSEUS	2	9780738209043	\N
BUS 1010	IMMUNITY TO CHANGE 	KEGAN	PERSEUS	9	9781422117361	1
BUS 1010	TOXIC WORKPLACE! 	KUSY	WILEY	9	9780470424841	1
BUS 2080	DATA ANALYSIS AND DECISION MAKING	ALBRIGHT	CENGAGE	4	9780538476126	\N
CE 2001	MECHANICS OF MATERIALS	HIBBELER	PEARSON	9	9780133254426	1
CE 3008	DESIGN OF CONCRETE STRUCTURES 	NILSON	MCG	14	9780073293493	1
CE 3025	ENGINEERING ECONOMIC ANALYSIS	NEWNAN	OXF	12	9780199339273	\N
CE 3050	TRAFFIC HIGHWAY ENGINEERING	GARBER	CENGAGE	5	9781133605157	\N
CE 3074	LANDSCAPE PLANNING ENVIRONMENTAL APPLICATIONS 	MARSH	 WILEY	5	9780470570814	\N
CE 3074	ENVIRONMENTAL PLANNING HANDBOOK 	DANIELS	AM PLAN	3	9781884829666	\N
CH 1020	CHEMISTRY A MOLECULAR APPROACH	TRO	PEARSON	2	9780321651785	1
CH 2360	EXPERIMENTS IN ORGANIC CHEMISTRY 	HILL	CONTEMP RA	3	9780898923117	\N
CH 3550	PHYSICAL CHEMISTRY	MCQUARRIE	UNIV SCI	97	9780935702996	1
CH 4120	FUNDAMENTALS OF BIOCHEMISTRY	VOET	WILEY	4	9781118404348	\N
CH 4150	FUNDAMENTAL LABORATORY APPROACHES FOR BIOCHEMISTRY AND BIOTECHNOLOGY	NINFA	WILEY	2	9780470087664	\N
CH 4330	ADVANCED ORGANIC CHEMISTRY	CAREY	SPRINGER	5	9780387683546	1
CH 555	GREEN CHEMISTRY	LANCASTER	ROYAL CHEM	2	9781847558732	1
CHE 1011	INTRODUCTION TO CHEMICAL ENGINEERING 	SOLEN	 WILEY	5	9780470885727	\N
CHE 2012	INTRODUCTION TO CHEMICAL ENGINEERING THERMODYNAMICS	SMITH	MCG	7	9780073104454	1
CHE 2012	SEPARATION PROCESS ENGINEERING	WANKAT	PEARSON	3	9780131382275	1
CHE 2012	ELEMENTARY PRINCIPLES OF CHEMICAL PROCESSES	FELDER	WILEY	3	9780471720638	\N
CHE 4402	UNIT OPERATIONS OF CHEMICAL ENGINEERING	MCCABE	MCG	7	9780072848236	\N
CN 1542	INTEGRATED CHINESE LEVEL 1	YAO	CHENG+TSUI	3	9780887276484	1
CN 230X	INTEGRATED CHINESE LEVEL 1	YAO	CHENG+TSUI	3	9780887276484	1
CS 2011	COMPUTER SYSTEMS PROGRAMER'S PERSPECTIVE	PEARSON	PEARSON	2	9780136108047	1
CS 2011	THE C PROGRAMMING LANGUAGE	KERNIGHAN	PEARSON	2	9780131103627	1
CS 2223	ALGORITHMS	SEDGEWICK	PEARSON	4	9780321573513	1
CS 2301	THE C PROGRAMMING LANGUAGE	KERNIGHAN	PEARSON	2	9780131103627	1
CS 3042	USER INTERFACE DESIGN AND EVALUATION	STONE	ELSEVIER	5	9780120884360	1
CS 3042	DESIGNING INTERACTIONS	MOGGRIDGE	 TRILITERAL	7	9780262134743	1
CS 3042	MASTERING MS VISUAL BASIC 2008	PETROUTSOS	WILEY	8	9780470187425	1
CS 3042	UNIVERSAL PRINCIPLES OF DESIGN	LIDWELL	HACHETTE	10	9781592535873	1
CS 3431	FIRST COURSE IN DATABASE SYSTEMS 	ULLMAN	 PEARSON	3	9780136006374	1
CS 3431	DATABASE SYSTEMS COMPLETE BOOK	GARCIA-MOLINA	 PEARSON	2	9780131873254	1
CS 3516	COMPUTER NETWORKING	KUROSE	 PEARSON	6	9780132856201	1
CS 3516	TC/IP SOCKETS IN C	DONAHOO	 ELSEVIER	2	9780123745408	1
CS 3733	TEAM GEEK: SOFTWARE DEVELOPER'S GUIDE TO WORKING WELL WITH OTHERS	FITZPATRICK	INGRAM PUB	12	9781449302443	1
CS 4033	NUMERICAL ANALYSIS	BURDEN	CENGAGE	9	9780538733519	1
CS 4100	PROGRAMMING GAME AI BY EXAMPLE	BUCKLAND	JONES+BART	4	9781556220784	1
CS 4445	INTRODUCTION TO DATA MINING	TAN	PEARSON	6	9780321321367	\N
CS 4732	COMPUTER ANIMATION	PARENT	ELSEVIER	3	9780124158429	1
ECE 2029	DIGITAL DESIGN	VAHID	WILEY	2	9780470531082	\N
ECE 2311	LINEAR SYSTEMS AND SIGNALS	LATHI	OXF	2	9780195158335	1
ECE 3204	MICROELECTRONIC CIRCUITS	SEDRA	OXF	6	9780195323030	1
ECE 3311	SOFTWARE RECEIVER DESIGN	JOHNSON	CAMB	11	9780521189446	1
ECE 3503	POWER ELECTRONICS	HART	MCG	11	9780073380674	1
ECE 4011	BIOMEDICAL DIGITAL SIGNAL PROCESSING 	TOMPKINS	XANEDU	\N	2818440010576	1
ECE 4904	SEMICONDUCTOR DEVICE FUNDAMENTALS	PIERRET	PEARSON	96	9780201543933	1
ECON 212X	PUBLIC FINANCE	HYMAN	CENGAGE	11	9781285173955	\N
EN 1221	ENENMY OF THE PEOPLE	MILLER	PENG USA	77	9780140481402	\N
EN 1221	THEATRE STUDIES	LEACH	TAYLOR	2	9780415811682	\N
EN 1242	NORTON ANTHOLOGY OF POETRY	FERGUSON	NORTON	5	9780393979206	1
EN 1251	DEATH AND THE KING'S HORSEMAN	SOYINKA	NORTON	3	9780393977615	\N
EN 1251	PERSEPOLIS	SATRAPI	RANDOM	3	9780375714573	\N
EN 1251	LABYRINTHS	BORGES	 NORTON	7	9780811216999	1
EN 1251	IDA	STEIN	TRILITERAL	12	9780300169768	\N
EN 1241	CITIZEN	RANKINE	MAC HIGHER	14	9781555976903	\N
EN 2224	HAMLET	SHAKESPEARE	MAC HIGHER	94	9780312055448	\N
EN 2224	SHAKESPEARE'S SONNETS	BOOTH	TRILITERAL	77	9780300085068	\N
EN 2224	TWELFTH NIGHT	SHAKESPEARE	MAC HIGHER	1	9780312202194	\N
EN 2224	WINTER'S TALE	SHAKESPEARE	MAC HIGHER	8	9780312167042	\N
EN 2231	THE NORTON ANTHOLOGY OF AMERICAN LITERATURE	BAYM	NORTON	8	9780393934779	\N
EN 2238	MAGGIE A GIRL OF THE STREETS AND OTHER SHORT FICTION	CRANE	RANDOM	86	9780553213553	\N
EN 2238	PORTABLE AMERICAN REALISM READER	NAGEL	PENG USA	97	9780140268300	\N
EN 2238	GRAPES OF WRATH	STEINBACK	PENG USA	6	9780143039433	1
EN 2238	WASHINGTON SQUARE	JAMES	PENG USA	7	9780141441368	\N
EN 2251	STRANGER	CAMUS	RANDOM	88	9780679720201	1
EN 2251	ISHMAEL	QUINN	RANDOM	92	9780553375404	1
EN 2251	OATH SURGEON UNDER FIRE	BAIEV	MAC HIGHER	3	9780802714046	\N
EN 2251	DAWN	WIESEL	MAC HIGHER	6	9780809037728	\N
EN 2252	PHYSICISTS	DURRENMATT	PERSEUS	64	9780802150882	\N
EN 2252	FRANKENSTEIN	SHELLEY	PENG USA	0	9780451527714	\N
EN 2252	ZEN AND THE ART OF MOTORCYCLE MAINTENANCE	PIRSIG	HARP PUB	6	9780060589462	\N
EN 2252	BRAVE NEW WORLD	HUXLEY	HARP PUB	46	9780060850524	1
EN 2252	LIFE OF GALILEO	BRECHT	PENG USA	8	9780143105381	\N
EN 2252	CRYING OF LOT 49	PYNCHON	HARP PUB	\N	9780060913076	1
EN 3219	DON'T LET ME BE LONELY	RANKINE	MAC HIGHER	4	9781555974077	\N
EN 3219	HINT FICTION	SMARTWOOD	NORTON	11	9780393338461	\N
EN 3219	EXERCISES IN STYLE	QUENEAU	NORTON	13	9780811220354	\N
EN 3219	CAN'T AND WON'T	DAVIS	MAC HIGHER	2014	9780374118587	\N
EN 3219	FOR THE ANIMAL	POTEAT	INGRAM PUB	2013	9781934832424	\N
ENV 1100	ENVIRONMENT AND SOCIETY	ROBBINS	WILEY	2	9781118451564	\N
ES 1310	SOLIDWORKS 2014	PLANCHARD	SDC PUB	14	9781585038558	\N
ES 2001	MATERIALS SCIENCE WPI CUSTOM EDITION	CALLISTAR	WILEY	9	9781119003922	\N
ES 2501	ENGINEERING MECHANICS STATICS	HIBBELER	PEARSON	13	9780132915540	1
ES 2502	MECHANICS OF MATERIALS	PHILPOT	WILEY	3	9781118083475	\N
ES 2503	ENGINEERING MECHANICS DYNAMICS	HIBBELER	PEARSON	13	9780132911276	\N
ES 3001	FUNDAMENTALS OF ENGINEERING THERMODYNAMICS	MORAN	 WILEY	8	9781119003168	\N
ES 3003	FUNDAMENTALS OF HEAT AND MASS TRANSFER	BERGMAN	WILEY	7	9780470501979	1
ES 3004	FUNDAMENTALS OF FLUID MECHANICS	MUNSON	WILEY	2012	9781118012581	\N
FY 1800	STRENGTHS FINDER 2.0	RATH	PERSEUS D	7	9781595620156	1
GN 1512	NEU HORIZONTE	DOLLENMAYER	CENGAGE	8	9781111344191	\N
GOV 1320	INTERNATIONAL RELATIONS IN ACTION	TESSMAN	RIENER	7	9781588264640	\N
GOV 2320	CONSTITUTIONAL LAW IN CONTEMPORARY	SCHULTZ	OXF	11	9780195390063	\N
HI 1311	TOWARD AN URBAN VISION	BENDER	 HOPKINS	82	9780801829253	\N
HI 1322	JUSTICE WHAT'S THE RIGHT THING TO DO	SANDEL	MAC HIGHER	9	9780374532505	1
HI 1331	TEN MOST BEAUTIFUL EXPERIMENTS	JOHNSON	RANDOM	9	9781400034239	\N
HI 1311	WORLDVIEWS AN INTRODUCTION TO THE HISTORY AND PHILOSOPHY OF SCIENCE	DEWITT	WILEY	2	9781405195638	1
HI 2313	DISCOVERING THE AMERICAN PAST	WHEELER	CENGAGE	7	9780495799849	1
HI 2316	MAJOR PROBLEMS IN AMERICAN FOREIGN RELATIONS	MERRILL	CENGAGE	7	9780547218236	\N
HI 2317	ON TRIAL	MARCUS	WILEY POD	98	9781881089261	\N
HI 2321	DISCOURSE ON INEQUALITY	ROUSSEAU	PENG USA	84	9780140444391	\N
HI 2332	POCKET GUIDE TO WRITING IN HISTORY	RAMPOLLA	MAC HIGHER	7	9780312610418	\N
HI 2343	CHINA'S STRUGGLE FOR STATUS	DENG	CAMB	8	9780521714150	\N
HI 3334	MAD, BAD AND DANGEROUS	FRAYLING	REAKTION	6	9781861892850	\N
HI 3341	INTO THIN AIR	KRAKAUER	RANDOM	97	9780385494786	1
HU 1402	BASIC KAFKA	KAFKA	S+S	79	9780671531454	\N
HU 3900	ANNOTATED CHRISTMAS CAROL	DICKENS	NORTON	4	9780393051582	\N
IMGD 1000	RULES OF PLAY	SALEN	TRILITERAL	4	9780262240451	1
IMGD 2900	DESIGN OF EVERYDAY THINGS	NORMAN	PERSEUS	13	9780465050659	1
IMGD 3030	GAME AUDIO TUTORIAL	STEVENS	TAYLOR	11	9780240817262	1
IMGD 4100	PROGRAMMING GAME AI BY EXAMPLE	BUCKLAND	JONES+BART	4	9781556220784	1
ISE 1801	TOUCHSTONES	JUZWIAK	MAC HIGHER	13	9780312612221	\N
MA 1021	THOMAS'S CALCULUS EARLY TRANSCENDENTALS	WEIR	PEARSON	12	9780321588760	1
MA 1022	THOMAS'S CALCULUS EARLY TRANSCENDENTALS	WEIR	PEARSON	12	9780321588760	1
MA 1023	THOMAS'S CALCULUS EARLY TRANSCENDENTALS	WEIR	PEARSON	12	9780321588760	1
MA 1024	THOMAS'S CALCULUS EARLY TRANSCENDENTALS	WEIR	PEARSON	12	9780321588760	1
MA 1034	THOMAS'S CALCULUS EARLY TRANSCENDENTALS	WEIR	PEARSON	12	9780321588760	1
MA 2051	ORDINARY DIFFERENTIAL EQUATIONS	FARR	WPI PRINT	2014	2818440012952	1
MA 2071	LINEAR ALGEBRA AND ITS APPLICATIONS	LAY	PEARSON	4	9780321385178	1
MA 2431	IT?S A NONLINEAR WORLD	ENNIS	SPRINGER	2010	9780387753386	1
MA 2611	APPLIED STATISTICS	PETRUCCELLI	WPI PRINT	1999	2818440012594	1
MA 2612	APPLIED STATISTICS	PETRUCCELLI	WPI PRINT	1999	2818440012594	1
MA 3211	MATHEMATICS OF INVESTMENT AND CREDIT	BROVERMAN	ACTEX	5	9781566987677	1
MA 3457	NUMERICAL ANALYSIS	BURDEN	CENGAGE	9	9780538733519	1
MA 3631	JOHNE E FREUND'S MATHEMATICAL STATISTICS	MILLER	PEARSON	8	9780321807090	\N
MA 3823	CONTEMPORARY ABSTRACT ALGEBRA	GALLIAN	CENGAGE	8	9781133599708	1
MA 3832	REAL ANALYSIS AND APPLICATIONS	DAVIDSON	SPRINGER	9	9780387980973	1
MA 4473	PARTIAL DIFERENTIAL EQUATIONS	STRAUSS	WILEY	2	9780470054567	1
ME 2300	ENGINEERING BY DESIGN	VOLAND	PEARSON	2	9780131409194	\N
ME 2820	MANUFACTURING ENGINEERING AND TECHNOLOGY	KALPAKJIAN	PEARSON	7	9780133128741	\N
ME 3320	MACHINE DESIGN AN INTEGRATED APPROACH	NORTON	PEARSON	5	9780133356717	\N
ME 3410	GAS DYNAMICS 	JOHN	PEARSON	3	9780131206687	\N
ME 3901	MECHANICAL MEASUREMENTS	BECKWITH	PEARSON	6	9780201847659	\N
ME 3901	EXPERIMENTAL METHODS FOR ENGINEERS	HOLMAN	MCG	8	9780201847659	\N
ME 4506	MECHANICAL VIBRATIONS	KELLY	CENGAGE	12	9781439062128	1
ME 5200	MECHANICAL VIBRATIONS	KELLY	CENGAGE	12	9781439062128	1
ME 5304	HANDBOOK OF OPTICAL METROLOGY	YOSHIZAWA	TAYLOR	9	9780849337604	1
ME 5381	ADVANCED MECHANICS OF MATERIALS AND APPLIED ELASTICITY	UGURAL	PEARSON	5	9780137079209	\N
MPE 530	MODERN PHYSICS	KRANE	WILEY	3	9781118061145	1
MTE 532	ELEMENTS OF X-RAY DIFFRACTION	CULLITY	PEARSON	3	9780201610918	\N
MU 202X	MUSIC AND MEMORY	SNYDER	TRILITERAL	0	9780262692373	1
MU 202X	PSYCHOLOGY OF MUSIC	TAN SIU-LAN	TAYLOR	12	9780415651165	\N
MU 2730	CHORD SCALE THEORY AND JAZZ HARMONY	NETTLES	J AEBERSOL	97	9783892210566	1
PH 1120	UNIVERSITY PHYSICS WITH MASTERING PHYSICS	YOUNG	PEARSON	13	9780321675460	1
PH 1121	FUNDAMENTALS OF PHYSICS EXTENDED	HALLIDAY	WILEY	10	9781118230725	1
PH 1140	VIBRATIONS AND WAVES	FRENCH	NORTON	71	9780393099362	1
PH 2202	CLASSICAL MECHANICS	TAYLOR	UNIV SCI	5	9781891389221	1
PH 2501	PHOTONICS AND LASERS	QUIMBY	WILEY	6	9780471719748	1
PH 3401	QUANTUM PHYSICS	GASIOROWICZ	WILEY	3	9780471057000	1
PSY 1401	COGNITIVE PSYCHOLOGY	GOLDSTEIN	CENGAGE	3	9780840033550	1
PY 2711	METAPHYSICS OF VIRTUAL REALITY	HEIM	OXF	93	9780195092585	1
\.


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--
