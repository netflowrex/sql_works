use sales;

/*
 create a database : name : SALES; 
  create tables : customers : orders : products 
*/

create table customers
( customer_id Int (50) primary key,
first_name varchar (100),
last_name varchar (100),
email varchar ( 100),
phone_number varchar (100)
);

create table  Orders 
( order_number INT ( 50) PRIMARY KEY,
customer_id INT (50) ,
order_date Date,
total_number DECIMAL (6, 2) ,
FOREIGN KEY (customer_id) References customers (customer_id)
);

create table products
(product_id INT primary key ,
product_name varchar ( 50),
categories varchar ( 50),
price decimal (6,2)
);

insert into customers ( customer_id ,first_name ,last_name ,email , phone_number)
value 
( '1', 'Bobby ', 'Benson' , 'BobbyBenson24@gmail.com' , '546-543-7848'),
( '2', 'toby ', 'Brown' , 'tobybrown24@gmail.com' , '546-543-6843'),
( '3', 'emmy ', 'wayne' , 'emywayne54@gmail.com' , '547-543-6835'),
( '4', 'wole ', 'kiyesi' , 'wolekiyesi24@gmail.com' , '547-563-9886'),
( '5', 'luca ', 'danny' , 'lucadanny56@gmail.com' , '847-583-7893');

select*
from customers;

insert into  orders (order_number, customer_id , order_date , total_number)
value 
 ( '101', '1 ', '2020-5-19' , '100.00'),
 ( '102', '2', '2020-4-25' , '150.00'),
 ( '103', '3', '2020-6-2' , '200.00'),
 ( '104', '4', '2020-7-21' , '250.00'),
 ( '105', '5', '2020-1-20' , '500.00');
 
 select*
 from Orders;
 
Insert into products (product_id , product_name ,categories , price)
value 
('401','bluetooth','electronics', '500.00'),
('402', 'trousers', 'clothings','230.00'),
('403','television','electronics','450.00'),
('404','headsets','electronics','350.00'),
('405', 'shirt','clothings','150.00');

select*
from products;

use sales;
 /*
 solve all questions using dataset above
 1) reterive first_name and last_name of customers 
 2) reterieve onl last_name kiyesi from customers 
 3) retrive order and total_amount for order placed on or after january, 1 ,2020
 4)retrieve products name , categories and price of products in electroncs categories sorted by price 
 5) find first_name and last_name of customers that placed order
 6)find the products name and categories for products between $100 and $300 
 7)retrieve the first_name , last_name ,email and phone_number of customers who had placed any order 
 */
 
 /* 
 solutions below
 */
 
SELECT first_name, last_name
FROM customers;

/*
SELECT first_name, last_name: This part of the query specifies the columns you want to retrieve from the customers table. In this case, you want to retrieve the first_name and last_name columns.
FROM customers: This part of the query specifies the table from which you want to retrieve data. In this case, it's the customers table.
*/

SELECT last_name
FROM customers
WHERE last_name = 'kiyesi';
 
 /*
 SELECT last_name: This part of the query specifies that you want to retrieve the last_name column from the customers table.
FROM customers: This part of the query specifies the table from which you want to retrieve data, which is the customers table in this case.
WHERE last_name = 'Smith': This part of the query is a condition that filters the results. It ensures that only rows with a last_name value of "Smith" will be return
*/

SELECT order_number, total_number
FROM Orders
WHERE order_date >= '2020-1-5';
 
 /*
 SELECT order_number, total_number: This part of the query specifies the columns you want to retrieve from the Orders table. In this case, you want to retrieve the order_number and total_number columns.
FROM Orders: This part of the query specifies the table from which you want to retrieve data, which is the Orders table in this case.
WHERE order_date >= '2020-01-01': This part of the query is a condition that filters the results. It ensures that only rows with an order_date on or after January 1, 2020, will be returned.
*/

/*
retrieve product_name,categories and price of products in electroncs categories sorted by price 
*/

select product_name,categories,price
from products 
where categories = 'electronics'
order by price;


/*
SELECT product_name, categories, price: This part of the query specifies the columns you want to retrieve from the products table. In this case, you want to retrieve the product_name, categories, and price columns.
FROM products: This part of the query specifies the table from which you want to retrieve data, which is the products table in this case.
WHERE categories = 'electronics': This part of the query is a condition that filters the results. It ensures that only rows with the categories value of "electronics" will be returned.
ORDER BY price: This part of the query specifies how the results should be sorted. The ORDER BY clause is followed by the column (price in this case) by which you want to sort the results. Sorting in ascending order is the default behavior
*/

/*
find first_name and last_name of customers that placed order
*/

SELECT c.first_name, c.last_name
FROM customers c
JOIN Orders o ON c.customer_id = o.customer_id;

/*
find the products name and categories for products between $100 and $300 
*/

SELECT product_name, categories
FROM products
WHERE price >= 100 AND price <= 300;


/*
retrieve the first_name,last_name,email and phone_number of customers who had placed any order 
*/

SELECT c.first_name, c.last_name, c.email, c.phone_number
FROM customers c
JOIN Orders o ON c.customer_id = o.customer_id;

/*
thanks so mmuch 
*/


