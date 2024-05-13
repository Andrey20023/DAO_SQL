create schema newtest;


/*скрипт создания таблицы*/
create table newtest.CUSTOMERS
(
    id           SERIAL PRIMARY KEY,
    name         varchar(50) NOT NULL,
    surname      varchar(50) NOT NULL,
    age          int         NOT NULL,
    phone_number varchar(50)
);


insert into newtest.CUSTOMERS (name, surname, age, phone_number)
values ('alexey', 'Petrov', 19, '11111111111');
insert into newtest.CUSTOMERS (name, surname, age, phone_number)
values ('AleXey', 'An', 74, '22222222222');
insert into newtest.CUSTOMERS (name, surname, age, phone_number)
values ('igor', 'Семенов', 23, '33333333333');
insert into newtest.CUSTOMERS (name, surname, age, phone_number)
values ('Ivan', 'Васильев', 28, '44444444444');
insert into newtest.CUSTOMERS (name, surname, age, phone_number)
values ('vasy', 'Васильев2', 28, '44444444444');
insert into newtest.CUSTOMERS (name, surname, age, phone_number)
values ('Ivan', 'Petrov2', 55, '11111115111');

/*select *
FROM newtest.CUSTOMERS;

drop table newtest.CUSTOMERS;
*/
/*скрипт создания таблицы*/
create table newtest.ORDERS
(
    id           SERIAL PRIMARY KEY,
    date         date,
    customer_id  INT,
    product_name varchar(100) not null,
    amount       int          NOT NULL,
    FOREIGN KEY (Customer_Id) REFERENCES newtest.Customers (Id)
);


insert into newtest.ORDERS(date, customer_id, product_name, amount)
values ('2024-05-18', 3, 'Заказ_1', 2);
insert into newtest.ORDERS(date, customer_id, product_name, amount)
values ('2024-05-19', 1, 'Заказ_2', 15);
insert into newtest.ORDERS(date, customer_id, product_name, amount)
values ('2024-05-19', 4, 'Заказ_522', 3);
insert into newtest.ORDERS(date, customer_id, product_name, amount)
values ('2024-05-19', 2, 'Заказ_772', 99);
insert into newtest.ORDERS(date, customer_id, product_name, amount)
values ('2024-05-18', 1, 'Приз_от_шефа', 1);
insert into newtest.ORDERS(date, customer_id, product_name, amount)
values ('2024-05-18', 1, 'Приз_от_шефа', 1);
insert into newtest.ORDERS(date, customer_id, product_name, amount)
values ('2024-05-18', 6, 'Решение_задачи_по заказу_Ivan', 100);



/*
SELECT name, product_name
FROM newtest.ORDERS A,
     newtest.customers B
WHERE A.customer_id = B.id
  AND B.name = lower('alexey');


select *
from newtest.ORDERS;


drop table newtest.ORDERS;*/

