CREATE OR REPLACE PACKAGE BODY reporting_pkg AS

    FUNCTION get_daily_sales(p_date DATE) RETURN NUMBER IS
        v_total_sales NUMBER := 0;
    BEGIN
        SELECT total_sales
        INTO v_total_sales
        FROM vw_daily_sales
        WHERE sale_date = p_date;

        RETURN v_total_sales;

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN 0;
    END get_daily_sales;


    FUNCTION get_monthly_sales(p_month DATE) RETURN NUMBER IS
        v_total_sales NUMBER := 0;
    BEGIN
        SELECT total_sales
        INTO v_total_sales
        FROM vw_monthly_sales
        WHERE sale_month = TRUNC(p_month, 'MM');

        RETURN v_total_sales;

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN 0;
    END get_monthly_sales;


    PROCEDURE show_top_products IS
    BEGIN
        FOR rec IN (
            SELECT
                product_id,
                product_name,
                sales_count,
                product_rank
            FROM
                vw_top_products
            ORDER BY
                product_rank
        )
        LOOP
            DBMS_OUTPUT.PUT_LINE(
                'Rank: ' || rec.product_rank ||
                ', Product: ' || rec.product_name ||
                ', Sales count: ' || rec.sales_count
            );
        END LOOP;
    END show_top_products;


    PROCEDURE show_customer_value IS
    BEGIN
        FOR rec IN (
            SELECT
                customer_id,
                customer_name,
                total_value
            FROM
                vw_customer_value
            ORDER BY
                total_value DESC
        )
        LOOP
            DBMS_OUTPUT.PUT_LINE(
                'Customer: ' || rec.customer_name ||
                ', Total value: ' || rec.total_value
            );
        END LOOP;
    END show_customer_value;


    PROCEDURE log_report(
        p_report_name       VARCHAR2,
        p_status            VARCHAR2,
        p_records_processed NUMBER,
        p_execution_time    NUMBER,
        p_error_message     VARCHAR2
    ) IS
    BEGIN
        INSERT INTO reports_log (
            reports_log_id,
            report_name,
            generated_at,
            status,
            records_processed,
            execution_time,
            error_message
        )
        VALUES (
            1,
            p_report_name,
            SYSDATE,
            p_status,
            p_records_processed,
            p_execution_time,
            p_error_message
        );
    END log_report;

END reporting_pkg;
/