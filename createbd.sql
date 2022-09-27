
-- crear base de datos y se realizo  consultas a la tabla
-- CREATE TABLE "todos" (
--   "task_id" uuid PRIMARY KEY,
--   "task_name" varchar,
--   "responsable" varchar,
--   "init_date" timestamp,
--   "finish_date" timestamp,
--   "task_status" varchar  
-- );
-- insert into todos 
-- (
-- 	task_id,
-- 	task_name,
-- 	responsable,
-- 	init_date,
-- 	finish_date,
-- 	task_status	
-- )
-- VALUES 
-- (
-- 	'aca6c4c0-541d-44a0-b76b-a967915d35d2',
-- 	'Walk the dog',
-- 	'Besrelis',
-- 	'2022-09-21 10:10:00',
-- 	'2022-09-21 10:10:00',
-- 	'Ended'		
-- ),
-- (
-- 	'a39659c3-78e5-4285-a3b9-cf64bebb58e5',
-- 	'Shopping',
-- 	'Oraladno',
-- 	'2022-09-19 10:10:00',
-- 	'2022-09-19 11:10:00',
-- 	'Ended'		
-- ),
-- (
-- 	'ad650c82-9036-4c47-868e-39122dd6a0ff',
-- 	'Go to the Bank',
-- 	'Marco',
-- 	'2022-09-22 09:10:00',
-- 	'2022-09-22 10:00:00',
-- 	'Without starting'		
-- ),
-- (
-- 	'bf87c0b4-9b32-4bc7-8102-5513c5f9bafa',
-- 	'Do Home Work',
-- 	'Luis David',
-- 	'2022-09-22 11:10:00',
-- 	'2022-09-22 12:00:00',
-- 	'Without starting'		
-- );

-- select * from todos;
-- select * from todos where finish_date  = '2022-09-22 10:00:00';
-- select * from todos where finish_date  = '2022-09-22 12:00:00';
--------------------fin-------------------------------

--------------ejerecios del primer entregable----------------------

CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" int NOT NULL
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "user_id" uuid NOT NULL,
  "title" varchar NOT NULL,
  "description" varchar NOT NULL,
  "level" varchar NOT NULL,
  "teacher" varchar NOT NULL
);

CREATE TABLE "course_video" (
  "id" uuid PRIMARY KEY,
  "courses_id" uuid NOT NULL,
  "title" varchar NOT NULL,
  "url" varchar NOT NULL
);

CREATE TABLE "categories" (
  "id" uuid PRIMARY KEY,
  "course_id" uuid NOT NULL,
  "name" varchar UNIQUE NOT NULL
);

CREATE TABLE "roles" (
  "id" uuid PRIMARY KEY,
  "users_id" uuid NOT NULL,
  "name" varchar NOT NULL
);

ALTER TABLE "categories" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "roles" ADD FOREIGN KEY ("users_id") REFERENCES "users" ("id");

ALTER TABLE "course_video" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");

insert into users (id, name, email, password, age) values 
('3039c9d0-a341-4d1d-812b-57decd909c15','douglas','douglas@gmail.com',1234,32),
('6eb06d2d-bb77-46b2-983b-98343ac1fff9','juan','juan@gmail.com','juan1234',20),
('8161ae14-0c93-49a4-8756-0eff496d4477','laura','laura@gmail.com',4321,21),
('afbf0c2b-0e78-4a8d-be03-b30a6a921133','laurenci','laurencia@gmail.com','laurenci4321',23),
('5bcf4100-92ba-41ef-bd52-f2c194a3d757','manuel','mauel@gmail.com',12345,20);

insert into users (id, name, email, password, age) values 
('1ebedc32-9b92-41f8-9720-b3ded81fc533','katherine','katherine@gmail.com',12345,33);

insert into courses (id, user_id, title, description, level, teacher) values
('cc68483c-039c-4743-a5e2-b17cd0599f7f','8161ae14-0c93-49a4-8756-0eff496d4477','nodejs','aquí enseñaremos base de datos y la creación de API',
'intermedio','laura'),
('1ef0dfa0-4c34-4336-9ded-b5349c45d6b1','afbf0c2b-0e78-4a8d-be03-b30a6a921133','JavaScript','aquí enseñaremos variable, function, arreglo, objetos y manejo del DOM',
'intermedio','laurenci'),
('b70b410a-957f-4e2b-b863-79a6de45c257','6eb06d2d-bb77-46b2-983b-98343ac1fff9','HTML, Css','aquí aprenderas crear el esqueto de página web y darle estilos',
'avanzado','juan');

insert into courses (id, user_id, title, description, level, teacher) values
('aa9df316-44ac-4262-a7a0-558b4b5f0e63','8161ae14-0c93-49a4-8756-0eff496d4477','ingles','aquí vas a lograr tener un nivel de ingles tipo A2',
'basico-intermedio','laura');

insert into roles (id, users_id, name) values 
('163b5984-e222-458b-a54b-bca16bcfdbff','3039c9d0-a341-4d1d-812b-57decd909c15', 'alumno'),
('f9f21171-5cd4-4e2c-a6d4-39b4ccee16c7','6eb06d2d-bb77-46b2-983b-98343ac1fff9','profesor'),
('cb151992-d358-4481-9d58-6b9dd03007f9','8161ae14-0c93-49a4-8756-0eff496d4477','profesora'),
('42b76c39-1984-4ec9-bdce-4a3737e04ae0','afbf0c2b-0e78-4a8d-be03-b30a6a921133','profesor'),
('17752c55-0ad7-4047-9cd0-de125b5e0acd','5bcf4100-92ba-41ef-bd52-f2c194a3d757','alumno');

insert into roles (id, users_id, name) values 
('01be84f2-ff47-43fb-9d0e-029ecda4a30e','1ebedc32-9b92-41f8-9720-b3ded81fc533', 'admnistradora');

insert into course_video(id, courses_id, title, url) values 
('84f9d1f2-8c2b-41b5-a84c-22f26043ea5e','cc68483c-039c-4743-a5e2-b17cd0599f7f','nodejs', 'https://www.nodejs.com' ),
('34c5c89c-93f6-46d2-affa-85cb8d4fed6d','1ef0dfa0-4c34-4336-9ded-b5349c45d6b1','JavaScript','https://www.javaScript.com'),
('203ab8f9-db3d-449c-a02e-dadd363c49e4','b70b410a-957f-4e2b-b863-79a6de45c257','HTML, Css','https://www.htmlcss.com'),
('5605b0fc-4a19-481d-a121-1af89af7ab38','aa9df316-44ac-4262-a7a0-558b4b5f0e63','ingles','https://www.ingles.com');

insert into categories (id, course_id, name) values 
('6de2e04b-8ee7-42af-b19f-09145c834ea3','cc68483c-039c-4743-a5e2-b17cd0599f7f','base de datos'),
('d85eb19d-0303-415c-97d0-b66b2dc1fa87','1ef0dfa0-4c34-4336-9ded-b5349c45d6b1','programación'),
('105e36d1-4f54-4645-82dc-7f64209de964','b70b410a-957f-4e2b-b863-79a6de45c257','diseño web'),
('e94ead34-cce2-48dd-8064-426113e9e69f','aa9df316-44ac-4262-a7a0-558b4b5f0e63','idioma');