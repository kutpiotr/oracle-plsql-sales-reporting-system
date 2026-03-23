CREATE OR REPLACE PACKAGE reporting_pkg AS

    FUNCTION get_daily_sales(p_date DATE) RETURN NUMBER;

    FUNCTION get_monthly_sales(p_month DATE) RETURN NUMBER;

    PROCEDURE show_top_products;

    PROCEDURE show_customer_value;

    PROCEDURE log_report(
        p_report_name       VARCHAR2,
        p_status            VARCHAR2,
        p_records_processed NUMBER,
        p_execution_time    NUMBER,
        p_error_message     VARCHAR2
    );

END reporting_pkg;
/