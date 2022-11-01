SELECT sales.transactions.*, sales.customers.customer_code, sales.date.month_name, sales.date.year, sales.markets.markets_name, sales.markets.zone, sales.products.product_type 
FROM sales.transactions
INNER JOIN sales.customers ON sales.customers.customer_code = sales.transactions.customer_code
INNER JOIN sales.date ON sales.date.date = sales.transactions.order_date
INNER JOIN sales.markets ON sales.markets.markets_code = sales.transactions.market_code
INNER JOIN sales.products ON sales.products.product_code = sales.transactions.product_code
/* join all tables to this query script*/