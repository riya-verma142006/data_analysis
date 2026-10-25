--create tables
drop table if exists books;

create table books(
book_id serial primary key,
title varchar(30),
author varchar(50),
genre varchar(50),
publish_year int,
price numeric(10,2),
stock int
) 

create table customer(
customer_id serial primary key,
name varchar(100),
email varchar(100),
phone varchar(100),
city varchar(100),
country varchar(100)
)

create table orders(
order_id serial primary key,
customer_id int references customers(customer_id),
book_id int references books(book_id),
order_date date,
quantity int,
total_amount numeric(10,2)
)

-- import data into books table
copy books(book_id,title ,author , genre, publish_year,	price ,	stock)
from 'C:\Users\vriya\Desktop\sql_industry_project\Book.csv'
csv header;

-- import data into customers table
copy customer(customer_id,	name,	email,	phone,	city,	country)
from 'C:\Users\vriya\Desktop\sql_industry_project\customers.csv'
csv header;


-- import data into orders table
copy orders(order_id, customer_id, book_id, order_date,	quantity, total_amount)
from 'C:\Users\vriya\Desktop\sql_industry_project\orders.csv'
csv header;

select * from books;
select * from customer;
select * from orders;

select title,genre from books 
where genre like '%Fiction%';

select * from books 
where publish_year >= 1950;

select * from customer 
where country ='Canada';

--4 show orders placed in november 2023
select * from orders
where order_date between '2023-11-1' and '2023-11-30';

--5 retrieve the total stock of books available
select sum(stock) as total_stock from books;

--6 find the details of most expensive book
select * from books order by price desc limit 1;

--7show all customer who ordered more than 1 quantity of book
select * from orders where quantity > 6;

--8retrive all orders where the total amount exceeds 20000$
select * from orders where total_amount >20000;

--9list all genre available in the books table
select distinct genre from books; 

--10 find the books with lowest stock
select * from books order by stock;

--11 calculate revenue generated from all orders
select sum(total_amount) from orders;

------- advance queries --------
---1 retrive the total number of book sold for each genre:
select * from books;
select * from orders;
select * from customer;
select b.genre, sum(o.quantity)
from orders o
join books b on b.book_id =o.book_id
group by b.genre ;
--2 find the average price of books in the "fantasy" genre
select avg(price) from books
where genre = 'Fantasy';

-- 3 list customer who have placed at least 4 orders
select customer_id, count(order_id)
from orders
group by customer_id
having count(order_id) >=4;

--4 find the most frequently ordered book

select book_id , count(book_id) as order_count
from orders
group by book_id
order by order_count desc limit 1;
------ with title of book-------
select b.book_id, b.title ,count (o.book_id) as order_count
from orders o
join books b on b.book_id = o.book_id
group by b.book_id,b.title
order by order_count desc limit 1;

--5 show the top 3 most expensive books of 'fantasy' genre
select * from books
where genre = 'Fantasy'
order by price desc limit 3;

--6 retrive the total quantity of books sold by each author
select b.author , sum(o.quantity)  as total_sales 
from books b
join orders o on b.book_id = o.book_id
group by b.author
order by total_sales  desc ;

--7 list the cities where customer spent over $40
select  c.city , o.total_amount
from  orders o
join customer c on o.customer_id = c.customer_id 
where o.total_amount > 28000;

--8 find the customer who spent most on orders
select c.customer_id, c.name , sum(o.total_amount) from orders o
join customer c on o.customer_id = c.customer_id
group by c.customer_id, c.name ,o.total_amount
order by o.total_amount desc limit 1;

--9 calculate stock remaining after fulfillin all orders
select b.title, b.author, b.stock, coalesce(sum(o.quantity),0) as order_quantity, b.stock- coalesce(sum(o.quantity),0) as remaining_quantity
from books b
left join orders o on b.book_id = o.book_id 
group by b.book_id;









































































