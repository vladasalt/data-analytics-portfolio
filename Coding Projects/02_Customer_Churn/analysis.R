# Customer Churn & Retention Analysis
# IBM Telco Customer Churn dataset
# Reproducible descriptive and inferential workflow

library(tidyverse)

# Expected columns: Churn, Contract, PaymentMethod, tenure, MonthlyCharges
df <- read_csv("WA_Fn-UseC_-Telco-Customer-Churn.csv", show_col_types = FALSE)

df <- df %>%
  mutate(
    Churn = factor(Churn, levels = c("No", "Yes")),
    Contract = factor(Contract),
    PaymentMethod = factor(PaymentMethod)
  )

# Descriptive churn rates
churn_by_contract <- df %>%
  group_by(Contract) %>%
  summarise(n = n(), churn_rate = mean(Churn == "Yes", na.rm = TRUE))

churn_by_payment <- df %>%
  group_by(PaymentMethod) %>%
  summarise(n = n(), churn_rate = mean(Churn == "Yes", na.rm = TRUE))

# Compare tenure and monthly charges by churn status
df %>%
  group_by(Churn) %>%
  summarise(
    n = n(),
    mean_tenure = mean(tenure, na.rm = TRUE),
    mean_monthly_charges = mean(MonthlyCharges, na.rm = TRUE)
  )

# Chi-square tests
chisq.test(table(df$Contract, df$Churn))
chisq.test(table(df$PaymentMethod, df$Churn))

# Visualisations
ggplot(df, aes(Contract, fill = Churn)) +
  geom_bar(position = "fill") +
  labs(y = "Proportion", title = "Churn Rate by Contract Type")

ggplot(df, aes(PaymentMethod, fill = Churn)) +
  geom_bar(position = "fill") +
  labs(y = "Proportion", title = "Churn Rate by Payment Method")
