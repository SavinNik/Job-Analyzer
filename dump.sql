--
-- PostgreSQL database dump
--

\restrict yMeCANzpfzGFLu1aQBDzWjhDHA2CzOOPdeXiUM9HIoyrMgfqGeBEbyfqnWqcKfh

-- Dumped from database version 18.0 (Ubuntu 18.0-1.pgdg24.04+3)
-- Dumped by pg_dump version 18.0 (Ubuntu 18.0-1.pgdg24.04+3)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE ONLY public.vacancies DROP CONSTRAINT vacancies_pkey;
DROP TABLE public.vacancies;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: vacancies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.vacancies (
    id character varying NOT NULL,
    title character varying NOT NULL,
    salary_from integer,
    salary_to integer,
    currency character varying,
    experience character varying,
    experience_label character varying,
    skills character varying[],
    area_name character varying,
    published_at timestamp with time zone,
    url character varying
);


--
-- Data for Name: vacancies; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.vacancies (id, title, salary_from, salary_to, currency, experience, experience_label, skills, area_name, published_at, url) FROM stdin;
125834072	Стажер в Hard Code	\N	\N	RUR	noExperience	Нет опыта	{Java,JavaScript,Python}	Астана	2025-09-26 11:21:29+03	https://hh.ru/vacancy/125834072
124498727	Разработчик Python	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Docker,Git,Python,"REST API"}	Краснодар	2025-09-24 18:55:54+03	https://hh.ru/vacancy/124498727
126162185	Golang-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-06 09:25:19+03	https://hh.ru/vacancy/126162185
126143952	Flutter-разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{"REST API"}	Ташкент	2025-10-05 13:36:34+03	https://hh.ru/vacancy/126143952
126122414	Python Developer / Backend (Junior)	50000	60000	RUR	noExperience	Нет опыта	{FastAPI,Flask,PostgreSQL,Python,Redis}	Екатеринбург	2025-10-03 16:29:34+03	https://hh.ru/vacancy/126122414
126169812	Frontend-разработчик (React)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{CI/CD,Docker,Python}	Пермь	2025-10-06 10:47:07+03	https://hh.ru/vacancy/126169812
125977327	Python-разработчик (junior)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Django,FastAPI,Git,Python,pytest}	Москва	2025-09-30 16:47:12+03	https://hh.ru/vacancy/125977327
125979327	Junior Python разработчик	\N	\N	RUR	noExperience	Нет опыта	{Django,Python}	Москва	2025-09-30 17:28:27+03	https://hh.ru/vacancy/125979327
126176075	C# .net разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{AWS,Grafana,Python}	Омск	2025-10-06 11:58:28+03	https://hh.ru/vacancy/126176075
126058796	QA тестировщик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,"REST API"}	Москва	2025-10-02 11:58:54+03	https://hh.ru/vacancy/126058796
125974496	Golang-разработчик	240000	270000	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-30 16:08:32+03	https://hh.ru/vacancy/125974496
125598563	Бизнес-аналитик	\N	\N	RUR	noExperience	Нет опыта	{Python,SQL}	Москва	2025-09-22 11:47:52+03	https://hh.ru/vacancy/125598563
126115744	Middle - разработчик	135000	150000	RUR	between1And3	От 1 года до 3 лет	{React,Vue}	Москва	2025-10-03 14:28:31+03	https://hh.ru/vacancy/126115744
126114471	Python-разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{FastAPI,Flask,Kafka,Python,Redis}	Казань	2025-10-03 14:10:08+03	https://hh.ru/vacancy/126114471
126080714	Data Scientist	90000	115000	RUR	noExperience	Нет опыта	{Python}	Москва	2025-10-05 17:33:08+03	https://hh.ru/vacancy/126080714
126154200	Разработчик на Python в команду CLI	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Новосибирск	2025-10-06 07:13:44+03	https://hh.ru/vacancy/126154200
125985183	Frontend-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,React,TypeScript}	Москва	2025-10-01 01:17:09+03	https://hh.ru/vacancy/125985183
126063622	Junior Тестировщик ПО	60000	80000	RUR	between1And3	От 1 года до 3 лет	{JavaScript,Python}	Москва	2025-10-02 13:12:06+03	https://hh.ru/vacancy/126063622
125933323	Python Developer	130000	\N	RUR	between1And3	От 1 года до 3 лет	{FastAPI,Git,Python,SQL}	Москва	2025-09-30 07:24:18+03	https://hh.ru/vacancy/125933323
125114370	Инженер по тестированию (Телеком)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,Git,Linux,Python,SQL}	Москва	2025-09-09 16:19:20+03	https://hh.ru/vacancy/125114370
125057913	Тестировщик ПО	140000	170000	RUR	between3And6	От 3 до 6 лет	{Linux,Python,pytest}	Москва	2025-09-08 17:07:36+03	https://hh.ru/vacancy/125057913
125894146	Разработчик Python	\N	250000	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-29 12:33:18+03	https://hh.ru/vacancy/125894146
125948104	Manual QA / Тестировщик программного обеспечения (Ручное)	60000	\N	RUR	between1And3	От 1 года до 3 лет	{}	Краснодар	2025-09-30 11:19:31+03	https://hh.ru/vacancy/125948104
126082167	Middle Python Developer	200000	\N	RUR	between3And6	От 3 до 6 лет	{Celery,FastAPI,Flask,Kafka,MySQL,Python,Redis}	Санкт-Петербург	2025-10-02 18:22:49+03	https://hh.ru/vacancy/126082167
126121207	Backend-разработчик Python/Django middle	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,Python}	Воронеж	2025-10-03 16:08:49+03	https://hh.ru/vacancy/126121207
126205691	Senior Python Developer	\N	\N	RUR	moreThan6	Более 6 лет	{FastAPI,Python}	Ташкент	2025-10-06 17:09:21+03	https://hh.ru/vacancy/126205691
125783159	Младший QA-инженер (младший тестировщик)	80000	105000	RUR	between1And3	От 1 года до 3 лет	{Python,React}	Ярославль	2025-09-25 15:25:57+03	https://hh.ru/vacancy/125783159
126210766	Python Backend разработчик	28108	37477	RUR	between1And3	От 1 года до 3 лет	{}	Бишкек	2025-10-06 19:44:12+03	https://hh.ru/vacancy/126210766
126226576	Web-программист - стажер	15015	15015	RUR	noExperience	Нет опыта	{}	Алматы	2025-10-07 09:58:59+03	https://hh.ru/vacancy/126226576
126180222	Middle Backend разработчик (Python)	90093	135139	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Python}	Астана	2025-10-06 12:39:34+03	https://hh.ru/vacancy/126180222
125532366	Python Developer (FastAPI, Microservices)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Celery,FastAPI,Python}	Гродно	2025-09-19 14:11:01+03	https://hh.ru/vacancy/125532366
125997975	Python-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Python}	Москва	2025-10-01 10:02:07+03	https://hh.ru/vacancy/125997975
125976319	Python junior/middle разработчик	90000	130000	RUR	between1And3	От 1 года до 3 лет	{Git,PostgreSQL,Python}	Казань	2025-09-30 16:31:57+03	https://hh.ru/vacancy/125976319
126012979	Python-разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-10-01 13:31:24+03	https://hh.ru/vacancy/126012979
125955065	Backend-разработчик (Python)	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,PostgreSQL,Python}	Москва	2025-09-30 12:00:42+03	https://hh.ru/vacancy/125955065
126234947	Python-разработчик	100000	150000	RUR	between1And3	От 1 года до 3 лет	{Django,Python}	Санкт-Петербург	2025-10-07 11:31:15+03	https://hh.ru/vacancy/126234947
126229722	QA инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Git,Python}	Санкт-Петербург	2025-10-07 10:38:29+03	https://hh.ru/vacancy/126229722
125474624	Frontend-разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Django,JavaScript,Python,"REST API",Vue}	Санкт-Петербург	2025-09-18 11:21:51+03	https://hh.ru/vacancy/125474624
125587889	Python developer	200000	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,Python}	Москва	2025-09-22 09:54:08+03	https://hh.ru/vacancy/125587889
126032874	Middle Python Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-01 20:57:28+03	https://hh.ru/vacancy/126032874
124951486	Специалист по тестированию (Middle QA)	150000	150000	RUR	between1And3	От 1 года до 3 лет	{Python,Selenium}	Москва	2025-10-03 09:29:34+03	https://hh.ru/vacancy/124951486
125655660	Python-разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{FastAPI,Python,pytest}	Москва	2025-09-23 13:04:05+03	https://hh.ru/vacancy/125655660
126020598	Junior Software Developer (Trainee)	\N	\N	RUR	noExperience	Нет опыта	{}	Минск	2025-10-01 15:10:40+03	https://hh.ru/vacancy/126020598
126025549	Инженер по тестированию (QA)	90000	90000	RUR	between1And3	От 1 года до 3 лет	{Linux,SQL}	Казань	2025-10-01 16:33:31+03	https://hh.ru/vacancy/126025549
126106805	Python Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,MySQL,PostgreSQL,Python}	Тбилиси	2025-10-03 11:53:55+03	https://hh.ru/vacancy/126106805
126030143	Data engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{MySQL,PostgreSQL,Python,SQL}	Москва	2025-10-01 18:14:54+03	https://hh.ru/vacancy/126030143
126070240	IT-директор / Директор по информационным технологиям (CIO)	300000	\N	RUR	moreThan6	Более 6 лет	{CI/CD,Python}	Москва	2025-10-02 14:55:21+03	https://hh.ru/vacancy/126070240
125904661	Junior Data Analyst/Аналитик данных	90000	\N	RUR	noExperience	Нет опыта	{Airflow}	Нижний Новгород	2025-09-29 15:01:46+03	https://hh.ru/vacancy/125904661
125270179	Тестировщик ПО	50000	70000	RUR	between1And3	От 1 года до 3 лет	{}	Воронеж	2025-09-15 11:56:16+03	https://hh.ru/vacancy/125270179
126219740	Тестировщик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{GraphQL,Python}	Алматы	2025-10-07 08:19:36+03	https://hh.ru/vacancy/126219740
125902608	Системный аналитик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL,TypeScript}	Москва	2025-09-29 14:29:52+03	https://hh.ru/vacancy/125902608
125544207	Junior аналитик данных (FinTech)	\N	70000	RUR	noExperience	Нет опыта	{Python}	Санкт-Петербург	2025-09-19 18:19:45+03	https://hh.ru/vacancy/125544207
126087246	Python-разработчик	200000	200000	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-10-03 00:41:13+03	https://hh.ru/vacancy/126087246
125952431	Full Stack Вайб-кодер/Vibe-Coding разработчик	250000	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-06 11:44:42+03	https://hh.ru/vacancy/125952431
126054919	Python Developer	300000	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-10-02 11:07:05+03	https://hh.ru/vacancy/126054919
126071543	Golang developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,Python}	Пенза	2025-10-02 15:17:08+03	https://hh.ru/vacancy/126071543
124887500	Java Developer (middle)	200000	\N	RUR	between3And6	От 3 до 6 лет	{Java,Kafka,Python,Spark}	Москва	2025-09-19 16:53:38+03	https://hh.ru/vacancy/124887500
126179021	Python-разработчик	\N	200000	RUR	between1And3	От 1 года до 3 лет	{FastAPI,Python}	Санкт-Петербург	2025-10-06 12:23:43+03	https://hh.ru/vacancy/126179021
125344059	Backend Java Developer (Middle+/Senior)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,Python}	Москва	2025-09-15 16:39:09+03	https://hh.ru/vacancy/125344059
126073718	Python developer (middle, middle+)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,Python}	Воронеж	2025-10-02 15:54:04+03	https://hh.ru/vacancy/126073718
125975480	Senior Frontend Developer (React.js)	\N	327740	RUR	moreThan6	Более 6 лет	{Git,Python}	Астана	2025-09-30 16:21:51+03	https://hh.ru/vacancy/125975480
126209046	Python Developer	\N	\N	RUR	noExperience	Нет опыта	{Python}	Москва	2025-10-06 18:14:53+03	https://hh.ru/vacancy/126209046
126073811	Продуктовый аналитик данных Junior +/Middle	120000	140000	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-02 15:55:26+03	https://hh.ru/vacancy/126073811
126101615	Python-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Grafana,Prometheus,Python,Vue}	Санкт-Петербург	2025-10-03 10:37:49+03	https://hh.ru/vacancy/126101615
126158474	Тестировщик-автоматизатор/QA Automation Engineer	115000	157500	RUR	between1And3	От 1 года до 3 лет	{CI/CD,PostgreSQL,Python,SQL}	Москва	2025-10-06 08:46:26+03	https://hh.ru/vacancy/126158474
126116683	Golang-разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Go,Python}	Краснодар	2025-10-03 14:45:28+03	https://hh.ru/vacancy/126116683
125985820	JavaScript разработчик уровня Middle+	150000	220000	RUR	between3And6	От 3 до 6 лет	{React}	Москва	2025-10-01 03:27:11+03	https://hh.ru/vacancy/125985820
125665347	Frontend-разработчик	250000	350000	RUR	between3And6	От 3 до 6 лет	{React,TypeScript}	Москва	2025-10-05 15:38:33+03	https://hh.ru/vacancy/125665347
125898084	Python developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Python}	Москва	2025-09-29 13:27:27+03	https://hh.ru/vacancy/125898084
125374733	Java-разработчик (Senior)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,PostgreSQL,"REST API",SQL}	Москва	2025-09-16 10:19:37+03	https://hh.ru/vacancy/125374733
126172719	Python-разработчик (Middle), система управления заказами	\N	240000	RUR	between1And3	От 1 года до 3 лет	{FastAPI,Flask,Python,pytest}	Москва	2025-10-06 11:19:51+03	https://hh.ru/vacancy/126172719
125106810	Python-разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-09 14:48:45+03	https://hh.ru/vacancy/125106810
125732922	Backend-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Node.js,Python}	Москва	2025-09-25 00:44:10+03	https://hh.ru/vacancy/125732922
125281176	Специалист поддержки второй линии в банк	150000	210000	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-09-12 15:40:23+03	https://hh.ru/vacancy/125281176
125659166	Data Analyst	80000	\N	RUR	noExperience	Нет опыта	{NumPy,Pandas,Python}	Санкт-Петербург	2025-09-23 14:02:19+03	https://hh.ru/vacancy/125659166
123682322	QA-инженер	\N	\N	RUR	between1And3	От 1 года до 3 лет	{JavaScript,Linux,Python}	Москва	2025-09-30 15:27:20+03	https://hh.ru/vacancy/123682322
125345464	Backend Python Developer (Middle+/Senior)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-15 17:04:23+03	https://hh.ru/vacancy/125345464
125599280	Системный аналитик	\N	200000	RUR	between3And6	От 3 до 6 лет	{Kafka}	Москва	2025-09-22 11:55:45+03	https://hh.ru/vacancy/125599280
125078993	Python backend разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Celery,Django,FastAPI,Git,Python,React}	Санкт-Петербург	2025-09-09 08:49:21+03	https://hh.ru/vacancy/125078993
126136233	Fullstack-разработчик	80000	200000	RUR	between1And3	От 1 года до 3 лет	{CI/CD,Go,Node.js,Python}	Москва	2025-10-04 15:17:15+03	https://hh.ru/vacancy/126136233
126029619	Data Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Airflow,Python,SQL}	Москва	2025-10-01 17:55:58+03	https://hh.ru/vacancy/126029619
109239766	Manual QA Engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Java,Python}	Санкт-Петербург	2025-09-18 16:10:02+03	https://hh.ru/vacancy/109239766
125944834	Младший системный аналитик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Java,Python}	Москва	2025-09-30 10:36:31+03	https://hh.ru/vacancy/125944834
125855863	QA-инженер/Тестировщик (мобильные приложения)	\N	\N	RUR	noExperience	Нет опыта	{Python}	Санкт-Петербург	2025-10-05 19:57:10+03	https://hh.ru/vacancy/125855863
126051940	Senior Backend Developer	204742	\N	RUR	between3And6	От 3 до 6 лет	{AWS,Docker,Python}	Ташкент	2025-10-02 10:30:09+03	https://hh.ru/vacancy/126051940
125971191	Инженер технической поддержки и внедрения L2	150000	180000	RUR	between3And6	От 3 до 6 лет	{Bash,Python,SQL}	Москва	2025-09-30 15:03:45+03	https://hh.ru/vacancy/125971191
125723354	Python Developer / Backend (Junior+)	80000	140000	RUR	between1And3	От 1 года до 3 лет	{FastAPI,JWT,PostgreSQL,Python,RabbitMQ,Redis,asyncio}	Екатеринбург	2025-09-24 16:14:50+03	https://hh.ru/vacancy/125723354
126124893	Junior QA	50000	70000	RUR	noExperience	Нет опыта	{}	Санкт-Петербург	2025-10-06 17:24:25+03	https://hh.ru/vacancy/126124893
126073761	Senior Python Developer в команду сетевой автоматизации	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-10-02 16:59:05+03	https://hh.ru/vacancy/126073761
126257287	QA Engineer/Младший инженер по тестированию (решения видеонаблюдения/CCTV)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,Selenium}	Москва	2025-10-07 13:44:47+03	https://hh.ru/vacancy/126257287
125312363	Стажер-разработчик	22523	22523	RUR	noExperience	Нет опыта	{Java,JavaScript,Python}	Алматы	2025-10-07 14:39:34+03	https://hh.ru/vacancy/125312363
121923039	Python-developer	175000	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Санкт-Петербург	2025-09-21 08:07:24+03	https://hh.ru/vacancy/121923039
126225295	Python-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-07 09:40:59+03	https://hh.ru/vacancy/126225295
126257949	QA Engineer (AI Voicebot)	\N	290000	RUR	between3And6	От 3 до 6 лет	{Linux}	Москва	2025-10-07 13:56:03+03	https://hh.ru/vacancy/126257949
125284946	Senior Python Developer Backend	200000	300000	RUR	between1And3	От 1 года до 3 лет	{Flask,MongoDB,Python,SQL}	Астана	2025-09-12 16:46:21+03	https://hh.ru/vacancy/125284946
124027508	Python-разработчик в команду ИИ для сотрудников	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-30 18:44:41+03	https://hh.ru/vacancy/124027508
124225648	Старший Python-разработчик, ML платформа	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,asyncio}	Москва	2025-09-18 12:56:39+03	https://hh.ru/vacancy/124225648
126179269	Ведущий Python-разработчик	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-10-06 12:26:24+03	https://hh.ru/vacancy/126179269
125439538	Senior Python Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,JavaScript,MySQL,Node.js,Python,Redis}	Кипр	2025-09-17 13:53:00+03	https://hh.ru/vacancy/125439538
125092240	Python developer	150000	250000	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Казань	2025-09-09 11:30:25+03	https://hh.ru/vacancy/125092240
124170582	Python разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Екатеринбург	2025-09-16 14:16:27+03	https://hh.ru/vacancy/124170582
119302455	Middle Python разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Django,FastAPI,Python}	Москва	2025-09-15 20:29:23+03	https://hh.ru/vacancy/119302455
124084201	Python Developer Middle+/Senior	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,Python}	Санкт-Петербург	2025-10-02 18:19:35+03	https://hh.ru/vacancy/124084201
126208969	IT-рекрутер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-06 18:13:09+03	https://hh.ru/vacancy/126208969
113014072	Python developer (Senior\\Lead)	\N	\N	RUR	moreThan6	Более 6 лет	{Kafka,Python,RabbitMQ}	Москва	2025-09-07 15:20:31+03	https://hh.ru/vacancy/113014072
125229130	Middle+ Python Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,PostgreSQL}	Минск	2025-09-11 14:27:28+03	https://hh.ru/vacancy/125229130
126258018	Python-разработчик (junior)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Git,Python}	Алматы	2025-10-07 13:57:13+03	https://hh.ru/vacancy/126258018
126209595	Backend-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Git,Python}	Москва	2025-10-06 18:42:02+03	https://hh.ru/vacancy/126209595
125879077	AI/ML Python/GO developer (backend)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Python}	Москва	2025-09-29 09:28:00+03	https://hh.ru/vacancy/125879077
125855791	Python Developer в AI-агент	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Python,React}	Москва	2025-09-26 19:42:28+03	https://hh.ru/vacancy/125855791
126203392	PHP Разработчик	100000	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Санкт-Петербург	2025-10-06 16:56:20+03	https://hh.ru/vacancy/126203392
125728668	Python-разработчик (ML, Middle)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-29 09:59:17+03	https://hh.ru/vacancy/125728668
124123373	Python разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-09-29 11:27:35+03	https://hh.ru/vacancy/124123373
125530564	Python-разработчик в VK	\N	\N	RUR	moreThan6	Более 6 лет	{Django,FastAPI,Python}	Москва	2025-09-19 13:53:46+03	https://hh.ru/vacancy/125530564
124648750	Trainee/Python Developer	\N	\N	RUR	noExperience	Нет опыта	{Django,FastAPI,Flask,Python}	Гомель	2025-09-28 17:17:17+03	https://hh.ru/vacancy/124648750
125973809	Senior Python Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,asyncio}	Минск	2025-09-30 15:55:13+03	https://hh.ru/vacancy/125973809
126204106	Python-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Kafka,Kubernetes,PostgreSQL,Python,React}	Санкт-Петербург	2025-10-06 17:00:23+03	https://hh.ru/vacancy/126204106
124083797	Middle Python Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-12 16:34:49+03	https://hh.ru/vacancy/124083797
125435329	Python разработчик в офис	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Новосибирск	2025-09-17 12:48:04+03	https://hh.ru/vacancy/125435329
123436387	Middle Frontend разработчик (Python)	\N	200000	RUR	between3And6	От 3 до 6 лет	{Python,React,Vue}	Москва	2025-09-26 13:45:47+03	https://hh.ru/vacancy/123436387
125385372	Ведущий разработчик-эксперт Python/Postgres	350000	\N	RUR	moreThan6	Более 6 лет	{Linux,PostgreSQL,Python}	Москва	2025-09-18 17:43:18+03	https://hh.ru/vacancy/125385372
125927161	Manual QA-тестировщик / Тестировщик ПО	60632	106105	RUR	noExperience	Нет опыта	{Java,Python,SQL}	Алматы	2025-09-30 00:17:33+03	https://hh.ru/vacancy/125927161
126197787	PHP-разработчик (Laravel, финтех)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Kafka,PostgreSQL,Python,Redis}	Москва	2025-10-06 16:21:18+03	https://hh.ru/vacancy/126197787
126193946	Python Backend Middle/Middle+ разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,PostgreSQL,Python}	Алматы	2025-10-06 15:41:23+03	https://hh.ru/vacancy/126193946
126171855	ГИС - аналитик	37539	75077	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Астана	2025-10-06 11:08:49+03	https://hh.ru/vacancy/126171855
124190230	Senior Python разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,PostgreSQL,Python,SQL,asyncio}	Москва	2025-09-17 12:15:51+03	https://hh.ru/vacancy/124190230
125494421	Python-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-18 16:20:40+03	https://hh.ru/vacancy/125494421
126203967	Менеджер проектов образования (Казань)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Казань	2025-10-06 16:59:44+03	https://hh.ru/vacancy/126203967
113705688	Senior Python-developer	270000	420000	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Нижний Новгород	2025-09-12 10:18:39+03	https://hh.ru/vacancy/113705688
124170500	Python-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-16 14:16:21+03	https://hh.ru/vacancy/124170500
120806401	Ведущий разработчик Python	\N	\N	RUR	between3And6	От 3 до 6 лет	{Flask,MongoDB,Python,Redis}	Москва	2025-09-30 19:02:07+03	https://hh.ru/vacancy/120806401
126066561	Senior Python Developer (AI/LLM/Camunda Stream)	\N	\N	RUR	moreThan6	Более 6 лет	{Django,PostgreSQL,Python,SQL}	Москва	2025-10-02 13:59:52+03	https://hh.ru/vacancy/126066561
123435668	Middle + Python developer (Django/FastAPI) AdTech (в офисе)	170000	250000	RUR	between3And6	От 3 до 6 лет	{Node.js,Python,React}	Москва	2025-09-23 00:19:23+03	https://hh.ru/vacancy/123435668
126207142	DevOps Engineer	110000	\N	RUR	between1And3	От 1 года до 3 лет	{CI/CD,Python}	Москва	2025-10-06 17:33:09+03	https://hh.ru/vacancy/126207142
126229658	DevOps инженер	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Grafana,Prometheus}	Москва	2025-10-07 10:37:29+03	https://hh.ru/vacancy/126229658
126211080	Full-stack / Python разработчик в проект искусственного интеллекта Luna EMAI	\N	\N	RUR	noExperience	Нет опыта	{Django,FastAPI,Flask,PyTorch,Python}	Иваново (Ивановская область)	2025-10-06 20:23:15+03	https://hh.ru/vacancy/126211080
126211327	Python-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Python,asyncio}	Минск	2025-10-06 21:04:25+03	https://hh.ru/vacancy/126211327
126196994	Python-разработчик (удаленно)	110000	110000	RUR	moreThan6	Более 6 лет	{Python}	Уфа	2025-10-06 16:15:59+03	https://hh.ru/vacancy/126196994
122428449	Senior Python разработчик на платформу управления виртуализацией	\N	\N	RUR	moreThan6	Более 6 лет	{Python,asyncio}	Москва	2025-09-26 11:27:58+03	https://hh.ru/vacancy/122428449
125713212	Python разработчик (Fast api)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,RabbitMQ}	Краснодар	2025-09-24 14:54:53+03	https://hh.ru/vacancy/125713212
125765333	Разработчик Python (ML\\ LLM)	\N	280000	RUR	between3And6	От 3 до 6 лет	{FastAPI,Kafka,Python,asyncio}	Москва	2025-09-25 13:15:27+03	https://hh.ru/vacancy/125765333
125917654	ML инженер/AI/AI-agent developer (Python)	\N	240000	RUR	moreThan6	Более 6 лет	{}	Москва	2025-09-29 17:23:34+03	https://hh.ru/vacancy/125917654
125046354	Python-разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-18 10:11:57+03	https://hh.ru/vacancy/125046354
125850760	Python Backend / Fullstack-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Python,React}	Москва	2025-09-26 16:25:14+03	https://hh.ru/vacancy/125850760
126197462	Senior Python Developer	200000	250000	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-10-06 16:18:57+03	https://hh.ru/vacancy/126197462
125404032	Middle/Senior Python разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,Python}	Москва	2025-10-03 05:24:50+03	https://hh.ru/vacancy/125404032
125607867	Senior Python developer	\N	\N	RUR	moreThan6	Более 6 лет	{PostgreSQL,Python,asyncio}	Санкт-Петербург	2025-10-07 13:54:00+03	https://hh.ru/vacancy/125607867
126134992	Python-разработчик (Автотесты сетевого оборудования)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux,Python}	Санкт-Петербург	2025-10-04 12:46:33+03	https://hh.ru/vacancy/126134992
125600990	Программист микроконтроллеров на языке C	150000	300000	RUR	between3And6	От 3 до 6 лет	{Git,Python}	Москва	2025-10-07 12:16:44+03	https://hh.ru/vacancy/125600990
117582493	Python developer / Разработчик Python (KORNFELD)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-09-19 19:55:01+03	https://hh.ru/vacancy/117582493
125222518	Part-time Python Lead developer | Side-job	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-11 13:17:37+03	https://hh.ru/vacancy/125222518
125454271	Python Fullstack Developer (Python + React/Angular/Vue)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Django,FastAPI,Flask,Python}	Минск	2025-09-17 18:31:43+03	https://hh.ru/vacancy/125454271
125073038	Python Developer	\N	286772	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-09 05:20:48+03	https://hh.ru/vacancy/125073038
124748121	Разработчик Python в LLM Platform	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,FastAPI,Kubernetes,PostgreSQL,Python}	Москва	2025-09-30 13:54:22+03	https://hh.ru/vacancy/124748121
125247392	Python Developer / Инженер-программист (TATLIN.UNIFIED)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux,Python}	Санкт-Петербург	2025-09-11 18:10:48+03	https://hh.ru/vacancy/125247392
125612837	Python разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,Flask,Python,SQL}	Санкт-Петербург	2025-09-22 15:09:38+03	https://hh.ru/vacancy/125612837
125431568	AI Developer (Python)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Тбилиси	2025-09-17 11:57:35+03	https://hh.ru/vacancy/125431568
124712809	Web-разработчик (Python)	\N	\N	RUR	moreThan6	Более 6 лет	{Django,FastAPI,Python}	Москва	2025-09-27 20:53:36+03	https://hh.ru/vacancy/124712809
126135277	Python-разработчик (Автотесты сетевого оборудования)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux,Python}	Москва	2025-10-04 13:12:43+03	https://hh.ru/vacancy/126135277
125445485	Python разработчик (middle+ / senior)	\N	\N	RUR	moreThan6	Более 6 лет	{Django,Python}	Москва	2025-09-25 10:24:40+03	https://hh.ru/vacancy/125445485
125390074	Программист Embedded C++	200000	300000	RUR	moreThan6	Более 6 лет	{CI/CD,Linux,Python}	Санкт-Петербург	2025-10-07 13:57:32+03	https://hh.ru/vacancy/125390074
126256296	Senior Research Scientist (to Montenegro)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-10-07 13:35:54+03	https://hh.ru/vacancy/126256296
125110287	Senior Python Developer (Маркетинг)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,Python}	Москва	2025-10-03 11:30:52+03	https://hh.ru/vacancy/125110287
125295173	Full-stack разработчик React.js + Python [Strong Junior]	80000	120000	RUR	between1And3	От 1 года до 3 лет	{FastAPI,Python}	Москва	2025-09-13 22:00:55+03	https://hh.ru/vacancy/125295173
125320995	Python Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,pytest}	Минск	2025-09-15 11:15:08+03	https://hh.ru/vacancy/125320995
126192190	Senior DevOps-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Docker,Go,Linux,Python}	Москва	2025-10-06 15:19:30+03	https://hh.ru/vacancy/126192190
121889881	Lead Python Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Flask,Python,SQL}	Минск	2025-09-18 14:26:47+03	https://hh.ru/vacancy/121889881
126244976	Java разработчик/Java Developer (ученик)	70000	80000	RUR	noExperience	Нет опыта	{Git,Java}	Пермь	2025-10-07 12:25:51+03	https://hh.ru/vacancy/126244976
118074934	Разработчик автоматизированных тестов/SDET Python (MAC)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Linux,Python}	Санкт-Петербург	2025-09-25 19:25:27+03	https://hh.ru/vacancy/118074934
124874488	Python-разработчик (middle+), страховые продукты	\N	\N	RUR	moreThan6	Более 6 лет	{Python,Redis,SQL}	Москва	2025-09-26 15:22:28+03	https://hh.ru/vacancy/124874488
125394465	Разработчик на python в команду инфраструктуры Браузера	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-16 15:00:57+03	https://hh.ru/vacancy/125394465
125069653	DevOps Engineer	250000	300000	RUR	between3And6	От 3 до 6 лет	{Bash,Go,PostgreSQL,Python}	Калининград	2025-09-08 19:23:37+03	https://hh.ru/vacancy/125069653
124046929	Разработчик Python в LLM Platform	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,FastAPI,Kubernetes,PostgreSQL,Python}	Ростов-на-Дону	2025-09-29 10:12:41+03	https://hh.ru/vacancy/124046929
125492919	Python Developer (Dubai onsite)	\N	\N	RUR	moreThan6	Более 6 лет	{}	Москва	2025-09-18 16:00:39+03	https://hh.ru/vacancy/125492919
124999475	Ведущий разработчик Python (ML)	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Flask,Python}	Москва	2025-09-08 10:39:16+03	https://hh.ru/vacancy/124999475
125111619	AI/AI-agent developer (Python)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Flask,Pandas,Python}	Москва	2025-09-09 15:51:15+03	https://hh.ru/vacancy/125111619
124223509	Python Developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Минск	2025-09-18 12:28:33+03	https://hh.ru/vacancy/124223509
116162916	Python developer / Разработчик Python (KORNFELD)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-20 15:23:29+03	https://hh.ru/vacancy/116162916
117251381	Senior Python-developer	270000	\N	RUR	moreThan6	Более 6 лет	{Python,SQL}	Самара	2025-09-12 10:57:00+03	https://hh.ru/vacancy/117251381
121696075	Старший Python-разработчик	\N	230000	RUR	between3And6	От 3 до 6 лет	{Python}	Краснодар	2025-09-17 12:49:00+03	https://hh.ru/vacancy/121696075
124403580	Разработчик на Go и на Python в команду ядра биллинга	\N	\N	RUR	between3And6	От 3 до 6 лет	{PostgreSQL,SQL}	Москва	2025-09-16 08:53:06+03	https://hh.ru/vacancy/124403580
125702444	Python-разработчик	50000	100000	RUR	between1And3	От 1 года до 3 лет	{Django,Python}	Новосибирск	2025-09-24 12:58:30+03	https://hh.ru/vacancy/125702444
125400873	N8n-разработчик Middle (AI-агенты)	\N	\N	RUR	between3And6	От 3 до 6 лет	{JavaScript,Python,TypeScript}	Москва	2025-10-06 16:41:22+03	https://hh.ru/vacancy/125400873
124270690	Специалист по автоматизированному тестированию\\Automation QA Engineer (Python)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,Selenium,pytest}	Москва	2025-10-07 13:26:15+03	https://hh.ru/vacancy/124270690
125408506	Game Programmer (Junior)	24580	\N	RUR	between1And3	От 1 года до 3 лет	{}	Сочи	2025-09-16 18:53:54+03	https://hh.ru/vacancy/125408506
124007689	Разработчик AL решений	\N	220000	RUR	moreThan6	Более 6 лет	{Python,SQL}	Москва	2025-10-07 08:32:02+03	https://hh.ru/vacancy/124007689
119787452	Senior Python developer (Санкт-Петербург)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-10-06 18:10:54+03	https://hh.ru/vacancy/119787452
125115268	Разработчик AmoCRM	\N	140000	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-06 16:31:50+03	https://hh.ru/vacancy/125115268
125408786	Стажер-разработчик на Python в области AI	18000	50000	RUR	between1And3	От 1 года до 3 лет	{Python}	Краснодар	2025-09-16 19:14:42+03	https://hh.ru/vacancy/125408786
125495839	Инженер-программист (Junior C/C++ (Linux))	110000	\N	RUR	between1And3	От 1 года до 3 лет	{Go,Python,Rust}	Протвино (Московская область)	2025-10-06 16:47:32+03	https://hh.ru/vacancy/125495839
126163977	Ведущий python программист/Senior	\N	\N	RUR	moreThan6	Более 6 лет	{Django,MySQL,PostgreSQL,Python}	Новосибирск	2025-10-06 09:44:11+03	https://hh.ru/vacancy/126163977
125374151	Python-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,Linux,MongoDB,PostgreSQL,Python,SQL,asyncio}	Москва	2025-09-16 10:11:39+03	https://hh.ru/vacancy/125374151
125458559	Разработчик (Python)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-18 06:42:00+03	https://hh.ru/vacancy/125458559
125432136	Computer Vision Engineer/Python developer (junior/стажер)	\N	\N	RUR	noExperience	Нет опыта	{Python}	Симферополь	2025-09-17 12:06:10+03	https://hh.ru/vacancy/125432136
125511588	AQA инженер (Python)/Python разработчик в IT компанию	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Linux,PostgreSQL,Python}	Санкт-Петербург	2025-09-19 08:47:08+03	https://hh.ru/vacancy/125511588
125846153	Python-разработчик	\N	130000	RUR	between1And3	От 1 года до 3 лет	{NumPy,Pandas,Python}	Москва	2025-09-26 15:00:41+03	https://hh.ru/vacancy/125846153
125009830	Разработчик Python	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-08 12:15:02+03	https://hh.ru/vacancy/125009830
125940545	Python-разработчик	130000	250000	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Екатеринбург	2025-09-30 09:39:59+03	https://hh.ru/vacancy/125940545
125767051	Python developer/full stack (junior)	60000	120000	RUR	between1And3	От 1 года до 3 лет	{Python,React,Vue}	Новосибирск	2025-09-25 13:35:10+03	https://hh.ru/vacancy/125767051
124889552	Middle Python Developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Django,Python}	Санкт-Петербург	2025-09-08 18:31:33+03	https://hh.ru/vacancy/124889552
126008885	Python developer (CAD)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Томск	2025-10-01 12:31:03+03	https://hh.ru/vacancy/126008885
126061542	Middle QA Automation Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,"REST API"}	Алматы	2025-10-02 12:42:11+03	https://hh.ru/vacancy/126061542
118847725	Python разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Казань	2025-09-30 17:31:09+03	https://hh.ru/vacancy/118847725
125122349	Tech Lead / Ведущий разработчик (Python, Fintech/Blockchain)	400000	\N	RUR	moreThan6	Более 6 лет	{FastAPI,PostgreSQL,Python}	Москва	2025-10-06 19:18:51+03	https://hh.ru/vacancy/125122349
125390117	Junior Fullstack разработчик Django/Python	80000	\N	RUR	between1And3	От 1 года до 3 лет	{CSS,Django,HTML,Python}	Новосибирск	2025-09-16 13:58:11+03	https://hh.ru/vacancy/125390117
126195318	С-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Kubernetes,Nginx,Python}	Москва	2025-10-06 16:03:26+03	https://hh.ru/vacancy/126195318
125209868	Python-разработчик (ML-интеграция, высоконагруженные сервисы)	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Python}	Москва	2025-09-11 11:49:24+03	https://hh.ru/vacancy/125209868
126093384	Разработчик Python (интеграции с 1С)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-03 08:34:12+03	https://hh.ru/vacancy/126093384
125367159	Python-разработчик (CV)	140000	\N	RUR	between1And3	От 1 года до 3 лет	{PyTorch,Python,TensorFlow}	Новокузнецк	2025-09-19 10:22:44+03	https://hh.ru/vacancy/125367159
125691349	Разработчик Python	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Санкт-Петербург	2025-09-24 10:23:48+03	https://hh.ru/vacancy/125691349
125601566	Python-разработчик\\Teamlead	\N	\N	RUR	between3And6	От 3 до 6 лет	{Azure,Python,SQL}	Москва	2025-09-22 12:24:57+03	https://hh.ru/vacancy/125601566
125116833	Fullstack-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Angular,Bash,Docker,Git,JavaScript,Kubernetes,Python,React,TypeScript,Vue}	Алматы	2025-10-06 16:48:19+03	https://hh.ru/vacancy/125116833
119878927	Devops инженер (K8s)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Python,Shell}	Санкт-Петербург	2025-10-06 17:42:05+03	https://hh.ru/vacancy/119878927
125432660	Trainee/Python Developer	\N	\N	RUR	noExperience	Нет опыта	{Django,FastAPI,Flask,Python}	Минск	2025-09-17 12:14:17+03	https://hh.ru/vacancy/125432660
117915138	Senior Python разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,Docker,FastAPI,Linux,PostgreSQL,Python,SQL}	Москва	2025-10-08 11:12:07+03	https://hh.ru/vacancy/117915138
125300291	Python Developer	50000	100000	RUR	between1And3	От 1 года до 3 лет	{Django,PostgreSQL,Python}	Гродно	2025-09-14 21:25:05+03	https://hh.ru/vacancy/125300291
125975873	Middle Python Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{PostgreSQL,Python}	Санкт-Петербург	2025-09-30 16:26:23+03	https://hh.ru/vacancy/125975873
123882420	Trainee Python Developer	\N	\N	RUR	noExperience	Нет опыта	{Python,pytest}	Минск	2025-09-10 10:14:56+03	https://hh.ru/vacancy/123882420
125352598	Python Developer (middle/senior)	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Python}	Москва	2025-09-15 18:33:43+03	https://hh.ru/vacancy/125352598
126074947	Senior Python разработчик	\N	350000	RUR	moreThan6	Более 6 лет	{}	Москва	2025-10-02 16:17:17+03	https://hh.ru/vacancy/126074947
125866444	Middle Python Developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{CI/CD,Django,FastAPI,Flask,Python,asyncio}	Минск	2025-09-28 16:40:32+03	https://hh.ru/vacancy/125866444
124408556	Разработчик Python	60000	80000	RUR	between1And3	От 1 года до 3 лет	{Django,Python}	Новосибирск	2025-09-23 15:04:48+03	https://hh.ru/vacancy/124408556
124998837	Python-разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{FastAPI,Python,asyncio}	Москва	2025-09-08 10:31:33+03	https://hh.ru/vacancy/124998837
124463631	Middle+ / Senior Backend Developer (Python + SQL)	250000	350000	RUR	between3And6	От 3 до 6 лет	{FastAPI,Python,SQL,asyncio}	Москва	2025-09-25 02:29:53+03	https://hh.ru/vacancy/124463631
125445964	Fullstack разработчик (Python/Go + React)	150000	250000	RUR	between1And3	От 1 года до 3 лет	{FastAPI,Git,Go,Python,React}	Москва	2025-09-17 15:31:42+03	https://hh.ru/vacancy/125445964
125464382	Python-разработчик для сервисов ML	130000	160000	RUR	between3And6	От 3 до 6 лет	{FastAPI,Flask,Python}	Новосибирск	2025-09-18 08:57:44+03	https://hh.ru/vacancy/125464382
126134984	Python-разработчик (Автотесты сетевого оборудования) Junior	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Linux,Python}	Санкт-Петербург	2025-10-04 12:45:48+03	https://hh.ru/vacancy/126134984
122230525	Senior Python developer (E-commerce)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,Python}	Москва	2025-09-12 11:20:58+03	https://hh.ru/vacancy/122230525
124623565	Middle Python Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,PostgreSQL,Python}	Казань	2025-09-28 10:07:05+03	https://hh.ru/vacancy/124623565
124841561	Senior Python Developer Backend	200000	300000	RUR	between1And3	От 1 года до 3 лет	{Flask,MongoDB,Python,SQL}	Санкт-Петербург	2025-10-02 17:36:07+03	https://hh.ru/vacancy/124841561
123616351	Аналитик-разработчик в команду Конкурентного анализа	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-10-06 22:03:32+03	https://hh.ru/vacancy/123616351
125833938	Python-разработчик программного обеспечения	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-26 11:19:09+03	https://hh.ru/vacancy/125833938
125265638	ML-Python разработчик (NLP)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Санкт-Петербург	2025-09-12 11:23:04+03	https://hh.ru/vacancy/125265638
124813521	Python-разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Нижний Новгород	2025-10-01 09:07:19+03	https://hh.ru/vacancy/124813521
125642394	Python-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux,SQL}	Минск	2025-09-23 10:04:50+03	https://hh.ru/vacancy/125642394
125622144	Senior python-разработчик внешних сервисов	\N	\N	RUR	between3And6	От 3 до 6 лет	{PostgreSQL,Python}	Москва	2025-09-22 17:30:46+03	https://hh.ru/vacancy/125622144
125043267	Python разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Flask,Pandas,Python}	Москва	2025-09-08 15:32:58+03	https://hh.ru/vacancy/125043267
125758777	Специалист по анализу уязвимостей (AppSec)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-10-07 12:02:01+03	https://hh.ru/vacancy/125758777
126009389	Python Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Тбилиси	2025-10-01 12:40:14+03	https://hh.ru/vacancy/126009389
124507185	Старший инженер-разработчик ИИ и комплаенс (Черногория)	\N	\N	RUR	moreThan6	Более 6 лет	{CSS,HTML,JavaScript,Python,SQL,Scikit-learn}	Санкт-Петербург	2025-10-07 13:33:16+03	https://hh.ru/vacancy/124507185
125973617	DBA Postgre SQL/Администратор баз данных	\N	\N	RUR	moreThan6	Более 6 лет	{PostgreSQL}	Москва	2025-10-06 15:51:54+03	https://hh.ru/vacancy/125973617
122933186	Python-разработчик	\N	\N	RUR	noExperience	Нет опыта	{Python}	Москва	2025-09-15 11:55:13+03	https://hh.ru/vacancy/122933186
125167073	Senior Python Developer	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-26 11:53:23+03	https://hh.ru/vacancy/125167073
125228919	Senior Python-разработчик	220000	270000	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-11 14:23:52+03	https://hh.ru/vacancy/125228919
125904491	Senior Python Developer	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Минск	2025-09-29 14:59:08+03	https://hh.ru/vacancy/125904491
122390241	Middle Python-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,Python}	Владимир	2025-09-24 13:39:31+03	https://hh.ru/vacancy/122390241
122690606	Разработчик Python (middle+)	120000	150000	RUR	between1And3	От 1 года до 3 лет	{Django,Python}	Санкт-Петербург	2025-09-26 09:05:48+03	https://hh.ru/vacancy/122690606
124170397	Python разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Томск	2025-09-16 14:16:12+03	https://hh.ru/vacancy/124170397
123911013	Python Developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{FastAPI,Flask,Python}	Москва	2025-09-10 16:11:49+03	https://hh.ru/vacancy/123911013
125662057	Python Senior Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Python}	Минск	2025-09-23 14:44:14+03	https://hh.ru/vacancy/125662057
125283304	Ruby Developer	\N	260000	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-10-06 16:14:08+03	https://hh.ru/vacancy/125283304
122323342	Ведущий разработчик C/Linux	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Docker,Linux,Python}	Нижний Новгород	2025-10-03 14:27:45+03	https://hh.ru/vacancy/122323342
125407922	Аналитик-разработчик в Конкурентную аналитику AI-ассистентов	\N	\N	RUR	between3And6	От 3 до 6 лет	{SQL}	Москва	2025-10-06 21:14:57+03	https://hh.ru/vacancy/125407922
124158397	Инженер алгоритмов и моделирования/Algorithms and Models L2+ layer Engineer (4G/LTE, 5G)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-16 14:02:14+03	https://hh.ru/vacancy/124158397
126044223	Системный разработчик во внутреннее облако Яндекса	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Python}	Нижний Новгород	2025-10-02 08:59:22+03	https://hh.ru/vacancy/126044223
125637413	Python-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Linux,PostgreSQL,Python,SQL}	Москва	2025-09-23 09:03:00+03	https://hh.ru/vacancy/125637413
125746443	Build Engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{CI/CD,Python}	Санкт-Петербург	2025-10-07 09:19:18+03	https://hh.ru/vacancy/125746443
125045974	Data Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Airflow,Python,SQL}	Москва	2025-10-07 12:36:10+03	https://hh.ru/vacancy/125045974
122389955	Python-разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Django,Docker,Flask,Python}	Владимир	2025-09-24 13:39:31+03	https://hh.ru/vacancy/122389955
123889846	Ведущий разработчик-исследователь ML [Синтез речи] (MWS AI)	\N	\N	RUR	between3And6	От 3 до 6 лет	{PyTorch}	Москва	2025-10-06 17:44:08+03	https://hh.ru/vacancy/123889846
124646397	Senior Python Developer	\N	\N	RUR	moreThan6	Более 6 лет	{Django,Python}	Москва	2025-09-18 15:47:43+03	https://hh.ru/vacancy/124646397
121350226	Python-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Python}	Краснодар	2025-09-29 10:12:23+03	https://hh.ru/vacancy/121350226
126200453	Python-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-06 16:38:12+03	https://hh.ru/vacancy/126200453
118847757	Python разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Иннополис	2025-09-30 17:31:13+03	https://hh.ru/vacancy/118847757
126257097	Python разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-07 13:41:18+03	https://hh.ru/vacancy/126257097
126219973	Младший инженер по тестированию ПО (Linux)	\N	99000	RUR	between1And3	От 1 года до 3 лет	{Linux}	Москва	2025-10-07 08:25:16+03	https://hh.ru/vacancy/126219973
124975474	Backend разработчик (Python)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,Python}	Москва	2025-10-06 22:18:56+03	https://hh.ru/vacancy/124975474
124531862	Python разработчик	100000	250000	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Новосибирск	2025-09-23 10:45:04+03	https://hh.ru/vacancy/124531862
124469128	Python backend-разработчик (Middle/Senior)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Пермь	2025-09-09 14:26:34+03	https://hh.ru/vacancy/124469128
125244442	Разработчик на Python/Go в Финтех	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,PostgreSQL,Python,SQL}	Москва	2025-09-18 12:47:31+03	https://hh.ru/vacancy/125244442
125374176	Разработчик Python	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Екатеринбург	2025-09-16 10:12:03+03	https://hh.ru/vacancy/125374176
126009223	Python Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Астана	2025-10-01 12:37:29+03	https://hh.ru/vacancy/126009223
124188276	Python-разработчик (ESC)	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,asyncio}	Москва	2025-09-17 17:00:52+03	https://hh.ru/vacancy/124188276
124123396	Python разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Нижний Новгород	2025-09-29 11:27:35+03	https://hh.ru/vacancy/124123396
125149893	Senior Python Developer/Разработка и поддержка ПО в сфере промышленной робототехники и автоматизации	\N	\N	RUR	between3And6	От 3 до 6 лет	{Git,Python}	Москва	2025-09-10 12:38:21+03	https://hh.ru/vacancy/125149893
126125719	Аналитик данных	\N	\N	RUR	between1And3	От 1 года до 3 лет	{MySQL,NumPy,Pandas,Python}	Москва	2025-10-06 17:51:54+03	https://hh.ru/vacancy/126125719
125697403	FullStack Developer (Python + JavaScript)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Flask,JavaScript,Python,React,TypeScript}	Минск	2025-09-24 11:46:32+03	https://hh.ru/vacancy/125697403
123615151	Senior Python Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Python}	Москва	2025-09-29 13:34:38+03	https://hh.ru/vacancy/123615151
125252659	Senior backend разработчик (Golang, Python)	\N	\N	RUR	moreThan6	Более 6 лет	{PostgreSQL,Python}	Москва	2025-10-08 07:34:40+03	https://hh.ru/vacancy/125252659
125756050	Python Developer/Fullstack (FastApi, Angular)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-09-25 11:22:27+03	https://hh.ru/vacancy/125756050
125540173	Senior Python разработчик	\N	\N	RUR	moreThan6	Более 6 лет	{Docker,Linux,MongoDB,PostgreSQL,Python,Redis,SQL,asyncio}	Москва	2025-09-19 16:20:58+03	https://hh.ru/vacancy/125540173
123026105	AI/AI-agent developer (Python)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-19 09:37:40+03	https://hh.ru/vacancy/123026105
125898169	Senior SDET engineer (Python) / Старший инженер-программист	\N	\N	RUR	moreThan6	Более 6 лет	{CI/CD,Python,pytest}	Санкт-Петербург	2025-09-29 13:29:22+03	https://hh.ru/vacancy/125898169
125491560	Ведущий Python-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Python}	Краснодар	2025-09-18 15:44:21+03	https://hh.ru/vacancy/125491560
125668987	Python-разработчик	166000	207500	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,GraphQL,Python,"REST API"}	Алматы	2025-09-23 16:41:33+03	https://hh.ru/vacancy/125668987
126258243	Android-разработчик (Middle, Senior)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-07 14:00:42+03	https://hh.ru/vacancy/126258243
116347834	Python разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Flask,Git,Python}	Москва	2025-09-10 09:25:21+03	https://hh.ru/vacancy/116347834
124138278	Senior Python/Golang разработчик в Финтех (Enterprise)	\N	\N	RUR	between3And6	От 3 до 6 лет	{PostgreSQL,Python}	Москва	2025-09-26 14:53:46+03	https://hh.ru/vacancy/124138278
125880962	Системный аналитик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,Python}	Москва	2025-09-29 09:51:05+03	https://hh.ru/vacancy/125880962
126231920	Web-разработчик (Гибрид, СПБ)	130000	\N	RUR	between1And3	От 1 года до 3 лет	{}	Санкт-Петербург	2025-10-07 11:05:59+03	https://hh.ru/vacancy/126231920
125834350	Python разработчик (MLOps) / Инженер поддержки ML-систем	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Екатеринбург	2025-09-26 11:26:49+03	https://hh.ru/vacancy/125834350
126164503	Системный аналитик (Senior)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,JavaScript,MongoDB,Python,Redis}	Москва	2025-10-06 09:49:49+03	https://hh.ru/vacancy/126164503
125596253	Старший разработчик Python / Senior Python Developer (XData)	\N	\N	RUR	between3And6	От 3 до 6 лет	{PostgreSQL,pytest}	Москва	2025-09-22 11:20:23+03	https://hh.ru/vacancy/125596253
126210182	Инженер внедрения и технической поддержки	150000	200000	RUR	between3And6	От 3 до 6 лет	{Bash,Linux,Python}	Краснодар	2025-10-06 19:07:02+03	https://hh.ru/vacancy/126210182
125583446	Разработчик на Go и на Python в команду ядра биллинга	\N	\N	RUR	between3And6	От 3 до 6 лет	{PostgreSQL,SQL}	Санкт-Петербург	2025-09-29 18:40:54+03	https://hh.ru/vacancy/125583446
125981902	Data Analyst / Аналитик Данных	249000	\N	RUR	between1And3	От 1 года до 3 лет	{NumPy,Pandas,Python}	Москва	2025-10-06 18:57:49+03	https://hh.ru/vacancy/125981902
125151481	Python Backend Developer	\N	\N	RUR	moreThan6	Более 6 лет	{FastAPI,Python}	Батуми	2025-09-10 12:57:48+03	https://hh.ru/vacancy/125151481
125346160	Разработчик Python PyQt/PySide (Astra Migration Tool)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-15 17:21:38+03	https://hh.ru/vacancy/125346160
126239489	Технический руководитель проекта	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,Kafka,Python,RabbitMQ}	Москва	2025-10-07 11:57:21+03	https://hh.ru/vacancy/126239489
125475473	Ведущий разработчик Python	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-18 11:35:16+03	https://hh.ru/vacancy/125475473
126011309	Python Middle/Senior разработчик	136421	166737	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Flask,MySQL,PostgreSQL,Python,Redis}	Астана	2025-10-01 13:06:19+03	https://hh.ru/vacancy/126011309
126219873	Junior Blockchain Engineer	100000	160000	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-10-07 08:22:47+03	https://hh.ru/vacancy/126219873
126258207	Middle Python Developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Нижний Новгород	2025-10-07 14:00:11+03	https://hh.ru/vacancy/126258207
122619851	Старший Python + Go разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux,Python}	Москва	2025-10-06 13:57:15+03	https://hh.ru/vacancy/122619851
125276337	Python developer (Senior/Lead)	280000	330000	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-10-06 14:19:33+03	https://hh.ru/vacancy/125276337
125602176	Стажер-разработчик (Python)	62436	\N	RUR	noExperience	Нет опыта	{CSS,Django,HTML,Python,SQL}	Минск	2025-09-22 12:33:51+03	https://hh.ru/vacancy/125602176
126243679	Инженер по ИИ-конвейерам (n8n + Python)	250000	\N	RUR	between1And3	От 1 года до 3 лет	{}	Санкт-Петербург	2025-10-07 12:18:48+03	https://hh.ru/vacancy/126243679
123309351	Senior Python backend developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-22 17:11:06+03	https://hh.ru/vacancy/123309351
122592646	Python разработчик (Senior), Machine Learning	\N	\N	RUR	moreThan6	Более 6 лет	{Django,FastAPI,Flask,Python}	Москва	2025-09-29 11:54:57+03	https://hh.ru/vacancy/122592646
126230640	Python developer [Trust and Safety]	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-07 10:48:18+03	https://hh.ru/vacancy/126230640
125114176	Trainee Python Developer (со знанием испанского/итальянского языка)	\N	\N	RUR	noExperience	Нет опыта	{Django,FastAPI,Flask,Python}	Минск	2025-09-09 16:16:43+03	https://hh.ru/vacancy/125114176
124702032	AI/AI-agent developer (Python) - senior	\N	170000	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-11 14:01:28+03	https://hh.ru/vacancy/124702032
124026691	Senior backend разработчик (Python)	\N	\N	RUR	moreThan6	Более 6 лет	{}	Москва	2025-09-23 15:49:22+03	https://hh.ru/vacancy/124026691
125994314	Старший разработчик (Python/SQL/JavaScript)	\N	\N	RUR	between3And6	От 3 до 6 лет	{JavaScript,PostgreSQL,Python,SQL}	Санкт-Петербург	2025-10-01 09:07:17+03	https://hh.ru/vacancy/125994314
125892658	Младший специалист по тестированию ПО (Linux)	79000	79000	RUR	between1And3	От 1 года до 3 лет	{Linux}	Орел	2025-09-29 12:11:52+03	https://hh.ru/vacancy/125892658
125539295	Full-Stack Python + Vue.js разработчик	200000	280000	RUR	between3And6	От 3 до 6 лет	{JavaScript,Python}	Москва	2025-09-24 18:36:45+03	https://hh.ru/vacancy/125539295
122225099	Python-разработчик AI Middle+/Senior	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-09-30 13:06:48+03	https://hh.ru/vacancy/122225099
125753811	Full Stack Developer (Python/TypeScript/Angular) with German	\N	\N	RUR	between3And6	От 3 до 6 лет	{Angular,Django,Python,TypeScript}	Алматы	2025-09-25 10:52:35+03	https://hh.ru/vacancy/125753811
125439719	HW-разработчик Python (аппаратные испытания)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Git,Linux,Python,pytest}	Москва	2025-09-17 13:56:30+03	https://hh.ru/vacancy/125439719
124296088	Senior Python Developer	\N	\N	RUR	moreThan6	Более 6 лет	{PostgreSQL,Python}	Санкт-Петербург	2025-09-15 12:42:15+03	https://hh.ru/vacancy/124296088
125491242	Python-разработчик (СберБизнесБот)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-06 15:39:09+03	https://hh.ru/vacancy/125491242
124756495	Стажёр аналитик Spark Hadoop BigData	60000	100000	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-07 10:26:28+03	https://hh.ru/vacancy/124756495
125154982	Senior Python-разработчик	500000	\N	RUR	between3And6	От 3 до 6 лет	{Linux,Python}	Москва	2025-10-07 13:30:32+03	https://hh.ru/vacancy/125154982
124507743	Разработчик-эксперт python\\Архитектор (IaaS/PaaS)	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-10-02 18:01:44+03	https://hh.ru/vacancy/124507743
125696090	Senior Python разработчик в команду MLOps платформы	\N	\N	RUR	moreThan6	Более 6 лет	{asyncio}	Москва	2025-09-24 11:28:30+03	https://hh.ru/vacancy/125696090
125303868	Бэкенд разработчик в команду Platform Runtime	\N	\N	RUR	between3And6	От 3 до 6 лет	{Kafka,Kubernetes}	Нижний Новгород	2025-09-15 07:02:25+03	https://hh.ru/vacancy/125303868
126183030	Python Developer	120000	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-06 13:14:43+03	https://hh.ru/vacancy/126183030
125179325	Jr. Python Developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{JavaScript,Node.js,Python}	Тбилиси	2025-09-11 00:05:09+03	https://hh.ru/vacancy/125179325
122933187	Python-разработчик	\N	\N	RUR	noExperience	Нет опыта	{Python}	Санкт-Петербург	2025-09-15 11:55:14+03	https://hh.ru/vacancy/122933187
122933188	Python-разработчик	\N	\N	RUR	noExperience	Нет опыта	{Python}	Воронеж	2025-09-15 11:55:14+03	https://hh.ru/vacancy/122933188
125167074	Senior Python Developer	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Санкт-Петербург	2025-09-26 11:53:23+03	https://hh.ru/vacancy/125167074
122933189	Python-разработчик	\N	\N	RUR	noExperience	Нет опыта	{Python}	Нижний Новгород	2025-09-15 11:55:14+03	https://hh.ru/vacancy/122933189
124558292	Инженер Linux (траблшутинг ОС Linux)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux}	Москва	2025-10-07 09:16:09+03	https://hh.ru/vacancy/124558292
125179332	Jr. Python Developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{JavaScript,Node.js,Python}	Литва	2025-09-11 00:05:09+03	https://hh.ru/vacancy/125179332
124771812	Senior Python разработчик	150000	240000	RUR	moreThan6	Более 6 лет	{Python}	Санкт-Петербург	2025-10-02 13:48:03+03	https://hh.ru/vacancy/124771812
125179328	Jr. Python Developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{JavaScript,Node.js,Python}	Израиль	2025-09-11 00:05:09+03	https://hh.ru/vacancy/125179328
119816398	Python-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Python}	Сочи	2025-09-29 10:12:20+03	https://hh.ru/vacancy/119816398
125147896	Системный разработчик (Python + C/С++)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Linux,Python}	Москва	2025-10-07 11:18:42+03	https://hh.ru/vacancy/125147896
125595074	Technical Project Manager	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-10-07 11:07:49+03	https://hh.ru/vacancy/125595074
125179329	Jr. Python Developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{JavaScript,Node.js,Python}	Сербия	2025-09-11 00:05:09+03	https://hh.ru/vacancy/125179329
112661918	Инженер внедрения	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Санкт-Петербург	2025-10-06 15:32:25+03	https://hh.ru/vacancy/112661918
125435330	Python разработчик в офис	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Саратов	2025-09-17 12:48:04+03	https://hh.ru/vacancy/125435330
124156897	Trainee Python Developer	\N	\N	RUR	noExperience	Нет опыта	{Django,FastAPI,Flask,Python}	Минск	2025-09-17 10:36:14+03	https://hh.ru/vacancy/124156897
124648752	Trainee/Python Developer	\N	\N	RUR	noExperience	Нет опыта	{Django,FastAPI,Flask,Python}	Могилев	2025-09-28 17:17:17+03	https://hh.ru/vacancy/124648752
124813520	Python-разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-08 08:39:15+03	https://hh.ru/vacancy/124813520
124648751	Trainee/Python Developer	\N	\N	RUR	noExperience	Нет опыта	{Django,FastAPI,Flask,Python}	Витебск	2025-09-28 17:17:17+03	https://hh.ru/vacancy/124648751
124156636	Trainee Python Developer	\N	\N	RUR	noExperience	Нет опыта	{Django,FastAPI,Flask,Python}	Брест	2025-09-17 10:34:12+03	https://hh.ru/vacancy/124156636
125458228	Data Engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{PyTorch,Python,Scikit-learn,TensorFlow}	Москва	2025-10-07 13:24:45+03	https://hh.ru/vacancy/125458228
124813522	Python-разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Екатеринбург	2025-09-17 09:14:27+03	https://hh.ru/vacancy/124813522
125179326	Jr. Python Developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{JavaScript,Node.js,Python}	Армения	2025-09-11 00:05:09+03	https://hh.ru/vacancy/125179326
117582494	Python developer / Разработчик Python (KORNFELD)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Нижний Новгород	2025-09-19 19:55:02+03	https://hh.ru/vacancy/117582494
125618216	Инженер-программист	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Git}	Солнечногорск (Московская область)	2025-09-22 16:17:33+03	https://hh.ru/vacancy/125618216
125179331	Jr. Python Developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{JavaScript,Node.js,Python}	Баку	2025-09-11 00:05:09+03	https://hh.ru/vacancy/125179331
124054145	Разработчик Python в LLM Platform	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,FastAPI,Kubernetes,PostgreSQL,Python}	Сочи	2025-09-29 10:12:48+03	https://hh.ru/vacancy/124054145
125579576	Специалист технической поддержки (г. Новосибирск)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Go,Java,Python,"REST API"}	Новосибирск	2025-10-07 08:00:37+03	https://hh.ru/vacancy/125579576
123978222	Системный инженер-эксперт Linux (3 линия)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Хабаровск	2025-09-18 21:23:38+03	https://hh.ru/vacancy/123978222
125282309	Fullstack-разработчик	124500	166000	RUR	between1And3	От 1 года до 3 лет	{FastAPI,Python,React}	Алматы	2025-09-12 15:57:26+03	https://hh.ru/vacancy/125282309
126244333	DevOps-инженер/Системный администратор (Senior)	230000	300000	RUR	moreThan6	Более 6 лет	{Linux,MySQL,Nginx,Python}	Москва	2025-10-07 12:22:18+03	https://hh.ru/vacancy/126244333
125425894	Data аналитик / BI аналитик	\N	270000	RUR	between3And6	От 3 до 6 лет	{NumPy,Pandas,Python}	Москва	2025-09-17 10:50:37+03	https://hh.ru/vacancy/125425894
126010038	Python-разработчик (Ментор/Лид)	100000	180000	RUR	between3And6	От 3 до 6 лет	{Python}	Ростов-на-Дону	2025-10-01 12:50:19+03	https://hh.ru/vacancy/126010038
120851177	Junior DevOps engineer	100000	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Linux,Python}	Санкт-Петербург	2025-10-07 09:58:22+03	https://hh.ru/vacancy/120851177
126246179	Java разработчик с нуля (стажер)	70000	80000	RUR	noExperience	Нет опыта	{Java}	Саратов	2025-10-07 12:33:18+03	https://hh.ru/vacancy/126246179
80736556	Разработчик Python	30000	80000	RUR	noExperience	Нет опыта	{Git,PostgreSQL,Python,SQL}	Ростов-на-Дону	2025-10-07 13:25:07+03	https://hh.ru/vacancy/80736556
123761902	Разработчик Python (Серверная Астра)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-10-06 17:26:18+03	https://hh.ru/vacancy/123761902
124053575	Разработчик Python в LLM Platform	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,FastAPI,Kubernetes,PostgreSQL,Python}	Краснодар	2025-09-29 10:12:45+03	https://hh.ru/vacancy/124053575
113705714	Senior Python-developer	270000	\N	RUR	moreThan6	Более 6 лет	{Python,SQL}	Санкт-Петербург	2025-09-12 10:18:58+03	https://hh.ru/vacancy/113705714
125179327	Jr. Python Developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{JavaScript,Node.js,Python}	Турция	2025-09-11 00:05:09+03	https://hh.ru/vacancy/125179327
125583447	Разработчик на Go и на Python в команду ядра биллинга	\N	\N	RUR	between3And6	От 3 до 6 лет	{PostgreSQL,SQL}	Москва	2025-09-29 18:40:50+03	https://hh.ru/vacancy/125583447
125878751	Младший инженер по тестированию ПО (Linux)	\N	99000	RUR	between1And3	От 1 года до 3 лет	{Linux}	Санкт-Петербург	2025-09-29 09:24:16+03	https://hh.ru/vacancy/125878751
126243523	Разработчик AI-платформы | MedTech	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Алматы	2025-10-07 12:18:03+03	https://hh.ru/vacancy/126243523
125341182	Computer Vision Engineer (intern/junior)	\N	\N	RUR	noExperience	Нет опыта	{Python}	Челябинск	2025-10-06 15:45:04+03	https://hh.ru/vacancy/125341182
124558899	HW-разработчик Python (аппаратные испытания)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Git,Linux,Python,pytest}	Нижний Новгород	2025-09-17 13:55:36+03	https://hh.ru/vacancy/124558899
124360369	Automation QA Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java}	Минск	2025-10-06 11:10:28+03	https://hh.ru/vacancy/124360369
126195632	Автотестировщик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux,Python}	Москва	2025-10-06 16:06:53+03	https://hh.ru/vacancy/126195632
125122015	Java-разработчик (Инчейн)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Нижний Новгород	2025-09-09 18:52:18+03	https://hh.ru/vacancy/125122015
125493284	Младший разработчик C#	50000	100000	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-10-06 16:06:25+03	https://hh.ru/vacancy/125493284
125689509	Python Backend-разработчик	44255	\N	RUR	between1And3	От 1 года до 3 лет	{API,Celery,FastAPI,PostgreSQL,Python}	Алматы	2025-09-24 10:01:33+03	https://hh.ru/vacancy/125689509
126069593	Python разработчик (Django)	\N	\N	RUR	moreThan6	Более 6 лет	{Django,FastAPI,Flask,MongoDB,MySQL,PostgreSQL}	Москва	2025-10-02 14:46:01+03	https://hh.ru/vacancy/126069593
125495845	Backend разработчик Python	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI}	Жуковский  (Московская область)	2025-10-06 16:47:47+03	https://hh.ru/vacancy/125495845
125163119	Python AI-developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-09-10 15:22:51+03	https://hh.ru/vacancy/125163119
125621014	Junior Python Developer	60000	90000	RUR	noExperience	Нет опыта	{Node.js,Python,TypeScript}	Москва	2025-09-22 17:12:03+03	https://hh.ru/vacancy/125621014
126211408	Разработчик С++	\N	\N	RUR	moreThan6	Более 6 лет	{Linux}	Санкт-Петербург	2025-10-06 21:12:58+03	https://hh.ru/vacancy/126211408
125388153	N8n-разработчик	200000	\N	RUR	between3And6	От 3 до 6 лет	{JavaScript,Python,TypeScript}	Москва	2025-10-07 13:23:09+03	https://hh.ru/vacancy/125388153
126223024	DevOps-инженер (Middle)	250000	280000	RUR	between3And6	От 3 до 6 лет	{Bash,MongoDB,MySQL,Nginx,Node.js,PostgreSQL,Python}	Москва	2025-10-07 09:14:41+03	https://hh.ru/vacancy/126223024
126225275	Python-разработчик / Senior	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,asyncio}	Москва	2025-10-07 09:40:45+03	https://hh.ru/vacancy/126225275
126199514	Fullstack QA	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Минск	2025-10-06 16:32:21+03	https://hh.ru/vacancy/126199514
126073138	Middle+ Python Developer	\N	327740	RUR	moreThan6	Более 6 лет	{FastAPI,Python,Rust}	Астана	2025-10-02 15:43:22+03	https://hh.ru/vacancy/126073138
125063498	Python разработчик	160000	200000	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-02 12:01:18+03	https://hh.ru/vacancy/125063498
126031777	Junior Python-разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,"REST API"}	Санкт-Петербург	2025-10-01 19:50:20+03	https://hh.ru/vacancy/126031777
126025161	Python developer (Middle)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Kafka,Python,"REST API"}	Санкт-Петербург	2025-10-01 16:30:29+03	https://hh.ru/vacancy/126025161
125471403	Python backend разработчик	200000	220000	RUR	between3And6	От 3 до 6 лет	{Django,Docker,Linux,Redis}	Москва	2025-09-18 10:40:02+03	https://hh.ru/vacancy/125471403
126241997	Руководитель группы разработки (Python)	120000	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-07 12:09:22+03	https://hh.ru/vacancy/126241997
125900655	Senior Python developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux,Python}	Москва	2025-09-29 14:04:21+03	https://hh.ru/vacancy/125900655
124878448	Разработчик (Python)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{API,Python,REST}	Москва	2025-09-04 14:15:33+03	https://hh.ru/vacancy/124878448
125866433	Junior Python Developer	\N	\N	RUR	noExperience	Нет опыта	{CI/CD,Django,FastAPI,Flask,Python,asyncio}	Минск	2025-09-28 16:39:36+03	https://hh.ru/vacancy/125866433
126226172	Middle+ Python Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Kafka,Python,RabbitMQ}	Минск	2025-10-07 09:53:36+03	https://hh.ru/vacancy/126226172
125672281	Python-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-23 17:53:11+03	https://hh.ru/vacancy/125672281
125281905	Разработчик Python	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Казань	2025-09-12 15:51:06+03	https://hh.ru/vacancy/125281905
125391904	Senior Python разработчик	220000	350000	RUR	between3And6	От 3 до 6 лет	{Linux,Python,SQL,asyncio}	Москва	2025-09-16 14:23:38+03	https://hh.ru/vacancy/125391904
124882428	Python-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Git,Linux,Python,SQL}	Краснодар	2025-09-04 15:11:22+03	https://hh.ru/vacancy/124882428
124075153	Python разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Flask,Python}	Краснодар	2025-09-12 16:33:46+03	https://hh.ru/vacancy/124075153
125137517	Backend-разработчик (Python)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{FastAPI,Python}	Москва	2025-09-10 10:06:25+03	https://hh.ru/vacancy/125137517
124989785	Middle Backend Developer	83000	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Ташкент	2025-09-08 08:49:17+03	https://hh.ru/vacancy/124989785
126211326	Разработчик Python в LLM Platform	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,FastAPI,Kubernetes,PostgreSQL,Python}	Минск	2025-10-06 21:03:52+03	https://hh.ru/vacancy/126211326
125879653	Python разработчик	100000	250000	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Уфа	2025-09-29 09:34:35+03	https://hh.ru/vacancy/125879653
126064657	Python-разработчик (Middle) (ACM)	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,PostgreSQL,Python}	Москва	2025-10-02 13:28:38+03	https://hh.ru/vacancy/126064657
122005493	C/C++ Developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Linux}	Москва	2025-10-07 10:18:03+03	https://hh.ru/vacancy/122005493
125623152	Python-разработчик (Django)	\N	\N	RUR	between3And6	От 3 до 6 лет	{CSS,Django,FastAPI,Flask,HTML,PostgreSQL}	Оренбург	2025-09-22 17:58:50+03	https://hh.ru/vacancy/125623152
125578935	Team Lead (Backend & Cross-Platform Development)	\N	\N	RUR	moreThan6	Более 6 лет	{Java,JavaScript,Linux,Python}	Санкт-Петербург	2025-10-07 07:49:38+03	https://hh.ru/vacancy/125578935
125499486	Python-разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Django,Python,SQL}	Новосибирск	2025-09-18 17:26:33+03	https://hh.ru/vacancy/125499486
120387152	Data Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Airflow,Python,SQL}	Тбилиси	2025-10-07 12:51:40+03	https://hh.ru/vacancy/120387152
125868593	Backend (Go/Python) Developer	100000	\N	RUR	between1And3	От 1 года до 3 лет	{Go,PostgreSQL,Python,SQL}	Москва	2025-09-28 23:46:45+03	https://hh.ru/vacancy/125868593
124241304	Senior PHP Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{MySQL}	Минск	2025-10-07 09:42:56+03	https://hh.ru/vacancy/124241304
125221350	Python-разработчик	120000	\N	RUR	between1And3	От 1 года до 3 лет	{Django,FastAPI,MySQL,PostgreSQL,Python}	Ростов-на-Дону	2025-09-11 13:10:20+03	https://hh.ru/vacancy/125221350
125597893	Machine Learning Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{PyTorch,Python,TensorFlow}	Минск	2025-10-07 11:39:32+03	https://hh.ru/vacancy/125597893
126001135	Technical Artist / Технический художник (Мир танков)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Санкт-Петербург	2025-10-07 10:44:46+03	https://hh.ru/vacancy/126001135
121721195	Python-разработчик	190000	300000	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-09 10:36:42+03	https://hh.ru/vacancy/121721195
125446479	Middle Python разработчик	180000	\N	RUR	between3And6	От 3 до 6 лет	{Kubernetes,pytest}	Санкт-Петербург	2025-09-17 15:41:57+03	https://hh.ru/vacancy/125446479
123594685	Senior NLP engineer (Jay Flow)	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Санкт-Петербург	2025-10-07 14:50:57+03	https://hh.ru/vacancy/123594685
125505427	Middle Python разработчик в аутстаф направление	\N	260000	RUR	between3And6	От 3 до 6 лет	{Django,Docker,FastAPI,Python,SQL}	Москва	2025-09-19 03:02:22+03	https://hh.ru/vacancy/125505427
121889873	Gameplay Programmer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Ташкент	2025-10-06 14:26:41+03	https://hh.ru/vacancy/121889873
125283346	Python-разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Django,PostgreSQL,Python,Redis}	Ташкент	2025-09-12 16:14:39+03	https://hh.ru/vacancy/125283346
126194014	Тимлид в команду Core 2GIC (C++)	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-10-06 15:42:30+03	https://hh.ru/vacancy/126194014
125380713	Python developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-16 11:38:29+03	https://hh.ru/vacancy/125380713
125460804	Backend-разработчик (Python FastAPI)	100000	\N	RUR	between1And3	От 1 года до 3 лет	{FastAPI,PostgreSQL,Python}	Пермь	2025-09-18 08:02:36+03	https://hh.ru/vacancy/125460804
125978494	Application Security Engineer (Минск)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Python}	Минск	2025-10-06 17:11:16+03	https://hh.ru/vacancy/125978494
124745830	Руководитель команды разработки (Team Lead)	\N	\N	RUR	moreThan6	Более 6 лет	{Go,Java,Python}	Пермь	2025-10-02 09:24:28+03	https://hh.ru/vacancy/124745830
125612761	Разработчик Python	\N	180000	RUR	between1And3	От 1 года до 3 лет	{}	Санкт-Петербург	2025-09-22 15:08:48+03	https://hh.ru/vacancy/125612761
125005296	Python-разработчик	90000	120000	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Уфа	2025-09-08 11:46:27+03	https://hh.ru/vacancy/125005296
125401694	Преподаватель цифровых технологий в IT школу KIBERone	40000	100000	RUR	noExperience	Нет опыта	{}	Павловская Слобода (Московская область)	2025-09-16 16:35:18+03	https://hh.ru/vacancy/125401694
125066483	Junior Python Developer	\N	\N	RUR	noExperience	Нет опыта	{Python}	Минск	2025-09-08 17:47:51+03	https://hh.ru/vacancy/125066483
122222358	Data Security Engineer/Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,Python}	Черногория	2025-09-28 18:19:11+03	https://hh.ru/vacancy/122222358
126230151	Системный инженер эксплуатации	85000	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,CI/CD,Docker,Python}	Новосибирск	2025-10-07 10:43:28+03	https://hh.ru/vacancy/126230151
125177885	Fullstack Python разработчик (Python + AI + Pet Projects)	\N	\N	RUR	noExperience	Нет опыта	{API}	Санкт-Петербург	2025-10-01 19:35:33+03	https://hh.ru/vacancy/125177885
111235934	Senior Python Developer in Test / Инженер-программист (KORNFELD)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,asyncio,pytest}	Санкт-Петербург	2025-09-04 18:26:49+03	https://hh.ru/vacancy/111235934
125248177	Fullstack Python разработчик (Python + AI + Pet Projects)	\N	\N	RUR	noExperience	Нет опыта	{API}	Красноярск	2025-09-11 18:56:31+03	https://hh.ru/vacancy/125248177
125233879	Fullstack Python разработчик (Python + AI + Pet Projects)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{API}	Казань	2025-09-11 15:30:21+03	https://hh.ru/vacancy/125233879
125248469	Fullstack Python разработчик (Python + AI + Pet Projects)	\N	\N	RUR	noExperience	Нет опыта	{API}	Кемерово	2025-09-11 19:15:24+03	https://hh.ru/vacancy/125248469
125248363	Fullstack Python разработчик (Python + AI + Pet Projects)	\N	\N	RUR	noExperience	Нет опыта	{API}	Ростов-на-Дону	2025-09-11 19:05:47+03	https://hh.ru/vacancy/125248363
125248447	Fullstack Python разработчик (Python + AI + Pet Projects)	\N	\N	RUR	noExperience	Нет опыта	{API}	Саратов	2025-09-11 19:14:31+03	https://hh.ru/vacancy/125248447
125178027	Fullstack Python разработчик (Python + AI + Pet Projects)	\N	\N	RUR	noExperience	Нет опыта	{API}	Новосибирск	2025-09-10 19:47:42+03	https://hh.ru/vacancy/125178027
125248386	Fullstack Python разработчик (Python + AI + Pet Projects)	\N	\N	RUR	noExperience	Нет опыта	{API}	Пермь	2025-09-11 19:08:04+03	https://hh.ru/vacancy/125248386
125248442	Fullstack Python разработчик (Python + AI + Pet Projects)	\N	\N	RUR	noExperience	Нет опыта	{API}	Барнаул	2025-09-11 19:13:44+03	https://hh.ru/vacancy/125248442
125248397	Fullstack Python разработчик (Python + AI + Pet Projects)	\N	\N	RUR	noExperience	Нет опыта	{API}	Воронеж	2025-09-11 19:09:02+03	https://hh.ru/vacancy/125248397
124050164	Разработчик Python в LLM Platform	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,FastAPI,Kubernetes,PostgreSQL,Python}	Таганрог	2025-09-08 09:53:53+03	https://hh.ru/vacancy/124050164
125248475	Fullstack Python разработчик (Python + AI + Pet Projects)	\N	\N	RUR	noExperience	Нет опыта	{API}	Тольятти	2025-09-11 19:16:06+03	https://hh.ru/vacancy/125248475
125236120	Fullstack Python разработчик (Python + AI + Pet Projects)	\N	\N	RUR	noExperience	Нет опыта	{API}	Нижний Новгород	2025-09-11 16:01:46+03	https://hh.ru/vacancy/125236120
125248402	Fullstack Python разработчик (Python + AI + Pet Projects)	\N	\N	RUR	noExperience	Нет опыта	{API}	Волгоград	2025-09-11 19:10:02+03	https://hh.ru/vacancy/125248402
125248480	Fullstack Python разработчик (Python + AI + Pet Projects)	\N	\N	RUR	noExperience	Нет опыта	{API}	Белгород	2025-09-11 19:16:53+03	https://hh.ru/vacancy/125248480
125248436	Fullstack Python разработчик (Python + AI + Pet Projects)	\N	\N	RUR	noExperience	Нет опыта	{API}	Ижевск	2025-09-11 19:12:59+03	https://hh.ru/vacancy/125248436
124835328	Data analyst/Аналитик-разработчик (Python)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Санкт-Петербург	2025-09-03 16:50:30+03	https://hh.ru/vacancy/124835328
125248424	Fullstack Python разработчик (Python + AI + Pet Projects)	\N	\N	RUR	noExperience	Нет опыта	{API}	Омск	2025-09-11 19:11:23+03	https://hh.ru/vacancy/125248424
122516273	QA Automation Engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Тбилиси	2025-10-06 10:52:47+03	https://hh.ru/vacancy/122516273
124995602	Senior Backend developer - Python / Бэкенд Разработчик	405042	\N	RUR	moreThan6	Более 6 лет	{AWS,Python}	Сербия	2025-10-02 09:55:00+03	https://hh.ru/vacancy/124995602
126223506	Senior AI Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Flask}	Алматы	2025-10-07 09:19:16+03	https://hh.ru/vacancy/126223506
124964193	Senior Python Developer	\N	\N	RUR	moreThan6	Более 6 лет	{PostgreSQL,Python}	Санкт-Петербург	2025-09-05 22:21:25+03	https://hh.ru/vacancy/124964193
124995601	Senior Backend developer - Python / Бэкенд Разработчик	405042	\N	RUR	moreThan6	Более 6 лет	{AWS,Python}	Минск	2025-10-02 09:55:00+03	https://hh.ru/vacancy/124995601
126251888	Senior System engineer / Старший системный инженер (TATLIN.OBJECT)	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,Go,Python}	Санкт-Петербург	2025-10-07 13:09:04+03	https://hh.ru/vacancy/126251888
119816736	Data-инженер	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Ростов-на-Дону	2025-09-10 09:55:27+03	https://hh.ru/vacancy/119816736
124964200	Python developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Git,Linux,Python}	Санкт-Петербург	2025-09-05 18:59:10+03	https://hh.ru/vacancy/124964200
124435842	Python developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Playwright,Python,Selenium}	Москва	2025-09-22 10:50:35+03	https://hh.ru/vacancy/124435842
125329751	Senior Python Developer	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-15 13:06:03+03	https://hh.ru/vacancy/125329751
124899219	Python-разработчик	150000	200000	RUR	between1And3	От 1 года до 3 лет	{API,FastAPI,Python}	Санкт-Петербург	2025-10-02 07:56:38+03	https://hh.ru/vacancy/124899219
124943975	Python разработчик	40222	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Ташкент	2025-09-05 16:02:46+03	https://hh.ru/vacancy/124943975
124851439	QA Тестировщик	\N	\N	RUR	between3And6	От 3 до 6 лет	{JavaScript,Python}	Алматы	2025-10-07 07:22:56+03	https://hh.ru/vacancy/124851439
126253717	Преподаватель по программированию и цифровому творчеству в ИТ школу	\N	80000	RUR	noExperience	Нет опыта	{JavaScript,Python}	Екатеринбург	2025-10-07 13:19:56+03	https://hh.ru/vacancy/126253717
125671486	Senior Python Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-23 17:31:05+03	https://hh.ru/vacancy/125671486
123972095	Junior Python developer (в офис)	60000	\N	RUR	noExperience	Нет опыта	{Python}	Москва	2025-09-23 00:19:23+03	https://hh.ru/vacancy/123972095
125179330	Jr. Python Developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{JavaScript,Node.js,Python}	Черногория	2025-09-11 00:05:09+03	https://hh.ru/vacancy/125179330
124875431	Python Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,Python}	Уфа	2025-09-04 13:32:42+03	https://hh.ru/vacancy/124875431
125591688	Старший методист	110000	130000	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-07 10:32:46+03	https://hh.ru/vacancy/125591688
123097603	Middle+ / Senior C++ разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Тбилиси	2025-09-16 15:35:37+03	https://hh.ru/vacancy/123097603
126211324	Embedded / OpenWRT разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python,Shell}	Москва	2025-10-06 21:02:40+03	https://hh.ru/vacancy/126211324
125518409	Инженер технической поддержки системы виртуализации (РЕД Виртуализация)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Grafana,Prometheus,Python}	Москва	2025-10-07 10:17:39+03	https://hh.ru/vacancy/125518409
124771893	Преподаватель образовательных курсов для детей (Python)	60000	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Екатеринбург	2025-10-07 12:04:43+03	https://hh.ru/vacancy/124771893
124447162	Разработчик C/С++	\N	\N	RUR	moreThan6	Более 6 лет	{Linux}	Томск	2025-10-06 21:06:02+03	https://hh.ru/vacancy/124447162
124837359	Fullstack разработчик (JS/React/Golang/Python) | Middle-Senior	\N	370000	RUR	between1And3	От 1 года до 3 лет	{API,JavaScript,Python,React}	Москва	2025-09-30 17:25:31+03	https://hh.ru/vacancy/124837359
124881569	Разработчик Python	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Минск	2025-09-04 15:01:05+03	https://hh.ru/vacancy/124881569
124964570	Python Developer (ЭДО)	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,Docker,FastAPI,MongoDB,Python,React,Redis,pytest}	Санкт-Петербург	2025-09-05 19:36:11+03	https://hh.ru/vacancy/124964570
124886105	Python разработчик	\N	180000	RUR	between1And3	От 1 года до 3 лет	{API,FastAPI,Flask,Python,REST}	Москва	2025-10-01 16:08:37+03	https://hh.ru/vacancy/124886105
126029706	Специалист технической поддержки (L3 HTML/CSS/JSS/SQL)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{CSS,HTML,SQL}	Москва	2025-10-01 17:58:11+03	https://hh.ru/vacancy/126029706
124930797	Python-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Python,asyncio}	Москва	2025-09-05 12:31:32+03	https://hh.ru/vacancy/124930797
125725326	Бизнес-аналитик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-10-06 16:56:10+03	https://hh.ru/vacancy/125725326
125241434	Python-разработчик (знание ML) / ML инженер	\N	200000	RUR	between3And6	От 3 до 6 лет	{Docker,FastAPI,Git,Python,SQL}	Москва	2025-10-07 12:13:29+03	https://hh.ru/vacancy/125241434
124891289	Backend-разработчик (golang/python)	300000	\N	RUR	between3And6	От 3 до 6 лет	{Python,Rust}	Москва	2025-10-01 17:50:38+03	https://hh.ru/vacancy/124891289
125229249	Инженер по внедрению Low-Code платформ	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Санкт-Петербург	2025-10-07 10:08:11+03	https://hh.ru/vacancy/125229249
125588734	Программист-разработчик ПО (в офис)	65000	100000	RUR	between1And3	От 1 года до 3 лет	{JavaScript,Python}	Петрозаводск	2025-10-07 10:01:22+03	https://hh.ru/vacancy/125588734
124858438	Разработчик DWH	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Airflow,Playwright,Python,Selenium}	Новосибирск	2025-10-03 12:44:50+03	https://hh.ru/vacancy/124858438
126198082	Старший инженер по автоматизации тестирования / Команда внутренних сервисов	\N	\N	RUR	moreThan6	Более 6 лет	{Git,Python}	Санкт-Петербург	2025-10-06 16:23:14+03	https://hh.ru/vacancy/126198082
124833291	Python-разработчик	100000	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Санкт-Петербург	2025-09-03 16:18:13+03	https://hh.ru/vacancy/124833291
125375394	Zabbix administrator	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Армения	2025-09-16 10:28:30+03	https://hh.ru/vacancy/125375394
125151489	BE Разработчик (Python Desktop Developer (PySide/Qt))	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-10 12:58:00+03	https://hh.ru/vacancy/125151489
124841821	Full stack Python разработчик	80000	\N	RUR	between1And3	От 1 года до 3 лет	{MySQL,Python,REST}	Санкт-Петербург	2025-09-03 19:35:51+03	https://hh.ru/vacancy/124841821
126217297	Ведущий инженер-программист	\N	\N	RUR	between1And3	От 1 года до 3 лет	{JavaScript,Python}	Москва	2025-10-07 07:03:43+03	https://hh.ru/vacancy/126217297
124829027	Fullstack разработчик Python	200000	\N	RUR	between3And6	От 3 до 6 лет	{Flask,JavaScript,Python,SQL}	Санкт-Петербург	2025-09-03 15:13:31+03	https://hh.ru/vacancy/124829027
125344584	Backend Developer (Python)	\N	250000	RUR	between1And3	От 1 года до 3 лет	{Django,FastAPI,Python,asyncio}	Казань	2025-10-06 16:47:53+03	https://hh.ru/vacancy/125344584
126212028	DevOps-инженер	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Linux,Python}	Ижевск	2025-10-06 21:41:30+03	https://hh.ru/vacancy/126212028
126226421	Системный аналитик (миграция Big Data)	300000	340000	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-10-07 09:56:40+03	https://hh.ru/vacancy/126226421
124889104	Старший Python разработчик	\N	\N	RUR	moreThan6	Более 6 лет	{Python,asyncio}	Москва	2025-09-04 17:02:45+03	https://hh.ru/vacancy/124889104
125701243	Python-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-24 12:42:45+03	https://hh.ru/vacancy/125701243
121288554	Программист Python	150000	200000	RUR	between1And3	От 1 года до 3 лет	{Git,Python}	Ростов-на-Дону	2025-10-07 13:24:25+03	https://hh.ru/vacancy/121288554
126210084	Cпециалист техподдержки	60000	\N	RUR	noExperience	Нет опыта	{JavaScript,Python}	Краснодар	2025-10-06 19:04:11+03	https://hh.ru/vacancy/126210084
126254251	Продуктовый аналитик в направление Навыки	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-07 13:23:06+03	https://hh.ru/vacancy/126254251
124835180	Data analyst/Аналитик-разработчик (Python)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-09-03 16:47:57+03	https://hh.ru/vacancy/124835180
125122318	Backend-разработчик (Python)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{CSS,Django,HTML,JavaScript,PostgreSQL,Python}	Москва	2025-10-06 15:26:26+03	https://hh.ru/vacancy/125122318
123928702	Python-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-04 16:00:24+03	https://hh.ru/vacancy/123928702
125978887	Application Security Engineer (Санкт-Петербург)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Python}	Санкт-Петербург	2025-10-06 17:20:41+03	https://hh.ru/vacancy/125978887
125516901	Gameplay Developer (Python/С++)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Минск	2025-10-07 10:05:40+03	https://hh.ru/vacancy/125516901
125308529	Senior Backend Engineer (Python, AI, EdTech)/Старший Разработчик Бэкенда (Python, ИИ, Образование)	498000	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-10-06 08:43:42+03	https://hh.ru/vacancy/125308529
125978772	Application Security Engineer (Москва)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Python}	Москва	2025-10-06 17:18:05+03	https://hh.ru/vacancy/125978772
124964192	Senior Python Developer	\N	\N	RUR	moreThan6	Более 6 лет	{PostgreSQL,Python}	Москва	2025-09-05 22:22:19+03	https://hh.ru/vacancy/124964192
125503359	Ведущий инженер-программист (Senior C/C++ Linux)	180000	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Go,Python,Rust}	Москва	2025-10-06 21:24:09+03	https://hh.ru/vacancy/125503359
122274381	Инженер по нагрузочному тестированию / QA Performance Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,JavaScript,Linux,Python}	Минск	2025-10-07 10:23:57+03	https://hh.ru/vacancy/122274381
125150008	Архитектор прикладного ПО	\N	\N	RUR	moreThan6	Более 6 лет	{Go,JavaScript,Python}	Москва	2025-10-07 12:40:38+03	https://hh.ru/vacancy/125150008
125514130	Technical Animator (Unreal Engine)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Минск	2025-10-07 09:19:30+03	https://hh.ru/vacancy/125514130
107216606	Lead Unity Software Engineer (Gameplay)	\N	\N	RUR	moreThan6	Более 6 лет	{}	Кипр	2025-09-07 18:20:27+03	https://hh.ru/vacancy/107216606
123705620	Senior Backend Python Developer (LLM, AI)	\N	524376	RUR	moreThan6	Более 6 лет	{Python}	Тбилиси	2025-10-02 14:55:18+03	https://hh.ru/vacancy/123705620
123461575	Senior AQA Python Automation Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,Selenium,pytest}	Минск	2025-10-07 10:23:55+03	https://hh.ru/vacancy/123461575
114142406	Инженер внедрения	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Москва	2025-10-06 15:32:25+03	https://hh.ru/vacancy/114142406
124918814	Python-разработчик / Senior	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,asyncio}	Москва	2025-09-05 10:40:23+03	https://hh.ru/vacancy/124918814
125595658	Python developer (Django)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Python,SQL}	Минск	2025-10-07 11:14:47+03	https://hh.ru/vacancy/125595658
125886747	Pentester	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Алматы	2025-09-29 10:59:08+03	https://hh.ru/vacancy/125886747
125248031	Fullstack Python разработчик (Python + AI + Pet Projects)	\N	\N	RUR	noExperience	Нет опыта	{API}	Самара	2025-09-11 18:55:18+03	https://hh.ru/vacancy/125248031
125248431	Fullstack Python разработчик (Python + AI + Pet Projects)	\N	\N	RUR	noExperience	Нет опыта	{API}	Тюмень	2025-09-11 19:12:16+03	https://hh.ru/vacancy/125248431
123557242	Python-разработчик (middle+)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{FastAPI,SQL}	Воронеж	2025-09-26 13:48:58+03	https://hh.ru/vacancy/123557242
126196308	Инженер внедрения	\N	150000	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-10-06 16:11:48+03	https://hh.ru/vacancy/126196308
126243094	AirFlow разработчик, финтех	\N	\N	RUR	between3And6	От 3 до 6 лет	{Airflow,Python}	Москва	2025-10-07 12:15:28+03	https://hh.ru/vacancy/126243094
125374994	Python-разработчик	\N	575000	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Flask,Kubernetes,Python,asyncio}	Москва	2025-10-07 10:23:01+03	https://hh.ru/vacancy/125374994
124964581	Python Developer (Data Science)	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,Docker,FastAPI,MongoDB,Python,React,Redis,pytest}	Санкт-Петербург	2025-09-05 19:38:18+03	https://hh.ru/vacancy/124964581
126210832	Разработчик C	147483	163870	RUR	between1And3	От 1 года до 3 лет	{Bash,Python,Shell}	Тбилиси	2025-10-06 19:54:12+03	https://hh.ru/vacancy/126210832
124869129	Python- разработчик (ML Engineer)	\N	\N	RUR	between3And6	От 3 до 6 лет	{API,Python}	Москва	2025-09-04 11:58:34+03	https://hh.ru/vacancy/124869129
126289714	Руководитель группы по разработке интеллектуальных систем	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,Kubernetes,Python}	Москва	2025-10-08 09:44:17+03	https://hh.ru/vacancy/126289714
124933791	Python-разработчик (middle, middle+)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Ростов-на-Дону	2025-09-05 13:14:32+03	https://hh.ru/vacancy/124933791
124920610	Разработчик логики (Python, LLM/Prompt Engineering) - Казахстан	\N	\N	RUR	between3And6	От 3 до 6 лет	{Flask,Python,REST}	Алматы	2025-09-05 10:51:02+03	https://hh.ru/vacancy/124920610
126217559	Инженер по нагрузочному тестированию	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Go,Linux,PostgreSQL,Python}	Самара	2025-10-07 07:15:32+03	https://hh.ru/vacancy/126217559
125503386	Инженер-программист (Junior C/C++ (Linux))	130000	\N	RUR	between1And3	От 1 года до 3 лет	{Go,Python,Rust}	Москва	2025-10-06 21:26:19+03	https://hh.ru/vacancy/125503386
126229233	Разработчик / Создатель AI-агентов для маркетинга	120000	200000	RUR	between3And6	От 3 до 6 лет	{JavaScript,Python}	Пермь	2025-10-07 10:32:39+03	https://hh.ru/vacancy/126229233
123636446	Python developer	150000	250000	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Калининград	2025-09-04 11:00:31+03	https://hh.ru/vacancy/123636446
124830246	Python-разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Нижний Новгород	2025-09-03 15:31:10+03	https://hh.ru/vacancy/124830246
126224711	Разработчик (JIRA)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Java,Python}	Ижевск	2025-10-07 09:33:32+03	https://hh.ru/vacancy/126224711
126237378	Senior Python в команду "Платформа"	\N	\N	RUR	moreThan6	Более 6 лет	{FastAPI,Python}	Москва	2025-10-07 11:45:20+03	https://hh.ru/vacancy/126237378
124708040	Тестировщик ПО (QA)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Git,Python,SQL}	Ростов-на-Дону	2025-10-07 12:33:33+03	https://hh.ru/vacancy/124708040
125139529	QA инженер (WEB) Automation	140000	220000	RUR	between3And6	От 3 до 6 лет	{}	Санкт-Петербург	2025-10-07 10:29:38+03	https://hh.ru/vacancy/125139529
126260454	Разработчик нейросетевых алгоритмов / Специалист по машинному обучению (LLM, CV, RL)	80000	140000	RUR	between1And3	От 1 года до 3 лет	{PyTorch,Python}	Москва	2025-10-07 14:31:38+03	https://hh.ru/vacancy/126260454
126195723	Разработчик 1С (+ backend / API)	250000	300000	RUR	between3And6	От 3 до 6 лет	{JavaScript,Python}	Москва	2025-10-06 16:07:58+03	https://hh.ru/vacancy/126195723
126194412	Fullstack-разработчик в Яндекс Карты	\N	\N	RUR	moreThan6	Более 6 лет	{CSS,Git,HTML,Node.js,PostgreSQL}	Москва	2025-10-06 15:47:53+03	https://hh.ru/vacancy/126194412
126245167	DevOps Engineer (System & Network) A1 Competence Delivery Center	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Минск	2025-10-07 12:27:00+03	https://hh.ru/vacancy/126245167
123761619	Старший разработчик Python/Pyspark, Платформа АБ-тестов, Стенды метрик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,Spark}	Москва	2025-10-06 17:20:55+03	https://hh.ru/vacancy/123761619
125139595	Инженер технической поддержки (РЕД ОС/РЕД АДМ)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Grafana,Prometheus,Python}	Санкт-Петербург	2025-10-07 10:17:40+03	https://hh.ru/vacancy/125139595
125731042	Программист на C++ (Калининград)	60000	150000	RUR	noExperience	Нет опыта	{}	Калининград	2025-10-06 18:58:54+03	https://hh.ru/vacancy/125731042
125833828	Инженер технической поддержки системы виртуализации (РЕД Виртуализация)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Grafana,Prometheus,Python}	Омск	2025-10-07 10:17:43+03	https://hh.ru/vacancy/125833828
116458771	Инженер по нагрузочному тестированию/Performance Engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Java,Python,SQL}	Санкт-Петербург	2025-10-07 10:17:11+03	https://hh.ru/vacancy/116458771
124010144	Инженер-программист (C++/Python)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-05 20:52:56+03	https://hh.ru/vacancy/124010144
125121488	Middle веб-разработчик (Python)	\N	\N	RUR	between3And6	От 3 до 6 лет	{HTML,JavaScript,React,TypeScript}	Санкт-Петербург	2025-10-06 18:18:52+03	https://hh.ru/vacancy/125121488
124856867	Middle Backend Python Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,REST}	Астана	2025-09-29 13:32:53+03	https://hh.ru/vacancy/124856867
123636253	Ведущий Python разработчик	250000	350000	RUR	moreThan6	Более 6 лет	{Python,SQL}	Казань	2025-09-04 10:58:51+03	https://hh.ru/vacancy/123636253
126193969	Senior Product Analyst (AB testing)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Airflow,NumPy,Pandas,Python}	Москва	2025-10-06 15:41:48+03	https://hh.ru/vacancy/126193969
124922212	Инженер-разработчик Python (производственное тестирование)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,asyncio}	Санкт-Петербург	2025-09-05 11:01:01+03	https://hh.ru/vacancy/124922212
126246488	Программист С++	200000	300000	RUR	moreThan6	Более 6 лет	{Linux}	Санкт-Петербург	2025-10-07 12:35:05+03	https://hh.ru/vacancy/126246488
125163882	Лидер кросс-функциональной команды (тимлид)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{JavaScript,Python}	Москва	2025-10-06 18:33:32+03	https://hh.ru/vacancy/125163882
124886498	Python Developer MLOps	\N	\N	RUR	moreThan6	Более 6 лет	{Airflow,Python}	Кипр	2025-09-04 16:13:45+03	https://hh.ru/vacancy/124886498
126190187	Python Developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{FastAPI,Kafka,Python,asyncio}	Москва	2025-10-06 14:55:26+03	https://hh.ru/vacancy/126190187
126187752	Junior Программист / вайб-кодер	\N	50000	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-06 14:17:59+03	https://hh.ru/vacancy/126187752
125907081	Go-разработчик/Инженер AI (middle)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Go,Python}	Пенза	2025-09-29 15:32:34+03	https://hh.ru/vacancy/125907081
125971863	Python-разработчик (Django, FastAPI)	\N	200000	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Python}	Москва	2025-09-30 15:17:36+03	https://hh.ru/vacancy/125971863
126178962	Project manager (Junior)	\N	90000	RUR	noExperience	Нет опыта	{Python}	Москва	2025-10-06 12:23:08+03	https://hh.ru/vacancy/126178962
125626834	Backend-разработчик на Python	230000	350000	RUR	between1And3	От 1 года до 3 лет	{Flask,Python}	Москва	2025-09-22 23:26:28+03	https://hh.ru/vacancy/125626834
125933347	Python разработчик	\N	410000	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-30 07:24:39+03	https://hh.ru/vacancy/125933347
125538232	Middle Backed Python разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Django,Python}	Ташкент	2025-09-19 15:49:27+03	https://hh.ru/vacancy/125538232
125933344	Middle - python - разработчик	\N	150000	RUR	between1And3	От 1 года до 3 лет	{PostgreSQL,Python,"REST API",SQL}	Москва	2025-09-30 07:24:38+03	https://hh.ru/vacancy/125933344
126175981	Младший бизнес-аналитик (BizDev, Ozon Global)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Airflow,PostgreSQL,Python,SQL}	Москва	2025-10-06 11:57:23+03	https://hh.ru/vacancy/126175981
126135085	Системный программист Linux (Junior)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python,Rust}	Санкт-Петербург	2025-10-04 12:56:19+03	https://hh.ru/vacancy/126135085
125883055	Младший инженер-программист по безопасной разработке	\N	\N	RUR	noExperience	Нет опыта	{Bash,CI/CD,Git,Linux,Python}	Москва	2025-09-29 10:16:13+03	https://hh.ru/vacancy/125883055
125802470	QA Automation Engineer / AQA	\N	\N	RUR	between1And3	От 1 года до 3 лет	{CI/CD,Python}	Омск	2025-09-25 17:06:48+03	https://hh.ru/vacancy/125802470
125221761	Системный аналитик (нефтегазовая промышленность)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Python}	Москва	2025-09-11 13:12:34+03	https://hh.ru/vacancy/125221761
125278133	Специалист технической поддержки (2 линия)	150000	210000	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Мытищи (Московская область)	2025-09-12 14:54:55+03	https://hh.ru/vacancy/125278133
125897404	ML-инженер (CV)	\N	\N	RUR	between3And6	От 3 до 6 лет	{PyTorch,Python,TensorFlow}	Челябинск	2025-09-29 13:17:41+03	https://hh.ru/vacancy/125897404
125897855	Senior Backend Engineer (Python)	\N	\N	RUR	moreThan6	Более 6 лет	{Python,"REST API"}	Москва	2025-09-29 13:23:19+03	https://hh.ru/vacancy/125897855
123444916	Разработчик (Frontend developer / Vue.js) Middle+	150000	\N	RUR	between1And3	От 1 года до 3 лет	{CSS,HTML,JavaScript,React,TypeScript,Vue}	Тюмень	2025-09-29 05:57:00+03	https://hh.ru/vacancy/123444916
126108578	Программист	\N	\N	RUR	noExperience	Нет опыта	{Python}	Зеленоград	2025-10-03 12:22:29+03	https://hh.ru/vacancy/126108578
126175283	Release Engineer в On-Premise	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Kubernetes,Python,pytest}	Новосибирск	2025-10-06 11:49:27+03	https://hh.ru/vacancy/126175283
125601808	Системный инженер сопровождения (2-я линия, микросервисы, Linux)	150000	210000	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Ижевск	2025-09-22 12:28:23+03	https://hh.ru/vacancy/125601808
125476691	DevOps инженер	\N	250000	RUR	between3And6	От 3 до 6 лет	{Bash,CI/CD,Python,RabbitMQ,SQL}	Москва	2025-09-18 11:52:51+03	https://hh.ru/vacancy/125476691
125842761	Prompt engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{FastAPI,Python,SQL,asyncio}	Москва	2025-09-26 13:53:57+03	https://hh.ru/vacancy/125842761
125370761	Младший аналитик-исследователь киберугроз	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Москва	2025-09-16 09:32:06+03	https://hh.ru/vacancy/125370761
126064661	Cloud & DevOps Intern	\N	\N	RUR	noExperience	Нет опыта	{Bash,Docker,Python}	Ташкент	2025-10-02 13:28:40+03	https://hh.ru/vacancy/126064661
125097939	Специалист по противодействию мошенничеству (антифрод)	\N	\N	RUR	moreThan6	Более 6 лет	{Python,SQL}	Москва	2025-09-09 12:48:27+03	https://hh.ru/vacancy/125097939
125105464	Инженер данных/Data engineer	200000	\N	RUR	between3And6	От 3 до 6 лет	{Airflow,PostgreSQL,Python,SQL}	Москва	2025-09-09 14:27:50+03	https://hh.ru/vacancy/125105464
125911945	Стажер - программист 1С	\N	\N	RUR	noExperience	Нет опыта	{Java,Python}	Бишкек	2025-09-29 16:47:57+03	https://hh.ru/vacancy/125911945
125767935	Старший Java разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java}	Краснодар	2025-09-25 13:42:33+03	https://hh.ru/vacancy/125767935
122712659	Senior Golang Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go}	Тбилиси	2025-09-22 14:38:41+03	https://hh.ru/vacancy/122712659
125937172	Тестировщик-автоматизатор	114013	\N	RUR	between3And6	От 3 до 6 лет	{}	Минск	2025-09-30 08:47:55+03	https://hh.ru/vacancy/125937172
125443290	DevOps-инженер	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,CI/CD,Git,Python}	Москва	2025-09-17 14:51:52+03	https://hh.ru/vacancy/125443290
125583470	Product owner	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-22 09:05:26+03	https://hh.ru/vacancy/125583470
125625262	Junior+ Backend разработчик	30000	60000	RUR	between1And3	От 1 года до 3 лет	{Docker,JavaScript,MySQL}	Калининград	2025-09-22 19:31:37+03	https://hh.ru/vacancy/125625262
125699086	QA инженер (Manual/Auto)	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Санкт-Петербург	2025-10-06 12:06:56+03	https://hh.ru/vacancy/125699086
126189171	AQA Engineer (Junior +)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Java,JavaScript,Playwright,Python,Selenium}	Гродно	2025-10-06 14:40:29+03	https://hh.ru/vacancy/126189171
125934990	Разработчик математических сервисов и оптимизационных алгоритмов	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-09-30 08:03:25+03	https://hh.ru/vacancy/125934990
125961982	Data Engineer (команда RecSys)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Airflow,CI/CD,Python,SQL,Spark}	Москва	2025-09-30 12:48:48+03	https://hh.ru/vacancy/125961982
125471160	QA инженер по автоматизации (Python)	150000	200000	RUR	between1And3	От 1 года до 3 лет	{Playwright,Python,pytest}	Казань	2025-09-18 10:37:11+03	https://hh.ru/vacancy/125471160
126116108	Teamlead backend	200000	250000	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-10-03 14:35:42+03	https://hh.ru/vacancy/126116108
125284892	Frontend Developer (Js, VueJs)	80000	\N	RUR	between1And3	От 1 года до 3 лет	{Docker,Python}	Астана	2025-09-12 16:45:31+03	https://hh.ru/vacancy/125284892
125487221	Go Developer (МТС Веб Сервисы, МТС Лайв)	\N	\N	RUR	between3And6	От 3 до 6 лет	{PostgreSQL,Python,SQL}	Москва	2025-09-19 12:59:51+03	https://hh.ru/vacancy/125487221
123903585	Разработчик Java, Факторы ранжирования	\N	\N	RUR	between1And3	От 1 года до 3 лет	{CI/CD,Python}	Москва	2025-09-10 14:24:58+03	https://hh.ru/vacancy/123903585
126102074	QA Engineer (нагрузочное тестирование)	\N	\N	RUR	between3And6	От 3 до 6 лет	{SQL}	Самара	2025-10-03 10:44:44+03	https://hh.ru/vacancy/126102074
125677740	QA Engineer (тестировщик ПО)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Java,Python}	Алматы	2025-09-24 06:43:44+03	https://hh.ru/vacancy/125677740
125461785	QA-инженер / Тестировщик (г. Новосибирск)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Java,JavaScript,Playwright,Python,Selenium,pytest}	Новосибирск	2025-10-06 08:29:06+03	https://hh.ru/vacancy/125461785
125612418	Дата-инженер (Junior)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Уфа	2025-09-22 15:04:50+03	https://hh.ru/vacancy/125612418
125068806	Data Engineer / Дата инженер (Middle/Senior)	\N	\N	RUR	between3And6	От 3 до 6 лет	{MySQL,Python}	Москва	2025-10-06 10:43:32+03	https://hh.ru/vacancy/125068806
124285093	SRE	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,CI/CD,Python}	Москва	2025-09-11 10:44:00+03	https://hh.ru/vacancy/124285093
125794301	Академический проектный менеджер	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Астана	2025-09-25 16:16:54+03	https://hh.ru/vacancy/125794301
122036594	Младший инженер по тестированию ПО (Linux)	\N	99000	RUR	between1And3	От 1 года до 3 лет	{Linux}	Обнинск	2025-09-15 12:44:30+03	https://hh.ru/vacancy/122036594
125600841	Senior Golang Developer	\N	\N	RUR	moreThan6	Более 6 лет	{AWS,Python}	Москва	2025-09-22 12:14:34+03	https://hh.ru/vacancy/125600841
125893837	Junior+ / Pre-middle Fullstack Developer / Разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Docker,Node.js,React,Vue}	Новосибирск	2025-10-05 12:28:42+03	https://hh.ru/vacancy/125893837
125782354	Senior Backend-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-25 15:22:31+03	https://hh.ru/vacancy/125782354
125259068	Стажер-разработчик DWH/ETL/Big Data	\N	\N	RUR	noExperience	Нет опыта	{Java,PostgreSQL,Python,SQL}	Москва	2025-09-12 09:41:30+03	https://hh.ru/vacancy/125259068
125648122	Аналитик в страхование	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Москва	2025-09-23 11:19:20+03	https://hh.ru/vacancy/125648122
126065842	Cloud & DevOps Intern	\N	\N	RUR	noExperience	Нет опыта	{Bash,Docker,Python}	Кант	2025-10-02 13:47:19+03	https://hh.ru/vacancy/126065842
125764535	Стажер инженер-разработчик ПЛИС	80000	\N	RUR	noExperience	Нет опыта	{Bash,Python}	Москва	2025-09-25 13:01:40+03	https://hh.ru/vacancy/125764535
124170869	Инженер по нагрузочному тестированию	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,Git,JavaScript,PostgreSQL,Python,SQL}	Обнинск	2025-09-17 11:46:35+03	https://hh.ru/vacancy/124170869
124874313	Инженер по автоматизированному тестированию (Python)	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-10-01 16:37:19+03	https://hh.ru/vacancy/124874313
125541473	Инженер Linux / Middle or Senior Devops	\N	400000	RUR	between1And3	От 1 года до 3 лет	{Nginx,Prometheus}	Москва	2025-10-07 16:47:47+03	https://hh.ru/vacancy/125541473
125548037	DevOps-инженер	150000	250000	RUR	between1And3	От 1 года до 3 лет	{CI/CD,Go,Kubernetes,Python}	Москва	2025-10-07 23:09:18+03	https://hh.ru/vacancy/125548037
125836055	Junior ML Engineer / Data Scientist (младший специалист)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-26 11:50:28+03	https://hh.ru/vacancy/125836055
126072743	Technical Support specialist (L2-L3)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Минск	2025-10-02 15:36:51+03	https://hh.ru/vacancy/126072743
124838292	Аналитик SOC (L1)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Москва	2025-09-29 10:43:19+03	https://hh.ru/vacancy/124838292
49922352	Developer C++	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Java,Python}	Москва	2025-09-24 10:36:02+03	https://hh.ru/vacancy/49922352
125245410	Специалист по тестированию ПО (офис)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Git,SQL}	Дубна (Московская область)	2025-09-11 17:34:53+03	https://hh.ru/vacancy/125245410
125615230	Разработчик чат-ботов	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Java,Python}	Псков	2025-09-22 15:37:29+03	https://hh.ru/vacancy/125615230
125622550	Дата-инженер (Junior)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Нижний Новгород	2025-09-22 17:41:05+03	https://hh.ru/vacancy/125622550
125043991	Python-разработчик (AI agents)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Celery,Django,Python,"REST API"}	Москва	2025-09-08 15:37:26+03	https://hh.ru/vacancy/125043991
125277854	Специалист поддержки второй линии в банк	150000	210000	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Мурино	2025-09-12 14:49:14+03	https://hh.ru/vacancy/125277854
125956716	Computer Vision Engineer	\N	420000	RUR	between3And6	От 3 до 6 лет	{PyTorch,Python}	Москва	2025-10-06 12:10:17+03	https://hh.ru/vacancy/125956716
123994897	Java-разработчик Junior (направление AI)	\N	\N	RUR	noExperience	Нет опыта	{Java,Python}	Саранск	2025-09-08 09:21:41+03	https://hh.ru/vacancy/123994897
124625056	Программист-стажер 1С (кадровый резерв)	50000	\N	RUR	noExperience	Нет опыта	{Java,Python}	Омск	2025-09-15 15:58:03+03	https://hh.ru/vacancy/124625056
125276428	Специалист технической поддержки (2 линия)	150000	210000	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Всеволожск	2025-09-12 14:21:34+03	https://hh.ru/vacancy/125276428
125841687	Data Analyst (Finance)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Астана	2025-09-26 13:33:13+03	https://hh.ru/vacancy/125841687
125444691	Программист 1С	150000	\N	RUR	between3And6	От 3 до 6 лет	{Go,Kafka,Python,"REST API",RabbitMQ}	Курск	2025-09-17 15:11:13+03	https://hh.ru/vacancy/125444691
126183180	Senior Research Analyst	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Астана	2025-10-06 13:16:18+03	https://hh.ru/vacancy/126183180
114684006	Cтажёр-разработчик автоматизированных тестов	\N	\N	RUR	noExperience	Нет опыта	{Java,Python}	Санкт-Петербург	2025-09-20 12:15:05+03	https://hh.ru/vacancy/114684006
124247422	Marketing Project Manager	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-18 11:54:54+03	https://hh.ru/vacancy/124247422
125972826	Специалист по ML + 3D	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Иваново (Ивановская область)	2025-09-30 15:36:35+03	https://hh.ru/vacancy/125972826
125853996	Senior Product Manager / Product Lead	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Санкт-Петербург	2025-09-26 17:43:46+03	https://hh.ru/vacancy/125853996
126029386	Middle Product Analyst	\N	\N	RUR	between1And3	От 1 года до 3 лет	{MySQL,Python,SQL}	Минск	2025-10-01 17:48:35+03	https://hh.ru/vacancy/126029386
126096919	DevOps Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,CI/CD,Git,Linux,Python}	Москва	2025-10-03 09:29:17+03	https://hh.ru/vacancy/126096919
124630000	Rust разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,Rust}	Москва	2025-09-23 14:46:26+03	https://hh.ru/vacancy/124630000
125440441	Системный администратор	140000	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-10-06 11:17:55+03	https://hh.ru/vacancy/125440441
125265164	Data Engineer (Python)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Spark}	Москва	2025-09-12 11:16:30+03	https://hh.ru/vacancy/125265164
125297833	Менеджер образовательных продуктов [МТС Веб Сервисы]	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,Python}	Москва	2025-09-14 13:48:46+03	https://hh.ru/vacancy/125297833
126125228	Разработчик C++ в команду Юлы	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,Python,Shell}	Москва	2025-10-03 19:33:13+03	https://hh.ru/vacancy/126125228
125910604	Fullstack Python Developer (Junior+/Middle)	\N	\N	RUR	noExperience	Нет опыта	{Python,SQL}	Москва	2025-10-05 16:22:53+03	https://hh.ru/vacancy/125910604
125822598	Middle / Senior Python developer (Django)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Airflow,Django,Pandas,Python}	Москва	2025-09-26 08:03:02+03	https://hh.ru/vacancy/125822598
124788235	Ведущий специалист по ручному тестированию\\QA Lead	\N	\N	RUR	between3And6	От 3 до 6 лет	{Git,Python}	Москва	2025-09-29 18:08:48+03	https://hh.ru/vacancy/124788235
125641842	Python Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Flask,Python}	Алматы	2025-10-08 09:59:19+03	https://hh.ru/vacancy/125641842
126053752	Computer vision Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{NumPy,Python}	Москва	2025-10-08 10:53:13+03	https://hh.ru/vacancy/126053752
125601034	QA Automation (Backend) / AQA (Python) Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-09-22 12:17:20+03	https://hh.ru/vacancy/125601034
125982797	PHP + Javascript разработчик / Fullstack developer	80000	\N	RUR	noExperience	Нет опыта	{Python}	Санкт-Петербург	2025-09-30 20:26:17+03	https://hh.ru/vacancy/125982797
126056153	Специалист по созданию лицевых риггов	80000	120000	RUR	between1And3	От 1 года до 3 лет	{Python}	Воронеж	2025-10-05 11:20:57+03	https://hh.ru/vacancy/126056153
122493254	Senior Python разработчик	150000	240000	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-10-05 17:27:59+03	https://hh.ru/vacancy/122493254
125152041	Python-разработчик (Middle+/Senior) в Fintech	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Алматы	2025-09-10 13:03:38+03	https://hh.ru/vacancy/125152041
125445065	Аналитик на проект по речевой аналитике	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Ташкент	2025-09-17 15:16:16+03	https://hh.ru/vacancy/125445065
126063584	Cloud & DevOps Intern	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Docker,Python}	Астана	2025-10-02 13:11:30+03	https://hh.ru/vacancy/126063584
125701398	Java разработчик (middle+/senior)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,Kubernetes,Python}	Москва	2025-10-06 12:45:02+03	https://hh.ru/vacancy/125701398
125593909	Junior+Python Developer (Technical support)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Django,Python}	Минск	2025-09-22 10:57:31+03	https://hh.ru/vacancy/125593909
125258816	Prompt-инженер	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Москва	2025-09-22 10:55:12+03	https://hh.ru/vacancy/125258816
125690940	Data Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{SQL}	Москва	2025-09-24 10:18:18+03	https://hh.ru/vacancy/125690940
123056836	Разработчик дистрибутива/Мейнтейнер	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,Shell}	Москва	2025-09-18 13:27:17+03	https://hh.ru/vacancy/123056836
126120548	Fullstack-разработчик Middle / Senior (Vue.js)	140000	160000	RUR	between3And6	От 3 до 6 лет	{CSS,HTML,MySQL,Python}	Санкт-Петербург	2025-10-03 15:56:31+03	https://hh.ru/vacancy/126120548
125924844	Product Analyst в Звук Бизнес	\N	\N	RUR	between3And6	От 3 до 6 лет	{PostgreSQL,Python,SQL}	Москва	2025-09-29 18:48:35+03	https://hh.ru/vacancy/125924844
125388844	Head of QA/QA Team Lead	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Алматы	2025-09-16 13:36:01+03	https://hh.ru/vacancy/125388844
125792371	PHP-разработчик	110000	200000	RUR	between1And3	От 1 года до 3 лет	{CSS,Docker,Git,HTML,JavaScript,Python}	Москва	2025-09-25 16:08:01+03	https://hh.ru/vacancy/125792371
125840236	Младший аналитик Threat Intelligence, Darkweb	\N	\N	RUR	noExperience	Нет опыта	{}	Москва	2025-09-26 13:06:20+03	https://hh.ru/vacancy/125840236
125788036	Python Developer (middle/middle+/senior)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Celery,Django,Docker,PostgreSQL,Redis}	Минск	2025-09-25 15:48:20+03	https://hh.ru/vacancy/125788036
125748637	DevOps-инженер	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Git,Kubernetes}	Москва	2025-09-25 09:48:42+03	https://hh.ru/vacancy/125748637
109458735	Программист микроконтроллеров (Junior)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Java,Python}	Москва	2025-09-22 08:50:23+03	https://hh.ru/vacancy/109458735
125486981	PHP Developer (МТС Веб Сервисы, МТС Лайв)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,Git,Kubernetes}	Москва	2025-09-19 12:59:52+03	https://hh.ru/vacancy/125486981
125945509	Автотестировщик (Python)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-30 10:47:33+03	https://hh.ru/vacancy/125945509
125334007	Golang-разработчик в WB Cloud	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-15 14:07:48+03	https://hh.ru/vacancy/125334007
125827732	Fullstack-разработчик (г. Пермь)	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Flask,Python}	Пермь	2025-09-26 09:40:27+03	https://hh.ru/vacancy/125827732
122050920	Data Engineer	\N	200000	RUR	between1And3	От 1 года до 3 лет	{Airflow,Python,Spark}	Самара	2025-09-22 11:37:27+03	https://hh.ru/vacancy/122050920
125435906	Full-stack разработчик робототехник	350000	\N	RUR	between3And6	От 3 до 6 лет	{Docker,Linux,Python}	Москва	2025-09-25 11:21:01+03	https://hh.ru/vacancy/125435906
125572095	Разработчик Python / Fastapi	400	500	RUR	between1And3	От 1 года до 3 лет	{FastAPI,Python}	Санкт-Петербург	2025-09-22 03:37:06+03	https://hh.ru/vacancy/125572095
125233855	Product analyst (Gamedev)	150000	200000	RUR	between1And3	От 1 года до 3 лет	{Pandas,Python,SQL}	Новосибирск	2025-09-11 15:29:54+03	https://hh.ru/vacancy/125233855
124632340	Backend Developer (Сontent Team)/Бэкенд-разработчик (Команда Контента)	\N	\N	RUR	between3And6	От 3 до 6 лет	{PostgreSQL,Python}	Москва	2025-09-28 12:17:05+03	https://hh.ru/vacancy/124632340
125417848	Backend Developer (Python/FastAPI)	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Python}	Ташкент	2025-10-08 09:02:20+03	https://hh.ru/vacancy/125417848
125090854	Проектный менеджер в области искусственного интеллекта	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Москва	2025-09-09 11:13:55+03	https://hh.ru/vacancy/125090854
125788838	PHP-программист (middle)	100000	\N	RUR	between3And6	От 3 до 6 лет	{JavaScript,MySQL}	Орел	2025-09-25 15:52:01+03	https://hh.ru/vacancy/125788838
126055318	Python Trainee	\N	\N	RUR	noExperience	Нет опыта	{Python,SQL}	Баку	2025-10-02 11:13:09+03	https://hh.ru/vacancy/126055318
125853279	DevOps инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-26 17:22:31+03	https://hh.ru/vacancy/125853279
125945782	Тестировщик-автоматизатор Python	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Санкт-Петербург	2025-09-30 10:51:44+03	https://hh.ru/vacancy/125945782
126073835	Инженер по информационной безопасности / Information Security engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-10-02 15:55:46+03	https://hh.ru/vacancy/126073835
126060515	Infrastructure System Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Владимир	2025-10-02 12:25:46+03	https://hh.ru/vacancy/126060515
125394542	PHP-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Пенза	2025-09-16 15:02:13+03	https://hh.ru/vacancy/125394542
118713094	Senior Manual QA специалист	80000	130000	RUR	moreThan6	Более 6 лет	{CI/CD,Python}	Москва	2025-09-20 13:11:33+03	https://hh.ru/vacancy/118713094
124862620	Инженер-программист	\N	125000	RUR	between1And3	От 1 года до 3 лет	{Python}	Томск	2025-09-18 07:15:29+03	https://hh.ru/vacancy/124862620
125616201	Prompt-инженер	\N	320000	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-22 15:51:31+03	https://hh.ru/vacancy/125616201
125479946	Тестировщик Senior в WEB	\N	\N	RUR	between3And6	От 3 до 6 лет	{Git,Python,Selenium}	Черногория	2025-09-18 12:40:43+03	https://hh.ru/vacancy/125479946
125481737	Разработчик ( backend )	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-18 13:09:23+03	https://hh.ru/vacancy/125481737
125494794	Senior / Ведущий разработчик Java	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,Docker,FastAPI,Kafka,Kubernetes,Python}	Москва	2025-09-18 16:27:19+03	https://hh.ru/vacancy/125494794
125844632	Middle/Senior PHP Laravel разработчик	150000	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-26 14:28:55+03	https://hh.ru/vacancy/125844632
125828310	Руководитель группы автоматизированного тестирования (Python)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux,PostgreSQL,Python}	Санкт-Петербург	2025-09-26 09:49:07+03	https://hh.ru/vacancy/125828310
120442492	Сетевой инженер	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Linux,Python}	Новосибирск	2025-09-22 05:38:46+03	https://hh.ru/vacancy/120442492
125637607	Аналитик данных (антифрод)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Астана	2025-09-29 14:08:25+03	https://hh.ru/vacancy/125637607
125926034	Fullstack-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Angular,Bash,Docker,Git,JavaScript,Kubernetes,Linux,Nginx,Python,React,TypeScript,Vue}	Астана	2025-10-05 20:27:54+03	https://hh.ru/vacancy/125926034
125248374	Fullstack Python разработчик (Python + AI + Pet Projects)	\N	\N	RUR	noExperience	Нет опыта	{}	Уфа	2025-09-11 19:07:00+03	https://hh.ru/vacancy/125248374
125269686	QA Automation (Python)	230000	250000	RUR	between3And6	От 3 до 6 лет	{CI/CD,Git,Python,Selenium}	Москва	2025-09-12 12:31:16+03	https://hh.ru/vacancy/125269686
126079381	DevOps	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,CI/CD,Python}	Москва	2025-10-02 17:06:20+03	https://hh.ru/vacancy/126079381
125622014	QA Automation Engineer | AQA	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,Python}	Самара	2025-09-22 17:28:25+03	https://hh.ru/vacancy/125622014
124190460	Аналитик данных	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-09-16 09:52:42+03	https://hh.ru/vacancy/124190460
125546258	Сеньор QA-инженер	\N	\N	RUR	moreThan6	Более 6 лет	{Java,Python}	Санкт-Петербург	2025-09-22 11:44:49+03	https://hh.ru/vacancy/125546258
126022381	Fullstack разработчик	\N	\N	RUR	moreThan6	Более 6 лет	{Django,GraphQL,Python}	Санкт-Петербург	2025-10-01 15:41:38+03	https://hh.ru/vacancy/126022381
126031682	Программист C++/Qt	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java}	Москва	2025-10-07 19:39:32+03	https://hh.ru/vacancy/126031682
126027229	Инженер поддержки (Directum)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{PostgreSQL,SQL}	Москва	2025-10-07 17:07:40+03	https://hh.ru/vacancy/126027229
124744061	Middle Back-end developer (Новосибирск)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Python}	Новосибирск	2025-10-08 09:00:13+03	https://hh.ru/vacancy/124744061
125207388	Backend разработчик (Python FastAPI)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{FastAPI,Kafka,Python,pytest}	Москва	2025-10-08 11:16:33+03	https://hh.ru/vacancy/125207388
125527897	Junior Game Analyst (casual games)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Москва	2025-09-19 12:56:41+03	https://hh.ru/vacancy/125527897
125305074	DevOps-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,CI/CD,Docker,Git,Kubernetes,Python}	Москва	2025-09-15 07:40:00+03	https://hh.ru/vacancy/125305074
124368151	Разработчик Node.js	100000	120000	RUR	between3And6	От 3 до 6 лет	{Git,JavaScript,Linux,Node.js}	Красноярск	2025-09-09 08:45:44+03	https://hh.ru/vacancy/124368151
125906952	Аналитик-разработчик в HR	\N	\N	RUR	between3And6	От 3 до 6 лет	{NumPy,Pandas,Python,SQL}	Новосибирск	2025-09-29 15:30:10+03	https://hh.ru/vacancy/125906952
125370263	Разработчик Go	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,Rust}	Москва	2025-09-16 09:27:24+03	https://hh.ru/vacancy/125370263
125854221	Python Team Lead	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-26 17:53:11+03	https://hh.ru/vacancy/125854221
49784077	Инженер-программист микроконтроллеров (Middle)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,Python}	Москва	2025-09-22 08:51:21+03	https://hh.ru/vacancy/49784077
123877753	Backend-Developer Python (middle)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-10 09:25:33+03	https://hh.ru/vacancy/123877753
125337590	Java-разработчик в ML-сервисы Yandex Cloud	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Санкт-Петербург	2025-09-15 14:53:38+03	https://hh.ru/vacancy/125337590
124268506	IDP-разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Django,Flask,Python}	Новосибирск	2025-09-17 11:35:21+03	https://hh.ru/vacancy/124268506
125846353	Middle+/Senior DevOps Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-09-26 15:04:44+03	https://hh.ru/vacancy/125846353
125597745	Системный Дата-аналитик	\N	\N	RUR	moreThan6	Более 6 лет	{Docker,Git,Python,SQL}	Москва	2025-09-22 11:37:53+03	https://hh.ru/vacancy/125597745
125066799	Back-end разработчик (продукт по аналитике данных, FastAPI)	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Python,asyncio}	Минск	2025-10-05 17:51:18+03	https://hh.ru/vacancy/125066799
125243754	Бизнес-аналитик (платежная система и международные расчеты)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-09-11 16:55:47+03	https://hh.ru/vacancy/125243754
125173590	Team Lead/Senior Python/Руководитель группы разработки	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,FastAPI,Kubernetes,Python,React}	Москва	2025-09-10 17:42:58+03	https://hh.ru/vacancy/125173590
125407846	BI-аналитик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-16 18:16:44+03	https://hh.ru/vacancy/125407846
126072240	Optimacros разработчик / аналитик (EPM)	\N	\N	RUR	noExperience	Нет опыта	{Java,Python}	Москва	2025-10-02 15:27:44+03	https://hh.ru/vacancy/126072240
125161240	TeamLead Embedded разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Git,Python}	Санкт-Петербург	2025-10-06 09:36:08+03	https://hh.ru/vacancy/125161240
123211747	Разработчик навигационных алгоритмов	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-17 16:42:02+03	https://hh.ru/vacancy/123211747
126061887	Middle QA Automation Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,"REST API"}	Тбилиси	2025-10-02 12:47:44+03	https://hh.ru/vacancy/126061887
126106533	Системный администратор Linux / System Administrator Linux	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Санкт-Петербург	2025-10-03 11:51:11+03	https://hh.ru/vacancy/126106533
126167345	Главный специалист по безопасной разработке (AppSec)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Java,Python}	Москва	2025-10-06 10:18:39+03	https://hh.ru/vacancy/126167345
123301179	Разработчик утилит для встраиваемых систем	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-18 17:26:16+03	https://hh.ru/vacancy/123301179
125445668	Сетевой инженер мобильной сети доступа / Network engineer MBH	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux,Python}	Новосибирск	2025-10-06 10:45:43+03	https://hh.ru/vacancy/125445668
126075498	DevOps Engineer (сertificates AWS)	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,CI/CD,Python}	Алматы	2025-10-02 16:29:16+03	https://hh.ru/vacancy/126075498
125509917	MLSecOps engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Екатеринбург	2025-09-19 08:03:59+03	https://hh.ru/vacancy/125509917
120664402	Джуниор аккаунт-менеджер/ Менеджер по работе с клиентами	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-09-17 18:49:48+03	https://hh.ru/vacancy/120664402
123537650	Руководитель группы разработки (Python)	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-22 15:29:57+03	https://hh.ru/vacancy/123537650
125297767	Ведущий разработчик Go (Senior)	\N	\N	RUR	moreThan6	Более 6 лет	{Java,Python,Rust}	Москва	2025-09-14 13:32:05+03	https://hh.ru/vacancy/125297767
123982920	Middle+/Senior Fullstack разработчик в Яндекс Пэй (Golang+React)	\N	\N	RUR	between3And6	От 3 до 6 лет	{JavaScript,MySQL,Node.js,PostgreSQL,Python}	Москва	2025-09-26 14:53:46+03	https://hh.ru/vacancy/123982920
125243805	Бизнес-аналитик (платежная система и международные расчеты)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Астана	2025-09-11 16:56:48+03	https://hh.ru/vacancy/125243805
125400180	Python-разработчик	\N	90000	RUR	between1And3	От 1 года до 3 лет	{MySQL,Python,Selenium}	Москва	2025-10-07 16:13:23+03	https://hh.ru/vacancy/125400180
126051962	Odoo Developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{JavaScript,Python}	Минск	2025-10-02 10:30:28+03	https://hh.ru/vacancy/126051962
114677831	Архитектор LTE	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Docker,Linux,Python}	Москва	2025-09-22 08:52:44+03	https://hh.ru/vacancy/114677831
125782235	Ведущий разработчик ML, Рекомендации	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-25 15:21:52+03	https://hh.ru/vacancy/125782235
125854194	Администратор Linux	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-09-26 17:51:57+03	https://hh.ru/vacancy/125854194
124382248	Руководитель группы в отдел сопровождения информационных систем.	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,PostgreSQL,Python,Redis}	Саратов	2025-09-17 16:59:43+03	https://hh.ru/vacancy/124382248
124936849	Разработчик FPGA (ПЛИС)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Санкт-Петербург	2025-10-04 12:40:38+03	https://hh.ru/vacancy/124936849
125702615	Разработчик C++ (Embedded / Computer Vision)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-06 13:00:26+03	https://hh.ru/vacancy/125702615
123222786	Старший бэкенд-разработчик на Go в Образование	\N	\N	RUR	moreThan6	Более 6 лет	{}	Москва	2025-09-22 09:04:16+03	https://hh.ru/vacancy/123222786
118655408	Системный администратор Linux/SRE (DevOps)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Go,Prometheus,Python}	Санкт-Петербург	2025-10-06 13:49:50+03	https://hh.ru/vacancy/118655408
119818964	Senior C++ developer	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-19 12:55:39+03	https://hh.ru/vacancy/119818964
123599818	Ведущий инженер-программист OpenCV	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-03 17:34:50+03	https://hh.ru/vacancy/123599818
122974056	Инженер presale (RuPost)	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,Python}	Москва	2025-09-16 10:41:49+03	https://hh.ru/vacancy/122974056
125525353	Инженер сопровождения инфраструктуры Data (NRT)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Git,Python,Spark}	Москва	2025-09-19 12:15:38+03	https://hh.ru/vacancy/125525353
123297423	Python разработчик (Middle+ / Senior)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Python}	Москва	2025-09-26 09:59:01+03	https://hh.ru/vacancy/123297423
125434880	DWH разработчик (Офис)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Airflow,Python,Spark}	Санкт-Петербург	2025-09-17 12:42:57+03	https://hh.ru/vacancy/125434880
124936808	Разработчик FPGA (ПЛИС) Junior	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Linux,Python,Rust}	Санкт-Петербург	2025-10-04 12:40:28+03	https://hh.ru/vacancy/124936808
125911781	Разработчик С/С++ (Developer for GSM)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,Shell}	Москва	2025-09-29 16:44:56+03	https://hh.ru/vacancy/125911781
120208897	Инженер-верификатор	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Linux,Python}	Москва	2025-09-16 11:53:39+03	https://hh.ru/vacancy/120208897
123954664	ML engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-17 14:44:26+03	https://hh.ru/vacancy/123954664
125475740	TechLead команды web разработки	\N	\N	RUR	moreThan6	Более 6 лет	{Go,GraphQL,Python}	Казань	2025-10-06 11:38:56+03	https://hh.ru/vacancy/125475740
122151908	Системный программист С (ОС Astra Linux)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux}	Москва	2025-09-25 15:14:07+03	https://hh.ru/vacancy/122151908
123035104	Разработчик компиляторов - оптимизированная кодогенерация RISC-V	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-19 10:24:36+03	https://hh.ru/vacancy/123035104
125691773	Инженер-программист Embedded (MCU)	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,Python,pytest}	Москва	2025-09-24 10:30:00+03	https://hh.ru/vacancy/125691773
123097610	Прикладной администратор в Систему быстрых платежей	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,Linux,Python,SQL}	Москва	2025-09-19 11:21:27+03	https://hh.ru/vacancy/123097610
124799750	Системный аналитик 1С	110000	140000	RUR	between1And3	От 1 года до 3 лет	{Kafka,PostgreSQL,Python}	Владивосток	2025-09-29 07:43:58+03	https://hh.ru/vacancy/124799750
122877560	Middle+/Senior C++ developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Санкт-Петербург	2025-09-26 15:18:37+03	https://hh.ru/vacancy/122877560
125315833	Инженер-электроник/разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Санкт-Петербург	2025-10-06 10:14:05+03	https://hh.ru/vacancy/125315833
125323491	Программист С++	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Санкт-Петербург	2025-10-06 11:45:22+03	https://hh.ru/vacancy/125323491
125407733	Tech Lead	\N	\N	RUR	moreThan6	Более 6 лет	{AWS,Docker,JavaScript,Python}	Москва	2025-09-16 18:13:04+03	https://hh.ru/vacancy/125407733
122288623	Системный инженер-программист С++ (РЗ и ПА)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Git,Linux,Python}	Екатеринбург	2025-09-12 09:02:40+03	https://hh.ru/vacancy/122288623
125245314	Senior Data Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Тбилиси	2025-09-11 17:33:21+03	https://hh.ru/vacancy/125245314
125329277	Инженер-программист АСУ ТП	158000	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-15 13:00:11+03	https://hh.ru/vacancy/125329277
125445316	ML-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-10-05 15:20:37+03	https://hh.ru/vacancy/125445316
125999385	ML Ops	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,Kubernetes,Python}	Москва	2025-10-03 09:28:14+03	https://hh.ru/vacancy/125999385
122390433	Разработчик Bitrix24	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Владимир	2025-09-24 13:39:31+03	https://hh.ru/vacancy/122390433
118898958	Руководитель группы разработки C++	\N	\N	RUR	moreThan6	Более 6 лет	{Linux,Python}	Москва	2025-09-24 12:35:32+03	https://hh.ru/vacancy/118898958
122390142	PHP-разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Владимир	2025-09-24 13:39:31+03	https://hh.ru/vacancy/122390142
125289724	Ведущий инженер по автоматизированному тестированию (Python), Система WMS	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL,pytest}	Москва	2025-09-12 22:20:12+03	https://hh.ru/vacancy/125289724
124188484	ML разработчик, группа внутренних ML продуктов	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-17 16:42:52+03	https://hh.ru/vacancy/124188484
124484939	Tech Lead/руководитель команды разработчиков	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Ростов-на-Дону	2025-09-24 13:13:30+03	https://hh.ru/vacancy/124484939
125365899	Тимлид разработки GenAI (Python)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-16 08:02:30+03	https://hh.ru/vacancy/125365899
124807154	Инженер-программист среды верификации сетевого оборудования	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Москва	2025-10-03 10:26:50+03	https://hh.ru/vacancy/124807154
125232582	Junior System Administrator / Младший системный администратор	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python,SQL}	Краснодар	2025-09-11 15:10:09+03	https://hh.ru/vacancy/125232582
125247598	Python разработчик в центр экспертизы LLM	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-05 18:21:46+03	https://hh.ru/vacancy/125247598
126030735	Cybersecurity SW Developer (ADAS)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Linux,Python}	Москва	2025-10-01 18:37:06+03	https://hh.ru/vacancy/126030735
122545259	Backend-разработчик в Маркет	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-15 13:08:32+03	https://hh.ru/vacancy/122545259
125674425	Дата-инженер DWH в Финтех	\N	\N	RUR	between3And6	От 3 до 6 лет	{SQL}	Москва	2025-09-23 20:20:34+03	https://hh.ru/vacancy/125674425
122631762	Инженер - программист MES/АСУП	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Железногорск (Курская область)	2025-10-04 17:01:01+03	https://hh.ru/vacancy/122631762
123327198	Старший программист-исследователь (алгоритмист)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-23 19:59:58+03	https://hh.ru/vacancy/123327198
124052357	Старший разработчик на Python в команду разработки LLM-проектов для B2B	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-08 15:20:41+03	https://hh.ru/vacancy/124052357
126029758	Middle Palantir Foundry Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Тбилиси	2025-10-01 17:59:50+03	https://hh.ru/vacancy/126029758
124987431	Application Security Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-10-06 12:57:12+03	https://hh.ru/vacancy/124987431
125716365	Разработчик Ai решений (Middle+)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Москва	2025-09-24 15:13:47+03	https://hh.ru/vacancy/125716365
123372043	Руководитель группы аналитики (FMCG)	150000	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Москва	2025-09-23 14:03:25+03	https://hh.ru/vacancy/123372043
125853469	Системный инженер по мониторингу	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Go,Python,SQL}	Москва	2025-09-26 17:28:09+03	https://hh.ru/vacancy/125853469
120236686	Ведущий Data Engineer	\N	280000	RUR	moreThan6	Более 6 лет	{}	Москва	2025-09-29 09:37:35+03	https://hh.ru/vacancy/120236686
125156673	Старший администратор ИТ инфраструктуры (Jira/Confluence)	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-10 13:52:52+03	https://hh.ru/vacancy/125156673
123435105	Middle Data Scientist разработчик NLP/OCR/CV/Audio	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-24 13:02:04+03	https://hh.ru/vacancy/123435105
124562682	Senior Support Engineer [Команда администрирования CRM, МТС Веб Сервисы]	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-09-26 16:53:10+03	https://hh.ru/vacancy/124562682
126068411	Инженер радиотехники	\N	150000	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Санкт-Петербург	2025-10-02 14:27:33+03	https://hh.ru/vacancy/126068411
125531266	DevOps Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Kubernetes,Linux,Python}	Минск	2025-10-03 15:25:44+03	https://hh.ru/vacancy/125531266
124993197	Преподаватель по Python	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Ташкент	2025-09-08 09:27:34+03	https://hh.ru/vacancy/124993197
126104872	Системный администратор Linux / System Administrator Linux	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-10-03 11:26:11+03	https://hh.ru/vacancy/126104872
125012088	QA-инженер по автоматизации тестирования СУБД Postgres Pro (Python)	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-08 12:34:25+03	https://hh.ru/vacancy/125012088
118170032	Ведущий программист С++	200000	200000	RUR	moreThan6	Более 6 лет	{Python}	Тула	2025-09-15 08:20:06+03	https://hh.ru/vacancy/118170032
122990930	Дата-инженер ETL/DWH	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Минск	2025-09-16 14:55:11+03	https://hh.ru/vacancy/122990930
124320742	Ведущий программист С++	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Екатеринбург	2025-09-22 14:10:49+03	https://hh.ru/vacancy/124320742
125346508	Ведущий RTL-разработчик подсистемы памяти	\N	\N	RUR	moreThan6	Более 6 лет	{Linux,Python,Shell}	Москва	2025-09-15 17:32:15+03	https://hh.ru/vacancy/125346508
126064141	Тимлид разработки в Яндекс ID	\N	\N	RUR	moreThan6	Более 6 лет	{Go,Python}	Санкт-Петербург	2025-10-02 13:19:45+03	https://hh.ru/vacancy/126064141
125342303	Инженер по автоматизации тестирования (AQA Python)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux,Python}	Нижний Новгород	2025-09-15 16:05:04+03	https://hh.ru/vacancy/125342303
125895526	Embedded программист С++ (БПЛА и полезные нагрузки)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Git,JavaScript,Python}	Санкт-Петербург	2025-09-29 12:53:11+03	https://hh.ru/vacancy/125895526
124243066	Дата-инженер AI/ML	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Kafka,Python,SQL,Spark}	Москва	2025-09-17 15:41:53+03	https://hh.ru/vacancy/124243066
124745678	IT Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux,Python}	Алматы	2025-10-02 09:22:11+03	https://hh.ru/vacancy/124745678
125327257	Team Lead группы разработки	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Python}	Москва	2025-09-15 12:33:45+03	https://hh.ru/vacancy/125327257
125385590	Старший инженер по автоматизации тестирования Python, Финансы и организационная модель	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Git,Python}	Москва	2025-09-16 12:46:21+03	https://hh.ru/vacancy/125385590
125425058	Системный аналитик Озера данных	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-17 10:39:36+03	https://hh.ru/vacancy/125425058
122541668	Ведущий Data разработчик (Фабрика данных)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Kafka,PostgreSQL,Python,SQL}	Москва	2025-09-30 14:07:42+03	https://hh.ru/vacancy/122541668
124233401	AI Tech Lead (LLM)	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-18 14:41:49+03	https://hh.ru/vacancy/124233401
125174835	1С-Битрикс разработчик \\ фуллстек	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Django,Python}	Пермь	2025-09-10 18:27:02+03	https://hh.ru/vacancy/125174835
121472231	Разработчик DWH	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Москва	2025-09-29 10:02:06+03	https://hh.ru/vacancy/121472231
126135196	Разработчик FPGA (ПЛИС)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-10-04 13:05:33+03	https://hh.ru/vacancy/126135196
125496119	Senior Data QA (Full-stack QA: Manual + Automation + AI)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Pandas,Python,SQL,pytest}	Тбилиси	2025-09-18 16:53:23+03	https://hh.ru/vacancy/125496119
125349142	QA Load/Нагрузочный тестировщик (Senior)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-09-15 18:04:18+03	https://hh.ru/vacancy/125349142
124994488	DevSecOps инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-08 09:42:11+03	https://hh.ru/vacancy/124994488
125115547	Сетевой инженер/ Младший С++ разработчик (KORNFELD)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Docker,Git,Python}	Санкт-Петербург	2025-09-09 16:35:19+03	https://hh.ru/vacancy/125115547
125414611	Инженер-программист АСУ ТП ( SCADA \\ PLC)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-08 07:44:12+03	https://hh.ru/vacancy/125414611
125595507	Аналитик Threat Intelligence / Analyst (Darkweb)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-22 11:13:04+03	https://hh.ru/vacancy/125595507
125157327	Senior QA Automation Engineer (Python)	\N	\N	RUR	between3And6	От 3 до 6 лет	{MySQL,PostgreSQL,Python,pytest}	Алматы	2025-09-10 13:59:25+03	https://hh.ru/vacancy/125157327
125658837	Tech Lead Automated QA	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,Java,JavaScript,Playwright,Python,Selenium,TypeScript}	Алматы	2025-09-23 13:57:14+03	https://hh.ru/vacancy/125658837
116595237	Программист С++	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-09-30 12:43:23+03	https://hh.ru/vacancy/116595237
123412088	Старший инженер-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,Docker,FastAPI,Python,RabbitMQ}	Москва	2025-09-18 11:32:45+03	https://hh.ru/vacancy/123412088
125101437	Middle Data Scientist в команду Посуточно	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-09 13:40:11+03	https://hh.ru/vacancy/125101437
125694315	Senior Data Engineer (expert-level Python and SQL)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Тбилиси	2025-09-24 11:05:41+03	https://hh.ru/vacancy/125694315
125595908	Инженер по автоматизации тестирования Python, направление разработки ERP	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL,pytest}	Москва	2025-09-22 11:17:16+03	https://hh.ru/vacancy/125595908
125840137	BI разработчик (офис)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-09-26 13:03:50+03	https://hh.ru/vacancy/125840137
125423841	Data Engineer (Middle)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Батуми	2025-09-17 10:25:47+03	https://hh.ru/vacancy/125423841
122351676	Senior DevOps Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,Linux}	Санкт-Петербург	2025-09-29 14:46:09+03	https://hh.ru/vacancy/122351676
124886825	Системный инженер / DevOps Engineer (KARMA)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-10-03 17:46:16+03	https://hh.ru/vacancy/124886825
125520599	Старший разработчик информационных систем, Группа разработки спецпроектов	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Java,Python}	Москва	2025-09-19 11:00:51+03	https://hh.ru/vacancy/125520599
126051233	ML-разработчик в Рекламную платформу Маркета	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-02 10:22:23+03	https://hh.ru/vacancy/126051233
122762164	Middle+/Senior Core Game Designer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Армения	2025-09-12 12:02:13+03	https://hh.ru/vacancy/122762164
125653781	Разработчик бэкенда в Фемиду	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-29 18:39:54+03	https://hh.ru/vacancy/125653781
124811655	Технический менеджер	\N	\N	RUR	between3And6	От 3 до 6 лет	{"REST API"}	Москва	2025-09-30 14:52:32+03	https://hh.ru/vacancy/124811655
126003881	DevOps Engineer / Инженер сопровождения	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,Git,Go,Python,Shell}	Санкт-Петербург	2025-10-01 11:20:49+03	https://hh.ru/vacancy/126003881
117090633	Senior/Lead QA Auto	\N	\N	RUR	between3And6	От 3 до 6 лет	{Git,Python}	Тбилиси	2025-09-22 14:39:27+03	https://hh.ru/vacancy/117090633
124182631	Web-разработчик Backend (по работе с сайтами/CMS)	70000	80000	RUR	between1And3	От 1 года до 3 лет	{Python}	Всеволожск	2025-09-25 11:01:11+03	https://hh.ru/vacancy/124182631
125167711	DevOps (Data governance)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,CI/CD,Grafana,Linux,Prometheus,Python}	Москва	2025-09-10 16:42:50+03	https://hh.ru/vacancy/125167711
125670273	Инженер по эксплуатации L3 в команду Business Tools [MWS Cloud Platform]	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Docker,Python}	Москва	2025-09-23 17:14:36+03	https://hh.ru/vacancy/125670273
121954635	DevOps-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Linux,MySQL,PostgreSQL,Python}	Москва	2025-09-15 20:23:12+03	https://hh.ru/vacancy/121954635
125763475	Инженер АСУТП	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Java,Python}	Новосибирск	2025-09-25 12:43:16+03	https://hh.ru/vacancy/125763475
125971041	DevOps Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python,Shell}	Москва	2025-09-30 15:01:10+03	https://hh.ru/vacancy/125971041
125478265	Инженер-программист Extron, Crestron, iRidi	250000	\N	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-09-18 12:14:03+03	https://hh.ru/vacancy/125478265
125240027	Fullstack-разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{CSS,Docker,HTML,Linux,PostgreSQL}	Минск	2025-09-11 16:24:02+03	https://hh.ru/vacancy/125240027
119033018	Администратор проекта/Релиз-менеджер (Саратов, офис)	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Саратов	2025-09-09 18:09:14+03	https://hh.ru/vacancy/119033018
126029195	Cybersecurity Engineer (ADAS)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Linux,Python,SQL}	Москва	2025-10-01 17:42:05+03	https://hh.ru/vacancy/126029195
124577742	Инженер-аналитик (сканер уязвимостей)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-09-24 14:07:06+03	https://hh.ru/vacancy/124577742
116767331	Lead Unity Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Гомель	2025-10-02 16:58:06+03	https://hh.ru/vacancy/116767331
125455935	Разработчик 1С	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-17 21:35:25+03	https://hh.ru/vacancy/125455935
124837683	R&D специалист	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Go,HTML,Python}	Москва	2025-09-15 11:49:53+03	https://hh.ru/vacancy/124837683
124732814	Системный администратор / System Administrator	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Москва	2025-09-07 19:25:13+03	https://hh.ru/vacancy/124732814
125504354	Ведущий инженер по методикам тестирования телекоммуникационного оборудования/Networking QA engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-09-18 22:41:28+03	https://hh.ru/vacancy/125504354
124236537	Senior C++ Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{C++}	Тбилиси	2025-09-22 14:39:32+03	https://hh.ru/vacancy/124236537
125407941	3D Character Animator (Fighting game)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Армения	2025-09-16 18:20:56+03	https://hh.ru/vacancy/125407941
126135190	Разработчик FPGA (ПЛИС)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Санкт-Петербург	2025-10-04 13:04:50+03	https://hh.ru/vacancy/126135190
120819859	Python ML/AI Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Тбилиси	2025-09-18 13:59:34+03	https://hh.ru/vacancy/120819859
124701583	Специалист по анализу защищенности	\N	\N	RUR	between1And3	От 1 года до 3 лет	{JavaScript,Python}	Москва	2025-09-29 10:43:31+03	https://hh.ru/vacancy/124701583
124706245	Разработчик С++ в команду разработки технологий индексации данных в Яндекс.Маркет	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-26 16:46:44+03	https://hh.ru/vacancy/124706245
125254150	Senior Back-End / Full Stack Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Алматы	2025-09-12 08:00:02+03	https://hh.ru/vacancy/125254150
125911708	Trainee SAP CAP	\N	\N	RUR	noExperience	Нет опыта	{CSS,HTML,Java,JavaScript,Python}	Минск	2025-09-29 16:43:38+03	https://hh.ru/vacancy/125911708
125000208	Fullstack-разработчик в Яндекс Пэй	\N	\N	RUR	moreThan6	Более 6 лет	{JavaScript,MySQL,Node.js,PostgreSQL,React,TypeScript}	Москва	2025-09-08 10:47:54+03	https://hh.ru/vacancy/125000208
125851281	Fullstack Developer (Django + React)	\N	\N	RUR	between3And6	От 3 до 6 лет	{JavaScript,TypeScript}	Москва	2025-09-26 16:37:59+03	https://hh.ru/vacancy/125851281
125407714	Senior Copywriter – IT, English	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Минск	2025-09-16 18:12:42+03	https://hh.ru/vacancy/125407714
124185958	Инженер-программист (отдел поддержки)	\N	\N	RUR	between3And6	От 3 до 6 лет	{NumPy,Python}	Москва	2025-09-16 11:53:26+03	https://hh.ru/vacancy/124185958
125656975	Старший инженер по автоматизации аппаратного тестирования / Embedded AQA	\N	\N	RUR	between3And6	От 3 до 6 лет	{Git}	Москва	2025-09-23 13:23:42+03	https://hh.ru/vacancy/125656975
122509474	Начальник отдела систем компьютерного зрения (Computer Vision Engineer)	300000	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-03 13:56:23+03	https://hh.ru/vacancy/122509474
125391315	Старший Java разработчик, Обработка пользовательского сигнала в поиске	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-16 14:14:08+03	https://hh.ru/vacancy/125391315
122837098	Python Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Python,SQL}	Тбилиси	2025-09-22 14:38:55+03	https://hh.ru/vacancy/122837098
124637347	Инженер по тестированию ПО (в офис)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Саратов	2025-09-23 09:29:49+03	https://hh.ru/vacancy/124637347
126021756	Operations Engineer (DevOps/Support Engineer) / Инженер поддержки / DevOps-инженер	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Angular,Java,Python}	Аргентина	2025-10-01 15:31:36+03	https://hh.ru/vacancy/126021756
122921249	Senior Java Developer	\N	\N	RUR	moreThan6	Более 6 лет	{}	Москва	2025-09-18 16:12:39+03	https://hh.ru/vacancy/122921249
123315533	Стажер аналитик 1С	15000	50000	RUR	noExperience	Нет опыта	{Java,JavaScript,Python}	Екатеринбург	2025-09-23 12:02:30+03	https://hh.ru/vacancy/123315533
125115595	ML/DS-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Pandas,PyTorch,Python,Scikit-learn,TensorFlow}	Москва	2025-09-09 16:35:40+03	https://hh.ru/vacancy/125115595
125334251	Java-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-09-15 14:10:35+03	https://hh.ru/vacancy/125334251
123396276	Старший Python разработчик, Эффективность рекомендаций	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL,Spark}	Москва	2025-09-27 19:49:58+03	https://hh.ru/vacancy/123396276
125379000	Эксперт	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Санкт-Петербург	2025-09-16 11:16:15+03	https://hh.ru/vacancy/125379000
122251066	Разработчик баз данных (PostgreSQL)	150000	\N	RUR	between1And3	От 1 года до 3 лет	{JavaScript,Linux,Python}	Москва	2025-09-25 16:37:08+03	https://hh.ru/vacancy/122251066
125789534	NodeJS Backend Разработчик Middle	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Node.js,Python,TypeScript}	Москва	2025-10-07 15:55:13+03	https://hh.ru/vacancy/125789534
125146983	Пентестер / Pentester	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Linux,Python}	Москва	2025-10-06 14:01:45+03	https://hh.ru/vacancy/125146983
125594487	Intern Data Engineer	\N	\N	RUR	noExperience	Нет опыта	{Azure,MySQL,Python,SQL}	Ташкент	2025-09-22 11:02:33+03	https://hh.ru/vacancy/125594487
125670910	Python/Php Backend Developer	\N	100000	RUR	between1And3	От 1 года до 3 лет	{Python}	Санкт-Петербург	2025-09-23 17:19:17+03	https://hh.ru/vacancy/125670910
125596131	Программист Go / PostgreSQL (DB Developer)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,PostgreSQL,Python}	Москва	2025-09-22 11:19:23+03	https://hh.ru/vacancy/125596131
126023332	Аналитик качества клиентского сервиса	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Самара	2025-10-01 15:57:41+03	https://hh.ru/vacancy/126023332
125746516	DevOps-инженер	200000	350000	RUR	between3And6	От 3 до 6 лет	{Bash,Git,Python}	Москва	2025-09-25 09:20:34+03	https://hh.ru/vacancy/125746516
125872239	Game Analyst	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Сербия	2025-09-29 07:31:17+03	https://hh.ru/vacancy/125872239
124383277	Data Инженер, Ozon Fresh	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-09-09 18:21:28+03	https://hh.ru/vacancy/124383277
125477494	LLM Researcher / АИ исследователь	\N	\N	RUR	noExperience	Нет опыта	{Python}	Москва	2025-10-06 12:04:08+03	https://hh.ru/vacancy/125477494
124763823	Risk Data Scientist в команду разработки AutoML-системы	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-01 09:45:32+03	https://hh.ru/vacancy/124763823
114576137	Python AI-developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Airflow,FastAPI,PyTorch,Python,TensorFlow}	Москва	2025-10-06 09:32:36+03	https://hh.ru/vacancy/114576137
124780535	DevOps engineer / Site Reliability Engineer (to Lisbon)	\N	\N	RUR	moreThan6	Более 6 лет	{Go,Python}	Москва	2025-10-02 15:34:45+03	https://hh.ru/vacancy/124780535
125047235	Разработчик бэкенда в Заботу	250000	550000	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-08 16:14:55+03	https://hh.ru/vacancy/125047235
122390782	BI-аналитик/Аналитик данных	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Django,MySQL,Python,Redis}	Владимир	2025-09-24 13:39:31+03	https://hh.ru/vacancy/122390782
125081254	Инженер на сопровождение (микросервисы)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Самара	2025-09-09 09:20:08+03	https://hh.ru/vacancy/125081254
125370220	QA Automation Engineer (Middle+/Senior)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Java,JavaScript,Playwright,Python,Selenium,pytest}	Москва	2025-09-16 09:26:45+03	https://hh.ru/vacancy/125370220
126114742	Аналитик CRM	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-10-03 14:13:38+03	https://hh.ru/vacancy/126114742
125873727	Senior Backend developer (TypeScript)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Node.js,Python,TypeScript}	Москва	2025-09-29 08:03:31+03	https://hh.ru/vacancy/125873727
126054348	Data Analyst / ML / AI Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{NumPy,Pandas,Python,SQL,Scikit-learn,TensorFlow}	Астана	2025-10-02 11:00:53+03	https://hh.ru/vacancy/126054348
125723842	Инженер-программист	133000	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Москва	2025-09-24 16:25:55+03	https://hh.ru/vacancy/125723842
125351922	Fullstack-разработчик	95000	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Воронеж	2025-10-01 18:05:42+03	https://hh.ru/vacancy/125351922
124342846	Инженер системы мониторинга	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Москва	2025-09-15 11:51:40+03	https://hh.ru/vacancy/124342846
123614166	Программист Middle/Senior C++	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Томск	2025-09-30 09:44:32+03	https://hh.ru/vacancy/123614166
125727477	Системный аналитик (senior/middle+)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-24 17:45:45+03	https://hh.ru/vacancy/125727477
120362231	Product analyst/Продуктовый аналитик в социальный проект	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Москва	2025-09-22 09:35:33+03	https://hh.ru/vacancy/120362231
123880848	Аналитик-исследователь киберугроз	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-10-06 12:29:52+03	https://hh.ru/vacancy/123880848
126056455	AI Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Сербия	2025-10-02 11:25:47+03	https://hh.ru/vacancy/126056455
122459875	Backend разработчик (Python DRF)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Django,SQL}	Москва	2025-10-08 10:51:19+03	https://hh.ru/vacancy/122459875
125816664	Fullstack-разработчик в digital-агентство	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Django,Python,Vue}	Волгоград	2025-10-07 22:22:33+03	https://hh.ru/vacancy/125816664
124500692	QA Automation Engineer Python, Направление разработки ERP	\N	\N	RUR	between3And6	От 3 до 6 лет	{Kubernetes,Python,SQL,pytest}	Москва	2025-09-16 12:09:23+03	https://hh.ru/vacancy/124500692
124732736	Программист/разработчик C++ (linux)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Linux,Python}	Санкт-Петербург	2025-09-25 19:54:43+03	https://hh.ru/vacancy/124732736
124742871	Программист/разработчик RPA (стажер/junior)	40000	\N	RUR	noExperience	Нет опыта	{Java,Python}	Магнитогорск	2025-09-17 12:01:50+03	https://hh.ru/vacancy/124742871
125951342	Инженер сопровождения продукта	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Санкт-Петербург	2025-09-30 11:38:44+03	https://hh.ru/vacancy/125951342
126177739	System Administrator	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-10-06 12:10:27+03	https://hh.ru/vacancy/126177739
124116120	DevOps-инженер в Лабораторию AI	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-01 21:38:50+03	https://hh.ru/vacancy/124116120
125894396	Релиз инженер, Платформа	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,CI/CD,Go,Python}	Москва	2025-09-29 12:37:15+03	https://hh.ru/vacancy/125894396
125438716	DevOps Engineer	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,CI/CD,Linux,Python}	Москва	2025-09-17 13:38:06+03	https://hh.ru/vacancy/125438716
125573988	Разработчик С++ (junior)	130000	\N	RUR	between1And3	От 1 года до 3 лет	{Go,JavaScript,Python}	Москва	2025-09-22 06:35:28+03	https://hh.ru/vacancy/125573988
125234431	Инженер Linux/Unix	\N	\N	RUR	moreThan6	Более 6 лет	{CI/CD,Docker,Kubernetes,Python}	Москва	2025-09-11 15:39:44+03	https://hh.ru/vacancy/125234431
125543326	DevOps Engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Grafana,MySQL,PostgreSQL,Prometheus,Python}	Москва	2025-10-04 17:47:23+03	https://hh.ru/vacancy/125543326
125092991	Дежурный инженер Linux	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Linux,PostgreSQL,Python,SQL}	Москва	2025-10-06 13:49:21+03	https://hh.ru/vacancy/125092991
125378425	Аналитик данных	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-09-16 11:09:33+03	https://hh.ru/vacancy/125378425
125300821	Математик/Специалист по Big Data	\N	\N	RUR	between3And6	От 3 до 6 лет	{NumPy,Pandas,Python,Scikit-learn}	Санкт-Петербург	2025-09-15 00:40:52+03	https://hh.ru/vacancy/125300821
126057211	FlutterFlow разработчик	90000	120000	RUR	noExperience	Нет опыта	{Python}	Тверь	2025-10-02 11:37:41+03	https://hh.ru/vacancy/126057211
125646142	Jounior веб‑разработчик PHP 1С‑Битрикс (eCommerce, ИИ)	50000	120000	RUR	between1And3	От 1 года до 3 лет	{CSS,HTML,JavaScript,Python,Redis}	Иваново (Ивановская область)	2025-09-23 10:51:27+03	https://hh.ru/vacancy/125646142
125667614	QA Team Lead	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Нижний Новгород	2025-09-23 16:16:40+03	https://hh.ru/vacancy/125667614
125978198	Разработчик C++	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,C++,Linux,Python,SQL}	Москва	2025-09-30 17:12:10+03	https://hh.ru/vacancy/125978198
123638483	Специалист по автоматизированному тестированию (QA Automation Engineer Python)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-12 11:38:30+03	https://hh.ru/vacancy/123638483
125522481	DevOps Engineer	180000	\N	RUR	between1And3	От 1 года до 3 лет	{Go,Grafana,Java,Prometheus,Python}	Ростов-на-Дону	2025-09-19 11:31:11+03	https://hh.ru/vacancy/125522481
125971180	Разработчик C++	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Git,Linux,Python}	Астана	2025-10-06 15:03:32+03	https://hh.ru/vacancy/125971180
123970065	BI-аналитик	\N	\N	RUR	between3And6	От 3 до 6 лет	{PostgreSQL,Python,SQL}	Астана	2025-09-10 09:22:43+03	https://hh.ru/vacancy/123970065
125403453	Инженер сопровождения ПО	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Москва	2025-09-16 16:48:07+03	https://hh.ru/vacancy/125403453
126060122	Продуктовый аналитик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Москва	2025-10-02 12:19:06+03	https://hh.ru/vacancy/126060122
125017197	DevOps-инженер	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Celery,Django,Docker,Kubernetes,Linux,Nginx,PostgreSQL,Python,Redis}	Челябинск	2025-10-05 13:03:20+03	https://hh.ru/vacancy/125017197
124490516	PHP developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Санкт-Петербург	2025-09-29 17:33:22+03	https://hh.ru/vacancy/124490516
125959213	Middle Fullstack Developer	80000	85000	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Node.js,Python,TypeScript}	Ростов-на-Дону	2025-09-30 12:24:37+03	https://hh.ru/vacancy/125959213
125674691	Специалист/Инженер в области Computer Vision и Machine Learning (CV/ML)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{PyTorch,Python,TensorFlow}	Тула	2025-09-23 21:16:43+03	https://hh.ru/vacancy/125674691
119633405	Программист-математик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-24 10:30:52+03	https://hh.ru/vacancy/119633405
125311283	Middle QA Engineer (Manual)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Ташкент	2025-09-24 08:39:58+03	https://hh.ru/vacancy/125311283
125907545	Специалист по автоматизированному тестированию (AQA)	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,Python,Selenium,pytest}	Москва	2025-09-29 15:40:16+03	https://hh.ru/vacancy/125907545
115039647	Automation QA Engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Java,Python}	Ташкент	2025-09-30 07:59:11+03	https://hh.ru/vacancy/115039647
126002132	Ведущий системный аналитик/Архитектор (AI -платформа)	\N	\N	RUR	moreThan6	Более 6 лет	{Java,Python}	Москва	2025-10-01 10:58:42+03	https://hh.ru/vacancy/126002132
125042571	Project Manager	\N	300000	RUR	between3And6	От 3 до 6 лет	{Go,Python,React,Vue}	Москва	2025-10-05 15:28:37+03	https://hh.ru/vacancy/125042571
125622287	BI аналитик-разработчик в команду Эйчартех	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-22 17:33:44+03	https://hh.ru/vacancy/125622287
125840767	Threat / Malware Analyst для мобильных платформ (Android)	300000	400000	RUR	between3And6	От 3 до 6 лет	{Go,Java,Python}	Москва	2025-09-26 13:17:18+03	https://hh.ru/vacancy/125840767
120337922	Инженер-программист микроконтроллеров (г. Зеленоград)	\N	\N	RUR	noExperience	Нет опыта	{Git,Linux,Python}	Зеленоград	2025-09-25 11:39:31+03	https://hh.ru/vacancy/120337922
122763660	ML-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Саратов	2025-09-12 12:23:09+03	https://hh.ru/vacancy/122763660
125205955	Разработчик систем автоматизации управления сетевой инфраструктурой	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-11 10:54:21+03	https://hh.ru/vacancy/125205955
124323195	Аналитик данных	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-09-17 14:23:46+03	https://hh.ru/vacancy/124323195
124784757	Преподаватель Промышленного программирования (Python)	\N	\N	RUR	noExperience	Нет опыта	{Git,Python}	Санкт-Петербург	2025-09-19 18:56:04+03	https://hh.ru/vacancy/124784757
125392482	Technical Support Engineer (L2)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Алматы	2025-09-16 14:33:19+03	https://hh.ru/vacancy/125392482
125530588	Data Scientist	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-19 13:56:03+03	https://hh.ru/vacancy/125530588
125770677	Разработчик C++ (ПО для базовой станции LTE)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Git,Linux,Python}	Нижний Новгород	2025-09-25 14:07:46+03	https://hh.ru/vacancy/125770677
125483747	Embedded Linux Test Engineer	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,Python}	Москва	2025-09-18 13:45:18+03	https://hh.ru/vacancy/125483747
125732931	C++ Gameplay Programmer	\N	\N	RUR	between3And6	От 3 до 6 лет	{JavaScript,Python}	Сербия	2025-09-25 00:53:33+03	https://hh.ru/vacancy/125732931
122323312	Ведущий сетевой инженер / Network engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux,Python}	Нижний Новгород	2025-10-06 10:45:43+03	https://hh.ru/vacancy/122323312
125713292	Инженер - разработчик RTL (Воронеж)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Воронеж	2025-09-24 14:55:14+03	https://hh.ru/vacancy/125713292
125052712	Главный специалист направления технической поддержки платежных систем	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-08 16:49:21+03	https://hh.ru/vacancy/125052712
126117038	Преподаватель IT-курсов	\N	\N	RUR	moreThan6	Более 6 лет	{Angular,Java,JavaScript,Kubernetes,Python,React,TypeScript}	Москва	2025-10-03 14:51:07+03	https://hh.ru/vacancy/126117038
123089848	Разработчик ПО	80000	\N	RUR	between3And6	От 3 до 6 лет	{Java,SQL}	Иваново (Ивановская область)	2025-10-06 10:35:28+03	https://hh.ru/vacancy/123089848
125732140	VoIP-инженер	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Go,Python}	Москва	2025-10-07 15:21:23+03	https://hh.ru/vacancy/125732140
125408320	CV Engineer (MLE) - Team Lead (Senior)/Инженер машинного обучения/Компьютерного зрения	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-07 18:39:34+03	https://hh.ru/vacancy/125408320
126025166	Senior Platform Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Java,Python}	Алматы	2025-10-07 16:30:33+03	https://hh.ru/vacancy/126025166
125394272	DevOps-инженер (AI)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,Kubernetes,Python,React}	Москва	2025-10-07 14:59:49+03	https://hh.ru/vacancy/125394272
125797603	Middle Backend разработчик (R&D / Startup-проекты)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Go,JavaScript,Python,Rust,TypeScript}	Москва	2025-10-07 16:31:46+03	https://hh.ru/vacancy/125797603
125168962	Разработчик службы сопровождения Delphi/Oracle	\N	\N	RUR	between3And6	От 3 до 6 лет	{SQL}	Краснодар	2025-09-10 17:07:36+03	https://hh.ru/vacancy/125168962
125358730	Разработчик систем телефонии / VoIP Developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Go,Python}	Москва	2025-09-15 19:23:36+03	https://hh.ru/vacancy/125358730
121529514	Руководитель группы Data Quality (КХД)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-09-29 18:31:26+03	https://hh.ru/vacancy/121529514
122909822	Разработчик C/Linux	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Docker,Linux,Python}	Рязань	2025-09-25 11:06:39+03	https://hh.ru/vacancy/122909822
126060212	Middle QA Automation Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,"REST API"}	Минск	2025-10-02 12:20:17+03	https://hh.ru/vacancy/126060212
125243160	Senior Fullstack developer	\N	\N	RUR	moreThan6	Более 6 лет	{CSS,React,TypeScript}	Самара	2025-09-16 10:48:38+03	https://hh.ru/vacancy/125243160
125394985	Team Lead C++ Developer	\N	\N	RUR	moreThan6	Более 6 лет	{Kafka,Python,RabbitMQ}	Москва	2025-09-16 15:05:51+03	https://hh.ru/vacancy/125394985
125924734	Senior Linux-администратор	\N	\N	RUR	moreThan6	Более 6 лет	{Go,Java,Linux,Python}	Воронеж	2025-09-29 19:37:04+03	https://hh.ru/vacancy/125924734
125408914	DevOps-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Go,Grafana,Linux,Prometheus,Python}	Москва	2025-09-16 19:24:15+03	https://hh.ru/vacancy/125408914
120382236	ML-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Чебоксары	2025-09-22 09:03:56+03	https://hh.ru/vacancy/120382236
121194680	Разработчик C/C++/Специалист по решению сложных задач	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Linux,Python}	Санкт-Петербург	2025-09-15 10:23:25+03	https://hh.ru/vacancy/121194680
125117612	Middle Product Analyst (midcore)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-09 16:58:38+03	https://hh.ru/vacancy/125117612
125159800	Senior SRE/DevOps-инженер в команду CDN Operations [MWS Cloud Platform]	\N	\N	RUR	moreThan6	Более 6 лет	{CI/CD,Docker,Python}	Москва	2025-09-10 15:11:24+03	https://hh.ru/vacancy/125159800
125470572	Аналитик-разработчик (ИИ, AI)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,Python}	Москва	2025-09-18 10:29:06+03	https://hh.ru/vacancy/125470572
125523094	Senior aQA автотестировщик Python (платформа контейнерной оркестрации)	\N	\N	RUR	moreThan6	Более 6 лет	{Go,Java,JavaScript,Kubernetes,Python}	Москва	2025-09-19 11:40:15+03	https://hh.ru/vacancy/125523094
122222208	Data Security AI/ML Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{AWS,CI/CD,Python}	Сербия	2025-09-28 18:11:48+03	https://hh.ru/vacancy/122222208
123974766	Системный аналитик в бизнес приложения	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-10-05 12:18:29+03	https://hh.ru/vacancy/123974766
125264857	Руководитель разработки (Team Lead)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Angular,Python,Rust}	Москва	2025-10-06 11:11:01+03	https://hh.ru/vacancy/125264857
121659004	Инженер по сетевой безопасности [MWS Cloud Platform]	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-09-14 18:15:37+03	https://hh.ru/vacancy/121659004
123717538	Инженер внедрения (ALD Pro)	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,Python}	Москва	2025-10-05 18:49:56+03	https://hh.ru/vacancy/123717538
121666782	C++/Python Developer (Санкт-Петербург)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Санкт-Петербург	2025-10-05 11:49:02+03	https://hh.ru/vacancy/121666782
125232541	AI Backend Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-09-30 16:31:09+03	https://hh.ru/vacancy/125232541
105817972	Старший разработчик Go, Рантайм рекомендаций	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Java,Python}	Москва	2025-09-08 18:07:59+03	https://hh.ru/vacancy/105817972
124926401	ML-разработчик в команду динамического ценообразования Маркета	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-09-26 16:46:44+03	https://hh.ru/vacancy/124926401
125483558	Инженер-системный программист (системный администратор Linux)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Санкт-Петербург	2025-09-18 13:42:05+03	https://hh.ru/vacancy/125483558
89101386	Senior С++ Developer	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Томск	2025-10-06 08:37:35+03	https://hh.ru/vacancy/89101386
124117087	Архитектор систем Atlassian	\N	\N	RUR	moreThan6	Более 6 лет	{}	Москва	2025-09-10 09:44:30+03	https://hh.ru/vacancy/124117087
124863277	Автотестировщик. Nova	\N	\N	RUR	moreThan6	Более 6 лет	{Go,Java,JavaScript,Kubernetes,Python,pytest}	Москва	2025-09-08 20:25:47+03	https://hh.ru/vacancy/124863277
125772954	Администратор Jira/Confluence	\N	\N	RUR	between1And3	От 1 года до 3 лет	{CI/CD,Python}	Москва	2025-09-25 14:33:33+03	https://hh.ru/vacancy/125772954
125190939	Embedded Developer (Middle)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Git,Linux,Python}	Москва	2025-10-08 09:25:26+03	https://hh.ru/vacancy/125190939
125831526	Главный инженер отдела серверной инфраструктуры	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,Python}	Москва	2025-10-08 10:40:55+03	https://hh.ru/vacancy/125831526
124686769	Senior Python Developer (AI & Data Science)	150000	\N	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Grafana,PostgreSQL,Prometheus,Python,"REST API",SQL}	Краснодар	2025-09-30 13:02:27+03	https://hh.ru/vacancy/124686769
122159999	Ведущий инженер-автоматизатор	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-29 09:18:09+03	https://hh.ru/vacancy/122159999
122612457	Инженер-программист С++	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-28 12:56:27+03	https://hh.ru/vacancy/122612457
125694941	OEBS-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{SQL}	Москва	2025-09-24 11:12:46+03	https://hh.ru/vacancy/125694941
121964983	Product Analyst	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Кипр	2025-09-22 16:28:06+03	https://hh.ru/vacancy/121964983
125206644	Разработчик ML(NLP)/Data Scientist	\N	\N	RUR	between3And6	От 3 до 6 лет	{PyTorch,Python}	Москва	2025-09-11 11:04:03+03	https://hh.ru/vacancy/125206644
122094927	SDET Python (SD-WAN)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-24 12:30:36+03	https://hh.ru/vacancy/122094927
125538505	Старший разработчик С++	\N	\N	RUR	moreThan6	Более 6 лет	{Go,Python,SQL}	Москва	2025-09-19 15:54:43+03	https://hh.ru/vacancy/125538505
125725715	Руководитель группы разработки (АСТУ)	\N	\N	RUR	between3And6	От 3 до 6 лет	{JavaScript,PostgreSQL,Python,SQL,TypeScript}	Москва	2025-09-24 17:04:45+03	https://hh.ru/vacancy/125725715
125387838	Автотестировщик (AQA)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,pytest}	Санкт-Петербург	2025-09-16 13:18:14+03	https://hh.ru/vacancy/125387838
125671484	Tech Lead [МТС Веб Сервисы, МТС Аналитика]	\N	\N	RUR	moreThan6	Более 6 лет	{}	Москва	2025-09-23 17:41:35+03	https://hh.ru/vacancy/125671484
124257533	Инженер- аналитик ИБ (внедрение UEBA)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,PostgreSQL,Python}	Санкт-Петербург	2025-09-15 15:40:16+03	https://hh.ru/vacancy/124257533
124370840	Технический руководитель продуктовой команды (МГТС)	260000	260000	RUR	between3And6	От 3 до 6 лет	{Python,React,SQL}	Москва	2025-09-22 10:42:52+03	https://hh.ru/vacancy/124370840
123815998	BI-аналитик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Airflow,Python}	Москва	2025-09-23 10:43:16+03	https://hh.ru/vacancy/123815998
121875480	Tech Artist / Технический художник	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Минск	2025-10-03 17:30:56+03	https://hh.ru/vacancy/121875480
125695548	Инженер - программист C++	\N	\N	RUR	between3And6	От 3 до 6 лет	{Git,Linux,Python}	Москва	2025-10-01 11:05:05+03	https://hh.ru/vacancy/125695548
125843917	Старший Go разработчик, ML платформа	\N	\N	RUR	moreThan6	Более 6 лет	{Airflow,Python}	Москва	2025-09-26 14:13:09+03	https://hh.ru/vacancy/125843917
126072334	Преподаватель языка программирования Python	90000	130000	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-05 15:29:06+03	https://hh.ru/vacancy/126072334
124788070	TeamLead (Python) команды разработки	\N	\N	RUR	moreThan6	Более 6 лет	{PostgreSQL,Python}	Москва	2025-09-10 19:07:04+03	https://hh.ru/vacancy/124788070
125370579	Инженер-разработчик автоматизации Linux	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-16 09:30:16+03	https://hh.ru/vacancy/125370579
125154987	Java разработчик/Java Developer (ученик)	70000	80000	RUR	noExperience	Нет опыта	{Git,Java}	Уфа	2025-09-10 13:30:39+03	https://hh.ru/vacancy/125154987
125391191	QA Automation Engineer (Python)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Git,SQL}	Тбилиси	2025-09-16 14:12:13+03	https://hh.ru/vacancy/125391191
125530772	Математик-разработчик, Группа "Внутренние ML Продукты"	\N	\N	RUR	between3And6	От 3 до 6 лет	{Pandas,Python}	Москва	2025-09-19 13:41:40+03	https://hh.ru/vacancy/125530772
123917659	DevOps-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,CI/CD,Python}	Москва	2025-09-08 12:11:52+03	https://hh.ru/vacancy/123917659
124430434	Инженер по автоматизации тестирования (Направление качества разработки ПО)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-24 09:50:49+03	https://hh.ru/vacancy/124430434
124312554	.Net наставник (Воронеж)	350000	470000	RUR	moreThan6	Более 6 лет	{}	Воронеж	2025-10-08 10:21:20+03	https://hh.ru/vacancy/124312554
123440677	Control Plane разработчик (Python)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux,Python}	Москва	2025-10-07 17:47:32+03	https://hh.ru/vacancy/123440677
125431214	ML Engineer (LLM, RAG)	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Тбилиси	2025-09-17 11:52:10+03	https://hh.ru/vacancy/125431214
125117943	Senior GenAI / ML Engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{PyTorch,Python,TensorFlow}	Санкт-Петербург	2025-09-09 17:04:29+03	https://hh.ru/vacancy/125117943
125471795	Key Account Administrator	50000	70000	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-10-06 10:44:41+03	https://hh.ru/vacancy/125471795
125670248	Full-stack Developer (ColdFusion)	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,Java,Node.js,Python}	Алматы	2025-09-23 17:06:42+03	https://hh.ru/vacancy/125670248
125880861	Tech Lead ML платформы	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Python}	Москва	2025-09-29 09:50:01+03	https://hh.ru/vacancy/125880861
112701838	Application Security Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Java,Python}	Москва	2025-09-26 17:56:06+03	https://hh.ru/vacancy/112701838
125246184	Data Engineer в E-com DWH	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Москва	2025-09-29 18:03:08+03	https://hh.ru/vacancy/125246184
121878448	C++/Qt developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux,Python,SQL}	Москва	2025-09-18 11:32:18+03	https://hh.ru/vacancy/121878448
124486149	Продуктовый аналитик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Pandas,Python,SQL}	Москва	2025-09-29 10:33:10+03	https://hh.ru/vacancy/124486149
125492016	Senior Golang Developer	\N	\N	RUR	moreThan6	Более 6 лет	{Git,Linux}	Нижний Новгород	2025-09-18 15:49:08+03	https://hh.ru/vacancy/125492016
121548103	Fullstack-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,PostgreSQL,Python,React,Redis,TypeScript}	Ижевск	2025-09-18 07:55:11+03	https://hh.ru/vacancy/121548103
125662353	Продуктовый аналитик	\N	\N	RUR	moreThan6	Более 6 лет	{Python,SQL}	Москва	2025-09-23 14:48:59+03	https://hh.ru/vacancy/125662353
124778224	Ведущий devops-инженер, мидл	200000	200000	RUR	between1And3	От 1 года до 3 лет	{Grafana,Prometheus}	Казань	2025-10-04 12:56:47+03	https://hh.ru/vacancy/124778224
124526561	Инженер-программист (Embedded, С/C++)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Java,Python}	Екатеринбург	2025-09-25 12:00:38+03	https://hh.ru/vacancy/124526561
125387915	Fullstack-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux,PostgreSQL,Python,SQL}	Москва	2025-09-16 13:19:22+03	https://hh.ru/vacancy/125387915
125286677	Full-Stack Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{CSS,HTML,Python,React,TypeScript}	Сербия	2025-09-12 17:24:49+03	https://hh.ru/vacancy/125286677
125032226	Инженер-программист по системной верификации	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-08 14:26:27+03	https://hh.ru/vacancy/125032226
125894099	Старший системный администратор (Production Infrastructure)	250000	\N	RUR	moreThan6	Более 6 лет	{}	Санкт-Петербург	2025-10-05 12:32:32+03	https://hh.ru/vacancy/125894099
125129111	Руководитель отдела тестирования (QA Lead)	150000	\N	RUR	between1And3	От 1 года до 3 лет	{}	Челябинск	2025-09-10 07:39:02+03	https://hh.ru/vacancy/125129111
126067488	Инженер поддержки платформ виртуализации	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python,Shell}	Самара	2025-10-02 14:15:09+03	https://hh.ru/vacancy/126067488
122616286	Data Analyst	\N	200000	RUR	between3And6	От 3 до 6 лет	{NumPy,Pandas,Python,SQL}	Самара	2025-09-22 11:37:40+03	https://hh.ru/vacancy/122616286
124541848	Руководитель группы разработки Python, Data Platform	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-26 12:26:51+03	https://hh.ru/vacancy/124541848
125818373	Системный администратор Linux	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Prometheus,Python}	Москва	2025-09-26 00:25:46+03	https://hh.ru/vacancy/125818373
120661084	Инженер сопровождения омниканальной платформы	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Хабаровск	2025-09-09 04:25:27+03	https://hh.ru/vacancy/120661084
124113478	Разработчик C++ (Middle+)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Git,Python,SQL}	Воронеж	2025-09-12 12:38:44+03	https://hh.ru/vacancy/124113478
124333472	Ведущий DevOps инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Nginx}	Москва	2025-10-07 15:26:09+03	https://hh.ru/vacancy/124333472
125533612	Руководитель группы разработки (Team Lead) в Яндекс ID	\N	\N	RUR	moreThan6	Более 6 лет	{Go,Python}	Москва	2025-10-08 09:13:46+03	https://hh.ru/vacancy/125533612
125042005	Инженер Computer Vision, направление разработки аппаратных проектов	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Казань	2025-10-08 11:44:14+03	https://hh.ru/vacancy/125042005
125158892	BI Analyst	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Airflow,NumPy,Pandas,Python,SQL}	Санкт-Петербург	2025-10-07 14:20:59+03	https://hh.ru/vacancy/125158892
126048049	Начальник отдела сопровождения автоматизированных информационных систем	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,Python}	Минск	2025-10-02 09:48:31+03	https://hh.ru/vacancy/126048049
125016615	Руководитель отдела разработки backend	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,Kafka,PostgreSQL,Python,SQL}	Москва	2025-09-08 13:00:30+03	https://hh.ru/vacancy/125016615
125620334	Старший сценарист чат-бота	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-22 17:07:47+03	https://hh.ru/vacancy/125620334
124461175	Аналитик БКИ	\N	\N	RUR	between1And3	От 1 года до 3 лет	{PostgreSQL,Python}	Москва	2025-09-16 10:43:52+03	https://hh.ru/vacancy/124461175
125883761	Middle SRE-инженер	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Docker,Python,SQL,Shell}	Москва	2025-09-29 10:24:06+03	https://hh.ru/vacancy/125883761
124492921	Инженер сопровождения	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Москва	2025-09-22 10:45:23+03	https://hh.ru/vacancy/124492921
124584332	QA automation engineer (Python)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,Selenium}	Москва	2025-09-22 09:12:04+03	https://hh.ru/vacancy/124584332
125978584	Fullstack-разработчик (работа в офис)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Django,FastAPI,JavaScript,Python}	Москва	2025-10-02 13:00:46+03	https://hh.ru/vacancy/125978584
125004984	Devops - инженер (Отзывы)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Docker,Grafana,Kafka,Kubernetes,Linux,PostgreSQL,Prometheus,Python,Redis}	Москва	2025-09-10 15:36:57+03	https://hh.ru/vacancy/125004984
125270081	Разработчик (Python Django)	300000	380000	RUR	moreThan6	Более 6 лет	{Angular,Django,GraphQL,Kafka,PostgreSQL,Python,"REST API",RabbitMQ,Redis}	Москва	2025-10-06 12:36:24+03	https://hh.ru/vacancy/125270081
122490585	Middle+ / Senior Data-аналитик	200000	300000	RUR	moreThan6	Более 6 лет	{SQL}	Москва	2025-10-05 16:39:49+03	https://hh.ru/vacancy/122490585
125300585	Программист Qt/C++	200000	\N	RUR	moreThan6	Более 6 лет	{Python}	Санкт-Петербург	2025-10-05 23:18:24+03	https://hh.ru/vacancy/125300585
122692584	Системный Аналитик 1С	76000	95000	RUR	noExperience	Нет опыта	{Kafka,PostgreSQL,Python}	Владивосток	2025-09-29 07:43:54+03	https://hh.ru/vacancy/122692584
125662665	Reverse Engineer / Реверс инженер / Обратный инжиниринг	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-23 14:53:46+03	https://hh.ru/vacancy/125662665
126023345	Game Data Analyst	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-10-01 15:58:05+03	https://hh.ru/vacancy/126023345
125983614	Бэкенд-разработчик в департамент общей безопасности	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,PostgreSQL,Python,Redis}	Москва	2025-09-30 22:07:04+03	https://hh.ru/vacancy/125983614
126064568	DevOps инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Docker,Grafana,Kafka,Kubernetes,Nginx,PostgreSQL,Prometheus,Python,RabbitMQ,Redis,SQL}	Санкт-Петербург	2025-10-05 13:27:22+03	https://hh.ru/vacancy/126064568
124313406	Системный аналитик	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-16 15:14:51+03	https://hh.ru/vacancy/124313406
124630501	Data Engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-10-05 10:44:44+03	https://hh.ru/vacancy/124630501
120428106	Продуктовый аналитик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Airflow,Python}	Москва	2025-09-22 10:35:32+03	https://hh.ru/vacancy/120428106
123840511	Тестировщик ПО (проект корпоративное хранилище данных)	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Минск	2025-10-03 14:45:07+03	https://hh.ru/vacancy/123840511
126177667	Разработчик алгоритмов обработки навигационных сигналов	\N	\N	RUR	between3And6	От 3 до 6 лет	{Git,Python}	Москва	2025-10-06 12:09:18+03	https://hh.ru/vacancy/126177667
125693712	Computer Vision /ML разработчик	250000	\N	RUR	between3And6	От 3 до 6 лет	{NumPy,PyTorch,Python}	Москва	2025-10-06 10:56:58+03	https://hh.ru/vacancy/125693712
125921326	Senior Fullstack developer/Веб-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,JavaScript,Python,React,SQL}	Москва	2025-09-29 17:50:01+03	https://hh.ru/vacancy/125921326
125668464	Инженер-программист (тестирование/ администрирование)	110000	130000	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Тверь	2025-09-23 16:32:40+03	https://hh.ru/vacancy/125668464
126066070	Старший программист систем машинного обучения (NLP)	200000	350000	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-02 13:51:46+03	https://hh.ru/vacancy/126066070
121673539	Ведущий системный аналитик (РЕД АДМ)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-22 11:00:27+03	https://hh.ru/vacancy/121673539
125275440	AI-исследователь/аналитик (LLM)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-09-12 14:04:21+03	https://hh.ru/vacancy/125275440
120891792	Linux инженер (Виртуализация)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Java,Python}	Москва	2025-10-06 07:25:27+03	https://hh.ru/vacancy/120891792
125535989	Инженер по ITSM (разработчик системы Service Desk)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-09-19 15:08:32+03	https://hh.ru/vacancy/125535989
125230110	Senior Python ML-инженер	220000	270000	RUR	between3And6	От 3 до 6 лет	{FastAPI,Python}	Москва	2025-09-11 14:45:00+03	https://hh.ru/vacancy/125230110
125373608	DevOps-инженер	\N	\N	RUR	between1And3	От 1 года до 3 лет	{JavaScript,Python,Shell}	Москва	2025-09-16 10:05:26+03	https://hh.ru/vacancy/125373608
125706266	Аналитик-разработчик BI систем (Qlik Sense → FineBI)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Pandas,Python}	Санкт-Петербург	2025-09-24 13:50:15+03	https://hh.ru/vacancy/125706266
124814670	Cистемный программист на C	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Git,Python}	Москва	2025-10-02 15:03:49+03	https://hh.ru/vacancy/124814670
125442617	Инженер-программист/разработчик Godot	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Челябинск	2025-09-17 14:40:23+03	https://hh.ru/vacancy/125442617
125831190	Разработчик КАСКАД	\N	\N	RUR	between3And6	От 3 до 6 лет	{JavaScript,Python}	Санкт-Петербург	2025-09-26 10:35:13+03	https://hh.ru/vacancy/125831190
125920451	Trainee C++ developer	\N	\N	RUR	noExperience	Нет опыта	{Python}	Брест	2025-09-29 17:43:43+03	https://hh.ru/vacancy/125920451
125095787	Senior backend developer	250000	350000	RUR	moreThan6	Более 6 лет	{Python,SQL}	Тюмень	2025-09-09 12:17:54+03	https://hh.ru/vacancy/125095787
121732766	Разработчик Go, Рантайм и бекенд виджетов	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go}	Москва	2025-09-15 12:59:06+03	https://hh.ru/vacancy/121732766
124296220	Ведущий системный администратор Linux, группа Kubernetes ops	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,Go,Kubernetes,Python}	Москва	2025-09-15 13:05:46+03	https://hh.ru/vacancy/124296220
125895342	Разработчик C	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,JavaScript,Python}	Москва	2025-10-05 12:51:08+03	https://hh.ru/vacancy/125895342
126172284	Администратор баз данных/DBA	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Екатеринбург	2025-10-06 11:13:54+03	https://hh.ru/vacancy/126172284
125254305	Machine Learning Engineer (AI)	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Алматы	2025-09-12 08:03:08+03	https://hh.ru/vacancy/125254305
125974418	Инженер по автоматизации тестирования, Система WMS	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL,pytest}	Москва	2025-09-30 16:07:33+03	https://hh.ru/vacancy/125974418
123149096	Инженер-программист C/C++	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux,Python}	Екатеринбург	2025-09-26 09:16:33+03	https://hh.ru/vacancy/123149096
125911714	C++ Developer in L2	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,Shell}	Москва	2025-09-29 16:43:47+03	https://hh.ru/vacancy/125911714
112686254	Руководитель направления разработки	355000	520000	RUR	between3And6	От 3 до 6 лет	{}	Нижний Новгород	2025-09-13 11:06:22+03	https://hh.ru/vacancy/112686254
124816338	BI-разработчик / Data Engineer (Microsoft Stack)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Москва	2025-09-22 15:17:36+03	https://hh.ru/vacancy/124816338
125424688	Test Engineer (LTE/GSM Radio Subsystem)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,Python}	Санкт-Петербург	2025-09-17 10:34:43+03	https://hh.ru/vacancy/125424688
125163525	Специалист службы поддержки	\N	90000	RUR	noExperience	Нет опыта	{Bash,Linux,Python}	Санкт-Петербург	2025-10-07 15:30:30+03	https://hh.ru/vacancy/125163525
124950918	AI Agent Developer (Python)	\N	\N	RUR	between3And6	От 3 до 6 лет	{PyTorch,Python,TensorFlow}	Москва	2025-10-07 17:18:27+03	https://hh.ru/vacancy/124950918
126138072	Архитектор/DevOps Senior	\N	5000	RUR	between3And6	От 3 до 6 лет	{Prometheus}	Москва	2025-10-07 20:56:33+03	https://hh.ru/vacancy/126138072
121450153	Senior System engineer / Старший системный инженер (TATLIN.OBJECT)	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,Go,Python}	Санкт-Петербург	2025-09-07 08:46:58+03	https://hh.ru/vacancy/121450153
122681043	Системный программист в команду ИБ	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Python}	Москва	2025-09-29 17:45:31+03	https://hh.ru/vacancy/122681043
124227208	Data Scientist в Compliance	\N	\N	RUR	between3And6	От 3 до 6 лет	{Pandas,Python,SQL}	Москва	2025-10-01 09:45:32+03	https://hh.ru/vacancy/124227208
124372298	QA Automation Specialist (офис)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Новосибирск	2025-09-17 06:59:24+03	https://hh.ru/vacancy/124372298
124071176	Аналитик команды Core	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-10 16:25:43+03	https://hh.ru/vacancy/124071176
125282058	TL Full-stack Developer	150000	200000	RUR	between3And6	От 3 до 6 лет	{Python,"REST API",React}	Санкт-Петербург	2025-09-12 15:53:39+03	https://hh.ru/vacancy/125282058
125665939	Инженер технической поддержки	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Java,PostgreSQL,Python}	Москва	2025-09-23 15:48:44+03	https://hh.ru/vacancy/125665939
125618433	NLP Engineer /AI-инженер	\N	\N	RUR	between1And3	От 1 года до 3 лет	{FastAPI,Flask,Python,asyncio}	Москва	2025-09-22 16:21:53+03	https://hh.ru/vacancy/125618433
120337941	Инженер-программист микроконтроллеров (г. Зеленоград)	\N	\N	RUR	noExperience	Нет опыта	{Git,Linux,Python}	Москва	2025-09-25 11:39:31+03	https://hh.ru/vacancy/120337941
124636057	Инженер-программист С++	\N	200000	RUR	between1And3	От 1 года до 3 лет	{Git,Linux,Python}	Санкт-Петербург	2025-10-06 12:15:15+03	https://hh.ru/vacancy/124636057
125432213	Младший инженер технической поддержки	\N	80000	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Москва	2025-10-05 12:07:15+03	https://hh.ru/vacancy/125432213
125369966	Инженер-программист FPGA	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-09-16 09:21:30+03	https://hh.ru/vacancy/125369966
125915945	Senior SEO Specialist	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Сербия	2025-09-29 17:13:25+03	https://hh.ru/vacancy/125915945
125005693	Программист микроконтроллеров (С++)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Ижевск	2025-09-25 07:51:47+03	https://hh.ru/vacancy/125005693
125666626	Инженер-программист С++ (ADAS)	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,Python}	Москва	2025-09-23 16:00:27+03	https://hh.ru/vacancy/125666626
126075768	DevOps Engineer (with certificates AWS)	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,CI/CD,Python}	Тбилиси	2025-10-02 16:32:32+03	https://hh.ru/vacancy/126075768
123258756	Senior ML Engineer (RecSys)	\N	\N	RUR	between3And6	От 3 до 6 лет	{NumPy,Pandas,PyTorch,Python}	Москва	2025-09-08 10:29:06+03	https://hh.ru/vacancy/123258756
114822448	Senior Software Engineer C (Linux kernel) / Разработчик C (Linux kernel) (TATLIN.FLEX)	\N	\N	RUR	moreThan6	Более 6 лет	{Linux}	Санкт-Петербург	2025-09-21 14:22:37+03	https://hh.ru/vacancy/114822448
123889098	DevOps Engineer (KFP)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-01 15:38:08+03	https://hh.ru/vacancy/123889098
125120501	Embedded программист С++ (космические аппараты)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Санкт-Петербург	2025-09-09 17:44:14+03	https://hh.ru/vacancy/125120501
125634046	Программист разработчик сайтов на bitrix или mod-x←	150000	200000	RUR	between3And6	От 3 до 6 лет	{}	Санкт-Петербург	2025-09-23 07:41:35+03	https://hh.ru/vacancy/125634046
120572301	Junior/Middle C++ Developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Минск	2025-09-12 10:18:12+03	https://hh.ru/vacancy/120572301
125347525	Data Scientist	\N	\N	RUR	between3And6	От 3 до 6 лет	{NumPy,Pandas,PyTorch,Python,Scikit-learn,TensorFlow}	Минск	2025-09-15 17:51:54+03	https://hh.ru/vacancy/125347525
125393416	Analyst-Developer (A/B-платформа)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Airflow,Python,SQL}	Москва	2025-09-16 14:47:52+03	https://hh.ru/vacancy/125393416
124144364	Ведущий аналитик-исследователь киберугроз	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-09-16 09:44:02+03	https://hh.ru/vacancy/124144364
125391520	Руководитель группы Java, Обработка пользовательского сигнала в поиске	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-16 14:18:08+03	https://hh.ru/vacancy/125391520
122974606	Инженер (R&D RuPost)	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,Python}	Москва	2025-09-16 10:52:07+03	https://hh.ru/vacancy/122974606
121806812	Аналитик-разработчик команда "Поиск" (middle+/senior)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-10-06 12:47:03+03	https://hh.ru/vacancy/121806812
122954793	QA Automation Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Git,JavaScript,Python}	Минск	2025-10-07 14:25:08+03	https://hh.ru/vacancy/122954793
122973788	Инженер presale (Workspad)	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,Python}	Москва	2025-09-16 10:36:53+03	https://hh.ru/vacancy/122973788
123092389	Руководитель бэкенд-разработки (Python) (ALD Pro)	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-20 10:44:16+03	https://hh.ru/vacancy/123092389
124006686	Senior Backend Engineer	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-12 12:21:57+03	https://hh.ru/vacancy/124006686
124120150	QA Automation Engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Санкт-Петербург	2025-10-06 08:57:49+03	https://hh.ru/vacancy/124120150
126028189	C++ Developer в команду рекламной платформы Маркета	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-01 17:18:25+03	https://hh.ru/vacancy/126028189
124188966	Старший инженер внедрения (Астра Консалтинг)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-09-17 17:12:26+03	https://hh.ru/vacancy/124188966
125500435	Администратор MongoDB	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Linux,Python}	Москва	2025-09-18 17:52:06+03	https://hh.ru/vacancy/125500435
126112538	Архитектор программного обеспечения	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Java,Python}	Самара	2025-10-03 13:35:25+03	https://hh.ru/vacancy/126112538
124407139	Full-stack Software Engineer (R&D)	\N	\N	RUR	moreThan6	Более 6 лет	{}	Москва	2025-09-23 16:16:18+03	https://hh.ru/vacancy/124407139
122526822	Инженер-программист (embedded)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-29 18:55:22+03	https://hh.ru/vacancy/122526822
125480477	Разработчик алгоритмов управления в команду Control	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-18 12:50:19+03	https://hh.ru/vacancy/125480477
125092359	Senior Manager Backend Development	\N	\N	RUR	moreThan6	Более 6 лет	{CI/CD,Kubernetes,Python}	Тбилиси	2025-09-09 11:31:59+03	https://hh.ru/vacancy/125092359
125477202	Fullstack software engineer	200000	240000	RUR	between3And6	От 3 до 6 лет	{JavaScript,Python}	Москва	2025-09-24 18:37:21+03	https://hh.ru/vacancy/125477202
122539872	System Engineer (Helix)	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-29 18:36:33+03	https://hh.ru/vacancy/122539872
122911730	Администратор баз данных / Администратор СУБД	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,PostgreSQL,Python}	Москва	2025-09-15 16:18:55+03	https://hh.ru/vacancy/122911730
125320197	Системный администратор Unix	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Linux,Python}	Новосибирск	2025-09-15 11:03:15+03	https://hh.ru/vacancy/125320197
125093224	Программист C++	150000	250000	RUR	between3And6	От 3 до 6 лет	{}	Уфа	2025-09-09 11:41:30+03	https://hh.ru/vacancy/125093224
125319507	BI-аналитик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-09-15 10:54:28+03	https://hh.ru/vacancy/125319507
125488242	Analytics engineer / Data engineer	\N	\N	RUR	moreThan6	Более 6 лет	{}	Тбилиси	2025-10-06 14:56:25+03	https://hh.ru/vacancy/125488242
125899071	Senior Python | Go Developer	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Санкт-Петербург	2025-10-05 13:43:20+03	https://hh.ru/vacancy/125899071
124987460	Application Security Engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Санкт-Петербург	2025-10-06 12:57:11+03	https://hh.ru/vacancy/124987460
124313712	Руководитель группы программистов-исследователей C/C++	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-20 10:37:36+03	https://hh.ru/vacancy/124313712
125608808	Менеджер по продажам услуг	\N	180000	RUR	between1And3	От 1 года до 3 лет	{Java,Python}	Ижевск	2025-09-22 14:05:15+03	https://hh.ru/vacancy/125608808
120472615	Ведущий инженер больших данных (Data Platform и ML)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL,Spark}	Москва	2025-09-29 18:16:01+03	https://hh.ru/vacancy/120472615
125725725	Руководитель группы по детектированию угроз	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-24 17:04:56+03	https://hh.ru/vacancy/125725725
126072627	Учитель информатики для младших классов	\N	130000	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-05 15:34:56+03	https://hh.ru/vacancy/126072627
122691695	Технический писатель, инженер (1340)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Git,Python}	Москва	2025-09-23 10:03:09+03	https://hh.ru/vacancy/122691695
125609990	System С++ developer в команду General components	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-22 14:24:38+03	https://hh.ru/vacancy/125609990
125190799	Бизнес-аналитик (Embedded / встраиваемые решения, IoT)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-08 09:24:37+03	https://hh.ru/vacancy/125190799
125428022	Алгоритмист - разработчик (Applied ML)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,asyncio}	Москва	2025-10-08 11:15:18+03	https://hh.ru/vacancy/125428022
125097592	Python Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,Python}	Минск	2025-10-06 12:43:43+03	https://hh.ru/vacancy/125097592
121848796	Системный администратор Linux	200000	300000	RUR	between3And6	От 3 до 6 лет	{Bash,Linux,Python}	Москва	2025-10-04 12:04:17+03	https://hh.ru/vacancy/121848796
123654557	Главный эксперт, банковский проект	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-09-17 14:55:23+03	https://hh.ru/vacancy/123654557
125836119	Senior ETL/DWH Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Airflow,Docker,Git,Python}	Москва	2025-10-02 17:49:00+03	https://hh.ru/vacancy/125836119
126022737	Ведущий системный администратор/системный инженер/DevOps (Tech Lead)	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,Python}	Москва	2025-10-01 16:22:23+03	https://hh.ru/vacancy/126022737
125971294	Platform Architect/Архитектор платформы	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-09-30 15:05:55+03	https://hh.ru/vacancy/125971294
125330035	Kubernetes DevOps Engineer (Санкт-Петербург)	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,Go,Linux,Prometheus,Python}	Санкт-Петербург	2025-10-06 13:09:51+03	https://hh.ru/vacancy/125330035
124605770	Руководитель BI команды (BI Lead)	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-10-01 18:42:37+03	https://hh.ru/vacancy/124605770
109243695	Руководитель группы разработки (Team Lead)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Java,Python}	Москва	2025-09-24 15:12:20+03	https://hh.ru/vacancy/109243695
126170940	Metagamplay Programmer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Санкт-Петербург	2025-10-06 11:00:03+03	https://hh.ru/vacancy/126170940
94668005	Инженер программист	\N	\N	RUR	between3And6	От 3 до 6 лет	{NumPy,Python}	Москва	2025-09-12 11:31:56+03	https://hh.ru/vacancy/94668005
124297336	Инженер по нагрузочному тестированию	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python,SQL}	Москва	2025-09-24 16:42:51+03	https://hh.ru/vacancy/124297336
125602452	Дата-инженер для DWH в Финтех	\N	\N	RUR	between3And6	От 3 до 6 лет	{SQL}	Москва	2025-09-22 12:37:47+03	https://hh.ru/vacancy/125602452
125895632	Team Lead \\ Руководитель отдела разработки инструментов тестирования (Testing Tools)	\N	\N	RUR	moreThan6	Более 6 лет	{Linux,Python,React}	Санкт-Петербург	2025-09-29 12:54:16+03	https://hh.ru/vacancy/125895632
121880339	Machine Learning Team Lead	\N	\N	RUR	moreThan6	Более 6 лет	{CI/CD,Docker,Git,Kubernetes,Python}	Тбилиси	2025-09-18 11:56:18+03	https://hh.ru/vacancy/121880339
123964953	Руководитель группы продуктовых сценариев	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,Python}	Москва	2025-09-18 11:52:18+03	https://hh.ru/vacancy/123964953
124283684	Инженер VMware	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Grafana,Prometheus,Python}	Москва	2025-09-18 13:18:25+03	https://hh.ru/vacancy/124283684
125152341	Руководитель управления прикладной разработки	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,JavaScript,Python}	Москва	2025-10-04 13:07:07+03	https://hh.ru/vacancy/125152341
125854607	Инженер внедрения ПО	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,Python}	Москва	2025-10-05 18:15:34+03	https://hh.ru/vacancy/125854607
124380978	Инженер DLP-сервисов	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Grafana,Python}	Москва	2025-09-17 15:14:13+03	https://hh.ru/vacancy/124380978
125069267	Principal C++ Software Engineer	\N	\N	RUR	moreThan6	Более 6 лет	{}	Москва	2025-10-05 19:12:53+03	https://hh.ru/vacancy/125069267
125648528	ML Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{NumPy,Pandas,Python,Scikit-learn}	Тбилиси	2025-09-23 11:24:50+03	https://hh.ru/vacancy/125648528
125523699	Программист-разработчик С++/Qt	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-19 11:50:47+03	https://hh.ru/vacancy/125523699
117833093	ML-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Новосибирск	2025-10-06 06:04:34+03	https://hh.ru/vacancy/117833093
125978783	Аналитик-разработчик (работа в офисе)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,"REST API"}	Москва	2025-10-02 13:00:53+03	https://hh.ru/vacancy/125978783
125386990	Pre-Sale Architect (в команду заказной разработки BI)	\N	\N	RUR	between3And6	От 3 до 6 лет	{JavaScript,Python}	Москва	2025-10-06 13:39:49+03	https://hh.ru/vacancy/125386990
125541614	Разработчик BI	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-19 16:50:59+03	https://hh.ru/vacancy/125541614
126187591	Программист С	110000	\N	RUR	noExperience	Нет опыта	{Python}	Обнинск	2025-10-06 14:16:01+03	https://hh.ru/vacancy/126187591
122257180	Team Lead в Авито Работу	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Java,Python}	Москва	2025-10-01 11:52:53+03	https://hh.ru/vacancy/122257180
125902208	Middle/Senior DevOps Engineer	\N	\N	RUR	moreThan6	Более 6 лет	{}	Минск	2025-09-29 14:24:47+03	https://hh.ru/vacancy/125902208
121148330	С/С++ Developer (Wireless)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Новосибирск	2025-10-07 15:27:37+03	https://hh.ru/vacancy/121148330
124395106	DevOps инженер (Middle/Senior)	300000	350000	RUR	between3And6	От 3 до 6 лет	{Docker,Grafana,Kubernetes,Prometheus,Python}	Москва	2025-09-22 18:46:04+03	https://hh.ru/vacancy/124395106
124491651	Senior Backend Python Developer (+Rust)	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,MySQL,Python,Redis,Rust}	Красноярск	2025-09-19 06:20:20+03	https://hh.ru/vacancy/124491651
124972158	Python Backend Engineer (Middle+)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Azure,FastAPI,Kafka,Kubernetes,Python,SQL}	Алматы	2025-09-06 16:15:04+03	https://hh.ru/vacancy/124972158
120899951	Разработчик C++ (middle+\\senior)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Python,SQL}	Москва	2025-10-04 17:34:47+03	https://hh.ru/vacancy/120899951
125410661	Технический лидер	\N	\N	RUR	moreThan6	Более 6 лет	{GraphQL,Kafka,PostgreSQL,Python,React,Redis}	Москва	2025-09-25 09:57:07+03	https://hh.ru/vacancy/125410661
125416144	Python-разработчик (ML Engineer)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-09-17 08:24:06+03	https://hh.ru/vacancy/125416144
124376014	Руководитель ИТ-проектов	\N	\N	RUR	moreThan6	Более 6 лет	{}	Москва	2025-09-15 11:34:47+03	https://hh.ru/vacancy/124376014
125267067	Java разработчик с нуля (стажер)	70000	80000	RUR	noExperience	Нет опыта	{Java}	Москва	2025-10-06 11:47:34+03	https://hh.ru/vacancy/125267067
125701475	SRE/Linux администратор	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,Python,Shell}	Москва	2025-09-24 12:46:10+03	https://hh.ru/vacancy/125701475
125789921	ML-инженер / Machine Learning Engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Node.js,NumPy,Pandas,PyTorch,Python,Scikit-learn,TensorFlow}	Москва	2025-10-04 15:56:58+03	https://hh.ru/vacancy/125789921
125897391	Разработчик баз данных (PostgreSQL)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-10-05 13:17:26+03	https://hh.ru/vacancy/125897391
120242259	Инженер по тестированию (Application Security)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Санкт-Петербург	2025-09-16 09:51:18+03	https://hh.ru/vacancy/120242259
124886437	Middle AI Backend разработчик (PHP/Laravel + LLM)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Git,Python}	Санкт-Петербург	2025-09-22 12:54:53+03	https://hh.ru/vacancy/124886437
125416898	Data Scientist (Middle)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Владивосток	2025-09-17 08:43:18+03	https://hh.ru/vacancy/125416898
125155531	Стажёр в группу безопасности сервисов	\N	\N	RUR	noExperience	Нет опыта	{Go,Linux,Python}	Екатеринбург	2025-09-10 13:38:35+03	https://hh.ru/vacancy/125155531
125749611	Разработчик NLP/LLM	\N	450000	RUR	between3And6	От 3 до 6 лет	{NumPy,Pandas,Python}	Москва	2025-09-25 10:03:08+03	https://hh.ru/vacancy/125749611
124784009	Инженер сопровождения инфраструктуры L3 DataSoft (Младший Devops)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Docker,Kubernetes,Linux,Python}	Москва	2025-09-29 13:55:43+03	https://hh.ru/vacancy/124784009
125829682	Инженер по валидации	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python,Selenium,Shell}	Москва	2025-10-06 11:15:00+03	https://hh.ru/vacancy/125829682
126084202	Технический руководитель команды разработки космических аппаратов	\N	\N	RUR	moreThan6	Более 6 лет	{Python,pytest}	Москва	2025-10-02 20:25:12+03	https://hh.ru/vacancy/126084202
121514334	Python Programmer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Ташкент	2025-10-05 12:09:10+03	https://hh.ru/vacancy/121514334
125391478	Разработчик ODOO	\N	\N	RUR	between3And6	От 3 до 6 лет	{PostgreSQL,Python}	Москва	2025-09-16 14:17:08+03	https://hh.ru/vacancy/125391478
124236907	IT Project Manager / Руководитель проектами (Товарная аналитика)	200000	275000	RUR	between3And6	От 3 до 6 лет	{Java,Python}	Москва	2025-09-15 12:21:35+03	https://hh.ru/vacancy/124236907
126069863	Специалист по обучению (IT)	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Пермь	2025-10-02 14:49:40+03	https://hh.ru/vacancy/126069863
124384733	AI Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{JavaScript,PostgreSQL,Python,"REST API",SQL}	Москва	2025-09-21 18:05:28+03	https://hh.ru/vacancy/124384733
125198972	Middle QA Automation Engineer (Python)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,pytest}	Москва	2025-10-08 10:11:27+03	https://hh.ru/vacancy/125198972
125538267	C#/.NET системный программист	150000	\N	RUR	between3And6	От 3 до 6 лет	{Linux,Python}	Санкт-Петербург	2025-10-07 15:50:04+03	https://hh.ru/vacancy/125538267
122582311	Старший аналитик-разработчик, Аналитика поиска	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-10-07 15:51:31+03	https://hh.ru/vacancy/122582311
126127883	Разработчик бортовых алгоритмов - стажёр (Группа разработки звёздного датчика)	\N	\N	RUR	noExperience	Нет опыта	{Python}	Москва	2025-10-03 19:10:48+03	https://hh.ru/vacancy/126127883
125234644	Системный администратор/DevOps	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,CI/CD,Python}	Москва	2025-09-11 15:43:41+03	https://hh.ru/vacancy/125234644
123913098	Ведущий QA инженер (Lead)	130000	170000	RUR	between1And3	От 1 года до 3 лет	{CI/CD,Docker,Grafana,Python}	Москва	2025-09-10 16:45:14+03	https://hh.ru/vacancy/123913098
126164285	C++ Software Architect	\N	\N	RUR	between3And6	От 3 до 6 лет	{Azure,Python}	Тбилиси	2025-10-06 09:47:04+03	https://hh.ru/vacancy/126164285
125653329	Программист микроконтроллеров (C++)	\N	300000	RUR	between1And3	От 1 года до 3 лет	{Go,Python}	Санкт-Петербург	2025-09-23 12:30:47+03	https://hh.ru/vacancy/125653329
125321866	Аналитик в области радиоэлектроники	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Томск	2025-09-15 11:25:15+03	https://hh.ru/vacancy/125321866
126168718	Инженер-разработчик по информационной безопасности	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,FastAPI,Flask,Python,asyncio}	Москва	2025-10-06 10:34:15+03	https://hh.ru/vacancy/126168718
124216744	Системный аналитик. Nova	\N	\N	RUR	moreThan6	Более 6 лет	{}	Москва	2025-09-08 20:25:51+03	https://hh.ru/vacancy/124216744
124558135	Старший инженер-разработчик Java/C# с переходом на Go (Telecom)	\N	\N	RUR	moreThan6	Более 6 лет	{Python,Shell}	Санкт-Петербург	2025-09-26 16:47:16+03	https://hh.ru/vacancy/124558135
126103868	Python разработчик / Django (Wagtail) / Middle в офис	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Docker,Git,Python}	Краснодар	2025-10-03 11:11:55+03	https://hh.ru/vacancy/126103868
125629450	Руководитель команды BI-аналитики	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-23 06:47:48+03	https://hh.ru/vacancy/125629450
125916270	Backend developer (TypeScript)	\N	\N	RUR	moreThan6	Более 6 лет	{Python,Rust}	Москва	2025-09-29 17:15:06+03	https://hh.ru/vacancy/125916270
126081371	Программист 1С (Middle+)	180000	\N	RUR	between3And6	От 3 до 6 лет	{Go,Kafka,Python,"REST API",RabbitMQ}	Курск	2025-10-02 17:51:58+03	https://hh.ru/vacancy/126081371
125706462	Python-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-24 13:51:57+03	https://hh.ru/vacancy/125706462
125185145	Junior Agentic AI Engineer (AI Agents Developer)	\N	\N	RUR	noExperience	Нет опыта	{}	Ташкент	2025-10-06 09:28:25+03	https://hh.ru/vacancy/125185145
125644179	Старший разработчик Go, Виджеты рекомендаций	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Java,Python}	Москва	2025-09-23 10:24:01+03	https://hh.ru/vacancy/125644179
124485914	Старший BI Разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-09-22 11:15:07+03	https://hh.ru/vacancy/124485914
125372559	DevOps Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,GCP,MongoDB,MySQL,PostgreSQL,Python}	Москва	2025-09-16 09:55:20+03	https://hh.ru/vacancy/125372559
122187315	AI-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-30 14:37:29+03	https://hh.ru/vacancy/122187315
125092163	Senior backend developer	250000	350000	RUR	moreThan6	Более 6 лет	{Python,SQL}	Калининград	2025-09-09 11:29:34+03	https://hh.ru/vacancy/125092163
125379398	Junior C++ разработчик	\N	150000	RUR	between1And3	От 1 года до 3 лет	{Git,Linux,Python}	Санкт-Петербург	2025-09-16 11:20:31+03	https://hh.ru/vacancy/125379398
122964364	DevOps Engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Docker,PostgreSQL,Python,SQL}	Новосибирск	2025-09-16 07:18:24+03	https://hh.ru/vacancy/122964364
125634675	DevOps-инженер	100000	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,CI/CD,Kubernetes,Linux,Python}	Пермь	2025-09-23 08:02:48+03	https://hh.ru/vacancy/125634675
126185661	Java разработчик/Java Developer (ученик)	70000	80000	RUR	noExperience	Нет опыта	{Git,Java}	Воронеж	2025-10-06 13:51:23+03	https://hh.ru/vacancy/126185661
124998856	Software Engineer (Junior / Middle-Level)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Node.js,Python}	Ташкент	2025-09-08 10:31:50+03	https://hh.ru/vacancy/124998856
125743681	Инженер-программист С++/Qt (проект SymServer)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Git,Linux,Python}	Екатеринбург	2025-09-25 08:30:22+03	https://hh.ru/vacancy/125743681
125889334	Middle OLAP-разработчик в команду Брака (Склад)	\N	\N	RUR	between3And6	От 3 до 6 лет	{NumPy,Pandas,Python}	Москва	2025-09-29 11:29:13+03	https://hh.ru/vacancy/125889334
125602011	Специалист поддержки Linux-приложений (L2, мониторинг, CI/CD)	150000	210000	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Самара	2025-09-22 12:31:12+03	https://hh.ru/vacancy/125602011
125883495	PHP-разработчик (Академгородок)	130000	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Новосибирск	2025-09-29 10:21:29+03	https://hh.ru/vacancy/125883495
125725200	Программист-разработчик Oracle	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Шымкент	2025-09-24 16:53:57+03	https://hh.ru/vacancy/125725200
124861506	Machine Learning / Computer Vision Engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Алматы	2025-10-07 16:46:17+03	https://hh.ru/vacancy/124861506
124186284	Старший системный аналитик (senior)	\N	\N	RUR	moreThan6	Более 6 лет	{}	Москва	2025-09-17 09:40:02+03	https://hh.ru/vacancy/124186284
126111440	Продуктовый аналитик (Методология проведения А/Б экспериментов)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-03 13:14:07+03	https://hh.ru/vacancy/126111440
124348222	Проектный менеджер по внедрению AI в платформу Яндекс Go для бизнеса	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-11 11:12:31+03	https://hh.ru/vacancy/124348222
125087889	Разработчик C++	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Linux,Python}	Санкт-Петербург	2025-09-09 10:36:18+03	https://hh.ru/vacancy/125087889
125136980	Execution trader (TradeOps)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-10 09:59:56+03	https://hh.ru/vacancy/125136980
125862045	Al Developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Тбилиси	2025-09-28 00:30:06+03	https://hh.ru/vacancy/125862045
122369914	Дата-инженер (Владивосток)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Владивосток	2025-10-06 14:15:54+03	https://hh.ru/vacancy/122369914
124267643	Инженер-программист C++	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-16 11:53:28+03	https://hh.ru/vacancy/124267643
125278775	Фуллстэк разработчик (Next.js, Node.js, ИИ)	130000	\N	RUR	between1And3	От 1 года до 3 лет	{Git,Node.js,Python}	Москва	2025-10-06 15:05:48+03	https://hh.ru/vacancy/125278775
124642348	DevOps-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,CI/CD,Grafana,Prometheus,Python}	Москва	2025-09-24 17:54:04+03	https://hh.ru/vacancy/124642348
125523350	Node.js backend разработчик Junior+	100000	\N	RUR	noExperience	Нет опыта	{Python}	Казань	2025-09-19 11:45:11+03	https://hh.ru/vacancy/125523350
125668298	Ведущий инженер-программист	130000	150000	RUR	between1And3	От 1 года до 3 лет	{PostgreSQL,Python}	Тверь	2025-09-23 16:29:57+03	https://hh.ru/vacancy/125668298
124829493	Руководитель направления в команду Управление сервисами	\N	\N	RUR	between3And6	От 3 до 6 лет	{Pandas,Python,SQL}	Москва	2025-10-06 12:13:29+03	https://hh.ru/vacancy/124829493
124026165	Разработчик Python в LLM Platform	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,FastAPI,Kubernetes,PostgreSQL,Python}	Санкт-Петербург	2025-10-05 11:27:35+03	https://hh.ru/vacancy/124026165
125027501	Optimacros разработчик / аналитик (EPM)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,Python}	Новосибирск	2025-09-08 14:00:54+03	https://hh.ru/vacancy/125027501
124307148	Инженер по верификации	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Нижний Новгород	2025-09-20 09:09:17+03	https://hh.ru/vacancy/124307148
125620952	DevOps-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,CI/CD,Linux,Python}	Санкт-Петербург	2025-09-22 17:10:28+03	https://hh.ru/vacancy/125620952
117961881	FPGA-разработчик в команду разработки лидаров	\N	\N	RUR	moreThan6	Более 6 лет	{}	Москва	2025-10-02 18:50:37+03	https://hh.ru/vacancy/117961881
124979994	Наставник в онлайн-школу программирования Хекслет	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-09-07 17:00:38+03	https://hh.ru/vacancy/124979994
126073861	DevSecOps engineer (Middle/Senior)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Linux,Python}	Москва	2025-10-02 15:56:09+03	https://hh.ru/vacancy/126073861
117939194	Media/SIP Software Engineer [МТС Линк]	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,Python}	Санкт-Петербург	2025-09-12 12:00:34+03	https://hh.ru/vacancy/117939194
125434197	GitOps Engineer (Senior)	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,Kubernetes}	Минск	2025-09-17 12:33:51+03	https://hh.ru/vacancy/125434197
125417625	Руководитель группы разработки (Team Lead)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Java,JavaScript,Python}	Ижевск	2025-09-17 08:59:05+03	https://hh.ru/vacancy/125417625
125599220	Мидл/Старший дата инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-09-22 11:54:56+03	https://hh.ru/vacancy/125599220
125827540	Tech Lead PHP	200000	\N	RUR	between1And3	От 1 года до 3 лет	{SQL}	Новосибирск	2025-09-29 07:14:35+03	https://hh.ru/vacancy/125827540
124481511	Программист микроконтроллеров С++ (Middle)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Санкт-Петербург	2025-10-06 10:21:27+03	https://hh.ru/vacancy/124481511
122783315	Middle+/Senior Golang разработчик в Pay Offline	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-26 14:53:46+03	https://hh.ru/vacancy/122783315
125392759	Technical Support Engineer (L2)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Тбилиси	2025-09-16 14:37:24+03	https://hh.ru/vacancy/125392759
125401439	С++ Developer (Highload in-memory DB)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Python}	Москва	2025-09-16 16:30:56+03	https://hh.ru/vacancy/125401439
123615597	Руководитель команды разработки (Python)	\N	\N	RUR	moreThan6	Более 6 лет	{Django,Python}	Москва	2025-09-29 13:34:43+03	https://hh.ru/vacancy/123615597
122729659	Прикладной администратор сопровождения систем Корпоративного бизнеса (СМБ)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Самара	2025-09-09 04:24:13+03	https://hh.ru/vacancy/122729659
115403491	Rust Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Python,React,Rust,TypeScript}	Израиль	2025-09-10 12:46:22+03	https://hh.ru/vacancy/115403491
125092043	Программист C++	150000	250000	RUR	between3And6	От 3 до 6 лет	{}	Ярославль	2025-09-09 11:28:12+03	https://hh.ru/vacancy/125092043
120869026	Senior QA Engineer (Python) / Инженер по автоматизированному тестированию (Common Yadro Platform)	\N	\N	RUR	moreThan6	Более 6 лет	{Python,pytest}	Санкт-Петербург	2025-09-19 14:08:24+03	https://hh.ru/vacancy/120869026
124158316	Инженер алгоритмов и моделирования/Algorithms and Models Engineer (AME)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-09-16 14:01:47+03	https://hh.ru/vacancy/124158316
124781285	Ведущий инженер по автоматизации тестирования Python, ERP и учётные системы	\N	\N	RUR	between3And6	От 3 до 6 лет	{Kubernetes,Python,SQL,pytest}	Москва	2025-10-02 15:47:46+03	https://hh.ru/vacancy/124781285
123070282	Ведущий сетевой инженер / Network engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux,Python}	Санкт-Петербург	2025-10-06 10:45:43+03	https://hh.ru/vacancy/123070282
125737465	QA Lead (группа автоматизации)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Новосибирск	2025-09-30 06:09:51+03	https://hh.ru/vacancy/125737465
125377551	Технический писатель	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Git,Kubernetes,Python}	Москва	2025-09-16 10:58:24+03	https://hh.ru/vacancy/125377551
120803566	DevOps-инженер Middle	\N	220000	RUR	between3And6	От 3 до 6 лет	{Go,Python}	Москва	2025-10-01 13:32:15+03	https://hh.ru/vacancy/120803566
123557307	Инженер по сопровождению ИБ систем	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,PostgreSQL,Python}	Москва	2025-09-29 10:43:25+03	https://hh.ru/vacancy/123557307
125895424	Embedded Linux программист	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Git,JavaScript,Python}	Санкт-Петербург	2025-09-29 12:52:07+03	https://hh.ru/vacancy/125895424
126154178	Преподаватель программирования и 3D моделирования	45000	75000	RUR	noExperience	Нет опыта	{CSS,HTML,Python}	Хабаровск	2025-10-06 07:13:03+03	https://hh.ru/vacancy/126154178
123318629	Аналитик-разработчик в команду Поиска	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-09-08 13:26:54+03	https://hh.ru/vacancy/123318629
124462081	Data Analyst "Growth"	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-23 11:46:27+03	https://hh.ru/vacancy/124462081
124887970	Senior full-stack developer в команду «Руки»	\N	\N	RUR	moreThan6	Более 6 лет	{Python,React}	Москва	2025-10-06 11:18:41+03	https://hh.ru/vacancy/124887970
125541958	Методолог моделирования ПВР	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-09-19 16:59:38+03	https://hh.ru/vacancy/125541958
72842839	Middle С++ Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Томск	2025-10-06 08:37:35+03	https://hh.ru/vacancy/72842839
124324868	Ведущий разработчик C/Linux	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Docker,Linux,Python}	Екатеринбург	2025-09-25 11:06:43+03	https://hh.ru/vacancy/124324868
125316474	Сетевой инженер	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-15 10:20:16+03	https://hh.ru/vacancy/125316474
125428522	ML-инженер в команду Поиска	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-17 12:39:04+03	https://hh.ru/vacancy/125428522
122191933	Ведущий инженер унифицированных коммуникаций	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-09-22 10:05:08+03	https://hh.ru/vacancy/122191933
123933950	DevSecOps Engineer в MAX	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,CI/CD,Go,Python}	Москва	2025-09-29 17:45:31+03	https://hh.ru/vacancy/123933950
125318532	Engineering Manager Эксперт разработки [Governance, МТС Веб Сервисы]	\N	\N	RUR	moreThan6	Более 6 лет	{Go,Java,Python}	Москва	2025-09-15 11:11:40+03	https://hh.ru/vacancy/125318532
125480036	DevOps-инженер в VK Рекламу	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Grafana,Prometheus}	Москва	2025-09-18 15:19:18+03	https://hh.ru/vacancy/125480036
125866204	Security Engineer (Middle)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-09-28 16:00:37+03	https://hh.ru/vacancy/125866204
124939772	Инженер по внедрению ПО (робототехнические комплексы)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Санкт-Петербург	2025-09-26 18:03:37+03	https://hh.ru/vacancy/124939772
70957502	C++ developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Linux,Python}	Санкт-Петербург	2025-10-06 12:25:56+03	https://hh.ru/vacancy/70957502
122956695	Data Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Airflow,Python,SQL}	Тбилиси	2025-09-22 14:39:05+03	https://hh.ru/vacancy/122956695
123566754	Руководитель группы разработки (Team Lead)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Java,Python}	Воронеж	2025-10-01 10:04:33+03	https://hh.ru/vacancy/123566754
125092301	Старший разработчик Go, PaaS, Языковая платформа	\N	\N	RUR	moreThan6	Более 6 лет	{Go,Java,Python}	Москва	2025-09-09 11:31:16+03	https://hh.ru/vacancy/125092301
124224721	Эксперт С++ в команду технологии автономного вождения	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-17 12:42:42+03	https://hh.ru/vacancy/124224721
126059577	Middle QA Automation Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,"REST API"}	Ташкент	2025-10-02 12:11:10+03	https://hh.ru/vacancy/126059577
123920228	Разработчик сервисов обработки данных в Yandex Cloud	\N	\N	RUR	moreThan6	Более 6 лет	{Airflow,Kafka,Spark}	Москва	2025-09-08 11:23:08+03	https://hh.ru/vacancy/123920228
124073113	Lead C# Developer	\N	\N	RUR	moreThan6	Более 6 лет	{}	Минск	2025-09-13 14:44:44+03	https://hh.ru/vacancy/124073113
121247742	Ведущий инженер-программист С/С++	250000	\N	RUR	between3And6	От 3 до 6 лет	{Git,Linux,Python,SQL}	Санкт-Петербург	2025-09-16 10:46:49+03	https://hh.ru/vacancy/121247742
125724100	Ведущий разработчик встраиваемых интерфейсов (Linux/OpenBMC)	\N	\N	RUR	moreThan6	Более 6 лет	{GraphQL,Python}	Санкт-Петербург	2025-09-24 16:30:48+03	https://hh.ru/vacancy/125724100
91986196	Системный программист ядра (Linux-like) в г. Минск	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Linux,Python}	Минск	2025-10-06 14:50:47+03	https://hh.ru/vacancy/91986196
124158395	Инженер алгоритмов и моделирования/Algorithms and Models L2+ layer Engineer (4G/LTE, 5G)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-09-16 14:02:05+03	https://hh.ru/vacancy/124158395
124909084	Инженер (RuPost)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Nginx,Python}	Москва	2025-10-05 09:46:15+03	https://hh.ru/vacancy/124909084
124189710	DevSecOps специалист	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,CI/CD,Docker,Linux,Python}	Москва	2025-09-15 09:24:19+03	https://hh.ru/vacancy/124189710
46152540	Senior Developer С/С++	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,Python}	Москва	2025-09-24 10:35:58+03	https://hh.ru/vacancy/46152540
115707336	Системный программист по верификации SoC	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux,Python,Shell}	Москва	2025-09-13 15:21:47+03	https://hh.ru/vacancy/115707336
119928939	Senior AQA Engineer (AI)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,pytest}	Нижний Новгород	2025-09-13 16:37:15+03	https://hh.ru/vacancy/119928939
125544673	QA Automation Engineer (Python)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Алматы	2025-09-19 18:37:32+03	https://hh.ru/vacancy/125544673
126044221	Системный разработчик во внутреннее облако Яндекса	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Python}	Москва	2025-10-02 08:59:22+03	https://hh.ru/vacancy/126044221
122543762	Инженер встраиваемых систем (Embedded Linux)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Linux,Python}	Москва	2025-10-06 10:38:12+03	https://hh.ru/vacancy/122543762
124996949	Ведущий системный аналитик	\N	\N	RUR	moreThan6	Более 6 лет	{Docker,Kubernetes,Python}	Москва	2025-10-05 10:09:47+03	https://hh.ru/vacancy/124996949
125471577	Fullstack аналитик данных	\N	\N	RUR	between3And6	От 3 до 6 лет	{Airflow,Python,SQL,Spark}	Москва	2025-10-06 10:42:06+03	https://hh.ru/vacancy/125471577
88127758	Системный программист ядра (Linux-like)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Linux,Python}	Новосибирск	2025-10-03 10:15:50+03	https://hh.ru/vacancy/88127758
121658544	DSP Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Нижний Новгород	2025-09-14 10:31:27+03	https://hh.ru/vacancy/121658544
125850812	DevOps-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{PostgreSQL,Python}	Калининград	2025-09-26 16:26:23+03	https://hh.ru/vacancy/125850812
124744310	Senior Back-end developer из Новосибирска	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Flask,Python}	Новосибирск	2025-10-08 09:02:03+03	https://hh.ru/vacancy/124744310
125308530	Senior Backend Engineer (Python, AI, EdTech) / Старший Разработчик Бэкенда (Python, ИИ, Образование)	491609	\N	RUR	moreThan6	Более 6 лет	{Python}	Минск	2025-10-06 08:43:42+03	https://hh.ru/vacancy/125308530
125224661	AppSec Engineer в MAX	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Java,Python}	Москва	2025-10-08 10:06:27+03	https://hh.ru/vacancy/125224661
124453721	Технический лидер в Big Data (TechLead)/Руководитель группы разработки	\N	\N	RUR	between3And6	От 3 до 6 лет	{Airflow,Java,Kubernetes,Python,"REST API"}	Москва	2025-09-24 17:03:30+03	https://hh.ru/vacancy/124453721
125096495	Консультант-стажер 1С (Техподдержка)	50000	\N	RUR	noExperience	Нет опыта	{}	Самара	2025-09-25 12:33:21+03	https://hh.ru/vacancy/125096495
125383524	Руководитель группы разработки (Team Lead)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Java,Python}	Екатеринбург	2025-09-16 12:14:15+03	https://hh.ru/vacancy/125383524
119961398	ML Engineer ("Search")	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Санкт-Петербург	2025-10-06 12:47:12+03	https://hh.ru/vacancy/119961398
125089319	Senior DataOps	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Алматы	2025-09-09 10:55:16+03	https://hh.ru/vacancy/125089319
125138098	Machine Learning Architect	\N	\N	RUR	between3And6	От 3 до 6 лет	{Kafka,PostgreSQL,Python,React,Redis}	Москва	2025-10-06 10:46:24+03	https://hh.ru/vacancy/125138098
125232779	Senior Fullstack разработчик в Яндекс Пэй (Python+React)	\N	\N	RUR	moreThan6	Более 6 лет	{JavaScript,MySQL,PostgreSQL,Python,TypeScript}	Москва	2025-09-11 15:12:55+03	https://hh.ru/vacancy/125232779
125023864	AI Product Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{React}	Ташкент	2025-09-08 13:43:03+03	https://hh.ru/vacancy/125023864
122622253	Программист C++ (Gamedev)	\N	\N	RUR	between3And6	От 3 до 6 лет	{JavaScript,Python}	Ташкент	2025-09-08 12:13:13+03	https://hh.ru/vacancy/122622253
125876863	Senior Data Engineer	\N	\N	RUR	moreThan6	Более 6 лет	{}	Минск	2025-09-29 09:02:57+03	https://hh.ru/vacancy/125876863
124184966	Программист Linux	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux}	Москва	2025-10-05 16:18:56+03	https://hh.ru/vacancy/124184966
125843901	Java разработчик с нуля (стажер)	70000	80000	RUR	noExperience	Нет опыта	{Java}	Краснодар	2025-09-26 14:12:54+03	https://hh.ru/vacancy/125843901
125083321	BI Data Engineer (DWH)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Минск	2025-09-09 09:44:30+03	https://hh.ru/vacancy/125083321
123649431	Научный сотрудник (Цифровая обработка сигналов, DSP)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-30 16:45:49+03	https://hh.ru/vacancy/123649431
125590225	Разработчик в буткемп Core Infra	250000	\N	RUR	between3And6	От 3 до 6 лет	{SQL}	Москва	2025-09-22 10:16:45+03	https://hh.ru/vacancy/125590225
125689447	Lead ML Developer (telco)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-24 10:00:32+03	https://hh.ru/vacancy/125689447
126113732	Системный администратор Linux / System Administrator Linux	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Казань	2025-10-03 13:59:16+03	https://hh.ru/vacancy/126113732
125826382	Старший инженер по нагрузочному автоматизированному тестированию	\N	\N	RUR	moreThan6	Более 6 лет	{Docker,Python}	Москва	2025-09-26 09:18:10+03	https://hh.ru/vacancy/125826382
124320322	Sales Manager (custom software development, USA/Europe)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Минск	2025-09-19 10:24:32+03	https://hh.ru/vacancy/124320322
125732927	C++ Gameplay Programmer (with relocate)	\N	\N	RUR	between3And6	От 3 до 6 лет	{JavaScript,Python}	Черногория	2025-09-25 00:50:59+03	https://hh.ru/vacancy/125732927
124297335	Инженер по нагрузочному тестированию	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python,SQL}	Санкт-Петербург	2025-09-24 16:42:52+03	https://hh.ru/vacancy/124297335
123306290	Преподаватель программирования (онлайн)	90000	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-05 13:01:43+03	https://hh.ru/vacancy/123306290
125532622	C++ Software Engineer (ADAS)	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-19 14:14:23+03	https://hh.ru/vacancy/125532622
125534480	Инженер-эксперт L3 – BIOS/BMC	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-09-19 14:47:23+03	https://hh.ru/vacancy/125534480
125313531	Разработчик в группу планирования движения роботов-доставщиков	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-10-02 14:38:01+03	https://hh.ru/vacancy/125313531
115793463	Senior java разработчик	200000	300000	RUR	moreThan6	Более 6 лет	{Java,Python}	Санкт-Петербург	2025-10-05 17:23:59+03	https://hh.ru/vacancy/115793463
124555343	Инженер внедрения (Астра Консалтинг)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Москва	2025-10-06 13:52:53+03	https://hh.ru/vacancy/124555343
124760824	Инженер по нагрузочному тестированию (Gatling)	\N	180000	RUR	between1And3	От 1 года до 3 лет	{Git,Java,Python}	Москва	2025-10-02 09:14:56+03	https://hh.ru/vacancy/124760824
125983658	Аналитик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-30 22:14:40+03	https://hh.ru/vacancy/125983658
124998615	SRE инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,CI/CD,Python}	Москва	2025-10-07 17:06:40+03	https://hh.ru/vacancy/124998615
125883834	Преподаватель информатики младших классов	60000	90000	RUR	noExperience	Нет опыта	{Python}	Санкт-Петербург	2025-10-08 10:24:48+03	https://hh.ru/vacancy/125883834
123122909	Системный программист С/С++ (разработка ОС Аврора)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Linux,Python}	Иннополис	2025-09-15 13:23:40+03	https://hh.ru/vacancy/123122909
124239472	Ведущий разработчик (Rust)	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-11 18:04:39+03	https://hh.ru/vacancy/124239472
124243827	Системный Архитектор AI/ML	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,Python,SQL}	Москва	2025-09-17 15:41:45+03	https://hh.ru/vacancy/124243827
125637875	Инженер по методикам тестирования / Инженер-программист	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-09-23 09:09:59+03	https://hh.ru/vacancy/125637875
123211983	Middle/Senior DBA в команду инфраструктуры (Kubernetes)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Kafka,PostgreSQL,Python}	Екатеринбург	2025-09-15 09:37:22+03	https://hh.ru/vacancy/123211983
125030253	System Administrator	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Мурманск	2025-09-17 11:24:16+03	https://hh.ru/vacancy/125030253
121453585	Старший инженер по качеству данных (DQ)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-09-29 18:32:18+03	https://hh.ru/vacancy/121453585
125645361	Ведущий инженер по разработке автоматизации, экосистема RISC-V	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,Python}	Москва	2025-09-23 10:41:05+03	https://hh.ru/vacancy/125645361
122940032	1С разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{JavaScript,Python}	Москва	2025-10-06 12:36:44+03	https://hh.ru/vacancy/122940032
124486230	Сетевой инженер / Network Engineer	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,Python}	Санкт-Петербург	2025-09-22 14:43:35+03	https://hh.ru/vacancy/124486230
125849158	Преподаватель программирования (Python)	\N	130000	RUR	between1And3	От 1 года до 3 лет	{}	Королев (Московская область)	2025-10-05 15:54:07+03	https://hh.ru/vacancy/125849158
125890248	Senior Data Architect	\N	\N	RUR	moreThan6	Более 6 лет	{Python,Spark}	Минск	2025-09-29 11:40:46+03	https://hh.ru/vacancy/125890248
125650010	Старший системный администратор / Архитектор	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,Git,Python}	Москва	2025-09-23 11:45:46+03	https://hh.ru/vacancy/125650010
125223799	Консультант-разработчик на платформе Tririga	\N	\N	RUR	between3And6	От 3 до 6 лет	{JavaScript,Python}	Москва	2025-09-11 13:25:47+03	https://hh.ru/vacancy/125223799
121129932	Руководитель группы разработки (TeamLead)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Java,Python}	Челябинск	2025-09-22 08:52:14+03	https://hh.ru/vacancy/121129932
125157976	C++ Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux,Python}	Минск	2025-10-06 11:12:25+03	https://hh.ru/vacancy/125157976
125703775	Разработчик C++ (CyberTrace)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-09-24 13:16:44+03	https://hh.ru/vacancy/125703775
119701362	Инженер-программист Matlab	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-10-03 16:42:27+03	https://hh.ru/vacancy/119701362
125065874	Senior Data Engineer (офис)	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-08 17:43:36+03	https://hh.ru/vacancy/125065874
125247384	С++ Tools Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-05 18:10:26+03	https://hh.ru/vacancy/125247384
125643320	Инженер-разработчик РЧ/СВЧ систем (RF Engineer)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Минск	2025-09-23 10:15:58+03	https://hh.ru/vacancy/125643320
120040494	Ведущий инженер-программист ПЛИС	149000	230000	RUR	between1And3	От 1 года до 3 лет	{Linux,Python}	Санкт-Петербург	2025-09-25 16:25:46+03	https://hh.ru/vacancy/120040494
125391885	Middle/Senior платформенный инженер (DBaaS)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,CI/CD,Kafka,PostgreSQL,Python}	Москва	2025-09-16 14:23:25+03	https://hh.ru/vacancy/125391885
124980053	C/C++ developer for IoT project	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,Linux,Python}	Астана	2025-10-04 17:11:39+03	https://hh.ru/vacancy/124980053
124988590	Преподаватель IT дисциплин, тренер, эксперт	\N	\N	RUR	between3And6	От 3 до 6 лет	{Angular,Java,JavaScript,Python,React,TypeScript}	Москва	2025-09-08 08:15:39+03	https://hh.ru/vacancy/124988590
125233549	Lead Data Scientist	\N	\N	RUR	moreThan6	Более 6 лет	{}	Тбилиси	2025-09-11 15:25:13+03	https://hh.ru/vacancy/125233549
124874329	Technical Product Owner / Product Engineer продукта Jay Flow	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,JavaScript,Python,TypeScript}	Санкт-Петербург	2025-09-30 11:05:21+03	https://hh.ru/vacancy/124874329
125847063	Специалист по информационной безопасности	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-10-01 14:33:20+03	https://hh.ru/vacancy/125847063
124745874	Руководитель команды разработки (Team Lead)	\N	\N	RUR	moreThan6	Более 6 лет	{Go,Java,Python}	Саратов	2025-10-02 09:24:57+03	https://hh.ru/vacancy/124745874
125097493	Python-разработчик (senior)	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,Docker,FastAPI,Kubernetes,Python}	Москва	2025-09-09 12:42:13+03	https://hh.ru/vacancy/125097493
117598614	С++ Developer (IMS)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-10-06 06:09:03+03	https://hh.ru/vacancy/117598614
125820885	Инженер по производительности баз данных ClickHouse	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Java,Python}	Москва	2025-10-06 07:27:09+03	https://hh.ru/vacancy/125820885
126028706	Разработчик на Kotlin в Контест	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,Docker,Linux,Python}	Санкт-Петербург	2025-10-01 17:29:57+03	https://hh.ru/vacancy/126028706
125422917	React Native разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{React}	Алматы	2025-09-17 10:15:01+03	https://hh.ru/vacancy/125422917
125534442	Инженер-эксперт L3 – BIOS/BMC	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-19 14:46:49+03	https://hh.ru/vacancy/125534442
122033944	C++ Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Ташкент	2025-09-15 10:19:10+03	https://hh.ru/vacancy/122033944
125852518	TechLead PaaS	\N	\N	RUR	moreThan6	Более 6 лет	{Go,PostgreSQL,Python}	Москва	2025-09-26 17:07:02+03	https://hh.ru/vacancy/125852518
125584441	AI Engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Минск	2025-09-22 09:13:03+03	https://hh.ru/vacancy/125584441
121616391	Преподаватель программирования в IT-школу для детей	67000	96000	RUR	noExperience	Нет опыта	{}	Москва	2025-09-11 11:22:50+03	https://hh.ru/vacancy/121616391
125477688	Инженер верификатор	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-24 10:03:39+03	https://hh.ru/vacancy/125477688
125668984	Lead Go Developer (PT Application Firewall)	\N	\N	RUR	moreThan6	Более 6 лет	{Go,Python}	Москва	2025-09-23 16:41:31+03	https://hh.ru/vacancy/125668984
125116122	AppSec инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Python}	Москва	2025-09-09 16:41:25+03	https://hh.ru/vacancy/125116122
123966176	Руководитель группы качества ранжирования клипов	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,Python}	Москва	2025-09-18 11:52:15+03	https://hh.ru/vacancy/123966176
125118335	Senior DevOps Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{AWS,GCP,Python}	Алматы	2025-09-09 17:10:52+03	https://hh.ru/vacancy/125118335
125015884	DevOps-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Go,Grafana,Prometheus,Python}	Москва	2025-09-08 12:56:35+03	https://hh.ru/vacancy/125015884
124078628	Инженер-верификатор СБИС	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Зеленоград	2025-09-13 16:25:43+03	https://hh.ru/vacancy/124078628
121665798	Engine Programmer C++ (Мир танков)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Санкт-Петербург	2025-10-05 11:41:55+03	https://hh.ru/vacancy/121665798
125218341	ML Engeneer (MLOps)	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Flask,"REST API"}	Ташкент	2025-10-05 12:53:49+03	https://hh.ru/vacancy/125218341
125754189	Архитектор BI	\N	\N	RUR	moreThan6	Более 6 лет	{}	Москва	2025-09-25 10:58:16+03	https://hh.ru/vacancy/125754189
124008991	SRE Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD}	Москва	2025-09-08 14:35:56+03	https://hh.ru/vacancy/124008991
125121538	Senior Embedded Software Test Engineer/Teamlead (Нижний Новгород)	\N	\N	RUR	moreThan6	Более 6 лет	{Linux,Python}	Нижний Новгород	2025-09-22 18:24:14+03	https://hh.ru/vacancy/125121538
125445825	Senior Product Data Analyst	\N	\N	RUR	between3And6	От 3 до 6 лет	{Kafka}	Тбилиси	2025-09-17 15:28:52+03	https://hh.ru/vacancy/125445825
121336788	Руководитель группы разработки (TeamLead)	\N	\N	RUR	moreThan6	Более 6 лет	{Go,Java,Python}	Красноярск	2025-09-22 07:58:34+03	https://hh.ru/vacancy/121336788
124124957	Главный инженер Отдела сопровождения обязательной отчетности	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Linux,Python}	Москва	2025-09-24 17:42:19+03	https://hh.ru/vacancy/124124957
125483906	Аналитик по Маркетингу	\N	\N	RUR	between3And6	От 3 до 6 лет	{NumPy,Pandas,Python}	Москва	2025-09-18 13:48:54+03	https://hh.ru/vacancy/125483906
114818667	Инженер-верификатор	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Git,Python}	Воронеж	2025-09-24 11:44:29+03	https://hh.ru/vacancy/114818667
124712699	Tech Lead C++ Developer	\N	\N	RUR	moreThan6	Более 6 лет	{}	Москва	2025-10-07 13:45:00+03	https://hh.ru/vacancy/124712699
122323341	Ведущий разработчик C/Linux	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Docker,Linux,Python}	Санкт-Петербург	2025-09-26 15:29:26+03	https://hh.ru/vacancy/122323341
123308573	Senior Data Scientist	\N	\N	RUR	between3And6	От 3 до 6 лет	{PyTorch,Python,SQL,Scikit-learn,TensorFlow}	Москва	2025-09-22 17:11:05+03	https://hh.ru/vacancy/123308573
125672852	ML-разработчик / ML-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,Scikit-learn}	Москва	2025-09-23 18:13:14+03	https://hh.ru/vacancy/125672852
124563588	Middle+/Senior QA Automation Engineer мобильных приложений в R&D WorksPad	\N	\N	RUR	between3And6	От 3 до 6 лет	{Git,Python}	Москва	2025-09-26 19:45:47+03	https://hh.ru/vacancy/124563588
125487846	Senior Software Development Engineer in Test (Android)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,JavaScript,Python,Selenium}	Польша	2025-09-18 14:49:32+03	https://hh.ru/vacancy/125487846
125517524	Lead Fullstack Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Node.js,Python}	Минск	2025-09-19 10:16:50+03	https://hh.ru/vacancy/125517524
123617038	Старший разработчик Go, Рекламный кабинет	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go}	Москва	2025-10-03 19:15:06+03	https://hh.ru/vacancy/123617038
124095515	Продуктовый архитектор в Mind uStor	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,Python}	Москва	2025-10-06 12:07:38+03	https://hh.ru/vacancy/124095515
125319757	Senior Frontend разработчик (React)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,Python}	Москва	2025-09-15 10:58:01+03	https://hh.ru/vacancy/125319757
125116024	Game Analyst / Игровой аналитик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Санкт-Петербург	2025-10-03 13:03:57+03	https://hh.ru/vacancy/125116024
125910156	Системный администратор \\ DevOps \\ инженер	60000	90000	RUR	between1And3	От 1 года до 3 лет	{Bash,Linux,Python}	Калининград	2025-09-29 16:17:02+03	https://hh.ru/vacancy/125910156
124204799	Технический директор (CTO)	\N	\N	RUR	moreThan6	Более 6 лет	{}	Москва	2025-09-14 11:10:57+03	https://hh.ru/vacancy/124204799
125069361	DevOps-инженер (Igaming)	163794	221122	RUR	between1And3	От 1 года до 3 лет	{FastAPI,PostgreSQL,Python,React}	Минск	2025-10-05 19:15:03+03	https://hh.ru/vacancy/125069361
122014957	Cтажёр-разработчик автоматизированных тестов	\N	\N	RUR	noExperience	Нет опыта	{Java,Python}	Казань	2025-09-22 15:35:48+03	https://hh.ru/vacancy/122014957
124491119	Senior Backend Python Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,MySQL,Python,Redis}	Красноярск	2025-09-19 06:20:24+03	https://hh.ru/vacancy/124491119
125103824	Backend-разработчик Python (middle)	\N	170000	RUR	between1And3	От 1 года до 3 лет	{AWS,Django,Python}	Краснодар	2025-09-09 14:06:09+03	https://hh.ru/vacancy/125103824
123536199	Product Analyst Junior	120000	\N	RUR	between1And3	От 1 года до 3 лет	{Airflow,Python}	Москва	2025-09-11 14:32:57+03	https://hh.ru/vacancy/123536199
125655392	Frontend Developer (React)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Тбилиси	2025-09-23 13:00:47+03	https://hh.ru/vacancy/125655392
126042698	DevOPS-инженер	\N	\N	RUR	moreThan6	Более 6 лет	{}	Москва	2025-10-02 08:35:29+03	https://hh.ru/vacancy/126042698
126128116	Разработчик бортовых алгоритмов - стажёр (Группа реализации и отработки алгоритмов)	\N	\N	RUR	noExperience	Нет опыта	{Python}	Москва	2025-10-03 19:16:39+03	https://hh.ru/vacancy/126128116
125393793	Стажер разработчик систем бизнес-аналитики	\N	\N	RUR	noExperience	Нет опыта	{Python}	Пермь	2025-10-01 14:56:08+03	https://hh.ru/vacancy/125393793
125444990	ETL-разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Airflow,Python,"REST API"}	Москва	2025-09-17 15:14:46+03	https://hh.ru/vacancy/125444990
126163384	Senior Ruby on Rails developer	\N	1800	RUR	moreThan6	Более 6 лет	{Docker,PostgreSQL}	Тюмень	2025-10-06 09:38:17+03	https://hh.ru/vacancy/126163384
125947685	Game Analyst / Игровой аналитик	200000	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Санкт-Петербург	2025-10-06 11:17:04+03	https://hh.ru/vacancy/125947685
125600936	Инженер поддержки 2 линии (Linux, Prometheus, ELK)	150000	210000	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Нижний Новгород	2025-09-22 12:16:01+03	https://hh.ru/vacancy/125600936
122874414	Java-разработчик	150000	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Санкт-Петербург	2025-10-05 15:31:57+03	https://hh.ru/vacancy/122874414
125692176	DevOps engineer (Airflow/Greenplum/Clickhouse)	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,Docker,Kubernetes,Python}	Москва	2025-09-24 10:36:32+03	https://hh.ru/vacancy/125692176
124788255	Специалист по тестированию (системные сервисы)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,pytest}	Москва	2025-09-29 18:08:52+03	https://hh.ru/vacancy/124788255
124080529	Project manager (middle+)	180000	230000	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-29 10:36:05+03	https://hh.ru/vacancy/124080529
126173107	Middle/Senior DevOps-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Docker,Kubernetes,PostgreSQL,Prometheus,Python}	Новосибирск	2025-10-06 11:24:38+03	https://hh.ru/vacancy/126173107
126044709	Data Scientist ( направление рекомендательных систем )	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Ташкент	2025-10-02 09:06:34+03	https://hh.ru/vacancy/126044709
123154687	Инженер по тестированию	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,pytest}	Казань	2025-09-17 12:54:05+03	https://hh.ru/vacancy/123154687
125872343	Python Senior	\N	300000	RUR	moreThan6	Более 6 лет	{Django,FastAPI,Flask}	Москва	2025-09-29 07:34:11+03	https://hh.ru/vacancy/125872343
125404929	Data Scientist	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-16 17:19:49+03	https://hh.ru/vacancy/125404929
125890174	Инженер технической поддержки	100000	150000	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Владивосток	2025-10-05 11:39:54+03	https://hh.ru/vacancy/125890174
125956775	Game Analyst/Игровой аналитик (Gamedev)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Санкт-Петербург	2025-09-30 12:10:36+03	https://hh.ru/vacancy/125956775
124757935	Lead Senior Data Science / Machine Learning (NLP) инженер в QuantumSoft	500000	1000000	RUR	moreThan6	Более 6 лет	{Pandas,Python,SQL}	Москва	2025-09-30 16:49:00+03	https://hh.ru/vacancy/124757935
124838926	Frontend Developer (Js, VueJs)	80000	\N	RUR	between1And3	От 1 года до 3 лет	{Docker,Python}	Санкт-Петербург	2025-10-02 17:34:57+03	https://hh.ru/vacancy/124838926
125246647	DevOps Engineer (junior+)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Git,Go,Grafana,Python}	Москва	2025-09-22 11:27:08+03	https://hh.ru/vacancy/125246647
124605390	ML Engineer (recommendations)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-03 13:30:23+03	https://hh.ru/vacancy/124605390
123052648	Frontend-разработчик	130000	250000	RUR	between1And3	От 1 года до 3 лет	{CSS,HTML,JavaScript,TypeScript}	Новосибирск	2025-09-11 18:02:32+03	https://hh.ru/vacancy/123052648
125799412	Python разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,Kafka,Linux,PostgreSQL,Python,Redis}	Москва	2025-09-25 16:43:16+03	https://hh.ru/vacancy/125799412
125475318	Python developer	\N	200000	RUR	between3And6	От 3 до 6 лет	{FastAPI,Python}	Москва	2025-10-06 11:32:56+03	https://hh.ru/vacancy/125475318
125186423	DevOps инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,MySQL,Python}	Санкт-Петербург	2025-09-11 08:43:32+03	https://hh.ru/vacancy/125186423
125451171	C++ developer (Junior)	\N	\N	RUR	noExperience	Нет опыта	{Git,Linux,Python,SQL}	Москва	2025-09-17 17:02:20+03	https://hh.ru/vacancy/125451171
125628753	Системный администратор (DevOps)	80000	300000	RUR	noExperience	Нет опыта	{Bash,Linux,Prometheus,Python}	Новосибирск	2025-09-23 06:01:39+03	https://hh.ru/vacancy/125628753
125760210	Vue developer (vue-разработчик)	\N	\N	RUR	between3And6	От 3 до 6 лет	{TypeScript}	Сербия	2025-09-25 12:14:12+03	https://hh.ru/vacancy/125760210
122109482	Инженер по виртуализации	\N	\N	RUR	noExperience	Нет опыта	{Bash,Java,Python}	Москва	2025-09-18 13:18:25+03	https://hh.ru/vacancy/122109482
123949887	Преподаватель образовательных курсов для детей (Python)	60000	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-23 11:03:35+03	https://hh.ru/vacancy/123949887
125854806	Стажировка по тестированию (OС Astra Linux)	\N	\N	RUR	noExperience	Нет опыта	{Python,Shell}	Москва	2025-09-26 18:28:06+03	https://hh.ru/vacancy/125854806
125908959	Системный аналитик на BI направление	\N	\N	RUR	moreThan6	Более 6 лет	{}	Москва	2025-09-29 16:01:31+03	https://hh.ru/vacancy/125908959
126056299	Python Trainee	\N	\N	RUR	noExperience	Нет опыта	{Python,SQL}	Тбилиси	2025-10-02 11:23:06+03	https://hh.ru/vacancy/126056299
124489795	Разработчик C++	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,Linux,Python}	Москва	2025-09-25 12:13:38+03	https://hh.ru/vacancy/124489795
126015834	Руководитель разработки/Tech lead	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-10-01 14:02:52+03	https://hh.ru/vacancy/126015834
125892288	IT Project manager	130000	170000	RUR	between3And6	От 3 до 6 лет	{CSS,HTML,Python}	Екатеринбург	2025-10-03 15:24:57+03	https://hh.ru/vacancy/125892288
126135012	Программист C/C++ (DPDK-приложения) Junior	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Санкт-Петербург	2025-10-04 12:48:38+03	https://hh.ru/vacancy/126135012
126126059	Стажер-разработчик бэкенда	\N	\N	RUR	noExperience	Нет опыта	{}	Санкт-Петербург	2025-10-03 18:04:28+03	https://hh.ru/vacancy/126126059
89514991	Middle frontend-разработчик	150000	200000	RUR	between3And6	От 3 до 6 лет	{Angular,CSS,HTML,Java,JavaScript,React,Vue}	Санкт-Петербург	2025-10-07 18:46:01+03	https://hh.ru/vacancy/89514991
126082288	System Architect (Solution Architect) / Системный архитектор	\N	450000	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-02 18:32:07+03	https://hh.ru/vacancy/126082288
125883042	Инженер-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Java,Linux,Python,Rust}	Москва	2025-09-29 10:15:59+03	https://hh.ru/vacancy/125883042
126182222	C++ Engineer (Robotics)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Минск	2025-10-06 13:05:15+03	https://hh.ru/vacancy/126182222
125887870	Дата-инженер (Junior)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Красноярск	2025-09-29 11:11:51+03	https://hh.ru/vacancy/125887870
118964732	QA Automation Engineer	80000	180000	RUR	between1And3	От 1 года до 3 лет	{Java,Python,Selenium}	Ульяновск	2025-09-27 11:26:22+03	https://hh.ru/vacancy/118964732
125038654	Специалист технической поддержки (2 линия, Инженер)	105000	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-10-05 15:06:58+03	https://hh.ru/vacancy/125038654
125265063	Junior\\Middle Backend Python разработчик (FastAPI)	50000	70000	RUR	between1And3	От 1 года до 3 лет	{FastAPI,Python,"REST API"}	Ульяновск	2025-09-12 11:14:53+03	https://hh.ru/vacancy/125265063
124154404	Python-разработчик	\N	130000	RUR	between1And3	От 1 года до 3 лет	{Python,asyncio}	Краснодар	2025-09-16 10:34:02+03	https://hh.ru/vacancy/124154404
125406742	Финансовый аналитик данных	\N	\N	RUR	between1And3	От 1 года до 3 лет	{NumPy,Pandas,Python,SQL}	Москва	2025-09-19 10:18:55+03	https://hh.ru/vacancy/125406742
123065210	Разработчик баз данных	160000	\N	RUR	between1And3	От 1 года до 3 лет	{PostgreSQL,Python}	Красноярск	2025-09-15 15:56:32+03	https://hh.ru/vacancy/123065210
126063618	Data Engineer (разработчик DWH)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Airflow,Java,Kafka,Python}	Москва	2025-10-02 13:12:01+03	https://hh.ru/vacancy/126063618
124155778	DevOps-инженер	\N	220000	RUR	between3And6	От 3 до 6 лет	{CI/CD,Go,Python}	Москва	2025-09-15 14:10:21+03	https://hh.ru/vacancy/124155778
125512027	Senior frontend developer	250000	350000	RUR	between3And6	От 3 до 6 лет	{CSS,HTML,JavaScript,TypeScript}	Уфа	2025-09-19 08:55:25+03	https://hh.ru/vacancy/125512027
124824639	Python Data Engineer (ClickHouse)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Airflow,Python}	Москва	2025-09-30 18:23:20+03	https://hh.ru/vacancy/124824639
126108204	Системный Администратор	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python,Shell}	Москва	2025-10-03 12:16:07+03	https://hh.ru/vacancy/126108204
124995017	Frontend-разработчик (middle/middle+)	130000	250000	RUR	between3And6	От 3 до 6 лет	{CSS,HTML,JavaScript,TypeScript}	Екатеринбург	2025-09-08 09:48:07+03	https://hh.ru/vacancy/124995017
124559637	Инженер-программист (поддержка производства)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-01 18:02:53+03	https://hh.ru/vacancy/124559637
124840661	Математик-программист [Логистика]	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,Python}	Москва	2025-10-02 10:25:24+03	https://hh.ru/vacancy/124840661
125322161	Инженер по искусственному интеллекту (эксперт)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Нижний Новгород	2025-10-01 16:34:02+03	https://hh.ru/vacancy/125322161
124119180	С++ разработчик (High load)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-02 12:01:18+03	https://hh.ru/vacancy/124119180
124809526	QA Full-stack Engineer (Payments & Billing)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Сербия	2025-09-29 12:28:46+03	https://hh.ru/vacancy/124809526
115794035	Senior frontend-разработчик	200000	300000	RUR	moreThan6	Более 6 лет	{Java}	Санкт-Петербург	2025-10-05 17:31:08+03	https://hh.ru/vacancy/115794035
123730407	Разработчик BI	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-01 16:57:21+03	https://hh.ru/vacancy/123730407
120823551	Data Engineer ОФИС	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-09-18 14:52:46+03	https://hh.ru/vacancy/120823551
121690932	Пентестер \\ Pentester \\ Инженер ИБ в Offensive команду	\N	550000	RUR	between3And6	От 3 до 6 лет	{Go,JavaScript,Linux,Python}	Москва	2025-10-05 16:32:42+03	https://hh.ru/vacancy/121690932
125967197	Rust developer \\ Rust-разработчик (TATLIN.OBJECT)	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,Linux,Python}	Москва	2025-09-30 13:52:58+03	https://hh.ru/vacancy/125967197
125334828	DevOps-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-10-06 14:17:17+03	https://hh.ru/vacancy/125334828
125004515	Golang developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Kubernetes,Python}	Москва	2025-10-08 11:36:38+03	https://hh.ru/vacancy/125004515
123667086	BI-аналитик	140000	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-10-08 11:34:50+03	https://hh.ru/vacancy/123667086
125825789	.NET разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Angular,Python,React,Vue}	Москва	2025-10-08 09:07:35+03	https://hh.ru/vacancy/125825789
125427797	Разработчик платформы GenAI (Senior Backend Engineer)	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Python,asyncio}	Москва	2025-09-17 11:12:19+03	https://hh.ru/vacancy/125427797
126119599	Администратор баз данных (DBA)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Linux,PostgreSQL,Python,SQL}	Алматы	2025-10-03 15:39:49+03	https://hh.ru/vacancy/126119599
111235935	Python Developer in Test / Инженер-программист (KORNFELD)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,asyncio,pytest}	Москва	2025-10-04 18:27:39+03	https://hh.ru/vacancy/111235935
125382581	Инженер киберугроз / Cyber Threat Engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Москва	2025-09-16 12:03:25+03	https://hh.ru/vacancy/125382581
125151862	Инженер сопровождения ПО	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Волгоград	2025-09-18 21:54:24+03	https://hh.ru/vacancy/125151862
125303866	Бэкенд разработчик в команду Platform Runtime	\N	\N	RUR	between3And6	От 3 до 6 лет	{Kafka,Kubernetes}	Москва	2025-09-15 07:02:25+03	https://hh.ru/vacancy/125303866
126176204	SEO-специалист (в офис)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Челябинск	2025-10-06 11:59:57+03	https://hh.ru/vacancy/126176204
125581998	DevOps-Инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{AWS,Bash,CI/CD,Docker,GCP,Kubernetes,Python}	Екатеринбург	2025-09-22 08:45:53+03	https://hh.ru/vacancy/125581998
126135133	Системный программист Linux	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Linux,Python}	Санкт-Петербург	2025-10-04 12:59:35+03	https://hh.ru/vacancy/126135133
111207004	Аналитик отчетных систем DWH	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Санкт-Петербург	2025-09-12 11:42:29+03	https://hh.ru/vacancy/111207004
125458569	Ведущий разработчик (Golang, C)	\N	\N	RUR	moreThan6	Более 6 лет	{Linux,Python,SQL}	Москва	2025-09-18 06:43:00+03	https://hh.ru/vacancy/125458569
125837663	Руководитель BI	150000	200000	RUR	between3And6	От 3 до 6 лет	{Python}	Барнаул	2025-10-05 12:19:40+03	https://hh.ru/vacancy/125837663
125584238	Разработчик C++	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-22 09:10:50+03	https://hh.ru/vacancy/125584238
125657021	Инженер по автоматизации тестирования / Automation QA	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Git,GraphQL,Python}	Москва	2025-09-23 13:24:40+03	https://hh.ru/vacancy/125657021
125139900	Back-end разработчик Node.js/Go	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Node.js}	Москва	2025-10-06 10:46:30+03	https://hh.ru/vacancy/125139900
125289936	Программист Bitrix Framework	80000	80000	RUR	between3And6	От 3 до 6 лет	{JavaScript,"REST API"}	Пенза	2025-09-13 00:07:27+03	https://hh.ru/vacancy/125289936
121658599	Разработчик моделей цифровых систем беспроводной связи	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Санкт-Петербург	2025-09-14 10:32:02+03	https://hh.ru/vacancy/121658599
124756476	QA Automation Engineer (MINSK)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Минск	2025-09-22 12:19:49+03	https://hh.ru/vacancy/124756476
125700364	QA Automation Engineer (Back-end)	\N	210000	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Москва	2025-10-06 12:29:00+03	https://hh.ru/vacancy/125700364
125510032	AI Automation Engineer / Evangelist	150000	\N	RUR	between3And6	От 3 до 6 лет	{Java,JavaScript,Python}	Челябинск	2025-09-19 08:08:00+03	https://hh.ru/vacancy/125510032
123613846	Системный программист (Control plane, Golang+Node.js)	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,Python}	Москва	2025-09-12 10:44:56+03	https://hh.ru/vacancy/123613846
125711417	Разработчик C++ (Middle+, Senior)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux,Python}	Москва	2025-09-24 14:43:33+03	https://hh.ru/vacancy/125711417
125618213	Инженер-программист	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Git}	Зеленоград	2025-09-25 11:37:08+03	https://hh.ru/vacancy/125618213
119010675	Team Lead	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Go,Java,Python}	Новосибирск	2025-09-28 10:47:51+03	https://hh.ru/vacancy/119010675
122221666	Автотестировщик / QA-engineer	\N	200000	RUR	between3And6	От 3 до 6 лет	{Playwright,Python,pytest}	Москва	2025-10-02 12:01:18+03	https://hh.ru/vacancy/122221666
126065755	Разработчик на Golang в группу платёжных хранилищ	\N	\N	RUR	moreThan6	Более 6 лет	{}	Москва	2025-10-02 13:45:37+03	https://hh.ru/vacancy/126065755
126015386	Java разработчик с нуля (стажер)	70000	80000	RUR	noExperience	Нет опыта	{Java}	Санкт-Петербург	2025-10-01 13:57:36+03	https://hh.ru/vacancy/126015386
125633130	Prompt Engineer (AI Agents & Automation)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{FastAPI,Python}	Краснодар	2025-10-07 15:58:04+03	https://hh.ru/vacancy/125633130
117539801	Технический руководитель (Tech Lead) в команду разработки онлайн-кинотеатра	\N	\N	RUR	between1And3	От 1 года до 3 лет	{AWS,Go,Java,Node.js,Python}	Чебоксары	2025-09-22 17:03:17+03	https://hh.ru/vacancy/117539801
123416150	Middle Software Engineer (Gameplay)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Сербия	2025-09-28 11:38:15+03	https://hh.ru/vacancy/123416150
126024505	Системный инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-10-01 16:16:55+03	https://hh.ru/vacancy/126024505
125751737	Аналитик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-25 10:34:22+03	https://hh.ru/vacancy/125751737
125846768	Middle Data Scientist в Мой МТС [Big Data, МТС Веб Сервисы]	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-09-26 15:10:28+03	https://hh.ru/vacancy/125846768
126021035	Team Lead (Python)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-01 15:17:09+03	https://hh.ru/vacancy/126021035
122626708	Разработчик pl/sql	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Java,Python}	Пермь	2025-09-26 10:45:24+03	https://hh.ru/vacancy/122626708
125342696	Разработчик C++	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,Python}	Зеленоград	2025-09-15 16:12:04+03	https://hh.ru/vacancy/125342696
126171822	Gameplay Programmer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Санкт-Петербург	2025-10-06 11:08:22+03	https://hh.ru/vacancy/126171822
126061235	Middle QA Automation Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,"REST API"}	Астана	2025-10-02 12:36:44+03	https://hh.ru/vacancy/126061235
124829393	Аналитик-разработчик в Яндекс Маркет	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-10-03 15:17:29+03	https://hh.ru/vacancy/124829393
125722541	Пентестер веб-приложений	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Java,Python}	Казань	2025-09-24 16:02:52+03	https://hh.ru/vacancy/125722541
125471641	Ведущий full-stack аналитик (инфраструктура ЦОД)	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-18 10:42:50+03	https://hh.ru/vacancy/125471641
125442699	Аналитик-разработчик (Data Analyst)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Airflow,NumPy,Pandas,Python}	Минск	2025-10-03 18:41:03+03	https://hh.ru/vacancy/125442699
125139554	Инженер технической поддержки	\N	\N	RUR	noExperience	Нет опыта	{Bash,Grafana,Prometheus,Python}	Муром	2025-09-28 21:52:03+03	https://hh.ru/vacancy/125139554
125171939	Разработчик NLP	\N	\N	RUR	between1And3	От 1 года до 3 лет	{PyTorch,Python}	Москва	2025-09-10 17:30:33+03	https://hh.ru/vacancy/125171939
122955976	Python Developer (Data Team)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Airflow,PostgreSQL,Python}	Тбилиси	2025-09-22 14:39:01+03	https://hh.ru/vacancy/122955976
125727961	Middle DevOps [MWS DevTools, МТС Веб Сервисы]	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Go,Grafana,Prometheus,Python}	Москва	2025-09-24 18:35:24+03	https://hh.ru/vacancy/125727961
125104749	DevOps Архитектор/Проектировщик	\N	\N	RUR	moreThan6	Более 6 лет	{AWS,Azure,Bash,Python}	Москва	2025-09-09 14:16:29+03	https://hh.ru/vacancy/125104749
126009639	Инженер MQ	\N	\N	RUR	moreThan6	Более 6 лет	{Python,RabbitMQ}	Суздаль	2025-10-01 12:44:02+03	https://hh.ru/vacancy/126009639
125115548	Сетевой инженер/ Младший С++ разработчик (KORNFELD)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Docker,Git,Python}	Москва	2025-09-09 16:35:19+03	https://hh.ru/vacancy/125115548
126000643	Аналитик информационной безопасности в VK ID	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-10-01 11:38:10+03	https://hh.ru/vacancy/126000643
122758287	Администратор баз данных	\N	\N	RUR	between3And6	От 3 до 6 лет	{MySQL,PostgreSQL}	Москва	2025-09-23 16:29:35+03	https://hh.ru/vacancy/122758287
125241743	DevOps инженер	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,CI/CD,Python}	Москва	2025-09-11 16:35:48+03	https://hh.ru/vacancy/125241743
102195683	DevOps/инженер-программист	160000	200000	RUR	between1And3	От 1 года до 3 лет	{Bash,CI/CD,Python}	Санкт-Петербург	2025-09-11 14:14:41+03	https://hh.ru/vacancy/102195683
125838121	Руководитель BI	150000	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Уфа	2025-10-05 12:29:55+03	https://hh.ru/vacancy/125838121
122854262	Python Developer (MLOps Team)	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Kafka,Python,RabbitMQ}	Тбилиси	2025-09-22 14:38:58+03	https://hh.ru/vacancy/122854262
122939882	Lead Generation Specialist	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Минск	2025-09-15 12:35:53+03	https://hh.ru/vacancy/122939882
125845533	Python Developer Senior	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-10-05 14:47:25+03	https://hh.ru/vacancy/125845533
125940985	Руководитель направления архитектуры	\N	\N	RUR	moreThan6	Более 6 лет	{}	Москва	2025-09-30 09:45:33+03	https://hh.ru/vacancy/125940985
125625117	Инженер-программист (Embedded Linux)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-07 19:24:34+03	https://hh.ru/vacancy/125625117
123632603	Разработчик DWH	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Airflow,Playwright,Python,Selenium}	Хабаровск	2025-10-03 12:44:46+03	https://hh.ru/vacancy/123632603
125326137	NLP Engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Docker,Git,Linux,Python}	Москва	2025-10-06 12:17:29+03	https://hh.ru/vacancy/125326137
126182855	Разработчик поддержки SMAX	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,Python}	Астана	2025-10-06 13:12:46+03	https://hh.ru/vacancy/126182855
125672544	Prompt Engineer (Python)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{PyTorch}	Москва	2025-10-05 18:00:15+03	https://hh.ru/vacancy/125672544
126112107	Инженер - программист ПЛИС / FPGA Designer	180000	250000	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-10-06 13:27:27+03	https://hh.ru/vacancy/126112107
121938140	Разработчик Blender / 3D Technical Artist	92000	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Челябинск	2025-09-21 11:08:31+03	https://hh.ru/vacancy/121938140
125306335	DBA PostgreSQL/Администратор баз данных PostgreSQL	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Grafana,Prometheus,Python,SQL}	Москва	2025-09-15 08:02:41+03	https://hh.ru/vacancy/125306335
124459646	Pentester / Cyber Security Researcher (Threat Intelligence Team)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-09-24 17:52:11+03	https://hh.ru/vacancy/124459646
125065355	Разработчик на Java в команду B2B-платформы Яндекс 360	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,Python}	Москва	2025-09-08 17:39:48+03	https://hh.ru/vacancy/125065355
125342449	Инженер по ручному тестированию (Радиочастотный центр)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,Shell}	Нижний Новгород	2025-09-15 16:07:55+03	https://hh.ru/vacancy/125342449
124787894	Старший системный аналитик	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-25 16:05:06+03	https://hh.ru/vacancy/124787894
125833816	Инженер технической поддержки (РЕД ОС/РЕД База Данных/РЕД АДМ)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Grafana,Prometheus,Python}	Омск	2025-09-29 10:26:11+03	https://hh.ru/vacancy/125833816
107551681	Инженер - разработчик РЭА	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Санкт-Петербург	2025-09-21 08:51:19+03	https://hh.ru/vacancy/107551681
124426730	Инженер по разработке инфраструктуры/DevOps	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Git,Linux,Python}	Москва	2025-09-22 09:55:28+03	https://hh.ru/vacancy/124426730
123097602	Middle+ / Senior C++ разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Сербия	2025-09-16 15:36:11+03	https://hh.ru/vacancy/123097602
125763179	Middle/Senior DevOps Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Docker,Go,Grafana,PostgreSQL,Prometheus,Python}	Санкт-Петербург	2025-09-25 12:39:44+03	https://hh.ru/vacancy/125763179
125382632	DevOps Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Grafana,Node.js,Prometheus,Python}	Казань	2025-09-16 12:04:06+03	https://hh.ru/vacancy/125382632
126114408	Стажёр-разработчик Spark Hadoop BigData	50000	100000	RUR	between1And3	От 1 года до 3 лет	{Python,Spark}	Москва	2025-10-06 14:09:00+03	https://hh.ru/vacancy/126114408
124495302	Старший инженер по автоматизации тестирования, Система WMS	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL,pytest}	Москва	2025-09-12 22:19:03+03	https://hh.ru/vacancy/124495302
125696709	Старший разработчик 1С, Ozon Банк	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Python}	Москва	2025-09-24 11:36:58+03	https://hh.ru/vacancy/125696709
125760837	Архитектор AI проектов (GenAI, LLM)	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-25 12:19:57+03	https://hh.ru/vacancy/125760837
125815032	Data Analyst	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Армения	2025-09-25 19:37:24+03	https://hh.ru/vacancy/125815032
120395194	QA Lead/руководитель направления тестирования	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Git,Java,Linux,Python}	Санкт-Петербург	2025-09-29 10:34:09+03	https://hh.ru/vacancy/120395194
115944740	Senior cистемный архитектор	\N	500000	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-17 16:14:23+03	https://hh.ru/vacancy/115944740
124326011	Системный администратор Linux	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Go,Python}	Санкт-Петербург	2025-10-03 14:46:39+03	https://hh.ru/vacancy/124326011
121690961	Пентестер \\ Pentester \\ Инженер ИБ в RedTeam команду	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Go,JavaScript,Linux,Python}	Москва	2025-10-05 16:33:05+03	https://hh.ru/vacancy/121690961
125069654	DevOps Engineer	250000	300000	RUR	between3And6	От 3 до 6 лет	{Bash,Go,PostgreSQL,Python}	Москва	2025-09-08 19:23:37+03	https://hh.ru/vacancy/125069654
111959689	Разработчик Python (Django, DRF)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-10-07 15:46:29+03	https://hh.ru/vacancy/111959689
125106926	Cтарший Python разработчик	\N	210000	RUR	between1And3	От 1 года до 3 лет	{CSS,Docker,Flask,JavaScript,Linux,Python}	Санкт-Петербург	2025-10-08 10:33:42+03	https://hh.ru/vacancy/125106926
126033075	Архитектор IT - решений (Астра консалтинг)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-10-01 21:05:58+03	https://hh.ru/vacancy/126033075
125175000	DWH разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{PostgreSQL}	Москва	2025-09-10 18:38:01+03	https://hh.ru/vacancy/125175000
125978778	SOC Analyst (L2)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Ташкент	2025-09-30 17:18:13+03	https://hh.ru/vacancy/125978778
125286442	Руководитель группы разработки web приложений (Team Lead)	\N	300000	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-12 17:17:01+03	https://hh.ru/vacancy/125286442
125943850	ИТ аудитор	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-09-30 10:23:01+03	https://hh.ru/vacancy/125943850
126003253	Full-Stack Разработчик (AI-Driven Development)	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Node.js,Python,React,TypeScript}	Казань	2025-10-01 11:14:04+03	https://hh.ru/vacancy/126003253
125433809	Реверс-инженер / Malware Analyst / Reverse engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Go,Linux,Python}	Москва	2025-09-17 12:29:18+03	https://hh.ru/vacancy/125433809
116527652	Программист разработчик прикладного ПО (fullstack)	250000	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python,"REST API"}	Санкт-Петербург	2025-09-17 18:12:19+03	https://hh.ru/vacancy/116527652
125444420	Разработчик RPA	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Git,Python}	Санкт-Петербург	2025-09-17 15:07:51+03	https://hh.ru/vacancy/125444420
126079239	Shopify Full Stack Developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{FastAPI,Python,React,TypeScript}	Минск	2025-10-02 17:03:36+03	https://hh.ru/vacancy/126079239
125245159	Data Engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Pandas,Python}	Тбилиси	2025-09-11 17:30:16+03	https://hh.ru/vacancy/125245159
125284918	Product Analyst	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Минск	2025-10-03 16:45:57+03	https://hh.ru/vacancy/125284918
126028850	QA (нагрузочное тестирование)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Docker,Java,Python}	Санкт-Петербург	2025-10-06 08:59:59+03	https://hh.ru/vacancy/126028850
122711533	С++ Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{C++}	Тбилиси	2025-09-22 14:38:27+03	https://hh.ru/vacancy/122711533
125448350	Web QA Automation Engineer | Based in Almaty or open to relocate |	\N	\N	RUR	between3And6	От 3 до 6 лет	{JavaScript,Playwright,Python,Selenium,pytest}	Алматы	2025-09-17 16:11:52+03	https://hh.ru/vacancy/125448350
119816738	Data-инженер	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Сочи	2025-09-10 09:55:35+03	https://hh.ru/vacancy/119816738
96175074	Системный программист С/С++ (разработка ОС Аврора)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Linux,Python}	Санкт-Петербург	2025-09-22 12:20:50+03	https://hh.ru/vacancy/96175074
122353280	Data Engineer	\N	230000	RUR	between3And6	От 3 до 6 лет	{Airflow,Python,Spark}	Санкт-Петербург	2025-10-01 13:35:16+03	https://hh.ru/vacancy/122353280
124495276	Разработчик встраиваемых систем (Linux)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-30 13:50:21+03	https://hh.ru/vacancy/124495276
123978223	Системный инженер-эксперт Linux (3 линия)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Екатеринбург	2025-09-18 21:23:41+03	https://hh.ru/vacancy/123978223
122985459	Администратор-разработчик BI	\N	\N	RUR	between3And6	От 3 до 6 лет	{SQL}	Москва	2025-09-16 13:15:45+03	https://hh.ru/vacancy/122985459
124016158	Senior Java/Rust developer	\N	\N	RUR	moreThan6	Более 6 лет	{Grafana,Java,Kafka,PostgreSQL,Prometheus,Python,Redis,Rust}	Москва	2025-10-06 14:21:23+03	https://hh.ru/vacancy/124016158
124504489	Разработчик Bitrix (middle)	90000	150000	RUR	between3And6	От 3 до 6 лет	{Git}	Йошкар-Ола	2025-10-03 14:58:56+03	https://hh.ru/vacancy/124504489
122742967	Старший разработчик на Java в интранет	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-18 09:08:20+03	https://hh.ru/vacancy/122742967
125911138	API Integration Specialist	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Минск	2025-09-29 16:32:39+03	https://hh.ru/vacancy/125911138
125538516	Project manager	\N	\N	RUR	between1And3	От 1 года до 3 лет	{CSS,HTML}	Москва	2025-09-19 15:55:00+03	https://hh.ru/vacancy/125538516
125261385	Старший/ведущий разработчик встраиваемых интерфейсов (Linux/OpenBMC)	\N	\N	RUR	between3And6	От 3 до 6 лет	{GraphQL,Linux,Python}	Москва	2025-09-12 10:16:58+03	https://hh.ru/vacancy/125261385
125375393	Zabbix administrator	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Сербия	2025-09-16 10:28:30+03	https://hh.ru/vacancy/125375393
119697910	Системный администратор Linux	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,CI/CD,Python}	Москва	2025-09-29 12:55:14+03	https://hh.ru/vacancy/119697910
122115107	Ведущий инженер-программист	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-29 10:17:51+03	https://hh.ru/vacancy/122115107
124500595	C#/.NET Developer	\N	260000	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-10-07 14:44:43+03	https://hh.ru/vacancy/124500595
125703105	Инженер-разработчик ПЛИС	130000	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Москва	2025-09-24 13:06:43+03	https://hh.ru/vacancy/125703105
125521714	Аналитик данных по продукту	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Москва	2025-09-19 11:18:08+03	https://hh.ru/vacancy/125521714
122853502	Инженер-программист АСУ ТП	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Java,Python}	Уфа	2025-09-22 08:23:47+03	https://hh.ru/vacancy/122853502
125437288	Middle Разработчик 1С Битрикс	80000	85000	RUR	between3And6	От 3 до 6 лет	{}	Ростов-на-Дону	2025-09-17 13:13:12+03	https://hh.ru/vacancy/125437288
124839386	Руководитель группы системного анализа/Team lead system analyst	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-30 10:57:16+03	https://hh.ru/vacancy/124839386
124015703	Разработчик DWH	\N	\N	RUR	between3And6	От 3 до 6 лет	{JavaScript,Python}	Санкт-Петербург	2025-09-12 09:41:28+03	https://hh.ru/vacancy/124015703
125260643	Data Scientist / Python разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Ростов-на-Дону	2025-10-06 10:08:07+03	https://hh.ru/vacancy/125260643
125998861	Архитектор BI	\N	\N	RUR	moreThan6	Более 6 лет	{}	Москва	2025-10-01 10:14:20+03	https://hh.ru/vacancy/125998861
125425891	Разработчик Go, Финансы и организационная модель	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Java,Python}	Москва	2025-09-17 10:50:33+03	https://hh.ru/vacancy/125425891
125228011	DevOps Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Git,Linux,Python}	Москва	2025-10-05 14:08:58+03	https://hh.ru/vacancy/125228011
126046633	Руководитель группы по разработке интеллектуальных систем	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,Kubernetes,Python}	Москва	2025-10-06 09:08:18+03	https://hh.ru/vacancy/126046633
125259207	Разработчик Форсайт	\N	\N	RUR	between1And3	От 1 года до 3 лет	{JavaScript,Python}	Москва	2025-09-12 09:43:29+03	https://hh.ru/vacancy/125259207
125483290	Консультант-аналитик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Ижевск	2025-09-18 13:37:48+03	https://hh.ru/vacancy/125483290
124318740	Программист 1С	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-20 11:41:16+03	https://hh.ru/vacancy/124318740
123268389	DevOps-инженер (Направление автоматизации и эксплуатации)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,CI/CD,Linux,Python}	Москва	2025-09-17 10:06:44+03	https://hh.ru/vacancy/123268389
125140094	System Administrator	\N	\N	RUR	noExperience	Нет опыта	{Bash,Python,SQL}	Казань	2025-09-22 15:54:21+03	https://hh.ru/vacancy/125140094
125641457	DevOps-инженер Middle	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,CI/CD,Grafana,Prometheus,Python}	Тольятти	2025-09-23 09:53:50+03	https://hh.ru/vacancy/125641457
121394596	Портфельный аналитик (Risk Data Analyst)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{NumPy,Pandas,Python}	Москва	2025-09-30 14:52:13+03	https://hh.ru/vacancy/121394596
125168978	Инженер по поддержке и разработке инфраструктуры / DevOps (TATLIN.UNIFIED)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Docker,Linux,Python}	Москва	2025-09-10 17:07:57+03	https://hh.ru/vacancy/125168978
125281681	QA automation engineer (Python) в офис	\N	\N	RUR	between1And3	От 1 года до 3 лет	{PostgreSQL,Python}	Саратов	2025-09-12 15:46:59+03	https://hh.ru/vacancy/125281681
125850653	QA Automation Engineer (Python)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Git,Python,pytest}	Нижний Новгород	2025-09-26 16:23:17+03	https://hh.ru/vacancy/125850653
125531243	Разработчик на Java и Kotlin в команду создания карт офисов	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-19 13:51:20+03	https://hh.ru/vacancy/125531243
125485513	Security Engineer/Пентест	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Docker,Go,Kubernetes,Python}	Москва	2025-09-18 14:12:28+03	https://hh.ru/vacancy/125485513
125407002	DevSecOps специалист	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,JavaScript,Python}	Москва	2025-09-16 17:53:14+03	https://hh.ru/vacancy/125407002
125609104	Инженер-программист АСУ ТП	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Челябинск	2025-10-07 14:10:52+03	https://hh.ru/vacancy/125609104
113104035	Middle Unity Разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Гомель	2025-10-08 09:13:26+03	https://hh.ru/vacancy/113104035
125597653	Программист АСУТП	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Java,Python}	Омск	2025-09-22 11:36:43+03	https://hh.ru/vacancy/125597653
125531563	Python разработчик (Middle/Senior)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Python}	Москва	2025-09-19 13:57:44+03	https://hh.ru/vacancy/125531563
124436807	Руководитель отдела тестирования (сетевые технологии)	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,Docker,Git,Python}	Москва	2025-10-06 13:08:49+03	https://hh.ru/vacancy/124436807
122985801	Data Scientist	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux,Python}	Санкт-Петербург	2025-10-06 09:17:26+03	https://hh.ru/vacancy/122985801
125341362	WAF Administrator (F5 ASM / Advanced WAF)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{CI/CD,Python}	Алматы	2025-09-15 15:48:05+03	https://hh.ru/vacancy/125341362
125756873	Инженер по аппаратной валидации СнК	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Git,Linux,Python}	Москва	2025-09-25 11:34:53+03	https://hh.ru/vacancy/125756873
125724135	Ведущий разработчик C++ (Linux/OpenBMC)	\N	\N	RUR	moreThan6	Более 6 лет	{Linux,Python}	Екатеринбург	2025-09-24 16:31:43+03	https://hh.ru/vacancy/125724135
125344399	Инженер по анализу данных шин CAN	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-15 16:44:25+03	https://hh.ru/vacancy/125344399
125165811	Senior C Developer (Greengage)	350000	\N	RUR	between3And6	От 3 до 6 лет	{HTML,Linux,Python,Shell}	Москва	2025-09-10 16:08:58+03	https://hh.ru/vacancy/125165811
124868402	Scala Data Engineer\\Scala разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL,Spark}	Нижний Новгород	2025-10-03 12:59:32+03	https://hh.ru/vacancy/124868402
124291344	Site Reliability Engineer (DevOps) (middle+/senior)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Go,Python}	Москва	2025-09-29 16:16:22+03	https://hh.ru/vacancy/124291344
125443631	Старший инженер по автоматизации тестирования / Команда внутренних сервисов	\N	\N	RUR	moreThan6	Более 6 лет	{Git,Python}	Санкт-Петербург	2025-09-17 14:56:12+03	https://hh.ru/vacancy/125443631
122568881	Разработчик СУБД (PostgreSQL/Tantor) на C	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,PostgreSQL,Python}	Москва	2025-09-30 18:21:03+03	https://hh.ru/vacancy/122568881
88448241	Kernel developer (Linux-like systems)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Linux,Python}	Томск	2025-10-03 10:15:51+03	https://hh.ru/vacancy/88448241
112172031	Администратор систем информационной безопасности (Инженер SIEM)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-10-03 18:18:01+03	https://hh.ru/vacancy/112172031
125924846	Системный программист C, Linux (TLS)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux,Python}	Москва	2025-09-29 18:48:42+03	https://hh.ru/vacancy/125924846
125101329	Преподаватель программирования для детей	25000	50000	RUR	noExperience	Нет опыта	{Python}	Казань	2025-10-06 13:38:09+03	https://hh.ru/vacancy/125101329
125756849	Сетевой инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-10-01 12:12:14+03	https://hh.ru/vacancy/125756849
125585478	Senior Power BI Software Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Алматы	2025-09-22 09:26:40+03	https://hh.ru/vacancy/125585478
125671263	DevSecOps Engineer	300000	400000	RUR	between3And6	От 3 до 6 лет	{Go,Java,Python}	Москва	2025-10-05 17:24:55+03	https://hh.ru/vacancy/125671263
125602935	Ведущий инженер поддержки Containers Solutions в Yandex Cloud	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Go,Python}	Санкт-Петербург	2025-09-22 12:44:48+03	https://hh.ru/vacancy/125602935
125409220	Консультант по внедрению	\N	\N	RUR	between3And6	От 3 до 6 лет	{SQL}	Алматы	2025-09-16 19:37:08+03	https://hh.ru/vacancy/125409220
125608112	Разработчик тестового фреймворка в 5G Core Telecom	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-09-22 13:56:52+03	https://hh.ru/vacancy/125608112
119961283	Senior ML Engineer (Uplift), группа "Search"	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-08 16:43:31+03	https://hh.ru/vacancy/119961283
124233493	DevOps / SRE-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,CI/CD,Python}	Санкт-Петербург	2025-09-18 13:29:35+03	https://hh.ru/vacancy/124233493
125165867	Middle C Developer (Greengage)	250000	\N	RUR	between1And3	От 1 года до 3 лет	{HTML,Linux,Python,Shell}	Москва	2025-09-10 16:09:39+03	https://hh.ru/vacancy/125165867
125089243	Deep Learning-инженер (Speech Recognition)	\N	510000	RUR	between3And6	От 3 до 6 лет	{PyTorch,Python}	Москва	2025-09-09 10:53:59+03	https://hh.ru/vacancy/125089243
123470133	Senior LLM Researcher / Старший АИ исследователь	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-06 10:42:32+03	https://hh.ru/vacancy/123470133
125626336	Преподаватель по информатике и программированию	\N	\N	RUR	noExperience	Нет опыта	{CSS,HTML,Python}	Королев (Московская область)	2025-09-22 21:09:52+03	https://hh.ru/vacancy/125626336
123950933	Application Security Engineer в социальные платформы	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-10-08 10:06:27+03	https://hh.ru/vacancy/123950933
125451049	WordPress PHP разработчик	65548	131096	RUR	between3And6	От 3 до 6 лет	{}	Астана	2025-09-17 16:59:49+03	https://hh.ru/vacancy/125451049
125334160	Преподаватель IT курсов в 1С Клуб программистов для школьников	800	1000	RUR	between1And3	От 1 года до 3 лет	{}	Иваново (Ивановская область)	2025-09-15 14:09:43+03	https://hh.ru/vacancy/125334160
115377509	Технический писатель (IT)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-09-30 12:46:02+03	https://hh.ru/vacancy/115377509
125771186	Программист/Инженер по BMC-контроллерам	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,Shell}	Минск	2025-09-25 14:12:14+03	https://hh.ru/vacancy/125771186
118250620	Инженер-программист (Middle C++, Построение и обработка радиолокационных и оптических изображений)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Linux,Python}	Санкт-Петербург	2025-10-01 11:35:22+03	https://hh.ru/vacancy/118250620
123208620	Разработчик C++ (KSMG)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux,Python}	Москва	2025-09-19 15:17:22+03	https://hh.ru/vacancy/123208620
122222359	Data Security Engineer/Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,Python}	Литва	2025-09-28 18:19:11+03	https://hh.ru/vacancy/122222359
122782306	Системный программист ОС Linux встраиваемых систем (kernel developer)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Git,Go,Linux,Python}	Зеленоград	2025-09-12 17:15:14+03	https://hh.ru/vacancy/122782306
118703329	Руководитель группы разработки (Team Lead)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Java,JavaScript,Python}	Гомель	2025-09-20 11:17:57+03	https://hh.ru/vacancy/118703329
125476294	Data Scientist	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Минск	2025-09-18 11:47:34+03	https://hh.ru/vacancy/125476294
125594075	Системный программист в отдел адаптации ОС Аврора	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux,Python}	Москва	2025-09-22 10:58:43+03	https://hh.ru/vacancy/125594075
109243776	Руководитель группы разработки (Team Lead)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Java,Python}	Сочи	2025-09-23 14:45:33+03	https://hh.ru/vacancy/109243776
123318625	Game AI Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Минск	2025-10-05 13:50:27+03	https://hh.ru/vacancy/123318625
124948313	Старший продуктовый аналитик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Pandas,Python,SQL}	Москва	2025-09-29 10:33:05+03	https://hh.ru/vacancy/124948313
121806763	Аналитик-разработчик в команду "Платформа экспериментов"	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-09-08 16:43:18+03	https://hh.ru/vacancy/121806763
124188264	Senior DevOps Engineer (MDR)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Kubernetes,Python}	Москва	2025-09-17 17:00:26+03	https://hh.ru/vacancy/124188264
124120080	Технический писатель (IT)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Санкт-Петербург	2025-09-30 12:45:58+03	https://hh.ru/vacancy/124120080
125229637	Программист 1С	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Ижевск	2025-09-11 14:36:51+03	https://hh.ru/vacancy/125229637
122277435	Разработчик рекомендательной системы / ML-Engineer (Senior)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Docker,Git,SQL,Spark}	Москва	2025-09-09 12:49:53+03	https://hh.ru/vacancy/122277435
123515196	Разработчик С/С++ (senior)	\N	\N	RUR	moreThan6	Более 6 лет	{}	Москва	2025-09-30 11:08:03+03	https://hh.ru/vacancy/123515196
125700750	Руководитель группы разработки Go, внутренние сервисы	\N	\N	RUR	moreThan6	Более 6 лет	{Go,Java,Python,Rust}	Москва	2025-09-24 12:35:17+03	https://hh.ru/vacancy/125700750
125703292	Разработчик C++ (SD-WAN)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-24 13:09:13+03	https://hh.ru/vacancy/125703292
125522365	Преподаватель цифровых технологий в IT школу KIBERone	40000	100000	RUR	noExperience	Нет опыта	{}	Истра (Московская область)	2025-09-19 11:28:54+03	https://hh.ru/vacancy/125522365
125691521	Руководитель группы ML Engineering, Рекомендации	\N	\N	RUR	moreThan6	Более 6 лет	{Airflow,Kubernetes,Redis}	Москва	2025-09-24 10:26:18+03	https://hh.ru/vacancy/125691521
125820660	Senior Go разработчик / TechLead	\N	\N	RUR	moreThan6	Более 6 лет	{Go}	Москва	2025-09-26 06:52:10+03	https://hh.ru/vacancy/125820660
124360768	Инженер по аппаратной валидации СнК	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Git,Linux,Python}	Нижний Новгород	2025-09-21 11:12:47+03	https://hh.ru/vacancy/124360768
125146628	Преподаватель программирования в IT-школу KIBERone	40000	60000	RUR	noExperience	Нет опыта	{}	Москва	2025-09-10 11:52:41+03	https://hh.ru/vacancy/125146628
125440850	C++ Team Lead в 3D Карту	\N	\N	RUR	between3And6	От 3 до 6 лет	{C++,Python}	Москва	2025-09-17 14:12:09+03	https://hh.ru/vacancy/125440850
125113874	С++ разработчик в Mobile SDK	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-30 11:18:57+03	https://hh.ru/vacancy/125113874
122720346	DevOps (Elph Services)	\N	\N	RUR	moreThan6	Более 6 лет	{}	Новосибирск	2025-10-07 15:27:44+03	https://hh.ru/vacancy/122720346
124095516	Продуктовый архитектор в Mind Migrate и Mind Guard	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,Python}	Москва	2025-10-08 10:00:13+03	https://hh.ru/vacancy/124095516
123187757	Разработчик С/С++ (middle), офис	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Саратов	2025-09-30 11:07:20+03	https://hh.ru/vacancy/123187757
124022926	Разработчик С/С++ (senior)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Санкт-Петербург	2025-09-25 13:03:53+03	https://hh.ru/vacancy/124022926
124490067	Senior SEO-специалист ES	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-24 10:20:28+03	https://hh.ru/vacancy/124490067
125815451	Senior/TeamLead разработки в OpenBMC	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-25 20:12:58+03	https://hh.ru/vacancy/125815451
122842854	Senior Devops	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,Go,Python}	Астана	2025-09-22 13:53:54+03	https://hh.ru/vacancy/122842854
125002267	Kubernetes DevOps Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,Go,Linux,Prometheus,Python}	Минск	2025-10-05 11:11:12+03	https://hh.ru/vacancy/125002267
124980010	Senior Data Analytics Engineer	\N	\N	RUR	moreThan6	Более 6 лет	{NumPy,Pandas,Python}	Алматы	2025-10-04 17:02:27+03	https://hh.ru/vacancy/124980010
125376111	Senior Data Engineer	\N	\N	RUR	moreThan6	Более 6 лет	{Python,SQL}	Санкт-Петербург	2025-09-16 10:38:35+03	https://hh.ru/vacancy/125376111
125852500	Руководитель группы разработки распределённой сборки в DevTools	\N	\N	RUR	moreThan6	Более 6 лет	{}	Москва	2025-09-26 17:06:51+03	https://hh.ru/vacancy/125852500
125725197	Программист-разработчик Oracle	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Астана	2025-09-24 16:53:57+03	https://hh.ru/vacancy/125725197
123997673	Software Developer (Python, React/Typescript)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Celery,Django,Python,React,Redis,TypeScript}	Минск	2025-10-06 10:23:43+03	https://hh.ru/vacancy/123997673
119249135	Senior Build/Deployment Engineer (Senior Toolchain Engineer)	\N	\N	RUR	moreThan6	Более 6 лет	{}	Владимир	2025-10-02 13:09:56+03	https://hh.ru/vacancy/119249135
124463341	Старший инженер по автоматизации тестирования, Python, Отдел разработки математических моделей	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL,pytest}	Москва	2025-09-29 23:56:53+03	https://hh.ru/vacancy/124463341
124880155	Head of Python Development	\N	\N	RUR	moreThan6	Более 6 лет	{PostgreSQL,Python}	Москва	2025-10-06 12:38:15+03	https://hh.ru/vacancy/124880155
124380691	Application security engineer / AppSec-инженер	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Go,Java,JavaScript,Python,TypeScript}	Москва	2025-09-22 11:29:58+03	https://hh.ru/vacancy/124380691
123474340	Senior Data Scientist (ESB)	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Санкт-Петербург	2025-09-22 10:41:10+03	https://hh.ru/vacancy/123474340
123111578	Data Scientist в Trust & Safety	\N	\N	RUR	between3And6	От 3 до 6 лет	{NumPy,Pandas,PyTorch,Python}	Москва	2025-10-03 10:08:55+03	https://hh.ru/vacancy/123111578
125083240	System/Business Analyst	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Java,Python}	Алматы	2025-10-06 09:43:26+03	https://hh.ru/vacancy/125083240
124745762	Senior Network Security Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Go,Python}	Алматы	2025-09-24 09:02:19+03	https://hh.ru/vacancy/124745762
122629521	Application Security Engineer (AppSec)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Go,Linux,Python}	Москва	2025-10-06 09:53:35+03	https://hh.ru/vacancy/122629521
125358868	Программист ПЛИС (FPGA, Направление разработки систем связи)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Git,Python}	Санкт-Петербург	2025-09-15 19:27:12+03	https://hh.ru/vacancy/125358868
123104700	Разработчик C++ (KasperskyOS, Quality Control)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-17 14:43:33+03	https://hh.ru/vacancy/123104700
125107647	Системный администратор баз данных PostgreSQL (DBA)	\N	\N	RUR	moreThan6	Более 6 лет	{Git,Linux,PostgreSQL,Python,Shell}	Москва	2025-09-09 15:02:04+03	https://hh.ru/vacancy/125107647
124795895	Solution Architect (Blockchain / FinTech)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Node.js,Python}	Ташкент	2025-09-30 12:26:02+03	https://hh.ru/vacancy/124795895
118037246	Администратор систем информационной безопасности / Инженер SIEM	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Казань	2025-10-03 18:18:01+03	https://hh.ru/vacancy/118037246
124884732	Solutions Architect (Outsystems)	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Тбилиси	2025-10-04 15:43:42+03	https://hh.ru/vacancy/124884732
92959025	Senior Unity Software Engineer (Gameplay)	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Кипр	2025-10-01 14:51:13+03	https://hh.ru/vacancy/92959025
124275143	Tech Lead product DevRel	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java}	Москва	2025-10-05 12:00:47+03	https://hh.ru/vacancy/124275143
118816943	Руководитель направления процессов безопасной разработки	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,Git,Python}	Москва	2025-09-22 13:41:18+03	https://hh.ru/vacancy/118816943
125809227	Team Lead Backend Developer Node.js	\N	\N	RUR	moreThan6	Более 6 лет	{Python,React,TypeScript}	Москва	2025-09-25 18:01:57+03	https://hh.ru/vacancy/125809227
124046193	Системный архитектор	\N	\N	RUR	moreThan6	Более 6 лет	{Go,Python,TypeScript}	Москва	2025-10-07 18:05:54+03	https://hh.ru/vacancy/124046193
109474813	Преподаватель IT-дисциплины С++	\N	90000	RUR	noExperience	Нет опыта	{}	Санкт-Петербург	2025-10-05 12:45:34+03	https://hh.ru/vacancy/109474813
125585252	Senior AI Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Flask}	Астана	2025-09-22 09:23:45+03	https://hh.ru/vacancy/125585252
124530554	Senior ML Developer [MWS Octapi, МТС Веб Сервисы]	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-25 10:25:49+03	https://hh.ru/vacancy/124530554
125892639	Младший специалист по тестированию ПО (Linux)	79000	79000	RUR	between1And3	От 1 года до 3 лет	{Linux}	Смоленск	2025-09-29 12:11:35+03	https://hh.ru/vacancy/125892639
126187659	Руководитель разработки/Head of Development	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-10-06 14:16:44+03	https://hh.ru/vacancy/126187659
125820825	QA engineer (Middle/Middle+)	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-26 06:59:20+03	https://hh.ru/vacancy/125820825
125914676	Data Scientist	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Airflow,Python,SQL}	Москва	2025-10-05 17:05:48+03	https://hh.ru/vacancy/125914676
125453948	Middle Python Developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Django,FastAPI,Flask,Python}	Минск	2025-09-17 18:16:38+03	https://hh.ru/vacancy/125453948
125207567	Middle Fullstack Developer	80000	85000	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Node.js,Python,TypeScript}	Москва	2025-09-11 11:18:52+03	https://hh.ru/vacancy/125207567
125968013	DevOps-инженер	100000	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,CI/CD,Nginx,Python,"REST API"}	Владивосток	2025-10-06 14:07:18+03	https://hh.ru/vacancy/125968013
80675242	Инженер-тестировщик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Москва	2025-09-11 14:00:29+03	https://hh.ru/vacancy/80675242
125528284	Backend/Python Developer (Middle)	100000	\N	RUR	between1And3	От 1 года до 3 лет	{Flask,MongoDB,MySQL,NumPy,Pandas,Python,"REST API",SQL,TensorFlow}	Ярославль	2025-09-19 13:00:49+03	https://hh.ru/vacancy/125528284
125537679	Python разработчик (Junior+/middle)	180000	220000	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-19 15:40:09+03	https://hh.ru/vacancy/125537679
117246175	Инженер по тестированию ПО	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Linux}	Москва	2025-09-11 08:50:19+03	https://hh.ru/vacancy/117246175
125406127	DevOps	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Kubernetes,Python}	Москва	2025-09-16 17:40:16+03	https://hh.ru/vacancy/125406127
125447321	Технический директор (CTO)	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-17 15:56:27+03	https://hh.ru/vacancy/125447321
123716620	Младший программист-исследователь (стажер)	\N	\N	RUR	noExperience	Нет опыта	{Python}	Москва	2025-10-05 18:13:05+03	https://hh.ru/vacancy/123716620
125887891	Дата-инженер (Junior)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Краснодар	2025-09-29 11:12:11+03	https://hh.ru/vacancy/125887891
126112277	Разработчик / Аналитик Google-таблиц	20000	30000	RUR	noExperience	Нет опыта	{}	Казань	2025-10-03 13:30:47+03	https://hh.ru/vacancy/126112277
125246245	Java-разработчик(Senior)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,Linux,Python}	Санкт-Петербург	2025-09-11 17:49:26+03	https://hh.ru/vacancy/125246245
126070361	BI-разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Pandas,Python,SQL}	Санкт-Петербург	2025-10-06 10:42:39+03	https://hh.ru/vacancy/126070361
122066079	Middle разработчик ML (LLM, VLM, RAG)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Docker,Git,Linux,PyTorch,Python}	Москва	2025-09-25 13:54:39+03	https://hh.ru/vacancy/122066079
125897979	Python разработчик (Middle+ / Senior)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Python}	Москва	2025-09-29 13:25:41+03	https://hh.ru/vacancy/125897979
125891104	Разработчик	64000	\N	RUR	between1And3	От 1 года до 3 лет	{JavaScript,Linux,Python}	Тула	2025-09-29 11:51:23+03	https://hh.ru/vacancy/125891104
126019357	Математик - разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-01 14:50:35+03	https://hh.ru/vacancy/126019357
126029056	Программист С++/Qt	\N	\N	RUR	noExperience	Нет опыта	{Bash,Python}	Санкт-Петербург	2025-10-01 17:37:19+03	https://hh.ru/vacancy/126029056
126098554	Разработчик C++/Qt	\N	\N	RUR	between1And3	От 1 года до 3 лет	{PostgreSQL,Python}	Москва	2025-10-06 09:56:03+03	https://hh.ru/vacancy/126098554
125966326	Python разработчик (Middle+ / Senior)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Python}	Москва	2025-09-30 13:40:08+03	https://hh.ru/vacancy/125966326
126023937	DevOps Engineer	175000	300000	RUR	between1And3	От 1 года до 3 лет	{Bash,Grafana,Kubernetes,Prometheus,Python}	Санкт-Петербург	2025-10-07 16:06:38+03	https://hh.ru/vacancy/126023937
125408735	Java-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Git,Python}	Санкт-Петербург	2025-10-07 19:10:05+03	https://hh.ru/vacancy/125408735
125847075	Инженер по машинному обучению	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Airflow,Python,SQL}	Ульяновск	2025-09-26 15:14:51+03	https://hh.ru/vacancy/125847075
125401126	Middle+/Senior Backend разработчик (Python)	180000	\N	RUR	between3And6	От 3 до 6 лет	{Django,Python,SQL}	Санкт-Петербург	2025-09-16 16:26:01+03	https://hh.ru/vacancy/125401126
126182390	Data Science специалист	\N	\N	RUR	between1And3	От 1 года до 3 лет	{NumPy,Pandas,Python,Scikit-learn}	Ташкент	2025-10-06 13:07:22+03	https://hh.ru/vacancy/126182390
125687018	Senior BI Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-24 09:25:45+03	https://hh.ru/vacancy/125687018
126014091	Инженер-программист (Python AI)	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Python}	Минск	2025-10-01 13:40:12+03	https://hh.ru/vacancy/126014091
125975131	Финансовый Аналитик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Воронеж	2025-09-30 16:17:08+03	https://hh.ru/vacancy/125975131
123701555	Python Back-end Разработчик (веб-сервисы) / Python Back-end Developer (web services)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Санкт-Петербург	2025-10-05 13:48:34+03	https://hh.ru/vacancy/123701555
125484473	Программист С++/Qt (junior) (Гибрид)	\N	130000	RUR	noExperience	Нет опыта	{CI/CD,React}	Москва	2025-09-18 13:58:05+03	https://hh.ru/vacancy/125484473
125893446	Junior/Middle DevOps/System Engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Kubernetes,Python}	Минск	2025-09-29 12:23:36+03	https://hh.ru/vacancy/125893446
124494645	QA Engineer - B2B IT InsurTech	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Калининград	2025-09-25 13:17:44+03	https://hh.ru/vacancy/124494645
126122183	QA fullstack (инфраструктурные сервисы)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Playwright,Python,Selenium}	Санкт-Петербург	2025-10-03 16:25:50+03	https://hh.ru/vacancy/126122183
125431849	Senior React Developer	\N	\N	RUR	moreThan6	Более 6 лет	{JavaScript}	Алат (Узбекистан)	2025-09-17 12:02:18+03	https://hh.ru/vacancy/125431849
125981779	Младший аналитик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-10-01 08:53:58+03	https://hh.ru/vacancy/125981779
125784043	Golang Developer/Разработчик (Go)	\N	\N	RUR	moreThan6	Более 6 лет	{Go}	Москва	2025-09-25 15:29:57+03	https://hh.ru/vacancy/125784043
126169295	Marketing Analyst (Маркетинговый аналитик)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Санкт-Петербург	2025-10-06 10:41:01+03	https://hh.ru/vacancy/126169295
125231446	Руководитель проектов	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-11 15:02:25+03	https://hh.ru/vacancy/125231446
124675920	Junior QA Engineer	69000	\N	RUR	noExperience	Нет опыта	{Python,Selenium,pytest}	Краснодар	2025-09-16 07:59:10+03	https://hh.ru/vacancy/124675920
125276311	Специалист поддержки второй линии в банк	150000	210000	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Санкт-Петербург	2025-09-12 14:19:10+03	https://hh.ru/vacancy/125276311
125581294	Junior Java разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Git,Java}	Омск	2025-09-22 08:31:19+03	https://hh.ru/vacancy/125581294
126015223	Специалист технической поддержки (L2)	104500	104500	RUR	noExperience	Нет опыта	{}	Москва	2025-10-01 13:56:00+03	https://hh.ru/vacancy/126015223
126055859	Python Trainee	\N	\N	RUR	noExperience	Нет опыта	{Python,SQL}	Алматы	2025-10-02 11:17:51+03	https://hh.ru/vacancy/126055859
125482282	Инженер по тестированию Middle QA Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-09-18 13:18:05+03	https://hh.ru/vacancy/125482282
125393821	Младший разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Java,Python}	Пермь	2025-10-01 15:51:14+03	https://hh.ru/vacancy/125393821
126022352	Главный инженер проектов (ГИП) С++/Python	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-10-01 15:40:55+03	https://hh.ru/vacancy/126022352
126092290	Программист макросов (VBA)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,Selenium}	Екатеринбург	2025-10-03 08:04:08+03	https://hh.ru/vacancy/126092290
126186351	ML-разработчик (Middle+, банковский проект)	\N	260000	RUR	between1And3	От 1 года до 3 лет	{Pandas,Python,SQL}	Москва	2025-10-06 14:01:00+03	https://hh.ru/vacancy/126186351
118570341	ML-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-10-06 06:04:39+03	https://hh.ru/vacancy/118570341
125644063	Системный администратор/DevOps-инженер (Junior)	\N	\N	RUR	noExperience	Нет опыта	{Bash,Python}	Новосибирск	2025-10-08 10:22:35+03	https://hh.ru/vacancy/125644063
124512409	Middle Backend разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Go,JavaScript,Python,Rust,TypeScript}	Москва	2025-10-07 18:47:30+03	https://hh.ru/vacancy/124512409
125268672	Тестировщик ПО (в офис, г. Санкт-Петербург)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{pytest}	Санкт-Петербург	2025-10-08 11:30:56+03	https://hh.ru/vacancy/125268672
125909582	Технический директор (CTO / Tech Lead)	\N	\N	RUR	moreThan6	Более 6 лет	{Django,FastAPI,Python,React,TypeScript}	Калининград	2025-10-05 16:10:26+03	https://hh.ru/vacancy/125909582
125671852	Аналитик качества пользовательского опыта	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Москва	2025-09-23 17:42:17+03	https://hh.ru/vacancy/125671852
125894163	Старший системный администратор	230000	\N	RUR	moreThan6	Более 6 лет	{Bash,Python}	Санкт-Петербург	2025-10-05 12:33:31+03	https://hh.ru/vacancy/125894163
125865694	Junior Full-Stack developer	\N	\N	RUR	noExperience	Нет опыта	{}	Москва	2025-09-28 14:43:45+03	https://hh.ru/vacancy/125865694
124444624	Ведущий инженер технической поддержки / Техлид	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-24 12:35:04+03	https://hh.ru/vacancy/124444624
125919845	Инженер по развитию ITSM платформы	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-09-29 17:38:56+03	https://hh.ru/vacancy/125919845
125035014	Администратор проекта	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Москва	2025-10-06 10:18:44+03	https://hh.ru/vacancy/125035014
126073072	Разработчик на Python / Django (Middle)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Django,Python}	Кострома	2025-10-02 15:41:49+03	https://hh.ru/vacancy/126073072
124975417	Инженер-программист	70000	\N	RUR	noExperience	Нет опыта	{CSS,HTML,Java,JavaScript,Python}	Санкт-Петербург	2025-10-03 23:30:15+03	https://hh.ru/vacancy/124975417
125315309	Графический дизайнер	\N	70000	RUR	between1And3	От 1 года до 3 лет	{Java,Python}	Ижевск	2025-09-15 10:08:18+03	https://hh.ru/vacancy/125315309
120947925	QA Engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Docker,Java,Python,SQL}	Новосибирск	2025-09-23 07:25:44+03	https://hh.ru/vacancy/120947925
125102333	Специалист по тестированию ПО	120000	\N	RUR	between1And3	От 1 года до 3 лет	{HTML,JavaScript,Python}	Москва	2025-10-06 13:54:54+03	https://hh.ru/vacancy/125102333
125802057	Инженер по тестированию	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Playwright,Python,TypeScript}	Москва	2025-09-25 17:03:11+03	https://hh.ru/vacancy/125802057
125039928	Разработчик Senior Front-end (React, Разработка платформенного банковского решения)	\N	\N	RUR	between3And6	От 3 до 6 лет	{JavaScript,TypeScript}	Москва	2025-09-08 15:13:30+03	https://hh.ru/vacancy/125039928
125221838	Python-разработчик LLM	300000	330000	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Flask}	Москва	2025-09-30 10:36:31+03	https://hh.ru/vacancy/125221838
125760866	Младший PHP- разработчик (неавторизованный веб\\финтех)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Docker,Python}	Москва	2025-09-25 12:20:10+03	https://hh.ru/vacancy/125760866
125906350	Junior Python разработчик	90000	\N	RUR	between1And3	От 1 года до 3 лет	{Django,FastAPI,Flask,Python,"REST API",SQL}	Челябинск	2025-09-29 15:20:22+03	https://hh.ru/vacancy/125906350
125963986	Web программист / Веб разработчик	40000	150000	RUR	noExperience	Нет опыта	{CSS,HTML}	Тольятти	2025-09-30 13:12:05+03	https://hh.ru/vacancy/125963986
125145422	Middle Python разработчик	\N	250000	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-02 12:01:18+03	https://hh.ru/vacancy/125145422
125838918	Системный аналитик	\N	100000	RUR	noExperience	Нет опыта	{JavaScript,Python}	Краснодар	2025-09-26 12:46:05+03	https://hh.ru/vacancy/125838918
125934991	Системный аналитик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,RabbitMQ,Redis,SQL}	Москва	2025-09-30 08:03:25+03	https://hh.ru/vacancy/125934991
125966294	Fullstack Developer (Node.js/React)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Grafana,Node.js,Prometheus,React,TypeScript}	Москва	2025-09-30 13:39:53+03	https://hh.ru/vacancy/125966294
126172291	Intern Gameplay Programmer	\N	\N	RUR	noExperience	Нет опыта	{Java,Python}	Санкт-Петербург	2025-10-06 11:13:58+03	https://hh.ru/vacancy/126172291
126026527	CV/ML инженер (Компьютерное зрение)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{NumPy,Pandas,Python}	Астана	2025-10-01 16:53:20+03	https://hh.ru/vacancy/126026527
125921791	Ведущий инженер по тестированию(QA backend)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{"REST API"}	Москва	2025-09-29 17:53:42+03	https://hh.ru/vacancy/125921791
126177608	Senior Python developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,"REST API"}	Москва	2025-10-06 12:08:27+03	https://hh.ru/vacancy/126177608
125761678	Back-end Developer (в Абу-Даби)	350000	450000	RUR	between3And6	От 3 до 6 лет	{FastAPI,PostgreSQL,Python}	Москва	2025-09-25 12:26:47+03	https://hh.ru/vacancy/125761678
126160530	Python-разработчик (Senior)	\N	\N	RUR	moreThan6	Более 6 лет	{FastAPI,Python}	Нижний Новгород	2025-10-06 09:07:09+03	https://hh.ru/vacancy/126160530
126107354	Senior Backend developer (Trackadero)	\N	\N	RUR	moreThan6	Более 6 лет	{FastAPI,Go,Python}	Москва	2025-10-03 12:01:00+03	https://hh.ru/vacancy/126107354
126011507	QA Auto Engineer	\N	160000	RUR	between3And6	От 3 до 6 лет	{Java,Python}	Казань	2025-10-01 13:09:59+03	https://hh.ru/vacancy/126011507
126179476	Senior Python-разработчик	250000	300000	RUR	moreThan6	Более 6 лет	{Django,FastAPI,Flask,MongoDB,MySQL,PostgreSQL}	Санкт-Петербург	2025-10-06 12:28:45+03	https://hh.ru/vacancy/126179476
126185666	Системный аналитик Озера Данных	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-06 13:51:26+03	https://hh.ru/vacancy/126185666
126077391	QA инженер (automation)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-02 16:43:16+03	https://hh.ru/vacancy/126077391
126008142	Старший системный администратор	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Docker,Go,Python}	Москва	2025-10-01 12:18:45+03	https://hh.ru/vacancy/126008142
126005866	Middle Python-разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Санкт-Петербург	2025-10-01 11:47:22+03	https://hh.ru/vacancy/126005866
125647702	Аналитик баз данных	\N	50000	RUR	between1And3	От 1 года до 3 лет	{}	Казань	2025-09-23 11:12:27+03	https://hh.ru/vacancy/125647702
125966178	QA-инженер (в проекты 1С)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Санкт-Петербург	2025-09-30 13:38:34+03	https://hh.ru/vacancy/125966178
126169449	Data Science (временные ряды)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Казань	2025-10-06 10:42:38+03	https://hh.ru/vacancy/126169449
106879736	Web-разработчик	80000	170000	RUR	between1And3	От 1 года до 3 лет	{Docker,Go,Python,"REST API",RabbitMQ,Redis}	Владивосток	2025-10-06 08:15:39+03	https://hh.ru/vacancy/106879736
125847488	Junior-Middle Python Backend разработчик (VPN-сервис)	120000	150000	RUR	between1And3	От 1 года до 3 лет	{Python,asyncio}	Обнинск	2025-10-05 15:22:28+03	https://hh.ru/vacancy/125847488
125318012	Python Developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-10-06 10:37:49+03	https://hh.ru/vacancy/125318012
126138529	СТО / Chief Technical Officer (Node.js) в социальную сеть	450000	\N	RUR	moreThan6	Более 6 лет	{}	Москва	2025-10-04 22:33:07+03	https://hh.ru/vacancy/126138529
126083800	Go Developer (Hotcore)/Го Разработчик (Хоткор)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,Kafka,Python}	Москва	2025-10-02 20:04:16+03	https://hh.ru/vacancy/126083800
125078583	Golang Developer (Уфа)	143400	290300	RUR	between3And6	От 3 до 6 лет	{Go}	Уфа	2025-09-09 08:42:14+03	https://hh.ru/vacancy/125078583
126022778	Data Science (временные ряды)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Санкт-Петербург	2025-10-01 15:48:55+03	https://hh.ru/vacancy/126022778
125965106	ML-инженер / Machine Learning Engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{PyTorch,Python,SQL,TensorFlow}	Москва	2025-09-30 13:25:20+03	https://hh.ru/vacancy/125965106
125331700	Junior Data Analyst	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Москва	2025-10-06 13:34:21+03	https://hh.ru/vacancy/125331700
126187121	Системный аналитик (KasperskyOS Platform)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-06 14:09:29+03	https://hh.ru/vacancy/126187121
125465322	QA-инженер (manual и automation)	\N	\N	RUR	between3And6	От 3 до 6 лет	{JavaScript,Python,"REST API"}	Караганда	2025-09-18 09:10:31+03	https://hh.ru/vacancy/125465322
125400503	QA-инженер Junior/Junior+	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Казань	2025-09-16 16:16:55+03	https://hh.ru/vacancy/125400503
123067133	Инженер-тестировщик (ручное тестирование)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-07 16:12:29+03	https://hh.ru/vacancy/123067133
126026444	Инженер-программист	180000	220000	RUR	between3And6	От 3 до 6 лет	{SQL}	Пермь	2025-10-07 16:51:34+03	https://hh.ru/vacancy/126026444
125071283	Frontend разработчик (React)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,React,TypeScript}	Москва	2025-09-08 22:20:12+03	https://hh.ru/vacancy/125071283
126108010	Python Developer (Openstack)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-10-03 12:12:12+03	https://hh.ru/vacancy/126108010
126174085	Инженер технической поддержки	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Москва	2025-10-06 11:35:54+03	https://hh.ru/vacancy/126174085
125167712	Frontend React	\N	\N	RUR	moreThan6	Более 6 лет	{Django,Docker,Flask,Git,Python}	Москва	2025-09-10 16:42:51+03	https://hh.ru/vacancy/125167712
125172246	Тестировщик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-09-10 17:32:37+03	https://hh.ru/vacancy/125172246
125302486	Senior Python разработчик	250000	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-06 05:51:47+03	https://hh.ru/vacancy/125302486
125969427	Backend-разработчик (Middle)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-09-30 14:32:13+03	https://hh.ru/vacancy/125969427
125962759	Python разработчик Middle+	150000	200000	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-10-06 12:57:09+03	https://hh.ru/vacancy/125962759
125376261	Tech Lead Golang	250000	\N	RUR	noExperience	Нет опыта	{Python}	Братск	2025-09-16 10:40:42+03	https://hh.ru/vacancy/125376261
125838119	Senior QA Engineer	\N	\N	RUR	moreThan6	Более 6 лет	{Python,pytest}	Санкт-Петербург	2025-09-26 12:29:53+03	https://hh.ru/vacancy/125838119
123700308	Frontend-разработчик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{CSS,HTML}	Владимир	2025-09-24 13:39:31+03	https://hh.ru/vacancy/123700308
125217825	QA Engineer (gamedev)	\N	120000	RUR	between1And3	От 1 года до 3 лет	{Python,Selenium,pytest}	Москва	2025-09-11 12:50:55+03	https://hh.ru/vacancy/125217825
126082400	Системный аналитик	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Краснодар	2025-10-02 18:37:30+03	https://hh.ru/vacancy/126082400
126135268	Сетевой инженер (стажёр)	\N	\N	RUR	noExperience	Нет опыта	{Python}	Москва	2025-10-04 13:10:57+03	https://hh.ru/vacancy/126135268
125726523	Backend developer (Golang+Python)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Django,Python}	Санкт-Петербург	2025-09-24 17:20:12+03	https://hh.ru/vacancy/125726523
125899545	Аналитик AI	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-09-29 13:49:32+03	https://hh.ru/vacancy/125899545
126000615	AI Engineer / Machine Learning Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Минск	2025-10-01 10:36:59+03	https://hh.ru/vacancy/126000615
125118918	Python-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,Git,PostgreSQL,Python,"REST API"}	Москва	2025-09-09 17:24:28+03	https://hh.ru/vacancy/125118918
126060710	Аналитик-тестировщик	60000	\N	RUR	noExperience	Нет опыта	{Python,SQL}	Москва	2025-10-05 12:29:04+03	https://hh.ru/vacancy/126060710
126065688	IOS developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Пенза	2025-10-02 13:44:35+03	https://hh.ru/vacancy/126065688
124437932	Специалист технической поддержки	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-18 14:33:29+03	https://hh.ru/vacancy/124437932
125999928	Тестировщик (Manual + Автотесты)	50000	\N	RUR	between1And3	От 1 года до 3 лет	{Java,JavaScript,Python}	Екатеринбург	2025-10-01 10:26:55+03	https://hh.ru/vacancy/125999928
126076149	DevOps-инженер (ML/LLM/CV)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Airflow,Bash,Python}	Москва	2025-10-05 16:34:45+03	https://hh.ru/vacancy/126076149
125947094	Web-разработчик Backend (по работе с сайтами)	60000	80000	RUR	between1And3	От 1 года до 3 лет	{}	Всеволожск	2025-09-30 11:10:42+03	https://hh.ru/vacancy/125947094
126091285	Android-разработчик	\N	\N	RUR	noExperience	Нет опыта	{Bash,CI/CD,Python}	Новосибирск	2025-10-03 07:34:49+03	https://hh.ru/vacancy/126091285
125081736	Golang-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Python}	Москва	2025-09-09 09:26:54+03	https://hh.ru/vacancy/125081736
125735692	Тестировщик	50000	80000	RUR	between1And3	От 1 года до 3 лет	{}	Томск	2025-09-25 04:54:33+03	https://hh.ru/vacancy/125735692
126164123	Инженер-программист	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-06 09:45:32+03	https://hh.ru/vacancy/126164123
124244671	Ведущий инженер (Нагрузочное Тестирование)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-09-17 18:19:31+03	https://hh.ru/vacancy/124244671
120832607	Старший Python-разработчик (Django, Wagtail) в офис	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Краснодар	2025-09-09 14:21:27+03	https://hh.ru/vacancy/120832607
125664649	Salesforce Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{AWS,Azure,GCP,Java,Node.js,Python}	Минск	2025-09-23 15:24:51+03	https://hh.ru/vacancy/125664649
125475105	Инженер верификации ASIC/FPGA	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-10-06 11:29:21+03	https://hh.ru/vacancy/125475105
125543257	QA Engineer	\N	256000	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-10-07 17:44:24+03	https://hh.ru/vacancy/125543257
126021068	Системный аналитик	160000	250000	RUR	between3And6	От 3 до 6 лет	{JavaScript,Python}	Санкт-Петербург	2025-10-07 15:17:53+03	https://hh.ru/vacancy/126021068
124368241	Старший продуктовый аналитик в монетизацию бизнеса	\N	\N	RUR	between3And6	От 3 до 6 лет	{MySQL,Python,SQL}	Москва	2025-09-29 12:24:24+03	https://hh.ru/vacancy/124368241
118703436	Руководитель группы разработки (Team Lead)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Java,JavaScript,Python}	Гродно	2025-09-20 11:18:47+03	https://hh.ru/vacancy/118703436
124420483	Руководитель группы разработки (Team Lead)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Java,Python}	Новосибирск	2025-09-22 07:58:34+03	https://hh.ru/vacancy/124420483
125887282	Старший/ведущий разработчик C++ (Linux/OpenBMC)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux,Python}	Нижний Новгород	2025-09-29 11:05:00+03	https://hh.ru/vacancy/125887282
124435605	Руководитель группы безопасности приложений / Application Security Lead	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Java,Python}	Москва	2025-09-24 09:50:59+03	https://hh.ru/vacancy/124435605
124220128	Senior Data Scientist (NLP/LLM)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-29 13:22:01+03	https://hh.ru/vacancy/124220128
119681719	Администратор инфраструктурных систем ИБ (Песочница/SSDLC)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Kafka,Python}	Краснодар	2025-09-24 10:18:24+03	https://hh.ru/vacancy/119681719
115792803	Senior fullstack java developer	200000	300000	RUR	moreThan6	Более 6 лет	{Java,Python}	Санкт-Петербург	2025-10-05 17:17:43+03	https://hh.ru/vacancy/115792803
125968754	Team Lead в Social Core (Middle/Senior C++)	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Новосибирск	2025-09-30 14:20:14+03	https://hh.ru/vacancy/125968754
120221708	Network Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{AWS,Azure,Python}	Минск	2025-09-29 10:45:23+03	https://hh.ru/vacancy/120221708
122626680	Server Developer (Python/C++)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Минск	2025-10-05 13:21:27+03	https://hh.ru/vacancy/122626680
125491343	Преподаватель языка программирования Python	\N	130000	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-09-30 11:34:33+03	https://hh.ru/vacancy/125491343
124979978	Senior AI & NLP Engineer	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Алматы	2025-10-04 16:58:24+03	https://hh.ru/vacancy/124979978
123063064	Team Lead Data Scientist	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-08 11:51:58+03	https://hh.ru/vacancy/123063064
124704569	Research Developer (KATA)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-10-01 11:44:50+03	https://hh.ru/vacancy/124704569
120919613	Преподаватель программирования Python, С++	\N	130000	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-02 15:13:06+03	https://hh.ru/vacancy/120919613
125417831	Network reliability engineer (WB Cloud)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Go,Python}	Москва	2025-09-17 09:02:16+03	https://hh.ru/vacancy/125417831
121796648	Разработчик ПЛИС (FPGA/DSP Engineer)	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,Linux,Python}	Санкт-Петербург	2025-10-01 15:48:42+03	https://hh.ru/vacancy/121796648
118586624	Senior C++ разработчик в Core	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-30 11:12:49+03	https://hh.ru/vacancy/118586624
125832951	Tableau Enterprise Expert	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Минск	2025-09-26 11:01:55+03	https://hh.ru/vacancy/125832951
114972373	Middle MLops specialist	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-10-06 09:32:33+03	https://hh.ru/vacancy/114972373
115134182	Senior SEO-специалист / Старший специалист по поисковому продвижению	90000	140000	RUR	between3And6	От 3 до 6 лет	{CSS,HTML,Python}	Красноярск	2025-10-03 08:27:40+03	https://hh.ru/vacancy/115134182
125673432	QA инженер в команду Trust Me	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Java,Python}	Москва	2025-09-23 18:36:02+03	https://hh.ru/vacancy/125673432
107216560	Lead Unity Software Engineer (Gameplay)	\N	\N	RUR	moreThan6	Более 6 лет	{}	Армения	2025-10-07 18:19:39+03	https://hh.ru/vacancy/107216560
125000885	Big Data infrastructure engineer/DWH (Москва)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-08 10:56:38+03	https://hh.ru/vacancy/125000885
122253654	Embedded-разработчик в команду разработки лидаров	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-10-08 10:15:06+03	https://hh.ru/vacancy/122253654
123842282	Tech UI Developer (С++)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Санкт-Петербург	2025-10-07 15:28:40+03	https://hh.ru/vacancy/123842282
92952450	Senior C++ Software Engineer (Gameplay)	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Кипр	2025-10-01 13:27:23+03	https://hh.ru/vacancy/92952450
124453036	Senior ML Developer [OctAPI, МТС Веб Сервисы]	\N	\N	RUR	between3And6	От 3 до 6 лет	{NumPy,Pandas,Python,Spark}	Москва	2025-09-24 12:55:57+03	https://hh.ru/vacancy/124453036
117180572	C developer (ME)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Java,Linux,Python}	Новосибирск	2025-10-02 13:36:40+03	https://hh.ru/vacancy/117180572
125662808	Team Lead​​​​​​​ Data Scientist (Search & Recommendation)	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-09-23 14:56:25+03	https://hh.ru/vacancy/125662808
122625407	Инженер информационной безопасности/Application Security Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,CI/CD,Python}	Москва	2025-10-03 13:06:06+03	https://hh.ru/vacancy/122625407
117452258	C/C++ developer (PON)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Новосибирск	2025-10-02 13:36:40+03	https://hh.ru/vacancy/117452258
125241900	Ведущий консультант-разработчик Форсайт	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-10-05 16:36:32+03	https://hh.ru/vacancy/125241900
122345774	Tech Lead Python (IaaS/PaaS)	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-10-02 18:01:47+03	https://hh.ru/vacancy/122345774
119961214	Senior Data Scientist (Rec. system)	\N	\N	RUR	between3And6	От 3 до 6 лет	{NumPy,Python}	Москва	2025-09-29 20:17:33+03	https://hh.ru/vacancy/119961214
119691034	Преподаватель направления "Data Scientist"	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-09-15 12:48:22+03	https://hh.ru/vacancy/119691034
125807613	Senior DBA / Database administrator	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD}	Москва	2025-10-02 16:48:12+03	https://hh.ru/vacancy/125807613
115992781	Trainee Angular developer	\N	\N	RUR	noExperience	Нет опыта	{Angular,Java,Node.js,Python}	Минск	2025-09-18 10:45:27+03	https://hh.ru/vacancy/115992781
92959069	Senior Unity Software Engineer (Gameplay)	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Армения	2025-10-01 14:51:30+03	https://hh.ru/vacancy/92959069
124727533	Senior MLOps	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,CI/CD,Go,Java,Python,SQL}	Москва	2025-09-29 08:29:34+03	https://hh.ru/vacancy/124727533
92952217	Senior C++ Software Engineer (Gameplay)	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Сербия	2025-10-01 13:24:28+03	https://hh.ru/vacancy/92952217
107216636	Lead Unity Software Engineer (Gameplay)	\N	\N	RUR	moreThan6	Более 6 лет	{}	Сербия	2025-09-07 18:21:01+03	https://hh.ru/vacancy/107216636
92964575	Lead C++ Software Engineer (Gameplay)	\N	\N	RUR	moreThan6	Более 6 лет	{}	Кипр	2025-10-01 15:57:30+03	https://hh.ru/vacancy/92964575
92952280	Senior C++ Software Engineer (Gameplay)	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Астана	2025-10-01 13:25:26+03	https://hh.ru/vacancy/92952280
124167353	Python/C++ Developer (Tanks Blitz)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Kafka,RabbitMQ}	Минск	2025-10-04 10:30:33+03	https://hh.ru/vacancy/124167353
124070809	Lead/Snr Full-Stack Engineer (Node.js/Python/LLM/prompt engineering)	\N	\N	RUR	moreThan6	Более 6 лет	{Node.js,Python}	Минск	2025-09-09 14:55:28+03	https://hh.ru/vacancy/124070809
126191179	Программист - разработчик 1С Middle/Senior (IT компания)	166700	406000	RUR	between1And3	От 1 года до 3 лет	{Java,Python}	Краснодар	2025-10-06 15:06:10+03	https://hh.ru/vacancy/126191179
126192014	Разработчик робототехнических систем (ROS + Embedded)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-06 15:17:08+03	https://hh.ru/vacancy/126192014
125330559	QA Engineer	163794	\N	RUR	between3And6	От 3 до 6 лет	{MongoDB,Python}	Алматы	2025-09-15 13:17:30+03	https://hh.ru/vacancy/125330559
125981903	Data Analyst / Аналитик Данных	245691	\N	RUR	between1And3	От 1 года до 3 лет	{NumPy,Pandas,Python}	Сербия	2025-10-03 18:57:49+03	https://hh.ru/vacancy/125981903
125655391	Frontend Developer (React)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Алматы	2025-09-23 13:00:47+03	https://hh.ru/vacancy/125655391
125281254	Специалист технической поддержки (2 линия)	150000	210000	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Электросталь (Московская область)	2025-09-12 15:41:58+03	https://hh.ru/vacancy/125281254
126126081	Стажер-разработчик бэкенда	\N	\N	RUR	noExperience	Нет опыта	{}	Москва	2025-10-03 18:05:48+03	https://hh.ru/vacancy/126126081
126125980	Стажер-разработчик бэкенда	\N	\N	RUR	noExperience	Нет опыта	{}	Новосибирск	2025-10-03 18:01:54+03	https://hh.ru/vacancy/126125980
126126015	Стажер-разработчик бэкенда	\N	\N	RUR	noExperience	Нет опыта	{}	Екатеринбург	2025-10-03 18:03:17+03	https://hh.ru/vacancy/126126015
125671854	Аналитик качества пользовательского опыта	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Санкт-Петербург	2025-09-23 17:42:17+03	https://hh.ru/vacancy/125671854
126029158	Программист С++/ QT Middle	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Санкт-Петербург	2025-10-01 17:41:01+03	https://hh.ru/vacancy/126029158
126137475	Manual QA-тестировщик / Тестировщик ПО	60062	105108	RUR	noExperience	Нет опыта	{Java,Python,SQL}	Астана	2025-10-04 18:37:15+03	https://hh.ru/vacancy/126137475
125802471	QA Automation Engineer / AQA	\N	\N	RUR	between1And3	От 1 года до 3 лет	{CI/CD,Python}	Новосибирск	2025-09-25 17:06:48+03	https://hh.ru/vacancy/125802471
125338950	Junior Python разработчик	90000	\N	RUR	between1And3	От 1 года до 3 лет	{Django,FastAPI,Flask,Python,"REST API",SQL}	Омск	2025-09-15 15:11:18+03	https://hh.ru/vacancy/125338950
125602350	Инженер техподдержки (2-я линия, Linux, приложения, SQL)	150000	210000	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Хабаровск	2025-09-22 12:36:28+03	https://hh.ru/vacancy/125602350
125600843	Системный администратор приложений (2-я линия, Linux, SQL)	150000	210000	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Воронеж	2025-09-22 12:14:35+03	https://hh.ru/vacancy/125600843
125081253	Инженер на сопровождение (микросервисы)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Новосибирск	2025-09-09 09:20:08+03	https://hh.ru/vacancy/125081253
125881468	Разработчик	64000	\N	RUR	between1And3	От 1 года до 3 лет	{JavaScript,Linux,Python}	Тула	2025-09-29 09:57:20+03	https://hh.ru/vacancy/125881468
125842044	Data Analyst (Finance)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Сербия	2025-09-26 13:39:09+03	https://hh.ru/vacancy/125842044
126135009	Программист C/C++ (DPDK-приложения)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Санкт-Петербург	2025-10-04 12:47:45+03	https://hh.ru/vacancy/126135009
125479980	Тестировщик Senior в WEB	\N	\N	RUR	between3And6	От 3 до 6 лет	{Git,Python,Selenium}	Сербия	2025-09-18 12:41:16+03	https://hh.ru/vacancy/125479980
125233827	Fullstack Python разработчик (Python + AI + Pet Projects)	\N	\N	RUR	noExperience	Нет опыта	{}	Екатеринбург	2025-09-11 15:29:15+03	https://hh.ru/vacancy/125233827
126063586	Cloud & DevOps Intern	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Docker,Python}	Алматы	2025-10-02 13:11:30+03	https://hh.ru/vacancy/126063586
105758050	Python-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Python}	Ростов-на-Дону	2025-10-06 13:10:02+03	https://hh.ru/vacancy/105758050
126065839	Cloud & DevOps Intern	\N	\N	RUR	noExperience	Нет опыта	{Bash,Docker,Python}	Бишкек	2025-10-02 13:47:19+03	https://hh.ru/vacancy/126065839
126065841	Cloud & DevOps Intern	\N	\N	RUR	noExperience	Нет опыта	{Bash,Docker,Python}	Токмок	2025-10-02 13:47:19+03	https://hh.ru/vacancy/126065841
105758081	Python-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Python}	Таганрог	2025-10-06 13:10:06+03	https://hh.ru/vacancy/105758081
126161982	Девопс инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,CI/CD,Git,Linux,Python}	Москва	2025-10-06 09:22:39+03	https://hh.ru/vacancy/126161982
125314822	Администратор баз данных PostgreSQL [МТС Линк]	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Kafka,Python}	Москва	2025-09-23 17:56:29+03	https://hh.ru/vacancy/125314822
125899724	Python | Go Developer	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Санкт-Петербург	2025-10-05 13:51:39+03	https://hh.ru/vacancy/125899724
125242944	Руководитель отдела backend разработки / Engineering manager	200000	\N	RUR	between3And6	От 3 до 6 лет	{Kubernetes}	Пермь	2025-10-05 16:43:05+03	https://hh.ru/vacancy/125242944
125003106	Инженер-программист по автоматизации тестирования	180000	220000	RUR	between1And3	От 1 года до 3 лет	{CI/CD,Python,pytest}	Санкт-Петербург	2025-10-03 11:36:37+03	https://hh.ru/vacancy/125003106
125096519	Консультант-стажер 1С (Техподдержка)	50000	\N	RUR	noExperience	Нет опыта	{}	Москва	2025-09-25 12:33:06+03	https://hh.ru/vacancy/125096519
121340236	Инженер Professional Services	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Linux,Python}	Москва	2025-10-02 14:10:51+03	https://hh.ru/vacancy/121340236
125282017	DevOps-инженер (Middle/Senior)	250000	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Linux,Python}	Рязань	2025-09-12 15:52:45+03	https://hh.ru/vacancy/125282017
125468654	Python разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Git,PostgreSQL,Python}	Москва	2025-10-06 10:00:48+03	https://hh.ru/vacancy/125468654
126123214	Разработчик С++ (CoreTech)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python,SQL}	Москва	2025-10-03 16:45:52+03	https://hh.ru/vacancy/126123214
125323713	Инженер 3й линии поддержки (ИБ сервисы)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Москва	2025-09-15 11:48:24+03	https://hh.ru/vacancy/125323713
124991325	Node.js backend developer (MVP)	\N	\N	RUR	between3And6	От 3 до 6 лет	{JavaScript,Node.js,TypeScript}	Санкт-Петербург	2025-09-08 09:03:53+03	https://hh.ru/vacancy/124991325
125283936	Middle SRE/DevOps-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,CI/CD,Python}	Москва	2025-09-12 17:16:34+03	https://hh.ru/vacancy/125283936
124022647	Системный архитектор	\N	450000	RUR	between3And6	От 3 до 6 лет	{Java,Python}	Москва	2025-09-12 16:35:18+03	https://hh.ru/vacancy/124022647
124444209	Ведущий инженер-программист С++	250000	\N	RUR	between3And6	От 3 до 6 лет	{C++}	Ярославль	2025-09-23 10:46:02+03	https://hh.ru/vacancy/124444209
92354865	Middle PHP Developer	200000	\N	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-10-08 08:58:54+03	https://hh.ru/vacancy/92354865
125399187	DevOps specialist	350000	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Go,Python}	Москва	2025-10-07 15:57:09+03	https://hh.ru/vacancy/125399187
125120681	QA Automation Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,JavaScript,Python}	Тбилиси	2025-09-09 17:47:36+03	https://hh.ru/vacancy/125120681
125533157	QA Automation Engineer (Python)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Playwright,Python,Selenium}	Самара	2025-09-19 14:23:11+03	https://hh.ru/vacancy/125533157
125833117	Senior Full-Stack Developer/Team Lead	119785	179677	RUR	moreThan6	Более 6 лет	{Django,FastAPI,Java,Python,React}	Алматы	2025-09-29 11:51:00+03	https://hh.ru/vacancy/125833117
125903534	DevOps Engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,CI/CD,Docker,Grafana,Kubernetes,Linux,Prometheus,Python}	Москва	2025-09-29 14:44:43+03	https://hh.ru/vacancy/125903534
125288068	Старший Go разработчик (цифровая модель космической системы)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,Python}	Москва	2025-09-12 18:17:23+03	https://hh.ru/vacancy/125288068
114926548	Системный администратор	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Рязань	2025-09-22 13:40:06+03	https://hh.ru/vacancy/114926548
124496487	Системный аналитик (с навыками программирования)	46000	75000	RUR	between1And3	От 1 года до 3 лет	{Java,Python}	Киров (Кировская область)	2025-09-22 11:44:41+03	https://hh.ru/vacancy/124496487
124765998	Старший разработчик машинного обучения ( Data Platform и ML )	\N	\N	RUR	between3And6	От 3 до 6 лет	{Pandas,PyTorch,Python}	Москва	2025-09-30 14:55:43+03	https://hh.ru/vacancy/124765998
119961243	Аналитик- разработчик в команду "Рекомендации"	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-09-29 20:17:24+03	https://hh.ru/vacancy/119961243
123058524	Руководитель отдела BI - разработки	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Санкт-Петербург	2025-09-18 10:20:13+03	https://hh.ru/vacancy/123058524
125285378	Специалист технической поддержки	57000	68000	RUR	between1And3	От 1 года до 3 лет	{Python}	Санкт-Петербург	2025-09-12 16:54:38+03	https://hh.ru/vacancy/125285378
126111246	Разработчик C++ (eMSC)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-10-03 13:09:57+03	https://hh.ru/vacancy/126111246
124230334	Ведущий инженер СХД [MWS Cloud Platform]	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-09-18 14:50:53+03	https://hh.ru/vacancy/124230334
125446361	Руководитель разработки B2B-платформы	\N	\N	RUR	moreThan6	Более 6 лет	{}	Москва	2025-09-17 15:39:35+03	https://hh.ru/vacancy/125446361
122862242	Системный администратор Linux	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-09-10 15:29:49+03	https://hh.ru/vacancy/122862242
124152465	Ведущий аналитик уязвимостей (Vulnerability Management)	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,Python}	Москва	2025-09-16 09:44:06+03	https://hh.ru/vacancy/124152465
126184197	Middle C++ разработчик в Ads Core	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-06 13:29:53+03	https://hh.ru/vacancy/126184197
119066414	Инженер по тестированию / Software Tester (Unix)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Linux}	Санкт-Петербург	2025-09-26 18:16:52+03	https://hh.ru/vacancy/119066414
122516275	QA Automation Engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Ташкент	2025-10-06 10:52:47+03	https://hh.ru/vacancy/122516275
124838767	Инженер по интеграции ИИ-решений	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,FastAPI,PostgreSQL,Python}	Москва	2025-10-02 14:30:36+03	https://hh.ru/vacancy/124838767
124672024	Инженер по тестированию автоматизированных систем ОВХ (Python), Разработка склада	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,pytest}	Иннополис	2025-09-30 00:47:48+03	https://hh.ru/vacancy/124672024
125226445	Руководитель отдела веб-разработки	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-10-05 13:43:57+03	https://hh.ru/vacancy/125226445
126172114	Администратор баз данных/DBA	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-10-06 11:11:42+03	https://hh.ru/vacancy/126172114
125496322	Technical Support Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,PostgreSQL,Python}	Минск	2025-09-18 16:56:08+03	https://hh.ru/vacancy/125496322
125842282	Администратор баз данных Pangolin	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Linux,Python}	Москва	2025-09-26 13:44:09+03	https://hh.ru/vacancy/125842282
123977269	Аналитик моделей рисков (Валидация)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-06 11:23:54+03	https://hh.ru/vacancy/123977269
124173905	Fullstack-разработчик	\N	\N	RUR	moreThan6	Более 6 лет	{Django,FastAPI,Go,Java,Node.js,Python}	Алматы	2025-09-09 07:45:47+03	https://hh.ru/vacancy/124173905
122390435	Программист 1С	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Владимир	2025-09-24 13:39:31+03	https://hh.ru/vacancy/122390435
125175359	Python Developer (Cybersecurity Core Team)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Docker,Linux}	Москва	2025-10-07 19:04:47+03	https://hh.ru/vacancy/125175359
125230160	DevOps-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{AWS,Azure,Bash,CI/CD,GCP,Grafana,Prometheus,Python}	Казань	2025-09-11 14:46:05+03	https://hh.ru/vacancy/125230160
125693743	Java разработчик (автоматизация контакт центра)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Ташкент	2025-09-24 10:57:28+03	https://hh.ru/vacancy/125693743
123685127	Middle DevOps Engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{CI/CD,Linux}	Казань	2025-09-16 10:37:34+03	https://hh.ru/vacancy/123685127
122471130	Инженер DevOps — сетевое оборудование и ОС	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Linux}	Москва	2025-09-24 19:02:37+03	https://hh.ru/vacancy/122471130
125065582	Middle/Senior Системный аналитик 1С	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-09-08 17:41:25+03	https://hh.ru/vacancy/125065582
126007542	ИТ Аудитор	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-10-01 12:09:31+03	https://hh.ru/vacancy/126007542
125833647	Специалист по анализу защищенности (Pentester) [Техноплатформы, МТС Веб Сервисы]	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-09-26 11:13:50+03	https://hh.ru/vacancy/125833647
125967408	Архитектор/DevOps Senior	\N	5000	RUR	between3And6	От 3 до 6 лет	{Prometheus}	Москва	2025-10-06 13:56:47+03	https://hh.ru/vacancy/125967408
123015192	Сетевой инженер службы технической поддержки UserGate	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Санкт-Петербург	2025-09-19 05:33:39+03	https://hh.ru/vacancy/123015192
125044258	Ведущий специалист по информационному поиску (программист-аналитик)	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-10-01 12:22:33+03	https://hh.ru/vacancy/125044258
125645157	ML-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-23 10:37:43+03	https://hh.ru/vacancy/125645157
126169791	Специалист технической поддержки	56500	79100	RUR	between1And3	От 1 года до 3 лет	{Bash,Java,Python}	Санкт-Петербург	2025-10-06 10:46:54+03	https://hh.ru/vacancy/126169791
125941585	Team Lead Golang	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,Python}	Москва	2025-09-30 09:53:34+03	https://hh.ru/vacancy/125941585
126113035	Руководитель разработки (ML)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-03 13:46:03+03	https://hh.ru/vacancy/126113035
125788012	Администратор баз данных (PostgreSQL) / DBA / Database Administrator	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Linux,Python}	Минск	2025-09-25 15:48:00+03	https://hh.ru/vacancy/125788012
124529978	Разработчик pl/sql	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Java,Python}	Санкт-Петербург	2025-10-04 13:47:45+03	https://hh.ru/vacancy/124529978
125841713	Программист 1С	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-10-05 13:33:40+03	https://hh.ru/vacancy/125841713
125096439	Консультант-стажер 1С (Техподдержка)	\N	\N	RUR	noExperience	Нет опыта	{}	Санкт-Петербург	2025-09-25 12:33:28+03	https://hh.ru/vacancy/125096439
124409153	DevOps-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,Kubernetes}	Новосибирск	2025-09-29 05:58:02+03	https://hh.ru/vacancy/124409153
125501817	Архитектор решений	\N	\N	RUR	moreThan6	Более 6 лет	{Java,Kubernetes,MongoDB,Node.js,PostgreSQL,Python,React,Redis,TypeScript}	Санкт-Петербург	2025-09-18 18:30:59+03	https://hh.ru/vacancy/125501817
90599147	Системный программист (Linux-like systems, kernel)	300000	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Linux,Python}	Москва	2025-10-03 10:15:51+03	https://hh.ru/vacancy/90599147
124501294	Инженер Linux-систем (Балансировка и реверс-проксирование)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Новосибирск	2025-09-24 09:17:56+03	https://hh.ru/vacancy/124501294
122825832	Администратор СХД и SAN	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Хабаровск	2025-09-16 12:08:43+03	https://hh.ru/vacancy/122825832
124681062	Backend-программист PHP (Middle)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{CI/CD,Docker,PostgreSQL,Python}	Владивосток	2025-09-24 09:56:01+03	https://hh.ru/vacancy/124681062
115915367	DevSecOps engineer (безопасная разработка)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Санкт-Петербург	2025-09-15 11:05:33+03	https://hh.ru/vacancy/115915367
124343188	BigData / DWH разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{PostgreSQL}	Москва	2025-09-19 17:14:53+03	https://hh.ru/vacancy/124343188
124703422	Ведущий специалист BIM	130000	\N	RUR	between1And3	От 1 года до 3 лет	{}	Санкт-Петербург	2025-09-24 12:15:52+03	https://hh.ru/vacancy/124703422
124488723	ML инженер (Python, AI-интеграции)	\N	\N	RUR	between3And6	От 3 до 6 лет	{PyTorch,Python,TensorFlow}	Москва	2025-09-10 10:27:20+03	https://hh.ru/vacancy/124488723
125539945	DevOps-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,CI/CD,Go,JavaScript,Nginx,Python}	Москва	2025-09-19 16:16:46+03	https://hh.ru/vacancy/125539945
126121462	Системный администратор Linux/System Administrator Linux	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Краснодар	2025-10-03 16:12:54+03	https://hh.ru/vacancy/126121462
125032384	IT Infrastructure Technical Project Manager	\N	\N	RUR	moreThan6	Более 6 лет	{}	Алматы	2025-10-01 12:46:05+03	https://hh.ru/vacancy/125032384
125337144	QA Automation Engineer	160000	200000	RUR	between3And6	От 3 до 6 лет	{Java,Python}	Москва	2025-10-06 14:49:19+03	https://hh.ru/vacancy/125337144
125267646	Разработчик/Технолог/Архитектор Naumen Service Desk	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Java,Python,SQL}	Москва	2025-09-12 11:56:47+03	https://hh.ru/vacancy/125267646
111342030	Старший инженер по тестированию ПО (встраиваемое ПО, Embedded, ПАК)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-09-17 18:12:20+03	https://hh.ru/vacancy/111342030
125232988	Разработчик DWH	\N	150000	RUR	between3And6	От 3 до 6 лет	{SQL}	Санкт-Петербург	2025-09-11 15:16:30+03	https://hh.ru/vacancy/125232988
125827757	Инженер-программист АСУТП	\N	140000	RUR	between1And3	От 1 года до 3 лет	{Python}	Санкт-Петербург	2025-09-26 09:40:50+03	https://hh.ru/vacancy/125827757
125706330	Ведущий Python разработчик - Архитектор	200000	350000	RUR	moreThan6	Более 6 лет	{Python}	Краснодар	2025-10-06 13:51:14+03	https://hh.ru/vacancy/125706330
125286079	BI-аналитик (middle)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Санкт-Петербург	2025-10-07 12:12:01+03	https://hh.ru/vacancy/125286079
125593831	Data Engineer | Middle-Senior	\N	400000	RUR	between3And6	От 3 до 6 лет	{CI/CD,Python,Spark}	Москва	2025-10-07 10:56:32+03	https://hh.ru/vacancy/125593831
126224021	ML Ops	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,Kubernetes,Python}	Москва	2025-10-07 09:24:24+03	https://hh.ru/vacancy/126224021
124606587	Руководитель группы разработки	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-10-06 18:28:00+03	https://hh.ru/vacancy/124606587
124881661	Аналитик данных	100000	120000	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Екатеринбург	2025-10-07 08:52:09+03	https://hh.ru/vacancy/124881661
126197564	DevOps engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,CI/CD,Docker,Python}	Москва	2025-10-06 16:19:50+03	https://hh.ru/vacancy/126197564
126234379	DevOps-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Go,Python}	Москва	2025-10-07 11:28:06+03	https://hh.ru/vacancy/126234379
80736535	Программист JavaScript	50000	70000	RUR	between1And3	От 1 года до 3 лет	{Flask,JavaScript,Python,"REST API",React,SQL}	Ростов-на-Дону	2025-10-07 13:25:19+03	https://hh.ru/vacancy/80736535
125098827	Системный разработчик С++ в команду Control	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-10-06 15:54:06+03	https://hh.ru/vacancy/125098827
125280498	Senior backend engineer/backend-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Python}	Другое	2025-10-06 15:31:17+03	https://hh.ru/vacancy/125280498
123633435	Junior Server Core Programmer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Санкт-Петербург	2025-10-07 10:20:50+03	https://hh.ru/vacancy/123633435
123613700	Разработчик osint сервисов (Python)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-06 18:17:44+03	https://hh.ru/vacancy/123613700
120382490	ML-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Челябинск	2025-09-22 09:03:56+03	https://hh.ru/vacancy/120382490
125279517	Junior разработчик Fullstack Python Backend + Flutter	\N	\N	RUR	between1And3	От 1 года до 3 лет	{FastAPI,Python}	Москва	2025-10-06 15:15:22+03	https://hh.ru/vacancy/125279517
125667652	Senior DevOps Engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Тбилиси	2025-10-07 12:51:20+03	https://hh.ru/vacancy/125667652
125289560	Middle Python-разработчик (AI-агент)	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,Docker,Python}	Москва	2025-10-06 21:17:54+03	https://hh.ru/vacancy/125289560
123080940	Аналитик отчетных систем/ аналитик DWH	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Воронеж	2025-09-12 11:41:53+03	https://hh.ru/vacancy/123080940
125346079	Python Tool Developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-06 17:19:43+03	https://hh.ru/vacancy/125346079
124533424	Python разработчик в офис г. Брянск	\N	40000	RUR	between1And3	От 1 года до 3 лет	{Django,Flask,MySQL,PostgreSQL,Python}	Брянск	2025-10-07 10:37:01+03	https://hh.ru/vacancy/124533424
126001623	SEO-специалист (Senior)	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Санкт-Петербург	2025-10-07 14:10:01+03	https://hh.ru/vacancy/126001623
125706487	ML-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Санкт-Петербург	2025-09-24 13:52:45+03	https://hh.ru/vacancy/125706487
126230309	Fullstack-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-10-07 10:44:54+03	https://hh.ru/vacancy/126230309
126228124	Системный инженер (DevOps)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Linux,Python}	Москва	2025-10-07 10:18:21+03	https://hh.ru/vacancy/126228124
126260870	Ведущий инженер-программист для разработки низкоуровневого и системного ПО	\N	\N	RUR	moreThan6	Более 6 лет	{Python,Shell}	Санкт-Петербург	2025-10-07 14:38:30+03	https://hh.ru/vacancy/126260870
119419879	Backend-разработчик (Python)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,"REST API",asyncio}	Москва	2025-10-07 10:59:01+03	https://hh.ru/vacancy/119419879
122786215	Инженер по тестированию (Python)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,Selenium,pytest}	Сочи	2025-10-07 14:44:51+03	https://hh.ru/vacancy/122786215
125982182	DevOps-инженер на платформу контейнерной оркестрации	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Kubernetes,Python}	Москва	2025-09-30 19:18:34+03	https://hh.ru/vacancy/125982182
126015958	Веб-аналитик	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-07 14:04:04+03	https://hh.ru/vacancy/126015958
126258649	Разработчик DWH	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Екатеринбург	2025-10-07 14:07:42+03	https://hh.ru/vacancy/126258649
121806820	ML Engineer ("Search")	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-10-06 12:46:58+03	https://hh.ru/vacancy/121806820
124995310	Инженер по сопровождению/внедрению программного обеспечения	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Петрозаводск	2025-10-07 08:47:02+03	https://hh.ru/vacancy/124995310
125980341	Fullstack Golang Developer (React, HR-tech)	\N	400000	RUR	moreThan6	Более 6 лет	{Go}	Москва	2025-10-06 17:57:58+03	https://hh.ru/vacancy/125980341
122238558	DevOps-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,CI/CD,Python}	Минск	2025-10-06 15:59:10+03	https://hh.ru/vacancy/122238558
118870006	Инженер по автоматизации (AQA)	\N	\N	RUR	between3And6	От 3 до 6 лет	{PostgreSQL,Python}	Москва	2025-10-07 11:14:44+03	https://hh.ru/vacancy/118870006
123145451	Data Engineer в группу разработки хранилища конверсий (E-com)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Москва	2025-10-06 21:14:43+03	https://hh.ru/vacancy/123145451
125091949	Программист C++	150000	250000	RUR	between3And6	От 3 до 6 лет	{}	Ярославль	2025-09-09 11:27:22+03	https://hh.ru/vacancy/125091949
125096312	Middleware Developer в команду Performance (General components)	\N	\N	RUR	moreThan6	Более 6 лет	{}	Москва	2025-10-06 15:54:09+03	https://hh.ru/vacancy/125096312
125474364	Ведущий разработчик DWH/BI	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Санкт-Петербург	2025-10-07 12:12:01+03	https://hh.ru/vacancy/125474364
125107398	С++ Разработчик в ML tooling Teleoperations	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-06 15:54:01+03	https://hh.ru/vacancy/125107398
126190828	Преподаватель программирования Python, С++	\N	130000	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-06 15:02:59+03	https://hh.ru/vacancy/126190828
123760968	DevOps-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Grafana,Kubernetes,Prometheus,Python}	Петрозаводск	2025-10-07 08:47:14+03	https://hh.ru/vacancy/123760968
124995600	Senior Backend developer - Python / Бэкенд Разработчик	415000	\N	RUR	moreThan6	Более 6 лет	{AWS,Python}	Москва	2025-10-05 09:55:00+03	https://hh.ru/vacancy/124995600
126284092	Python-разработчик (Middle+/Senior)	90093	150155	RUR	between1And3	От 1 года до 3 лет	{Python}	Алматы	2025-10-08 07:55:19+03	https://hh.ru/vacancy/126284092
126276942	Python-разработчик	\N	150000	RUR	between1And3	От 1 года до 3 лет	{NumPy,Pandas,Python}	Москва	2025-10-07 20:31:45+03	https://hh.ru/vacancy/126276942
125980606	Junior Python Developer	60062	90093	RUR	between1And3	От 1 года до 3 лет	{FastAPI,Flask,Python,"REST API"}	Алматы	2025-09-30 18:06:30+03	https://hh.ru/vacancy/125980606
126286477	Middle+/Senior Python Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Celery,Django,Docker,Linux,PostgreSQL,Python,Redis}	Ташкент	2025-10-08 08:54:43+03	https://hh.ru/vacancy/126286477
125391252	Разработчик Python (Django)	\N	150000	RUR	between1And3	От 1 года до 3 лет	{Celery,Django,PostgreSQL,Python,SQL}	Санкт-Петербург	2025-10-07 14:13:13+03	https://hh.ru/vacancy/125391252
126267340	Разработчик	175500	\N	RUR	between1And3	От 1 года до 3 лет	{}	Казань	2025-10-07 16:10:31+03	https://hh.ru/vacancy/126267340
126295047	Golang-разработчик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-08 10:56:10+03	https://hh.ru/vacancy/126295047
126277329	Middle Backend Developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Django,FastAPI,Flask,Python}	Санкт-Петербург	2025-10-07 21:25:55+03	https://hh.ru/vacancy/126277329
126261515	Руководитель проекта	234000	\N	RUR	between1And3	От 1 года до 3 лет	{Docker,Linux,Python}	Казань	2025-10-07 14:49:35+03	https://hh.ru/vacancy/126261515
126262114	Middle Python Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,"REST API"}	Пенза	2025-10-07 14:59:07+03	https://hh.ru/vacancy/126262114
126282507	ML-инженер / NLP-специалист	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-08 07:00:49+03	https://hh.ru/vacancy/126282507
126267864	Python-разработчик (middle, middle+)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Ростов-на-Дону	2025-10-07 16:18:50+03	https://hh.ru/vacancy/126267864
125647237	Middle QA Engineer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{FastAPI,Go,Kafka,Kubernetes,PostgreSQL,Python,pytest}	Иннополис	2025-10-08 11:05:38+03	https://hh.ru/vacancy/125647237
126269278	IT-рекрутер	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-10-07 16:38:15+03	https://hh.ru/vacancy/126269278
126275871	Frontend Разработчик (Angular)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Angular,CI/CD,FastAPI,Python}	Ташкент	2025-10-07 18:51:43+03	https://hh.ru/vacancy/126275871
125671633	Middle Backend-разработчик (Golang)	139289	188450	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-23 17:34:07+03	https://hh.ru/vacancy/125671633
126286593	Full Stack/Backend разработчик (Python, FastAPI, LLM, RAG), Choco|Freedom AI Platform	\N	\N	RUR	moreThan6	Более 6 лет	{FastAPI,Python}	Алматы	2025-10-08 08:57:04+03	https://hh.ru/vacancy/126286593
126295169	Стажер-разработчик Java	40000	\N	RUR	noExperience	Нет опыта	{Java,React}	Дубна (Московская область)	2025-10-08 10:57:22+03	https://hh.ru/vacancy/126295169
124577390	Аналитик данных	37539	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Астана	2025-09-24 14:39:48+03	https://hh.ru/vacancy/124577390
126271044	Product Analyst	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Кипр	2025-10-07 17:06:55+03	https://hh.ru/vacancy/126271044
125420046	Руководитель направления разработки	420000	580000	RUR	between3And6	От 3 до 6 лет	{}	Екатеринбург	2025-09-17 09:36:25+03	https://hh.ru/vacancy/125420046
126272649	QA Automation Engineer (AI Voicebot)	\N	310000	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-07 17:42:01+03	https://hh.ru/vacancy/126272649
125605807	Python Backend-разработчик (middle/senior)	\N	180186	RUR	between3And6	От 3 до 6 лет	{Celery,Django,FastAPI,PostgreSQL,Python,"REST API",SQL}	Алматы	2025-09-22 13:21:43+03	https://hh.ru/vacancy/125605807
126297382	Разработчик информационной системы управления метаданными	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Java,JavaScript,Python,SQL}	Москва	2025-10-08 11:25:03+03	https://hh.ru/vacancy/126297382
126271138	Разработчик проверок качества данных (Informatica)	\N	300000	RUR	between1And3	От 1 года до 3 лет	{PostgreSQL,SQL}	Москва	2025-10-07 17:10:48+03	https://hh.ru/vacancy/126271138
126272621	ML - инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{NumPy,Pandas,PyTorch,Python,SQL,Scikit-learn,TensorFlow}	Москва	2025-10-07 17:41:06+03	https://hh.ru/vacancy/126272621
126294047	Fullstack JavaScript Developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Красноярск	2025-10-08 10:41:39+03	https://hh.ru/vacancy/126294047
126273121	Senior Python-разработчик	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,FastAPI,Python}	Москва	2025-10-07 17:47:47+03	https://hh.ru/vacancy/126273121
126265567	Senior Backend Engineer	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-10-07 15:40:20+03	https://hh.ru/vacancy/126265567
126295533	Middle Python developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-10-08 11:02:34+03	https://hh.ru/vacancy/126295533
126275072	C++ developer	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-10-07 18:14:09+03	https://hh.ru/vacancy/126275072
125330558	QA Engineer	163870	\N	RUR	between3And6	От 3 до 6 лет	{MongoDB,Python}	Сербия	2025-09-15 13:17:30+03	https://hh.ru/vacancy/125330558
126120273	Junior PHP (Laravel) разработчик	45046	60062	RUR	between1And3	От 1 года до 3 лет	{Git,MySQL,SQL}	Алматы	2025-10-03 15:52:21+03	https://hh.ru/vacancy/126120273
126276439	Системный Администратор	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Docker,Python,"REST API"}	Москва	2025-10-07 19:36:24+03	https://hh.ru/vacancy/126276439
126119396	Senior Python Backend Developer	163870	327740	RUR	between3And6	От 3 до 6 лет	{CI/CD,Docker}	Ташкент	2025-10-03 15:35:49+03	https://hh.ru/vacancy/126119396
126133196	Data Engineer	245805	\N	RUR	between3And6	От 3 до 6 лет	{Kafka,Python,SQL}	Москва	2025-10-07 09:03:40+03	https://hh.ru/vacancy/126133196
126262615	Младший системный аналитик AML	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-07 15:06:57+03	https://hh.ru/vacancy/126262615
125953611	Python-разработчик (Junior)	\N	50000	RUR	between1And3	От 1 года до 3 лет	{Git,PostgreSQL,Python,"REST API",SQL}	Москва	2025-09-30 11:52:11+03	https://hh.ru/vacancy/125953611
126294136	Python-разработчик (разработка и интеграция ML cервисов)	\N	\N	RUR	between3And6	От 3 до 6 лет	{FastAPI,Flask,Python,asyncio}	Москва	2025-10-08 10:42:49+03	https://hh.ru/vacancy/126294136
126288448	Senior QA automation Python	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,pytest}	Санкт-Петербург	2025-10-08 09:29:13+03	https://hh.ru/vacancy/126288448
126265266	Data Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Airflow,Python}	Тбилиси	2025-10-07 15:35:27+03	https://hh.ru/vacancy/126265266
125612154	Middle Software Engineer (Python, Golang)	75077	120124	RUR	between3And6	От 3 до 6 лет	{Django,Python}	Астана	2025-09-22 15:00:38+03	https://hh.ru/vacancy/125612154
125620599	DevOps Engineer	368707	532577	RUR	moreThan6	Более 6 лет	{Go,Kafka,PostgreSQL,Python,RabbitMQ,Redis}	Москва	2025-09-22 17:02:38+03	https://hh.ru/vacancy/125620599
126269908	ML-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{NumPy,Pandas,PyTorch,Python,SQL,Scikit-learn,TensorFlow}	Москва	2025-10-07 16:48:11+03	https://hh.ru/vacancy/126269908
126273007	Tech lead Python developer	\N	\N	RUR	moreThan6	Более 6 лет	{Git,MongoDB}	Москва	2025-10-07 17:45:32+03	https://hh.ru/vacancy/126273007
126272597	Low-code Разработчик / Аналитик	45000	\N	RUR	noExperience	Нет опыта	{Java,Python}	Ростов-на-Дону	2025-10-07 17:40:17+03	https://hh.ru/vacancy/126272597
126261032	Архитектор программных решений	\N	\N	RUR	between3And6	От 3 до 6 лет	{Java,Python}	Москва	2025-10-07 14:41:12+03	https://hh.ru/vacancy/126261032
125745000	Бухгалтер (ИТ)	\N	163870	RUR	between1And3	От 1 года до 3 лет	{CSS,Git,HTML,JavaScript,MongoDB,MySQL,PostgreSQL,Python}	Ташкент	2025-09-25 08:58:33+03	https://hh.ru/vacancy/125745000
126265165	Software Engineer (Almaty)	\N	\N	RUR	moreThan6	Более 6 лет	{Java}	Алматы	2025-10-07 15:33:45+03	https://hh.ru/vacancy/126265165
122804074	Fullstack Web QA	127632	217725	RUR	between3And6	От 3 до 6 лет	{Go,Java,Python}	Алматы	2025-09-16 07:40:30+03	https://hh.ru/vacancy/122804074
122029530	Аналитик отчетных систем/аналитик DWH	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Саратов	2025-10-08 06:22:28+03	https://hh.ru/vacancy/122029530
125374271	Senior Python Backend Engineer	135139	240248	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Flask,MongoDB,MySQL,PostgreSQL,Python}	Алматы	2025-10-07 10:13:19+03	https://hh.ru/vacancy/125374271
126122882	Администратор баз данных MongoDB	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Grafana,Linux,MongoDB,PostgreSQL,Python}	Москва	2025-10-03 16:38:53+03	https://hh.ru/vacancy/126122882
125925536	Разработчик системы принятия решения	81935	147483	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Новосибирск	2025-09-29 19:30:13+03	https://hh.ru/vacancy/125925536
125656893	Инженер технической поддержки	\N	\N	RUR	noExperience	Нет опыта	{Bash,Python}	Москва	2025-09-23 13:21:49+03	https://hh.ru/vacancy/125656893
126273107	Linux-инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Docker,Git,Kafka,Kubernetes,Python,RabbitMQ}	Москва	2025-10-07 17:47:22+03	https://hh.ru/vacancy/126273107
126288454	Java разработчик с нуля (стажер)	70000	80000	RUR	noExperience	Нет опыта	{Java}	Челябинск	2025-10-08 09:29:18+03	https://hh.ru/vacancy/126288454
125502420	Web разработчик	\N	163870	RUR	between3And6	От 3 до 6 лет	{Python}	Тбилиси	2025-10-06 19:13:33+03	https://hh.ru/vacancy/125502420
122028399	Аналитик отчетных систем DWH	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Уфа	2025-10-08 06:22:19+03	https://hh.ru/vacancy/122028399
125381993	Python разработчик (Middle+/Senior)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Казань	2025-09-16 11:56:16+03	https://hh.ru/vacancy/125381993
125426940	Backend-разработчик Python/Django	142647	\N	RUR	between1And3	От 1 года до 3 лет	{CI/CD,Celery,Django,Kubernetes,PostgreSQL,Python,"REST API",RabbitMQ,Redis}	Астана	2025-10-08 11:03:43+03	https://hh.ru/vacancy/125426940
125093934	Разработчик DB Oracle	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Java,Python}	Пермь	2025-10-08 07:08:52+03	https://hh.ru/vacancy/125093934
125649455	ML Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{NumPy,Pandas,Python,Scikit-learn}	Баку	2025-09-23 11:39:30+03	https://hh.ru/vacancy/125649455
125706232	Фулстек-разработчик	204837	\N	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Flask,Java,Python}	Армения	2025-09-24 13:49:33+03	https://hh.ru/vacancy/125706232
125746841	Экономист (ИТ)	\N	180257	RUR	between1And3	От 1 года до 3 лет	{CSS,Git,HTML,JavaScript,MongoDB,MySQL,PostgreSQL,Python}	Ташкент	2025-09-25 09:24:25+03	https://hh.ru/vacancy/125746841
126298262	Senior Data Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Airflow,Python,SQL}	Тбилиси	2025-10-08 11:36:55+03	https://hh.ru/vacancy/126298262
126276348	Продуктовый аналитик в Яндекс.Вертикали	\N	\N	RUR	moreThan6	Более 6 лет	{Python}	Москва	2025-10-07 19:26:15+03	https://hh.ru/vacancy/126276348
125757876	QA Full-stack Engineer (Payments & Billing)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Тбилиси	2025-09-25 11:51:01+03	https://hh.ru/vacancy/125757876
125465196	Data scientist (AI Agents & LLMs)	327740	409674	RUR	moreThan6	Более 6 лет	{AWS}	Мальта	2025-09-18 09:09:09+03	https://hh.ru/vacancy/125465196
126288047	Старший системный администратор / инженер	160000	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Йошкар-Ола	2025-10-08 09:23:03+03	https://hh.ru/vacancy/126288047
126276999	Senior Full Stack Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Angular,Python,React,Vue}	Минск	2025-10-07 20:37:45+03	https://hh.ru/vacancy/126276999
126292388	Разработчик в области автоматизации тестирования(SDET)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Kubernetes,PostgreSQL,Python}	Москва	2025-10-08 10:19:16+03	https://hh.ru/vacancy/126292388
125529502	Senior Python developer	327740	491609	RUR	moreThan6	Более 6 лет	{Django,FastAPI,Flask,Git,JavaScript,Pandas,Python,"REST API"}	Сербия	2025-09-19 13:19:47+03	https://hh.ru/vacancy/125529502
125646614	Программист микроконтроллеров на языке C	153158	304514	RUR	between3And6	От 3 до 6 лет	{Git,Python}	Астана	2025-09-23 10:57:43+03	https://hh.ru/vacancy/125646614
125349542	Navigation Data Operations Specialist	36871	49161	RUR	noExperience	Нет опыта	{}	Минск	2025-09-15 18:07:07+03	https://hh.ru/vacancy/125349542
122323357	Разработчик C/Linux	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Docker,Linux,Python}	Москва	2025-09-25 11:06:19+03	https://hh.ru/vacancy/122323357
125289184	Senior Product Data Scientist	245805	491609	RUR	between3And6	От 3 до 6 лет	{Pandas,Python,SQL}	Москва	2025-09-12 19:49:37+03	https://hh.ru/vacancy/125289184
124997836	Руководитель НСИ	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Санкт-Петербург	2025-10-03 16:29:25+03	https://hh.ru/vacancy/124997836
125770678	Разработчик C++ (ПО для базовой станции LTE)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Git,Linux,Python}	Москва	2025-09-25 14:07:46+03	https://hh.ru/vacancy/125770678
126272074	Senior DevOps-инженер в команду Network(-ish) Development [MWS Cloud Platform]	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Java,Linux,Python}	Москва	2025-10-07 17:30:25+03	https://hh.ru/vacancy/126272074
122211164	Senior Data Engineer (в Тбилиси)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Airflow,Python,SQL}	Москва	2025-10-07 12:51:43+03	https://hh.ru/vacancy/122211164
125332162	Senior System engineer / Старший системный инженер (TATLIN.OBJECT)	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,Go,Python}	Москва	2025-09-15 13:41:34+03	https://hh.ru/vacancy/125332162
125140671	DevOps-инженер	108584	\N	RUR	between1And3	От 1 года до 3 лет	{CI/CD,Kubernetes}	Минск	2025-10-07 10:46:05+03	https://hh.ru/vacancy/125140671
125541713	Портфельный менеджер	\N	\N	RUR	between3And6	От 3 до 6 лет	{NumPy,Pandas,Python,SQL}	Москва	2025-10-07 16:53:30+03	https://hh.ru/vacancy/125541713
125981904	Data Analyst / Аналитик Данных	245805	\N	RUR	between1And3	От 1 года до 3 лет	{NumPy,Pandas,Python}	Минск	2025-10-06 18:57:49+03	https://hh.ru/vacancy/125981904
125688207	Python Backend (junior+/middle) разработчик	54519	102224	RUR	between1And3	От 1 года до 3 лет	{Django,FastAPI,Flask,Python}	Самарканд	2025-09-24 09:43:50+03	https://hh.ru/vacancy/125688207
125600715	Junior Software Developer/Начинающий программист	\N	81935	RUR	noExperience	Нет опыта	{CSS,HTML,JavaScript,Node.js,Python,React,Vue}	Гомель	2025-09-22 12:13:07+03	https://hh.ru/vacancy/125600715
125731793	Бухгалтер	\N	180257	RUR	between1And3	От 1 года до 3 лет	{CSS,Git,HTML,JavaScript,MongoDB,MySQL,PostgreSQL,Python}	Ташкент	2025-09-24 20:35:48+03	https://hh.ru/vacancy/125731793
126266827	Инженер-разработчик систем управления	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Linux,Python}	Москва	2025-10-07 16:00:31+03	https://hh.ru/vacancy/126266827
125893009	Python-разработчик Рег.облако	\N	\N	RUR	between3And6	От 3 до 6 лет	{Celery,Flask,GraphQL,MySQL,Python,RabbitMQ,pytest}	Москва	2025-09-29 12:17:11+03	https://hh.ru/vacancy/125893009
126266965	Системный аналитик (Big Data)	\N	300000	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Санкт-Петербург	2025-10-07 16:02:25+03	https://hh.ru/vacancy/126266965
126293887	Senior Python Developer	\N	\N	RUR	moreThan6	Более 6 лет	{PyTorch,Python}	Санкт-Петербург	2025-10-08 10:39:21+03	https://hh.ru/vacancy/126293887
125721109	TechLead Python FastAPI	368707	409674	RUR	moreThan6	Более 6 лет	{FastAPI,Python}	Мальта	2025-09-24 15:45:17+03	https://hh.ru/vacancy/125721109
125010047	Python Django developer	\N	81935	RUR	between1And3	От 1 года до 3 лет	{Django,Python,"REST API",React}	Ташкент	2025-09-08 12:16:11+03	https://hh.ru/vacancy/125010047
125447458	QA Automation Mobile специалист/SDET (Java)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Java,JavaScript,Python}	Казань	2025-09-17 15:59:22+03	https://hh.ru/vacancy/125447458
125655697	BI аналитик-разработчик в команду Эйчартех	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Санкт-Петербург	2025-09-23 13:04:30+03	https://hh.ru/vacancy/125655697
125862090	Python-разработчик / Data Engineer	60062	120124	RUR	between3And6	От 3 до 6 лет	{Python}	Алматы	2025-09-28 01:07:35+03	https://hh.ru/vacancy/125862090
125670991	Python-разработчик	65548	98322	RUR	between3And6	От 3 до 6 лет	{Python}	Астана	2025-09-23 17:20:30+03	https://hh.ru/vacancy/125670991
125483663	Системный аналитик	\N	245805	RUR	between3And6	От 3 до 6 лет	{}	Алматы	2025-10-06 13:43:46+03	https://hh.ru/vacancy/125483663
125425265	Middle/Senior Manual QA (AppSec.GenAi)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-10-08 10:42:28+03	https://hh.ru/vacancy/125425265
125289532	Machine Learning Engineer	245805	409674	RUR	moreThan6	Более 6 лет	{AWS,Git,Java,Python}	Минск	2025-09-12 21:06:23+03	https://hh.ru/vacancy/125289532
125921369	Data Scientist	327740	409674	RUR	moreThan6	Более 6 лет	{Python,SQL}	Тбилиси	2025-09-29 17:50:12+03	https://hh.ru/vacancy/125921369
126293718	DevOps Engineer	68149	\N	RUR	between3And6	От 3 до 6 лет	{Git,MySQL,PostgreSQL,Python}	Ташкент	2025-10-08 10:36:53+03	https://hh.ru/vacancy/126293718
124326010	Системный администратор Linux	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Go,Python}	Москва	2025-10-03 14:46:39+03	https://hh.ru/vacancy/124326010
126263535	Инженер-программист (Python+React)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,Python,React}	Минск	2025-10-07 15:12:18+03	https://hh.ru/vacancy/126263535
119816737	Data-инженер	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,SQL}	Таганрог	2025-09-10 09:55:31+03	https://hh.ru/vacancy/119816737
125707004	Главный Бухгалтер со знаниями Программирования / Автоматизации	\N	262192	RUR	between3And6	От 3 до 6 лет	{CSS,Git,HTML,JavaScript,MongoDB,MySQL,PostgreSQL,Python}	Ташкент	2025-09-24 13:59:36+03	https://hh.ru/vacancy/125707004
125207979	Python-разработчик Middle+ (офис, СПб)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Санкт-Петербург	2025-10-08 10:14:46+03	https://hh.ru/vacancy/125207979
126291757	1С Ведущий программист-разработчик	160000	\N	RUR	moreThan6	Более 6 лет	{Linux,Python,SQL}	Москва	2025-10-08 10:11:56+03	https://hh.ru/vacancy/126291757
126007775	Инженер по тестированию оборудования (ВКС)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-10-08 09:50:28+03	https://hh.ru/vacancy/126007775
125544445	Go (Golang) Backend Developer	\N	400000	RUR	moreThan6	Более 6 лет	{}	Москва	2025-10-07 18:32:45+03	https://hh.ru/vacancy/125544445
125282053	DevOps-инженер (Middle/Senior)	250000	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Linux,Python}	Нижний Новгород	2025-09-12 15:53:36+03	https://hh.ru/vacancy/125282053
125391886	Middle/Senior платформенный инженер (DBaaS)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,CI/CD,Kafka,PostgreSQL,Python}	Екатеринбург	2025-09-16 14:23:25+03	https://hh.ru/vacancy/125391886
119961361	Senior ML Engineer (Uplift), группа "Search"	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-09-08 16:43:28+03	https://hh.ru/vacancy/119961361
123422259	Embedded-разработчик в команду роботов-доставщиков	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-10-08 10:15:05+03	https://hh.ru/vacancy/123422259
126028705	Разработчик на Kotlin в Контест	\N	\N	RUR	between3And6	От 3 до 6 лет	{Django,Docker,Linux,Python}	Москва	2025-10-01 17:29:57+03	https://hh.ru/vacancy/126028705
125149344	QA Automation Trainee	21689	43377	RUR	noExperience	Нет опыта	{Java,Python}	Баку	2025-09-10 12:30:33+03	https://hh.ru/vacancy/125149344
124158318	Инженер алгоритмов и моделирования/Algorithms and Models Engineer (AME)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Москва	2025-09-16 14:02:00+03	https://hh.ru/vacancy/124158318
125081278	QA Automation Trainee	18073	36146	RUR	noExperience	Нет опыта	{Java,Python}	Тбилиси	2025-09-09 09:20:28+03	https://hh.ru/vacancy/125081278
125579325	Golang Tech Lead в команду Deckhouse Platform Security	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Kubernetes,Python,Rust}	Москва	2025-10-07 07:55:38+03	https://hh.ru/vacancy/125579325
123662226	Системный инженер в команду разработки робота-доставщика	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-10-08 10:15:06+03	https://hh.ru/vacancy/123662226
122222356	Data Security Engineer/Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{CI/CD,Python}	Израиль	2025-09-28 18:19:11+03	https://hh.ru/vacancy/122222356
123450745	Руководитель отдела развития и сопровождения CRM	\N	\N	RUR	between3And6	От 3 до 6 лет	{Node.js,Python,SQL}	Москва	2025-10-08 09:43:15+03	https://hh.ru/vacancy/123450745
125083059	QA Automation Trainee	18073	36146	RUR	noExperience	Нет опыта	{Java,Python}	Батуми	2025-09-09 09:41:04+03	https://hh.ru/vacancy/125083059
125294732	Разработчик C/VPP	\N	\N	RUR	between3And6	От 3 до 6 лет	{Linux,Python}	Москва	2025-10-07 19:04:46+03	https://hh.ru/vacancy/125294732
121697596	Lead Data Scientist (LLM) / Ведущий специалист по данным	\N	409674	RUR	between3And6	От 3 до 6 лет	{Docker,Python}	Тбилиси	2025-10-07 14:11:40+03	https://hh.ru/vacancy/121697596
122468005	Разработчик пайплайна робота-доставщика С++	\N	\N	RUR	between3And6	От 3 до 6 лет	{Go,Python}	Москва	2025-10-08 10:15:05+03	https://hh.ru/vacancy/122468005
121660557	Tools Programmer C++ (Мир танков)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python}	Санкт-Петербург	2025-10-08 10:50:41+03	https://hh.ru/vacancy/121660557
124009749	Embedded-разработчик в команду автономных технологий	\N	\N	RUR	moreThan6	Более 6 лет	{Bash,Python}	Москва	2025-10-08 10:15:05+03	https://hh.ru/vacancy/124009749
126271057	AI/ML Engineer (Machine Learning Engineer)	\N	\N	RUR	between3And6	От 3 до 6 лет	{PyTorch,Python,Scikit-learn,TensorFlow}	Минск	2025-10-07 17:07:40+03	https://hh.ru/vacancy/126271057
126290004	Full Stack .NET Senior Developer	\N	\N	RUR	between3And6	От 3 до 6 лет	{SQL}	Минск	2025-10-08 09:47:56+03	https://hh.ru/vacancy/126290004
125968345	Python разработчик (Middle/Middle+)	60062	120124	RUR	between1And3	От 1 года до 3 лет	{Django,Python}	Астана	2025-09-30 14:13:24+03	https://hh.ru/vacancy/125968345
125081307	QA Automation Trainee	18019	36037	RUR	noExperience	Нет опыта	{Java,Python}	Алматы	2025-09-09 09:20:48+03	https://hh.ru/vacancy/125081307
126050414	Веб-программист (Senior)	75077	225232	RUR	between1And3	От 1 года до 3 лет	{CSS,Django,Flask,HTML,MySQL,Node.js,Python}	Алматы	2025-10-02 10:13:37+03	https://hh.ru/vacancy/126050414
126262516	DevOps Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Минск	2025-10-07 15:05:36+03	https://hh.ru/vacancy/126262516
125972383	Slot Game Mathematician	245805	327740	RUR	between1And3	От 1 года до 3 лет	{Java,Python}	Москва	2025-09-30 15:27:27+03	https://hh.ru/vacancy/125972383
122614469	Архитектор	\N	\N	RUR	between3And6	От 3 до 6 лет	{}	Москва	2025-10-08 10:18:08+03	https://hh.ru/vacancy/122614469
126190098	Data Analyst / ML/AI Engineer	\N	274482	RUR	between3And6	От 3 до 6 лет	{NumPy,Pandas,Python,SQL,Scikit-learn,TensorFlow}	Алматы	2025-10-06 14:53:53+03	https://hh.ru/vacancy/126190098
126277335	Младший инженер по автотестированию (С#), Маркетплейс, Инструменты управления товарами	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Москва	2025-10-07 21:27:51+03	https://hh.ru/vacancy/126277335
126071453	Strong Senior Python Engineer	430525	621869	RUR	moreThan6	Более 6 лет	{Python,"REST API"}	Сербия	2025-10-05 15:15:42+03	https://hh.ru/vacancy/126071453
126289556	DevOps Engineer	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,CI/CD,Git,Linux,Python}	Москва	2025-10-08 09:42:18+03	https://hh.ru/vacancy/126289556
125276438	Backend-разработчик	27260	54519	RUR	between3And6	От 3 до 6 лет	{Docker,PostgreSQL,Python}	Ташкент	2025-09-12 14:21:47+03	https://hh.ru/vacancy/125276438
126282731	DevOps инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,CI/CD,Python}	Москва	2025-10-08 07:11:54+03	https://hh.ru/vacancy/126282731
125443265	Senior Python developer	327740	491609	RUR	moreThan6	Более 6 лет	{Django,FastAPI,Flask,Git,JavaScript,Pandas,Python,"REST API"}	Алматы	2025-10-05 14:51:24+03	https://hh.ru/vacancy/125443265
125745880	Финансовый менеджер (ИТ)	\N	196644	RUR	between1And3	От 1 года до 3 лет	{CSS,Git,HTML,JavaScript,MongoDB,MySQL,PostgreSQL,Python}	Ташкент	2025-09-25 09:08:44+03	https://hh.ru/vacancy/125745880
125285345	Специалист технической поддержки	57000	68000	RUR	between1And3	От 1 года до 3 лет	{Python}	Нижний Новгород	2025-10-02 15:08:27+03	https://hh.ru/vacancy/125285345
124447505	Разработчик C/С++	\N	\N	RUR	moreThan6	Более 6 лет	{Linux}	Москва	2025-10-06 21:06:02+03	https://hh.ru/vacancy/124447505
125482794	Fullstack-разработчик	45046	\N	RUR	between1And3	От 1 года до 3 лет	{Java,Linux,PostgreSQL,Python}	Астана	2025-09-18 13:28:51+03	https://hh.ru/vacancy/125482794
125881671	Инженер-разработчик ПЛИС (ППВМ, FPGA, VHDL / Verilog)	100000	230000	RUR	between1And3	От 1 года до 3 лет	{Python}	Москва	2025-10-08 10:00:12+03	https://hh.ru/vacancy/125881671
121432533	Программист C/С++	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Linux,Python}	Москва	2025-10-07 18:42:34+03	https://hh.ru/vacancy/121432533
123888293	Ведущий инженер данных	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL,Spark}	Москва	2025-10-07 19:22:57+03	https://hh.ru/vacancy/123888293
125133704	Разработчик RPA (начального уровня)	37539	\N	RUR	between1And3	От 1 года до 3 лет	{JavaScript,Python}	Караганда	2025-09-10 09:12:55+03	https://hh.ru/vacancy/125133704
125833425	Инженер технической поддержки системы виртуализации (РЕД Виртуализация)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Grafana,Prometheus,Python}	Санкт-Петербург	2025-10-07 10:17:49+03	https://hh.ru/vacancy/125833425
125503298	Senior Python Developer (Computer Vision / ML)	450642	\N	RUR	moreThan6	Более 6 лет	{FastAPI,Linux,Python}	Москва	2025-10-06 21:12:34+03	https://hh.ru/vacancy/125503298
125688872	Senior BI Developer	122902	122902	RUR	between3And6	От 3 до 6 лет	{AWS,Azure,Python,SQL}	Ташкент	2025-09-24 09:53:23+03	https://hh.ru/vacancy/125688872
123982648	.NET/Angular developer	45046	75077	RUR	between1And3	От 1 года до 3 лет	{Angular,MySQL,PostgreSQL,Python}	Астана	2025-09-08 15:34:06+03	https://hh.ru/vacancy/123982648
125078053	Data Engineer	327740	409674	RUR	between3And6	От 3 до 6 лет	{Airflow,MongoDB,NumPy,Pandas,Python,Scikit-learn,Spark}	Батуми	2025-09-09 08:31:18+03	https://hh.ru/vacancy/125078053
125423126	Системный аналитик / Продуктовый аналитик	\N	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Python}	Москва	2025-10-08 10:18:05+03	https://hh.ru/vacancy/125423126
122628410	Cv-engineer	250000	\N	RUR	between3And6	От 3 до 6 лет	{PyTorch,TensorFlow}	Москва	2025-10-07 15:46:57+03	https://hh.ru/vacancy/122628410
126263818	Специалист службы технической поддержки ДОР	\N	\N	RUR	noExperience	Нет опыта	{Django,Linux,Python,SQL}	Ижевск	2025-10-07 15:16:00+03	https://hh.ru/vacancy/126263818
119294955	Senior Kotlin/Java Developer (Jay Guard)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Санкт-Петербург	2025-10-07 15:57:42+03	https://hh.ru/vacancy/119294955
126027901	Application Security инженер	\N	\N	RUR	between3And6	От 3 до 6 лет	{Docker,Python}	Москва	2025-10-07 17:16:05+03	https://hh.ru/vacancy/126027901
126296846	Старший разработчик в группу GPU-инфраструктуры	\N	\N	RUR	moreThan6	Более 6 лет	{Go,Python}	Санкт-Петербург	2025-10-08 11:17:38+03	https://hh.ru/vacancy/126296846
125162265	Разработчик DWH/Data Engineer (Python)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Airflow,CI/CD,Python}	Москва	2025-10-07 15:12:06+03	https://hh.ru/vacancy/125162265
125169432	Тестировщик-автоматизатор (JavaScript/TypeScript)	67865	\N	RUR	between3And6	От 3 до 6 лет	{Bash,Linux,Python}	Минск	2025-09-10 17:18:16+03	https://hh.ru/vacancy/125169432
111957168	Full-Stack QA/Тестировщик (Python)	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Python,Selenium,pytest}	Санкт-Петербург	2025-10-07 17:10:33+03	https://hh.ru/vacancy/111957168
126265451	Feature Developer - Data Scientist	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python,SQL}	Алматы	2025-10-07 15:37:59+03	https://hh.ru/vacancy/126265451
126166812	Senior Python engineer/Python-разработчик (AI GEN Team)	\N	\N	RUR	between3And6	От 3 до 6 лет	{Python}	Другое	2025-10-06 10:12:39+03	https://hh.ru/vacancy/126166812
126194938	Финансовый инженер (Алгоритмическая торговля)	\N	\N	RUR	noExperience	Нет опыта	{JavaScript,Node.js,Python,SQL}	Москва	2025-10-06 15:57:11+03	https://hh.ru/vacancy/126194938
126202121	Product Marketing Analyst	\N	\N	RUR	between1And3	От 1 года до 3 лет	{}	Тбилиси	2025-10-06 16:48:45+03	https://hh.ru/vacancy/126202121
125861157	Full Stack Developer (Middle, Python)	105108	165170	RUR	between3And6	От 3 до 6 лет	{Django,FastAPI,PostgreSQL,Python,"REST API"}	Алматы	2025-09-27 17:37:38+03	https://hh.ru/vacancy/125861157
122418610	Junior Full Stack Developer	\N	75077	RUR	noExperience	Нет опыта	{FastAPI,NumPy,Pandas,Python}	Алматы	2025-10-02 14:30:31+03	https://hh.ru/vacancy/122418610
125783231	Python Developer	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Django,FastAPI,Flask,Python}	Санкт-Петербург	2025-10-07 15:26:23+03	https://hh.ru/vacancy/125783231
126264221	DevOps-инженер	\N	\N	RUR	between1And3	От 1 года до 3 лет	{Bash,Python}	Москва	2025-10-07 15:20:56+03	https://hh.ru/vacancy/126264221
125385096	Бизнес аналитик DWH	\N	230000	RUR	between3And6	От 3 до 6 лет	{Git,Python}	Москва	2025-09-16 12:37:58+03	https://hh.ru/vacancy/125385096
\.


--
-- Name: vacancies vacancies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.vacancies
    ADD CONSTRAINT vacancies_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict yMeCANzpfzGFLu1aQBDzWjhDHA2CzOOPdeXiUM9HIoyrMgfqGeBEbyfqnWqcKfh

