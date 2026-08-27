# NHS Satisfaction Analysis — R
# British Social Attitudes Survey 2021
# The original survey dataset is not redistributed in this repository.

library(tidyverse)
library(haven)
library(janitor)
library(car)
library(broom)

# Load the local BSA dataset when available
# bsa <- read_sav("path/to/BSA2021.sav")

# Example analytical workflow used in the project:
# 1. Convert labelled variables and recode non-substantive responses.
# 2. Construct NHS satisfaction, age and socio-demographic variables.
# 3. Build a complete-case analytical dataset.

# Descriptive analysis
# summary(df$nhs_sat)

# Independent-samples t-test
t.test(nhs_sat ~ sex, data = df)

# Chi-square test
table(df$education, df$nhs_sat_category)
chisq.test(table(df$education, df$nhs_sat_category))

# Linear regression
model <- lm(nhs_sat ~ age, data = df)
summary(model)

# Diagnostics
shapiro.test(residuals(model))
car::leveneTest(nhs_sat ~ sex, data = df)
qqnorm(residuals(model)); qqline(residuals(model))
plot(model)
