# Medical Cost & Insurance Expense Analysis

## 1. Project Overview

This project analyzes medical insurance costs to identify patterns and understand how smoking status, age, BMI category, and geographic region relate to medical expenses.

The analysis uses SQL to explore the dataset and Power BI to present key findings through an interactive dashboard.

**Project Objectives:**
- Analyze overall medical insurance costs.
- Compare medical expenses between smokers and non-smokers.
- Identify differences in medical costs across age groups.
- Analyze medical expenses by BMI category.
- Compare average medical costs across geographic regions.
- Explore the relationship between age, smoking status, and medical expenses.

## 2. Business Questions

This project addresses the following questions:

1. What are the total, average, minimum, and maximum medical insurance costs?
2. How do medical expenses differ between smokers and non-smokers?
3. Which age group has the highest average medical cost?
4. Which BMI category has the highest average medical cost?
5. Which geographic region has the highest average medical cost?
6. How do age and smoking status relate to medical expenses?

## 3. Dataset

**Dataset Name:** Medical Cost Personal Dataset

**Source:** Kaggle

**File Name:** `insurance.csv`

**Number of Records:** 1,338

**Columns:**
- `age`: Customer age in years.
- `sex`: Customer sex.
- `bmi`: Body Mass Index.
- `children`: Number of children covered by the insurance.
- `smoker`: Smoking status.
- `region`: Geographic region.
- `charges`: Medical insurance charges.

The dataset contains customer demographic information and medical insurance charges. The analysis focuses on identifying cost patterns across the available categories.

## 4. Tools Used

- **MySQL:** Data querying, aggregation, and analysis.
- **MySQL Workbench:** SQL query development and execution.
- **Microsoft Power BI:** Interactive dashboard development.
- **Microsoft Excel:** Supporting data review and preparation.

## 5. Analysis Methodology

The project was conducted through the following steps:

1. Imported the dataset into MySQL.
2. Reviewed the dataset structure and record count.
3. Used SQL aggregate functions such as `COUNT()`, `SUM()`, `AVG()`, `MIN()`, and `MAX()`.
4. Applied `GROUP BY` to compare medical costs across categories.
5. Used `CASE` statements to group customers by age and BMI category.
6. Analyzed medical costs by smoking status, age group, BMI category, and region.
7. Created a Power BI dashboard with KPI cards, charts, and interactive slicers.

## 6. SQL Analysis and Key Findings

### 6.1 Overall Medical Cost Analysis

**SQL File:** `01_overall_analysis.sql`

This query calculates the total number of customers, total medical costs, average medical costs, minimum medical costs, and maximum medical costs.

**Key Findings:**
- Total records analyzed: 1,338.
- Total medical charges: approximately $17.76 million.
- Average medical charge: approximately $13,270.42 per record.

These metrics provide an overview of the medical insurance charges in the dataset.

### 6.2 Smoking Status Analysis

**SQL File:** `02_smoking_status_analysis.sql`

This analysis compares medical costs between smokers and non-smokers.

**Key Findings:**
- Smokers: 274 customers, with an average medical charge of approximately $32,050.23.
- Non-smokers: 1,064 customers, with an average medical charge of approximately $8,434.27.
- The average medical charge for smokers is approximately 3.8 times that of non-smokers.

Smoking status shows a substantial association with differences in average medical charges in this dataset.

### 6.3 Age Group Analysis

**SQL File:** `03_age_group_analysis.sql`

Customers were grouped into five age categories: 18–29, 30–39, 40–49, 50–59, and 60+.

**Key Findings:**
- The 60+ age group has the highest average medical charge, at approximately $21,248.02.
- The 18–29 age group has the lowest average medical charge, at approximately $9,182.49.
- Average medical charges generally increase across the age categories.

This pattern suggests that age is an important factor to consider when examining medical insurance costs.

### 6.4 BMI Category Analysis

**SQL File:** `04_bmi_analysis.sql`

Customers were classified into four BMI categories:
- Underweight: BMI below 18.5.
- Normal: BMI from 18.5 to below 25.
- Overweight: BMI from 25 to below 30.
- Obese: BMI of 30 or higher.

**Key Findings:**
- The Obese category has the highest average medical charge, at approximately $15,552.34.
- The Overweight category has an average medical charge of approximately $10,987.51.
- The Normal category has an average medical charge of approximately $10,409.34.
- The Underweight category has the lowest average medical charge, at approximately $8,852.20.

The Obese category also represents the largest group in the dataset, with 707 records.

### 6.5 Geographic Region Analysis

**SQL File:** `05_region_analysis.sql`

This analysis compares customer counts and medical charges across four geographic regions.

**Key Findings:**
- Southeast has the highest average medical charge, at approximately $14,735.41.
- Northeast has an average medical charge of approximately $13,406.38.
- Northwest has an average medical charge of approximately $12,417.58.
- Southwest has the lowest average medical charge, at approximately $12,346.94.

The differences suggest regional variation in medical charges, although this analysis does not establish the reasons behind those differences.

### 6.6 Age Group and Smoking Status Analysis

**SQL File:** `06_age_smoking_analysis.sql`

This analysis combines age groups and smoking status to compare medical charges across ten customer segments.

**Key Findings:**
- Smokers aged 60+ have the highest average medical charge, at approximately $40,630.70.
- Smokers aged 50–59 have an average medical charge of approximately $37,508.75.
- Smokers aged 18–29 have an average medical charge of approximately $27,518.04.
- Among non-smokers, the 60+ age group has the highest average medical charge, at approximately $15,232.71.

Across every age group, smokers have higher average medical charges than non-smokers in this dataset.

## 7. Power BI Dashboard

The interactive dashboard presents the analysis through:

**KPI Cards**
- Total Customers
- Total Medical Cost
- Average Customer Age
- Average Medical Cost

**Charts**
- Average Medical Cost by Smoking Status
- Average Medical Cost by Age Group
- Average Medical Cost by BMI Category
- Average Medical Cost by Region

**Interactive Filters**
- Smoking Status
- Region
- BMI Category

The dashboard enables users to explore medical cost patterns and compare customer segments interactively.

## 8. Limitations

- The dataset contains 1,338 records and may not represent all insurance customers.
- The analysis describes associations and differences, not causal relationships.
- The analysis does not establish why medical costs differ between groups.
- The results reflect the available dataset and its recorded variables.
- BMI categories use standard thresholds for descriptive grouping and should not be interpreted as individual medical assessments.

## 9. Conclusion

The analysis identifies several notable patterns in medical insurance charges. Smokers have substantially higher average charges than non-smokers, older customers generally have higher average charges, and the Obese BMI category has the highest average charge among the BMI groups. The Southeast region has the highest average charge among the four regions analyzed.

Combining SQL analysis with Power BI visualization demonstrates practical skills in data aggregation, segmentation, exploratory analysis, and dashboard development.

## 10. Project Structure

```text
Medical-Cost-Analysis/
│
├── data/
│   └── insurance.csv
│
├── sql/
│   ├── 01_overall_analysis.sql
│   ├── 02_smoking_status_analysis.sql
│   ├── 03_age_group_analysis.sql
│   ├── 04_bmi_analysis.sql
│   ├── 05_region_analysis.sql
│   └── 06_age_smoking_analysis.sql
│
├── dashboard/
│   └── Medical_Cost_Analysis.pbix
│
├── screenshots/
│   └── medical_cost_dashboard.png
│
└── README.md
```

## 11. Skills Demonstrated

- SQL querying and aggregation
- Data segmentation using `CASE` statements
- Grouped analysis using `GROUP BY`
- Exploratory data analysis
- KPI development
- Power BI dashboard design
- Data visualization and insight communication
