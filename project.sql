CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    name TEXT,
    city TEXT
);

CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    amount INTEGER,
    order_date TEXT
);

CREATE TABLE payments (
    payment_id INTEGER PRIMARY KEY,
    order_id INTEGER,
    payment_method TEXT,
    status TEXT
);

INSERT INTO customers VALUES (1, 'John', 'Pretoria');
INSERT INTO customers VALUES (2, 'Sarah', 'Johannesburg');
INSERT INTO customers VALUES (3, 'Mike', 'Cape Town');

INSERT INTO orders VALUES (1, 1, 200, '2024-01-01');
INSERT INTO orders VALUES (2, 1, 150, '2024-01-02');
INSERT INTO orders VALUES (3, 2, 300, '2024-01-03');
INSERT INTO orders VALUES (4, 3, 50, '2024-01-04');
INSERT INTO orders VALUES (5, 2, 400, '2024-01-05');

INSERT INTO payments VALUES (1, 1, 'Card', 'Completed');
INSERT INTO payments VALUES (2, 2, 'Cash', 'Completed');
INSERT INTO payments VALUES (3, 3, 'Card', 'Failed');
INSERT INTO payments VALUES (4, 4, 'Card', 'Completed');
INSERT INTO payments VALUES (5, 5, 'Cash', 'Completed');

SELECT c.name, SUM(o.amount) AS total_revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name;

SELECT *
FROM payments
WHERE status = 'Completed';

SELECT payment_method, COUNT(*) AS total
FROM payments
GROUP BY payment_method;

SELECT 
    c.name,
    c.city,
    o.order_id,
    o.amount,
    o.order_date
FROM customers c
JOIN orders o 
ON c.customer_id = o.customer_id;

SELECT 
    c.name,
    SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o 
ON c.customer_id = o.customer_id
GROUP BY c.name;

SELECT 
    c.name,
    o.amount,
    p.payment_method,
    p.status
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id;
