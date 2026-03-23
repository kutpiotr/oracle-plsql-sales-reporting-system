CREATE TABLE products (
    product_id number PRIMARY key,
    product_name varchar2 (50) NOT NULL,
    product_category varchar2 (50) NOT NULL,
    product_price number (10, 2) NOT NULL,
    product_status varchar2 (20) CHECK (product_status IN ('Active', 'Inactive', 'Discontinued'))
);

CREATE TABLE customers (
    customer_id number PRIMARY key,
    customer_name varchar2 (50) NOT NULL,
    customer_city varchar2 (50),
    customer_registration_date DATE DEFAULT sysdate
);

CREATE TABLE reports_log (
    reports_log_id number PRIMARY key,
    report_name varchar2 (100) NOT NULL,
    generated_at DATE DEFAULT sysdate,
    status varchar2 (20),
    records_processed number,
    execution_time number,
    error_message varchar2 (500)
);

CREATE TABLE sales (
    sale_id number PRIMARY key,
    sale_date DATE,
    sale_value number (10, 2),
    customer_id number NOT NULL,
    product_id number NOT NULL,
    CONSTRAINT fk_customer_sale FOREIGN key (customer_id) REFERENCES customers (customer_id),
    CONSTRAINT fk_products_sale FOREIGN key (product_id) REFERENCES products (product_id)
);