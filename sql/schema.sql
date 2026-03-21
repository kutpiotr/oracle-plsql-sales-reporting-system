CREATE TABLE products(
    product_id NUMBER PRIMARY KEY,
    product_name VARCHAR2(50) NOT NULL,
    product_category VARCHAR2(50) NOT NULL,
    product_price NUMBER(10, 2) NOT NULL,
    product_status VARCHAR2(20) CHECK(
        product_status IN('Active', 'Inactive', 'Discontinued')
    )
);

CREATE TABLE customers(
    customer_id NUMBER PRIMARY KEY,
    customer_name VARCHAR2(50) NOT NULL,
    customer_city VARCHAR2(50),
    customer_registration_date DATE DEFAULT SYSDATE
);

CREATE TABLE reports_log (
    reports_log_id NUMBER PRIMARY KEY,
    report_name VARCHAR2(100) NOT NULL,
    generated_at DATE DEFAULT SYSDATE,
    STATUS VARCHAR2(20),
    records_processed NUMBER,
    execution_time NUMBER,
    error_message VARCHAR2(500)
);

CREATE TABLE sales (
    sale_id NUMBER PRIMARY KEY,
    sale_date DATE DEFAULT SYSDATE,
    sale_amount NUMBER(10, 2),
    customer_id NUMBER NOT NULL,
    product_id NUMBER NOT NULL,
    CONSTRAINT fk_customer_sale FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    CONSTRAINT fk_products_sale FOREIGN KEY (product_id) REFERENCES products(product_id)
);