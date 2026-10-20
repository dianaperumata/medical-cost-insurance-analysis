
USE medical_cost_portfolio;

SELECT
    COUNT(*) AS total_customers,
    ROUND(SUM(charges), 2) AS total_medical_cost,
    ROUND(AVG(charges), 2) AS average_medical_cost,
    ROUND(MIN(charges), 2) AS minimum_medical_cost,
    ROUND(MAX(charges), 2) AS maximum_medical_cost
FROM insurance;
