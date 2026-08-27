# NHS Satisfaction Analysis

Survey-data analysis using the **British Social Attitudes Survey 2021 (BSA 2021)**.

## Focus

The project examines whether NHS satisfaction differs across socio-demographic groups including household income, marital status, children in the household, sex, education and age.

## Methods

- Descriptive statistics
- Independent-samples t-test
- Chi-square test of independence
- Simple linear regression
- Residual and variance diagnostics

## Key results

- Analytical sample: **3,307 respondents**
- Female mean satisfaction: **2.58**; male mean: **2.63**
- Sex difference: **p = 0.437**
- Education association: **χ² = 10.84, df = 6, p = 0.093**
- Age coefficient: **0.00117, p = 0.717**
- Age model R²: approximately **0**

The results provide limited evidence that the socio-demographic variables examined explain systematic differences in NHS satisfaction.

## Code

[`analysis.R`](analysis.R) contains the R workflow used for the analysis.

The original BSA dataset is not redistributed in this portfolio.
