-- PRODUCTS (8)
INSERT INTO
    products (
        product_id,
        product_name,
        product_category,
        product_price,
        product_status
    )
VALUES
    (1, 'Laptop', 'Elektronika', 3999.99, 'Active');

INSERT INTO
    products (
        product_id,
        product_name,
        product_category,
        product_price,
        product_status
    )
VALUES
    (2, 'Monitor', 'Elektronika', 799.99, 'Inactive');

INSERT INTO
    products (
        product_id,
        product_name,
        product_category,
        product_price,
        product_status
    )
VALUES
    (3, 'Mysz', 'Elektronika', 99.99, 'Active');

INSERT INTO
    products (
        product_id,
        product_name,
        product_category,
        product_price,
        product_status
    )
VALUES
    (4, 'Klawiatura', 'Elektronika', 199.99, 'Active');

INSERT INTO
    products (
        product_id,
        product_name,
        product_category,
        product_price,
        product_status
    )
VALUES
    (5, 'Biurko', 'Meble', 899.99, 'Active');

INSERT INTO
    products (
        product_id,
        product_name,
        product_category,
        product_price,
        product_status
    )
VALUES
    (6, 'Krzeslo', 'Meble', 499.99, 'Active');

INSERT INTO
    products (
        product_id,
        product_name,
        product_category,
        product_price,
        product_status
    )
VALUES
    (7, 'Sluchawki', 'Elektronika', 299.99, 'Inactive');

INSERT INTO
    products (
        product_id,
        product_name,
        product_category,
        product_price,
        product_status
    )
VALUES
    (8, 'Tablet', 'Elektronika', 1499.99, 'Active');

INSERT INTO
    customers (customer_id, customer_name, customer_city)
VALUES
    (1, 'Pawel', 'Rzeszow');

INSERT INTO
    customers (customer_id, customer_name, customer_city)
VALUES
    (2, 'Piotr', 'Krakow');

INSERT INTO
    customers (customer_id, customer_name, customer_city)
VALUES
    (3, 'Oliwia', 'Gdansk');

INSERT INTO
    customers (customer_id, customer_name, customer_city)
VALUES
    (4, 'Anna', 'Warszawa');

INSERT INTO
    customers (customer_id, customer_name, customer_city)
VALUES
    (5, 'Kamil', 'Wroclaw');

INSERT INTO
    customers (customer_id, customer_name, customer_city)
VALUES
    (6, 'Magda', 'Poznan');

INSERT INTO
    customers (customer_id, customer_name, customer_city)
VALUES
    (7, 'Tomasz', 'Lublin');

INSERT INTO
    customers (customer_id, customer_name, customer_city)
VALUES
    (8, 'Karolina', 'Szczecin');

INSERT INTO
    sales (
        sale_id,
        sale_date,
        sale_value,
        customer_id,
        product_id
    )
VALUES
    (1, DATE '2024-01-10', 999.99, 1, 1);

INSERT INTO
    sales (
        sale_id,
        sale_date,
        sale_value,
        customer_id,
        product_id
    )
VALUES
    (2, DATE '2024-01-11', 1250, 2, 1);

INSERT INTO
    sales (
        sale_id,
        sale_date,
        sale_value,
        customer_id,
        product_id
    )
VALUES
    (3, DATE '2024-01-12', 129.99, 3, 2);

INSERT INTO
    sales (
        sale_id,
        sale_date,
        sale_value,
        customer_id,
        product_id
    )
VALUES
    (4, DATE '2024-01-13', 199.99, 4, 4);

INSERT INTO
    sales (
        sale_id,
        sale_date,
        sale_value,
        customer_id,
        product_id
    )
VALUES
    (5, DATE '2024-01-14', 899.99, 5, 5);

INSERT INTO
    sales (
        sale_id,
        sale_date,
        sale_value,
        customer_id,
        product_id
    )
VALUES
    (6, DATE '2024-01-15', 499.99, 6, 6);

INSERT INTO
    sales (
        sale_id,
        sale_date,
        sale_value,
        customer_id,
        product_id
    )
VALUES
    (7, DATE '2024-01-16', 299.99, 7, 7);

INSERT INTO
    sales (
        sale_id,
        sale_date,
        sale_value,
        customer_id,
        product_id
    )
VALUES
    (8, DATE '2024-01-17', 1499.99, 8, 8);

INSERT INTO
    sales (
        sale_id,
        sale_date,
        sale_value,
        customer_id,
        product_id
    )
VALUES
    (9, DATE '2024-02-01', 3999.99, 2, 1);

INSERT INTO
    sales (
        sale_id,
        sale_date,
        sale_value,
        customer_id,
        product_id
    )
VALUES
    (10, DATE '2024-02-02', 99.99, 1, 3);

INSERT INTO
    sales (
        sale_id,
        sale_date,
        sale_value,
        customer_id,
        product_id
    )
VALUES
    (11, DATE '2024-02-03', 199.99, 3, 4);

INSERT INTO
    sales (
        sale_id,
        sale_date,
        sale_value,
        customer_id,
        product_id
    )
VALUES
    (12, DATE '2024-02-04', 899.99, 4, 5);

INSERT INTO
    sales (
        sale_id,
        sale_date,
        sale_value,
        customer_id,
        product_id
    )
VALUES
    (13, DATE '2024-02-05', 499.99, 5, 6);

INSERT INTO
    sales (
        sale_id,
        sale_date,
        sale_value,
        customer_id,
        product_id
    )
VALUES
    (14, DATE '2024-02-06', 1499.99, 6, 8);

INSERT INTO
    sales (
        sale_id,
        sale_date,
        sale_value,
        customer_id,
        product_id
    )
VALUES
    (15, DATE '2024-02-07', 799.99, 7, 2);

INSERT INTO
    sales (
        sale_id,
        sale_date,
        sale_value,
        customer_id,
        product_id
    )
VALUES
    (16, DATE '2024-02-08', 299.99, 8, 7);

INSERT INTO
    sales (
        sale_id,
        sale_date,
        sale_value,
        customer_id,
        product_id
    )
VALUES
    (17, DATE '2024-03-01', 3999.99, 3, 1);

INSERT INTO
    sales (
        sale_id,
        sale_date,
        sale_value,
        customer_id,
        product_id
    )
VALUES
    (18, DATE '2024-03-02', 1499.99, 4, 8);

INSERT INTO
    sales (
        sale_id,
        sale_date,
        sale_value,
        customer_id,
        product_id
    )
VALUES
    (19, DATE '2024-03-03', 199.99, 5, 4);

INSERT INTO
    sales (
        sale_id,
        sale_date,
        sale_value,
        customer_id,
        product_id
    )
VALUES
    (20, DATE '2024-03-04', 99.99, 6, 3);