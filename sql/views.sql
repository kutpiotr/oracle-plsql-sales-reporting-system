CREATE VIEW
    vw_daily_sales AS
SELECT
    sale_date,
    SUM(sale_value) AS total_sales
FROM
    sales
GROUP BY
    sale_date;

CREATE VIEW
    vw_monthly_sales AS
SELECT
    TRUNC (sale_date, 'MM') AS sale_month,
    SUM(sale_value) AS total_sales
FROM
    sales
GROUP BY
    TRUNC (sale_date, 'MM');

CREATE VIEW
    vw_top_products AS
SELECT
    p.product_name,
    p.product_id,
    COUNT(*) as sales_count,
    RANK() OVER (
        ORDER BY
            COUNT(*) desc
    ) AS product_rank
FROM
    sales s
    JOIN products p ON s.product_id = p.product_id

GROUP BY
    p.product_id,
    p.product_name;

CREATE VIEW
    vw_customer_value AS
SELECT
    c.customer_name,
    c.customer_id,
    SUM(s.sale_value) as total_value
FROM
    sales s
    JOIN customers c ON s.customer_id = c.customer_id

GROUP BY
    c.customer_id,
    c.customer_name;