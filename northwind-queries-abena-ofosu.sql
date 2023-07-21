Use northwind;

-- What are the categories of products in the database?
SELECT
	category
FROM
	products;

-- What products are made by Dell?
SELECT
	*
FROM
	products
INNER JOIN order_details ON
	order_details.product_id = products.id
WHERE product_name LIKE '%Dell%'; 


-- List all the orders shipped to Pennsylvania
SELECT
	*
FROM
	orders
WHERE
	ship_state LIKE '%Pennsylvania';

-- List the first name and last name of all employees with last names that start with the letter W.
SELECT
	first_name,
	last_name
FROM
	employees
WHERE
	last_name LIKE 'W%';

-- List all customers from zip codes that start with 55.
SELECT
	*
FROM
	customers
WHERE
	postal_code LIKE '55%';

-- List all customers from zip codes that end with 0.
SELECT
	*
FROM
	customers
WHERE
	postal_code LIKE '%0';

-- List the first name, last name, and email for all customers with a ".org" email address.
SELECT
	first_name,
	last_name,
	email
FROM
	customers
WHERE
	email LIKE '%.org';

-- List the first name, last name, and phone number for all customers from the 202 area code.
SELECT
	first_name,
	last_name,
	phone
FROM
	customers
WHERE
	phone LIKE '1-(202)%';

-- List the first name, last name, and phone number for all customers from the 202 area code, ordered by last name, first name.
SELECT
	first_name,
	last_name,
	phone
FROM
	customers
WHERE
	phone LIKE '1-(202)%'
ORDER BY
	first_name,
	last_name;