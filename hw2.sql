--  1. Создать таблицу employees;
-- employeeid целое число первичный ключ автоинкремент;
-- fname строка не null,
-- lastname строка не null,
-- email строка не null,
-- phone строка не null

create table employees(
employeeid int auto_increment primary key,
fname varchar(128) not null,
lastname varchar(128) not null,
email varchar(128) not null,
phone varchar(128) not null
);
-- 2. Ой, забыли про зарплату)) Добавить поле salary numeric(9, 2),
alter table employees
add column salary numeric(9 , 2);

-- 3. Ойййй, нет, зарплата должна быть целым числом. Изменить тип salary на integer 
alter table employees
modify column salary integer;

-- 4. Переименовать поле fname на first_name
alter table employees
change column fname first_name varchar(128) not null;

-- 5. Удалить поле phone
alter table employees
drop column phone;

-- 6. Добавить поле department строка не null 
alter table employees
add column department varchar(128) not null;

-- 7. Заполнить таблицу (7 строк)
insert into employees (first_name, lastname, email, salary, department)
value
	('Тамара', 'Пупкина', 'email1@.com', 10000, 'Уборщица'),
	('Оля', 'Петрова', 'email2@.com', 20000, 'Уборщица'),
	('Катя', 'Сидорова', 'email3@.com', 30000, 'Повар'),
	('Олег', 'Смернов', 'email4@.com', 30000, 'Сторож'),
	('Валера', 'Ласточкин', 'email5@.com', 50000, 'Водитель');

select * from employees;




