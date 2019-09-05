1.


CREATE TABLE person (
person_id SERIAL PRIMARY KEY,
name VARCHAR (220),
age INTEGER,
city VARCHAR (220),
height INTEGER,
favorite_color VARCHAR (220)
)


INSERT INTO person
(name, age, city, height, favorite_color)
VALUES
('Jack Robinson', 24, 'OHIO', 200, 'Red'),
('Bob Johnson', 33, 'NYC', 120, 'Green'),
('Binx Lee', 81, 'CHI', 270, 'White'),
('Omari Bent', 40, 'ARZ', 170, 'Pink'),
('Supreme Almighty', 100, 'DMV', 180, 'Blue');


SELECT * FROM person ORDER BY height DESC


SELECT * FROM person ORDER BY height ASC


SELECT * FROM person ORDER BY age DESC


SELECT * FROM person WHERE age > 20


SELECT * FROM person WHERE age = 18


SELECT * FROM person WHERE age < 20 OR age > 30


SELECT * FROM person WHERE age != 27


SELECT * FROM person WHERE favorite_color != 'Red'


SELECT * FROM person WHERE favorite_color != 'Red' AND favorite_color != 'Blue'


SELECT * FROM person WHERE favorite_color = 'Orange' OR favorite_color = 'Green'


SELECT * FROM person WHERE favorite_color IN ('Orange', 'Green', 'Blue')


SELECT * FROM person WHERE favorite_color IN ('Yellow', 'Purple')




2.

CREATE TABLE orders(
order_id SERIAL PRIMARY KEY,
person_id INTEGER,
product_name VARCHAR (200),
product_price NUMERIC,
quanity INTEGER
)


INSERT INTO orders 
(person_id, product_name, product_price, quanity)
VALUES
(3, 'Lemons', 1.50, 2)
(4, 'Apples', 1.00, 3), 
(1, 'Oranges', 2.00, 5),
(0, 'Peach', 1.20, 6),
(7, 'Plums', 3.33, 10);


SELECT * FROM orders


SELECT SUM(quanity) FROM orders


SELECT SUM(quanity * product_price) FROM orders


SELECT SUM(quanity * product_price) FROM orders WHERE person_id = 3



3.

INSERT INTO artist
(name)
VALUES
('Naji Ali'),
('Binx Almighty'),
('Jack Robinson');


SELECT * FROM artist ORDER BY name DESC LIMIT 10


SELECT * FROM artist ORDER BY name ASC LIMIT 5


SELECT * FROM artist WHERE name LIKE 'Blacks'


SELECT * FROM artist WHERE name LIKE '%Blacks'




4.


SELECT first_name, last_name FROM employee WHERE city = 'Calgary'


SELECT MAX(birth_date) FROM employee


SELECT MIN(birth_date) FROM employee


SELECT * FROM employee WHERE reports_to = 2


SELECT count(*) FROM employee WHERE city = 'Lethbridge'



5.



SELECT count(*) FROM invoice WHERE billing_address = 'USA'


SELECT MAX(total) FROM invoice


SELECT MIN(total) FROM invoice


SELECT count(*) FROM invoice WHERE total < 5


SELECT count(*) FROM invoice WHERE billing_state IN ('CA', 'TX', 'AZ')


SELECT avg(total) FROM invoice 


SELECT sum(total) FROM invoice 
