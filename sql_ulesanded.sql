-- Ülesanne 1: vali kõik andmed klientide tabelist
SELECT * FROM sales.customers;

-- Ülesanne 2: kliendid perekonnanime järgi kasvavalt
SELECT *
FROM sales.customers
ORDER BY last_name ASC;

-- Ülesanne 3: 15 kõige uuemat tellimust
SELECT *
FROM sales.orders
ORDER BY order_date DESC
LIMIT 15;

-- Ülesanne 4: New Yorgis elavad kliendid
SELECT *
FROM sales.customers
WHERE city = 'New York';

-- Ülesanne 5: viis suurima tellimuste arvuga müüjat
SELECT staff_id, COUNT(*) AS order_count
FROM sales.orders
GROUP BY staff_id
ORDER BY order_count DESC
LIMIT 5;

-- Ülesanne 6: iga kliendi nimi ja tellimuste arv
SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    COUNT(o.order_id) AS order_count
FROM sales.customers AS c
LEFT JOIN sales.orders AS o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY customer_name;

-- Ülesanne 7: tellimused, kus ühikute kogusumma on üle 8
SELECT
    o.order_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    COUNT(DISTINCT oi.product_id) AS different_products
FROM sales.orders AS o
JOIN sales.customers AS c
    ON o.customer_id = c.customer_id
JOIN sales.order_items AS oi
    ON o.order_id = oi.order_id
GROUP BY o.order_id, c.customer_id, c.first_name, c.last_name
HAVING SUM(oi.quantity) > 8
ORDER BY o.order_id ASC;