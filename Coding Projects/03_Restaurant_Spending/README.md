# Restaurant Spending Analysis

A quantitative customer-analytics project using the **Plotly Express tips dataset** to investigate restaurant spending patterns.

## Focus

The analysis examines total bill value across days and smoking status, the relationship between party size and total bill, and the reasonableness of regression assumptions.

**Sample:** 244 restaurant bills  
**Language:** Python  
**Dataset:** Plotly Express `tips` dataset

## Methods

- Data preparation and feature creation
- Descriptive statistics
- Welch independent-samples t-test
- Chi-square test of independence
- Simple OLS linear regression
- Residual diagnostics
- HC3 robust standard errors

## Business interpretation

Party size is a practical operational variable because larger groups can affect table allocation, staffing and expected spend. Differences in spending across visit characteristics can help a restaurant understand customer behaviour and demand patterns.

The results are interpreted as **associations rather than causal effects**.

## Code

[`analysis.py`](analysis.py) contains the main Python workflow.
