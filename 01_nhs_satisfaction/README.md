# NHS Satisfaction Analysis

A quantitative analysis of satisfaction with the National Health Service using the **British Social Attitudes Survey 2021**.

## Project overview

This project examines whether NHS satisfaction differs across key socio-demographic characteristics, including household income, marital status, presence of children, sex, educational attainment and age.

**Sample:** 3,307 respondents  
**Language:** R  
**Outcome:** NHS satisfaction, treated as a continuous variable  
**Significance level:** α = 0.05

## Methods

- Data cleaning and preparation
- Descriptive statistics
- Independent-samples t-test
- Chi-square test of independence
- Simple linear regression
- Residual and model diagnostics

## Key findings

- Mean NHS satisfaction was approximately **2.60**.
- Satisfaction varied modestly across household-income groups, with means ranging from **2.49 to 2.70**.
- The difference in satisfaction by sex was **not statistically significant** (*p* = 0.437).
- The association between education and satisfaction category was **not statistically significant** (*p* = 0.093).
- Age showed **no statistically significant linear relationship** with NHS satisfaction (*p* = 0.717; R² ≈ 0).
- Respondents with children had a mean satisfaction of **2.56**, compared with **2.63** among respondents without children.

## Visualisations

### NHS satisfaction by household income

![NHS satisfaction by income](nhs_satisfaction_by_income.png)

### NHS satisfaction by marital status

![NHS satisfaction by marital status](nhs_satisfaction_by_marital_status.png)

### NHS satisfaction by children in household

![NHS satisfaction by children](nhs_satisfaction_by_children.png)

### NHS satisfaction by sex

![NHS satisfaction by sex](nhs_satisfaction_by_sex.png)

### Hypothesis-test results

![Hypothesis-test p-values](hypothesis_test_p_values.png)

## Interpretation

The results provide limited evidence that the socio-demographic variables examined systematically explain differences in NHS satisfaction. The analysis demonstrates how survey data can be cleaned, explored and evaluated using formal statistical tests rather than relying only on descriptive differences.

## Limitations

NHS satisfaction is measured on a discrete response scale but is treated as continuous for the main parametric analysis. The data are cross-sectional and observational, so the results should be interpreted as associations rather than causal effects. Complete-case analysis may also introduce selection bias.

## Reproducibility

See [`analysis.R`](analysis.R) for the analysis workflow. The full report is available in [`project_report.pdf`](project_report.pdf).
