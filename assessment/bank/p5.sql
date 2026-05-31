/* 
Part 5 - Q1 
Use when to know about the conversion rate 
*/
SELECT 
    product_type,
    COUNT(CASE WHEN account_opened = 'Yes' THEN 1 END) * 1.0 /
    COUNT(CASE WHEN call_connected = 'Yes' THEN 1 END) AS conversion_rate
FROM voice_bot_leads
GROUP BY product_type;

/* 
Part 5 - Q2
Use to calculate the overall campaign is in loss or profit
*/
SELECT 
    product_type,
    SUM(bot_cost_rs) AS total_bot_cost,
    SUM(revenue_generated) AS total_revenue,
    SUM(revenue_generated) - SUM(bot_cost_rs) AS pnl
FROM voice_bot_leads
GROUP BY product_type;

/* 
Part 5 - Q3 
To know - How many sms is deliver but user not open 
*/
SELECT *
FROM voice_bot_leads
WHERE sms_clicked='Yes' AND sms_delivered='No';

------------------------------------------
------------------------------------------
-------------------------------------------
 
/* 
Part 6 - Q1 
Use: Repeat Rate within 30 Days
*/
SELECT 
    customer_id,
    COUNT(order_id) AS total_orders
FROM orders
WHERE order_date >= CURRENT_DATE - INTERVAL 30 DAY
GROUP BY customer_id
HAVING COUNT(order_id) > 3;

/*
 Part 6 - Q2
Overall comparison with one value
*/
SELECT *
FROM (
    SELECT
        emp_id,
        name,
        department_id,
        salary,
        AVG(salary) (OVER PARTITION BY department_id ) AS dept_avg
    FROM employees
    ) t 
WHERE salary > dept_avg;

/* 
Part 6 - Q3
Latest Order and Total amount spent (cumulative spend) 
*/
SELECT *
FROM (
    SELECT 
        order_id,
        customer_id,
        order_date,
        amount,
        SUM(amount) OVER (PARTITION BY customer_id ORDER BY order_date) cum_spend,
        ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_date DESC) as rn
    FROM orders
    ) t 
    WHERE rn = 1;
