# Customer Churn & Retention Analysis

Customer analytics using the **IBM Telco Customer Churn dataset**.

## Focus

The project examines contract type, payment method, tenure and monthly charges to identify customer segments associated with churn and translate the findings into retention recommendations.

## Key findings

- Overall churn rate: **26.54%** (1,869 of 7,043 customers)
- Month-to-month customers: **42.7%** churn
- One-year contracts: **11.3%** churn
- Two-year contracts: **2.8%** churn
- Contract type and churn: **χ² = 1184.60, p < 0.001**
- Electronic-check customers: approximately **45.3%** churn
- Average tenure: **17.98 months** among churned vs **37.57 months** among retained customers
- Mean monthly charges: **$74.44** among churned vs **$61.27** among retained customers

## Methods

- Data cleaning and preparation
- Churn-rate segmentation
- Descriptive comparisons
- Chi-square tests
- Visualisation
- Business interpretation

## Code

[`analysis.R`](analysis.R) contains the reproducible R workflow.

The original customer dataset is referenced by the code but is not redistributed here.
