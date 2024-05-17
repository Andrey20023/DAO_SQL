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


create table newtest.ORDERS
(
    id           SERIAL PRIMARY KEY,
    date         date,
    customer_id  INT,
    product_name varchar(100) not null,
    amount       int          NOT NULL,
    FOREIGN KEY (Customer_Id) REFERENCES newtest.Customers (Id)
);


