create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	billing_info VARCHAR(50)
);

create table inventory(
	car_id SERIAL primary key,
	serial_number SERIAL,
	car_price NUMERIC(9,2)
);

create table employees(
	employee_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	type_ VARCHAR(50)
);

create table parts(
	part_id SERIAL primary key,
	name_ VARCHAR(150),
	amount NUMERIC(9,2)
);

create table invoice(
	invoice_id SERIAL primary key,
	car_id INTEGER,
	customer_id INTEGER,
	employee_id INTEGER
);

create table service_ticket(
	service_id SERIAL primary key,
	car_id INTEGER,
	customer_id INTEGER,
	employee_id INTEGER,
	parts_id INTEGER
);


insert into customer(customer_id, first_name, last_name, billing_info)
values(1, 'John', 'Smith', '4242-5353-6767-8989');

insert into customer(customer_id, first_name, last_name, billing_info)
values(2, 'Mary', 'Jones', '8686-3434-6363-1515');

insert into inventory(car_id, serial_number, car_price)
values(1, 555, 45100.00);

insert into inventory(car_id, serial_number, car_price)
values(2, 52479, 105699.45);

insert into employees(employee_id, first_name, last_name, type_)
values(1, 'Richard', 'Dawson', 'Salesperson');

insert into employees(employee_id, first_name, last_name, type_)
values(2, 'Michelle', 'Rodriguez', 'Salesperson');

insert into employees(employee_id, first_name, last_name, type_)
values(3, 'Michael', 'Johnson', 'Mechanic');

insert into employees(employee_id, first_name, last_name, type_)
values(4, 'Jennifer', 'Welch', 'Mechanic');

insert into parts(part_id, name_, amount)
values(1, 'Engine', 25500.00);

insert into parts(part_id, name_, amount)
values(2, 'Transmission', 14899.25);

insert into invoice(invoice_id, car_id, customer_id, employee_id)
values(1, 2, 1, 2);

insert into invoice(invoice_id, car_id, customer_id, employee_id)
values(2, 1, 2, 1);

insert into service_ticket(service_id, car_id, customer_id, employee_id, parts_id)
values(1, 1, 1, 3, 1);

insert into service_ticket(service_id, car_id, customer_id, employee_id, parts_id)
values(2, 2, 2, 4, 2);
















