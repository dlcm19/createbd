
-- crear base de datos y se realizo  consultas a la tabla
CREATE TABLE "todos" (
  "task_id" uuid PRIMARY KEY,
  "task_name" varchar,
  "responsable" varchar,
  "init_date" timestamp,
  "finish_date" timestamp,
  "task_status" varchar  
);
insert into todos 
(
	task_id,
	task_name,
	responsable,
	init_date,
	finish_date,
	task_status	
)
VALUES 
(
	'aca6c4c0-541d-44a0-b76b-a967915d35d2',
	'Walk the dog',
	'Besrelis',
	'2022-09-21 10:10:00',
	'2022-09-21 10:10:00',
	'Ended'		
),
(
	'a39659c3-78e5-4285-a3b9-cf64bebb58e5',
	'Shopping',
	'Oraladno',
	'2022-09-19 10:10:00',
	'2022-09-19 11:10:00',
	'Ended'		
),
(
	'ad650c82-9036-4c47-868e-39122dd6a0ff',
	'Go to the Bank',
	'Marco',
	'2022-09-22 09:10:00',
	'2022-09-22 10:00:00',
	'Without starting'		
),
(
	'bf87c0b4-9b32-4bc7-8102-5513c5f9bafa',
	'Do Home Work',
	'Luis David',
	'2022-09-22 11:10:00',
	'2022-09-22 12:00:00',
	'Without starting'		
);

select * from todos;
select * from todos where finish_date  = '2022-09-22 10:00:00';
select * from todos where finish_date  = '2022-09-22 12:00:00';
--------------------fin-------------------------------c