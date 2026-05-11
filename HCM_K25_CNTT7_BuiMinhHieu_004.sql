create database STORE;
USE STORE;

create table Customer(
customer_id varchar (5) primary key not null ,
customer_name varchar(100) not null,
customer_email  varchar(100) unique not null,
customer_phone varchar (15) unique not null,
customer_assress varchar(255) not null
);

 create table product (
 product_id varchar(5) primary key not null,
 product_name varchar(50) not null,
 product_price decimal(10,2) not null,
 category varchar(20) not null,
 stock_quantity int not null
 );
  
create table orders(
order_id int primary key not null auto_increment,
customer_id varchar(5) not null ,
product_id varchar(5) not null,
order_date date not null,
order_quantity int not null,
total_amount decimal(10,2) not null
);

create table payment (
payment_id int primary key not null auto_increment,
order_id int not null,
payment_method varchar(50) not null,
payment_date date not null,
payment_status varchar(50) not null
);
insert into Customer (customer_id,customer_name,customer_email,customer_phone,customer_assress) values
('C001','Nguyen Anh Tu','tu.nguyen@example.com','0987654321','Hanoi'),
('C002','Tran Thi Mai','mai.tran@example.com','0987654322','Ho Chi Minh'),
('C003','Le Minh Hoang','hoang.len@example.com','0987654323','Dannag'),
('C004','Pham Hoang Nam','nam.pham@example.com','0987654324','He'),
('C005','Vu Minh Thu','thu.vu@example.com','0987654325','Hai Phong');

insert into product (product_id, product_name ,product_price ,category, stock_quantity) values
('P001','Laptop Dell','Electronics','15000.00','10'),
('P002','iPhone 15','Electronics','20000.00','5'),
('P003','T-Shirt','Clothing','2000.00','50'),
('P004','Running','Footwear','1500.00','20'),
('P005','TableLamp','Fumiture','500.00','15');

insert into orders (order_id,customer_id,product_id,order_date,order_quantity,total_amount) values
('1','C001','P001','2025-06-01','1','15000.00'),
('2','C002','P002','2025-06-02','2','400.00'),
('3','C003','P003','2025-06-03','1','20000.00'),
('4','C004','P004','2025-06-04','1','1500.00'),
('5','C005','P005','2025-06-05','2','30000.00');

 insert into payment (payment_id,order_id,payment_method,payment_date,payment_status) values
('1','1','2025-06-01','Banking','paid'),
('2','2','2025-06-02','Cash','paid'),
('3','3','2025-06-03','Credit card','paid'), 
('4','4','2025-06-04','Banking','pending'),
('5','5','2025-06-05','Credit card','paid');
-- Câu 3
update Customer
set customer_phone = '0999888777'
where customer_id = 'C001';
-- câu4
update product
set stock_quantity = stock_quatity + 50, product_price = product_price * 1.10
where product_id = 'P003';
-- câu 5
delete from payment
where payment_status = 'pending'
and payment_method = 'Banking';
-- câu 6
select product_id, product_name, produts_price
from product 
where product_name = 'Electronics' 
and product_price > 1000;
-- câu 7
select customer_name, customer_email,customer_assress
from Customer
where customer_name like 'Nguyen%';
-- câu 8
select order_id,order_date,total_amuont 
from orders
order by total_amuont DESC ;
-- CÂU 9
select * from payment 
order by payment_date DESC 
limit 3;
-- câu 10
select product_id,product_name
from product
limit 1,3;



