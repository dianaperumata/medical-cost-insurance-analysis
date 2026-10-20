
SELECT
    region,
    COUNT(*) AS total_customers,
    ROUND(AVG(charges), 2) AS average_medical_cost,
    ROUND(SUM(charges), 2) AS total_medical_cost
FROM insurance
GROUP BY region
ORDER BY average_medical_cost DESC;
