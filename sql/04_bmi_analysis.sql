
SELECT
    CASE
        WHEN bmi < 18.5 THEN 'Underweight'
        WHEN bmi < 25 THEN 'Normal'
        WHEN bmi < 30 THEN 'Overweight'
        ELSE 'Obese'
    END AS bmi_category,
    COUNT(*) AS total_customers,
    ROUND(AVG(charges), 2) AS average_medical_cost,
    ROUND(SUM(charges), 2) AS total_medical_cost
FROM insurance
GROUP BY bmi_category
ORDER BY average_medical_cost DESC;
