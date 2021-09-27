SELECT * FROM customers
WHERE birth_date < '1986-01-01' and birth_date > '1966-01-01' and city in ('paris', 'lyon', 'grenoble');

#Exercices Slide 55

SELECT * FROM products
WHERE unit_price > 25.0 and quantity_in_stock > 0;

SELECT first_name, last_name, phone FROM customers
WHERE birth_date IS NULL;

SELECT first_name, last_name, address_number, address_name, postal_code, city FROM customers
WHERE points > 1500 AND city != 'paris';

#Exercices slide 66
#1
SELECT name FROM countries
WHERE name LIKE "Y%";

#2
SELECT name FROM countries
WHERE name LIKE "%y";

#3
SELECT name FROM countries
WHERE name LIKE "%x%";

#4
SELECT name FROM countries
WHERE name LIKE "%land";

#5
SELECT name FROM countries
WHERE name LIKE "C%ia";

#6
SELECT name FROM countries
WHERE name LIKE "%oo%";

#7
SELECT name FROM countries
WHERE name LIKE "%a%a%a%";

#8
SELECT name FROM countries
WHERE name LIKE "_t%";

#9
SELECT name FROM countries
WHERE name LIKE "____";

#10
SELECT name, capital_city FROM countries
WHERE name = capital_city;

#11 
SELECT name, population FROM countries
WHERE population > 10000000;

#12
SELECT name, population FROM countries
WHERE population > 5000000 AND name LIKE "%land";

#13
SELECT name, (area * 100) AS area_hectars FROM countries
HAVING area_hectars <1000000;

#14
SELECT name, (area * 100) AS area_hectars, population, population/(area * 100) AS density_hectars FROM countries;

#15
SELECT name, population_density FROM countries
HAVING population_density BETWEEN 500 AND 5000 AND name REGEXP "[ai|en|am|al|ag]";

#Exercices slide 88
#1
SELECT order_id, SUM(product_id) AS total_nb_products FROM order_items
GROUP BY order_id 
HAVING total_nb_products > 4 ;

#2
SELECT  status, COUNT(status) AS nb_orders FROM orders
GROUP BY status;

#3
SELECT product_id, COUNT(order_id) AS nb_orders  FROM order_items
GROUP BY product_id ;

#4
SELECT * FROM products 
WHERE unit_price > (SELECT AVG(unit_price) from products);

#5
SELECT city, COUNT(customer_id) AS nb_customers FROM customers
GROUP BY city;

#6
SELECT *, 
  CASE
    WHEN name LIKE "%lin%" THEN "lin"
    WHEN name LIKE "%coton%" THEN "coton"
  END
FROM products;

#7
SELECT order_id, SUM(product_id) AS total_nb_products FROM order_items
GROUP BY order_id 
ORDER BY total_nb_products DESC;

#8
SELECT * FROM customers
WHERE points > 1000
ORDER BY last_name, first_name;

#9
SELECT * FROM customers
ORDER BY city, points DESC;

#10
SELECT AVG(quantity_in_stock) FROM products
WHERE quantity_in_stock >10;

