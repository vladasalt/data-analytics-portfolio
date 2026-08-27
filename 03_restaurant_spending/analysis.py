# Restaurant Spending Analysis
# Dataset: Plotly Express tips dataset
# Source: Plotly documentation / px.data.tips()
import pandas as pd
import numpy as np
from scipy import stats
import statsmodels.api as sm
from statsmodels.stats.diagnostic import het_breuschpagan

df = pd.read_csv("tips.csv")

# Derived categorical variable for the Chi-square analysis
df["bill_category"] = pd.qcut(
    df["total_bill"], q=3, labels=["Low", "Medium", "High"]
)

# 1. Descriptive statistics
print(df.groupby("day")["total_bill"].agg(["mean", "std", "count"]))
print(df.groupby("smoker")["total_bill"].agg(["mean", "std", "count"]))
print(df.groupby("time")["total_bill"].agg(["mean", "std", "count"]))

# 2. Welch independent-samples t-test
smokers = df.loc[df["smoker"] == "Yes", "total_bill"]
non_smokers = df.loc[df["smoker"] == "No", "total_bill"]
t_test = stats.ttest_ind(smokers, non_smokers, equal_var=False)
print(t_test)

# Assumptions
print(stats.shapiro(smokers))
print(stats.shapiro(non_smokers))
print(stats.levene(smokers, non_smokers, center="median"))

# 3. Chi-square test
table = pd.crosstab(df["day"], df["bill_category"])
chi_square = stats.chi2_contingency(table)
print(table)
print(chi_square)

# 4. Simple linear regression
X = sm.add_constant(df["size"])
model = sm.OLS(df["total_bill"], X).fit()
print(model.summary())

# Regression diagnostics
print(stats.shapiro(model.resid))
print(het_breuschpagan(model.resid, model.model.exog))

# Robust standard errors as a sensitivity check
print(model.get_robustcov_results(cov_type="HC3").summary())
