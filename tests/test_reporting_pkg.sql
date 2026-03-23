SELECT reporting_pkg.get_daily_sales(DATE '2024-01-10') FROM dual;
SELECT reporting_pkg.get_monthly_sales(DATE '2024-02-01') FROM dual;

BEGIN
    reporting_pkg.show_top_products;
END;
/

BEGIN
    reporting_pkg.log_report(
        'daily_sales_report',
        'SUCCESS',
        1,
        1,
        NULL
    );
END;
/