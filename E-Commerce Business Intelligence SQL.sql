
--- creating database --- 

create database retail_orders_db;
use retail_orders_db;

--- creating customer table ---

create table customers (
    customer_id int primary key auto_increment,
    customer_name varchar(100) not null,
    state varchar(50),
    segment varchar(50)
);

--- creating product table ---

create table products (
    product_id int primary key auto_increment,
    product_name varchar(100) not null,
    category varchar(50),
    price decimal(10,2)
);

--- creating order table ---

create table orders (
    order_id int primary key auto_increment,
    customer_id int,
    order_date date,
    foreign key (customer_id) references customers(customer_id)
);

--- creating order details table ---

create table order_details (
    order_detail_id int primary key auto_increment,
    order_id int,
    product_id int,
    quantity int,
    sales decimal(10,2),
    profit decimal(10,2),
    foreign key (order_id) references orders(order_id),
    foreign key (product_id) references products(product_id)
);

--- insering values for customers ---

insert into customers (customer_name, state, segment) values
('Rahul Sharma','Karnataka','Consumer'),
('Anita Verma','Maharashtra','Corporate'),
('Vikram Singh','Tamil Nadu','Home Office'),
('Priya Nair','Kerala','Consumer'),
('Arjun Reddy','Telangana','Corporate'),
('Sneha Patil','Maharashtra','Consumer'),
('Rohit Gupta','Delhi','Corporate'),
('Meera Iyer','Tamil Nadu','Home Office'),
('Amit Joshi','Gujarat','Consumer'),
('Neha Kapoor','Punjab','Corporate'),
('Karan Mehta','Rajasthan','Consumer'),
('Divya Rao','Karnataka','Home Office'),
('Sanjay Das','West Bengal','Corporate'),
('Pooja Shah','Gujarat','Consumer'),
('Nitin Yadav','Uttar Pradesh','Corporate'),
('Lakshmi Menon','Kerala','Home Office'),
('Manish Arora','Haryana','Consumer'),
('Swati Kulkarni','Maharashtra','Corporate'),
('Deepak Saini','Rajasthan','Consumer'),
('Ishita Bose','West Bengal','Home Office'),
('Ramesh Pillai','Kerala','Corporate'),
('Tanvi Desai','Gujarat','Consumer'),
('Abhishek Roy','Delhi','Corporate'),
('Shreya Kulkarni','Maharashtra','Home Office'),
('Kishore Naidu','Telangana','Consumer'),
('Ritika Arora','Punjab','Corporate'),
('Suresh Kumar','Tamil Nadu','Consumer'),
('Naveen R','Karnataka','Corporate'),
('Jyoti Singh','Uttar Pradesh','Home Office'),
('Harish Patel','Gujarat','Consumer'),
('Akash Jain','Rajasthan','Corporate'),
('Rekha Das','West Bengal','Consumer'),
('Sunil Yadav','Haryana','Corporate'),
('Komal Shah','Maharashtra','Home Office'),
('Pradeep Nair','Kerala','Consumer'),
('Varun Gupta','Delhi','Corporate'),
('Anjali Mehta','Rajasthan','Home Office'),
('Rohini Rao','Karnataka','Consumer'),
('Siddharth Sen','West Bengal','Corporate'),
('Payal Kapoor','Punjab','Home Office'),
('Gaurav Sharma','Haryana','Consumer'),
('Ananya Reddy','Telangana','Corporate'),
('Ritu Verma','Uttar Pradesh','Consumer'),
('Nikhil Iyer','Tamil Nadu','Corporate'),
('Mohan Patel','Gujarat','Home Office'),
('Isha Arora','Delhi','Consumer'),
('Raghav Singh','Rajasthan','Corporate'),
('Priyanka Das','West Bengal','Consumer'),
('Arvind Kumar','Haryana','Home Office'),
('Shalini Jain','Maharashtra','Corporate');

--- inserting values for products ---

insert into products (product_name, category, price) values
('Laptop','Electronics',60000),
('Smartphone','Electronics',25000),
('Printer','Electronics',15000),
('Monitor','Electronics',20000),
('Keyboard','Electronics',1500),
('Mouse','Electronics',800),
('Tablet','Electronics',30000),
('Headphones','Electronics',5000),
('Desk','Furniture',10000),
('Chair','Furniture',5000),
('Table','Furniture',12000),
('Sofa','Furniture',30000),
('Cupboard','Furniture',25000),
('Bed','Furniture',40000),
('Bookshelf','Furniture',15000),
('Notebook','Stationery',100),
('Pen Pack','Stationery',200),
('File Folder','Stationery',300),
('Whiteboard','Stationery',2000),
('Marker Set','Stationery',500),
('Stapler','Stationery',400),
('Paper Ream','Stationery',250),
('Projector','Electronics',45000),
('Router','Electronics',3000),
('Camera','Electronics',35000),
('Office Lamp','Furniture',2500),
('Drawer Unit','Furniture',8000),
('Calculator','Stationery',700),
('Scanner','Electronics',18000),
('Microphone','Electronics',6000);

--- inserting values for order ---

insert into orders (customer_id, order_date) values
(1,'2026-01-05'),
(2,'2026-01-06'),
(3,'2026-01-07'),
(4,'2026-01-08'),
(5,'2026-01-09'),
(6,'2026-01-10'),
(7,'2026-01-11'),
(8,'2026-01-12'),
(9,'2026-01-13'),
(10,'2026-01-14'),
(11,'2026-01-15'),
(12,'2026-01-16'),
(13,'2026-01-17'),
(14,'2026-01-18'),
(15,'2026-01-19'),
(16,'2026-01-20'),
(17,'2026-01-21'),
(18,'2026-01-22'),
(19,'2026-01-23'),
(20,'2026-01-24'),
(21,'2026-02-01'),
(22,'2026-02-02'),
(23,'2026-02-03'),
(24,'2026-02-04'),
(25,'2026-02-05'),
(26,'2026-02-06'),
(27,'2026-02-07'),
(28,'2026-02-08'),
(29,'2026-02-09'),
(30,'2026-02-10'),
(31,'2026-02-11'),
(32,'2026-02-12'),
(33,'2026-02-13'),
(34,'2026-02-14'),
(35,'2026-02-15'),
(36,'2026-02-16'),
(37,'2026-02-17'),
(38,'2026-02-18'),
(39,'2026-02-19'),
(40,'2026-02-20');

--- inserting values for order details ---

insert into order_details (order_id, product_id, quantity, sales, profit) values
(1,1,1,60000,8000),
(1,5,2,3000,500),
(2,2,2,50000,7000),
(2,9,1,20000,2500),
(3,3,1,15000,2000),
(3,7,1,30000,4000),
(4,4,2,20000,3000),
(4,10,3,4500,700),
(5,6,1,12000,1500),
(5,11,4,3200,600),
(6,12,1,30000,5000),
(6,14,1,40000,6000),
(7,13,1,25000,4000),
(7,15,2,30000,4500),
(8,16,20,2000,500),
(8,17,10,2000,400),
(9,18,5,1500,300),
(9,19,1,2000,350),
(10,20,3,1500,250),
(10,21,2,800,150),

(11,22,4,1000,200),
(11,23,1,45000,7000),
(12,24,3,9000,1200),
(12,25,1,35000,5000),
(13,26,2,5000,800),
(13,27,1,8000,1000),
(14,28,3,2100,400),
(14,29,1,18000,3000),
(15,30,2,12000,2000),
(15,1,1,60000,9000),

(16,2,1,25000,3000),
(16,3,2,30000,4500),
(17,4,1,10000,1200),
(17,5,2,10000,2000),
(18,6,1,12000,1400),
(18,7,1,30000,5000),
(19,8,2,10000,1500),
(19,9,1,20000,3500),
(20,10,4,6000,900),
(20,11,3,2400,500),

(21,12,1,30000,6000),
(21,13,1,25000,4500),
(22,14,2,80000,12000),
(22,15,1,15000,2500),
(23,16,10,1000,300),
(23,17,20,4000,700),
(24,18,3,900,200),
(24,19,2,4000,500),
(25,20,5,2500,400),
(25,21,1,400,80),

(26,22,6,1500,300),
(26,23,1,45000,7500),
(27,24,2,6000,900),
(27,25,1,35000,6000),
(28,26,3,7500,1200),
(28,27,2,16000,2000),
(29,28,4,2800,500),
(29,29,1,18000,3200),
(30,30,2,12000,2200),
(30,1,1,60000,8500),

(31,2,3,75000,11000),
(31,3,1,15000,2500),
(32,4,2,20000,2800),
(32,5,1,5000,900),
(33,6,1,12000,1500),
(33,7,2,60000,9000),
(34,8,1,5000,700),
(34,9,2,40000,6500),
(35,10,5,7500,1200),
(35,11,4,3200,600),

(36,12,1,30000,5200),
(36,13,1,25000,4200),
(37,14,1,40000,6500),
(37,15,1,15000,2300),
(38,16,15,1500,400),
(38,17,25,5000,900),
(39,18,5,1500,250),
(39,19,2,4000,600),
(40,20,3,1500,300),
(40,21,2,800,120);


--- full revenue ---
select
     sum(od.sales) as total_revenue,
     sum(od.profit)as total_profit
from order_details od;

--- revenue by customers ---
select 
      c.customer_name, 
      sum(od.sales) as total_sales
from customers c
join orders o
on c.customer_id = o.customer_id
join order_details od
on o.order_id = od.order_id
group by c.customer_name
order by total_sales desc;

--- revenue by category ---
select 
     p.category,
     sum(od.sales) as total_sales
from products p
join order_details od 
on p.product_id = od.product_id
group by p.category
order by total_sales desc;

---  Customer life time value ---
select 
      c.customer_name,
      sum(od.sales) as lifetime_revenue
from customers c
join orders o 
on c.customer_id=o.customer_id
join order_details od
 on o.order_id=od.order_id
 group by c.customer_name
 order by lifetime_revenue desc;
 
 --- Top 5 products by revenue ---
 select 
        p.product_name,
        sum(od.sales) as total_sales
from products p
join order_details od 
on p.product_id - od.product_id
group by p.product_name
order by total_sales desc
limit 5;

--- Monthly revenue trend ---
SELECT 
    YEAR(o.order_date) AS order_year,
    MONTH(o.order_date) AS order_month,
    SUM(od.sales) AS monthly_revenue
FROM orders o
JOIN order_details od 
ON o.order_id = od.order_id
GROUP BY order_year, order_month
order by order_year,order_month;

--- profit margin by category ---
SELECT 
    p.category,
    SUM(od.sales) AS total_sales,
    SUM(od.profit) AS total_profit,
    ROUND((SUM(od.profit)/SUM(od.sales))*100,2) AS profit_margin_pct
FROM products p
JOIN order_details od 
ON p.product_id = od.product_id
GROUP BY p.category
ORDER BY profit_margin_pct DESC;

--- Total Revenue, Total profit & Overall Profit Margin ---
SELECT 
    SUM(od.sales) AS total_revenue,
    SUM(od.profit) AS total_profit,
    ROUND((SUM(od.profit)/SUM(od.sales))*100,2) AS profit_margin_pct
FROM order_details od;

--- State Wise Total Revenue ---
select c.state as state,
       sum(od.sales) as total_revenue
from customers c join orders o
on c.customer_id = o.customer_id
join order_details od
on od.order_id=o.order_id
group by state
order by total_revenue desc;

--- State wise profit margin ---
SELECT 
    c.state,
    SUM(od.sales) AS total_revenue,
    SUM(od.profit) AS total_profit,
    ROUND((SUM(od.profit) / SUM(od.sales)) * 100, 2) AS profit_margin_pct
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_details od
    ON o.order_id = od.order_id
GROUP BY c.state
ORDER BY profit_margin_pct DESC;

--- segment wise profit margin ---
SELECT 
    c.segment,
    SUM(od.sales) AS total_revenue,
    SUM(od.profit) AS total_profit,
    ROUND((SUM(od.profit) / SUM(od.sales)) * 100, 2) AS profit_margin_pct
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_details od
    ON o.order_id = od.order_id
GROUP BY c.segment
ORDER BY total_revenue DESC;

-- categoty performance with each segment -- 
SELECT 
    c.segment,
    p.category,
    SUM(od.sales) AS total_revenue
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_details od
    ON o.order_id = od.order_id
JOIN products p
    ON od.product_id = p.product_id
GROUP BY c.segment, p.category
ORDER BY c.segment, total_revenue DESC;


-- Index on customer.state--
create index idx_customers_state
on customers(state);

-- on orders.customer_id --
create index idx_orders_customer_id
on orders(customer_id);

-- customer revenue view --
CREATE VIEW customer_revenue_view AS
SELECT 
    c.customer_name,
    SUM(od.sales) AS total_sales
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
JOIN order_details od
    ON o.order_id = od.order_id
GROUP BY c.customer_name;

select * from customer_revenue_view;

-- state_wise profit margin view --
create or replace view state_wise_profit_margin as
SELECT 
    c.state,
    SUM(od.sales) AS total_revenue,
    SUM(od.profit) AS total_profit,
    ROUND((SUM(od.profit) / SUM(od.sales)) * 100, 2) AS profit_margin_pct
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_details od
    ON o.order_id = od.order_id
GROUP BY c.state;

select * from state_wise_profit_margin;

-- Monthly Revenue View --
create view monthly_revenue_view as
select
      year(o.order_date) as order_year,
      month(o.order_date) as order_month,
      sum(od.sales) as total_revenue
      from orders o
      join order_details od
      on o.order_id=od.order_id
group by order_year,order_month;

select * from monthly_revenue_view;

-- product performance view --
create view product_performance_view as
select
      p.product_name,
      sum(od.quantity) as total_quantity,
      sum(od.sales) as total_sales,
      sum(od.profit) as total_profit
from products p
join order_details od
     on p.product_id = od.product_id
group by p.product_name;

select * from product_performance_view;

-- segment performance view --
create view segment_performance_view as
select
      c.segment,
      sum(od.sales) as total_sales,
      sum(od.profit) as total_profit
from customers c
join orders o
		on c.customer_id=o.customer_id
join order_details od
		on o.order_id=od.order_id
group by c.segment;

select * from segment_performance_view;

-- creating store procedure to see city performance--
DELIMITER //

CREATE PROCEDURE GetStatePerformance(IN input_state VARCHAR(50))
BEGIN
    SELECT 
        c.state,
        SUM(od.sales) AS total_revenue,
        SUM(od.profit) AS total_profit,
        ROUND((SUM(od.profit)/SUM(od.sales))*100,2) AS profit_margin_pct
    FROM customers c
    JOIN orders o 
        ON c.customer_id = o.customer_id
    JOIN order_details od 
        ON o.order_id = od.order_id
    WHERE c.state = input_state
    GROUP BY c.state;
END //

DELIMITER ;

call getstateperformance ("karnataka");

-- creating store procedure for get overall performance --
DELIMITER //


CREATE PROCEDURE GetOverallPerformance()
BEGIN
    SELECT 
        SUM(sales) AS total_revenue,
        SUM(profit) AS total_profit,
        ROUND((SUM(profit)/SUM(sales))*100,2) AS profit_margin_pct
    FROM order_details;
END //

DELIMITER ;

-- simple validation trigger --
DELIMITER //

CREATE TRIGGER check_negative_profit
BEFORE INSERT ON order_details
FOR EACH ROW
BEGIN
    IF NEW.profit < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Profit cannot be negative';
    END IF;
END //

DELIMITER ;

-- checking trigger --
INSERT INTO order_details 
(order_id, product_id, quantity, sales, profit)
VALUES (1,1,1,1000,-200);
-- error profit cannot be nagative --


-- overall average customer revenue --
SELECT *
FROM (
    SELECT 
        c.customer_name,
        SUM(od.sales) AS total_revenue
    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    JOIN order_details od
        ON o.order_id = od.order_id
    GROUP BY c.customer_name
) AS customer_data
WHERE total_revenue > (
    SELECT AVG(customer_total)
    FROM (
        SELECT SUM(od.sales) AS customer_total
        FROM customers c
        JOIN orders o
            ON c.customer_id = o.customer_id
        JOIN order_details od
            ON o.order_id = od.order_id
        GROUP BY c.customer_name
    ) AS avg_data
);