SELECT
    CASE
        WHEN age BETWEEN 18 AND 29 THEN '18-29'
        WHEN age BETWEEN 30 AND 39 THEN '30-39'
        WHEN age BETWEEN 40 AND 49 THEN '40-49'
        WHEN age BETWEEN 50 AND 59 THEN '50-59'
        ELSE '60+'
    END AS age_group,
    COUNT(*) AS total_customers,
    ROUND(AVG(charges), 2) AS average_medical_cost,
    ROUND(SUM(charges), 2) AS total_medical_cost
FROM insurance
GROUP BY age_group
ORDER BY average_medical_cost DESC;