
-- Project: Medical Cost Analysis
-- Analysis: Medical Costs by Smoking Status

SELECT
    smoker,
    COUNT(*) AS total_customers,
    ROUND(AVG(charges), 2) AS average_medical_cost,
    ROUND(SUM(charges), 2) AS total_medical_cost,
    ROUND(MIN(charges), 2) AS minimum_medical_cost,
    ROUND(MAX(charges), 2) AS maximum_medical_cost
FROM insurance
GROUP BY smoker
ORDER BY average_medical_cost DESC;
