--
-- Файл сгенерирован с помощью SQLiteStudio v3.0.7 в сб янв. 16 13:39:48 2016
--
-- Использованная кодировка текста: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Таблица: tests
CREATE TABLE "tests" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "description" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "num_of_answ" integer, "type_of_answ" varchar, "sp_answer" boolean);
INSERT INTO tests (id, name, description, created_at, updated_at, num_of_answ, type_of_answ, sp_answer) VALUES (1, 'Тест 1', 'проба теста 1', '2016-01-07 18:01:07.506572', '2016-01-07 18:01:07.506572', 5, 'Шкала', 'f');
INSERT INTO tests (id, name, description, created_at, updated_at, num_of_answ, type_of_answ, sp_answer) VALUES (2, 'тест 2', ' тестирование №2', '2016-01-07 18:10:57.867345', '2016-01-07 18:10:57.867345', 3, 'Шкала', 't');
INSERT INTO tests (id, name, description, created_at, updated_at, num_of_answ, type_of_answ, sp_answer) VALUES (3, 'тест 3', 'тестирование № 3', '2016-01-07 18:14:14.612832', '2016-01-07 18:14:14.612832', 5, 'Шкала', 't');

-- Таблица: schema_migrations
CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
INSERT INTO schema_migrations (version) VALUES ('20151219114501');
INSERT INTO schema_migrations (version) VALUES ('20151219115106');
INSERT INTO schema_migrations (version) VALUES ('20151221211142');
INSERT INTO schema_migrations (version) VALUES ('20151227123921');
INSERT INTO schema_migrations (version) VALUES ('20151227131143');
INSERT INTO schema_migrations (version) VALUES ('20160103142821');
INSERT INTO schema_migrations (version) VALUES ('20160104160622');
INSERT INTO schema_migrations (version) VALUES ('20160105132010');
INSERT INTO schema_migrations (version) VALUES ('20160105132709');
INSERT INTO schema_migrations (version) VALUES ('20160105133517');
INSERT INTO schema_migrations (version) VALUES ('20160107184758');
INSERT INTO schema_migrations (version) VALUES ('20160109123931');
INSERT INTO schema_migrations (version) VALUES ('20160109151431');
INSERT INTO schema_migrations (version) VALUES ('20160110081359');
INSERT INTO schema_migrations (version) VALUES ('20160110141415');
INSERT INTO schema_migrations (version) VALUES ('20160110153427');

-- Таблица: questions
CREATE TABLE "questions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "num" integer, "body" text, "about" varchar, "back" boolean, "test_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO questions (id, num, body, about, back, test_id, created_at, updated_at) VALUES (1, 0, 'тест вопроса 1', 'тест вопроса 1', 'f', 1, '2016-01-07 18:08:50.358387', '2016-01-07 18:08:50.358387');
INSERT INTO questions (id, num, body, about, back, test_id, created_at, updated_at) VALUES (2, 1, 'тест вопроса 2', 'тест вопроса 2', 'f', 1, '2016-01-07 18:09:16.605862', '2016-01-07 18:09:16.605862');
INSERT INTO questions (id, num, body, about, back, test_id, created_at, updated_at) VALUES (3, 2, 'тест вопроса 3', 'тест вопроса 3', 'f', 1, '2016-01-07 18:09:55.459519', '2016-01-07 18:09:55.459519');
INSERT INTO questions (id, num, body, about, back, test_id, created_at, updated_at) VALUES (4, 1, 'тестирование 1', 'тест 1', 'f', 2, '2016-01-07 18:11:38.074317', '2016-01-07 18:11:38.074317');
INSERT INTO questions (id, num, body, about, back, test_id, created_at, updated_at) VALUES (5, 2, 'µ', 'тестирование 2', 'f', 2, '2016-01-07 18:12:13.815913', '2016-01-07 18:12:13.815913');
INSERT INTO questions (id, num, body, about, back, test_id, created_at, updated_at) VALUES (6, 3, 'тест ттт 3', 'тест ттт', 'f', 2, '2016-01-07 18:13:02.795217', '2016-01-07 18:13:02.795217');
INSERT INTO questions (id, num, body, about, back, test_id, created_at, updated_at) VALUES (7, 0, 'тест  1', 'тип 1', 'f', 3, '2016-01-07 18:14:34.605376', '2016-01-07 18:14:34.605376');
INSERT INTO questions (id, num, body, about, back, test_id, created_at, updated_at) VALUES (8, 1, 'тип 2', 'тест 2', 'f', 3, '2016-01-07 18:15:04.902925', '2016-01-07 18:15:04.902925');
INSERT INTO questions (id, num, body, about, back, test_id, created_at, updated_at) VALUES (9, 2, 'тест вопроса 3', 'тип 3', 'f', 3, '2016-01-07 18:16:46.647929', '2016-01-07 18:16:46.647929');
INSERT INTO questions (id, num, body, about, back, test_id, created_at, updated_at) VALUES (10, 1, 'воп 1', 'тип 1', 'f', 4, '2016-01-07 18:21:53.156270', '2016-01-07 18:21:53.156270');
INSERT INTO questions (id, num, body, about, back, test_id, created_at, updated_at) VALUES (11, 2, 'воп 2', 'тип 2', 'f', 4, '2016-01-07 18:22:03.791441', '2016-01-07 18:22:03.791441');
INSERT INTO questions (id, num, body, about, back, test_id, created_at, updated_at) VALUES (13, 3, 'вопрос 3', 'тип вопроса 3', 'f', 4, '2016-01-08 11:43:55.647854', '2016-01-08 11:43:55.647854');

-- Таблица: users
CREATE TABLE users (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, email varchar DEFAULT '' NOT NULL, encrypted_password varchar DEFAULT '' NOT NULL, reset_password_token varchar, reset_password_sent_at datetime, remember_created_at datetime, sign_in_count integer DEFAULT 0 NOT NULL, current_sign_in_at datetime, last_sign_in_at datetime, current_sign_in_ip varchar, last_sign_in_ip varchar, created_at datetime NOT NULL, updated_at datetime NOT NULL, "username" varchar);
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, username) VALUES (1, 'nparanoid@gmail.com', '$2a$10$99hWR8S3bYkpG32rIByxLOPBLJAhU4ByVMVagV5z9MSuDQxLAGLEy', NULL, NULL, NULL, 17, '2016-01-10 18:31:02.415253', '2016-01-09 18:52:55.427722', '::1', '::1', '2016-01-07 19:06:01.887328', '2016-01-10 18:31:02.416374', 'NLegion');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, username) VALUES (2, 'nord@test.com', '$2a$10$D6euT9LpJHRO9qX1UawIqeAmdFJGXtBuC2Vb87PZ5xYqFsfPO4Tli', NULL, NULL, NULL, 2, '2016-01-09 16:46:59.442434', '2016-01-09 16:15:21.727569', '::1', '::1', '2016-01-09 16:15:21.715726', '2016-01-09 16:46:59.443346', 'nord');

-- Таблица: answers
CREATE TABLE "answers" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "question_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "test_id" integer, "user_id" integer, "try_of" integer);
INSERT INTO answers (id, name, question_id, created_at, updated_at, test_id, user_id, try_of) VALUES (13, '2', 1, '2016-01-10 18:55:27.353206', '2016-01-10 18:55:27.353206', 1, 1, 0);
INSERT INTO answers (id, name, question_id, created_at, updated_at, test_id, user_id, try_of) VALUES (14, '3', 2, '2016-01-10 18:55:27.358522', '2016-01-10 18:55:27.358522', 1, 1, 0);
INSERT INTO answers (id, name, question_id, created_at, updated_at, test_id, user_id, try_of) VALUES (15, '2', 3, '2016-01-10 18:55:27.362414', '2016-01-10 18:55:27.362414', 1, 1, 0);
INSERT INTO answers (id, name, question_id, created_at, updated_at, test_id, user_id, try_of) VALUES (16, '2', 3, '2016-01-10 19:04:16.176381', '2016-01-10 19:04:16.176381', 1, 1, 1);
INSERT INTO answers (id, name, question_id, created_at, updated_at, test_id, user_id, try_of) VALUES (17, '2', 2, '2016-01-10 19:04:16.188594', '2016-01-10 19:04:16.188594', 1, 1, 1);
INSERT INTO answers (id, name, question_id, created_at, updated_at, test_id, user_id, try_of) VALUES (18, '3', 1, '2016-01-10 19:04:16.192866', '2016-01-10 19:04:16.192866', 1, 1, 1);
INSERT INTO answers (id, name, question_id, created_at, updated_at, test_id, user_id, try_of) VALUES (19, '5', 2, '2016-01-10 19:04:26.024423', '2016-01-10 19:04:26.024423', 1, 1, 2);
INSERT INTO answers (id, name, question_id, created_at, updated_at, test_id, user_id, try_of) VALUES (20, '4', 3, '2016-01-10 19:04:26.036015', '2016-01-10 19:04:26.036015', 1, 1, 2);
INSERT INTO answers (id, name, question_id, created_at, updated_at, test_id, user_id, try_of) VALUES (21, '2', 1, '2016-01-10 19:04:26.039642', '2016-01-10 19:04:26.039642', 1, 1, 2);

-- Индекс: unique_schema_migrations
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");

-- Индекс: index_answers_on_question_id
CREATE INDEX "index_answers_on_question_id" ON "answers" ("question_id");

-- Индекс: index_users_on_email
CREATE UNIQUE INDEX index_users_on_email ON users (email);

-- Индекс: index_users_on_reset_password_token
CREATE UNIQUE INDEX index_users_on_reset_password_token ON users (reset_password_token);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
