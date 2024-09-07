#Owais Baig
#ALY6010- Probability and Statistics
#17th Dec, 2023
#Final Milestone Project


cat("\014") # clears console
rm(list = ls()) # clears global environment
try(dev.off(dev.list()["RStudioGD"]), silent = TRUE) # clears plots
options(scipen = 100) # disables scientific notion for entire R session

library(pacman)
p_load(tidyverse)
# install.packages("ggthemes")
# install.packages("ggeasy")
# install.packages("lubridate")
# install.packages("dplyr")
# install.packages("readr")
# install.packages("ggplot2")
# install.packages("tidyverse")
# install.packages("pacman")


library(lubridate)
library(readr)
library(tidyverse)
library(ggplot2)

# Load the dataset
data <- read.csv("cybersecurity_attacks.csv")

#links an R script file, which contains code for the final milestone project.
source("/Users/owais/final project milestone1_baig/finalmilestoneproject1_baig.R")

#Q1 Is there a significant linear relationship between Packet Length and Anomaly Scores?"

#Scatterplot: Visualize the relationship between Packet Length and Anomaly Scores.
# Scatterplot
plot(cleaned_df$Packet.Length, cleaned_df$Anomaly.Scores, 
     main = "Scatter Plot: Packet Length vs. Anomaly Scores",
     xlab = "Packet Length", ylab = "Anomaly Scores", col = "blue", pch = 16)

#Test: Correlation Analysis

# Dependent Variable: Anomaly Scores
# Independent Variable: Packet Length

correlation <- cor(cleaned_df$Packet.Length, cleaned_df$Anomaly.Scores)
cat("Correlation Coefficient:", correlation, "\n")

# Test: Linear Regression

# Dependent Variable: Anomaly Scores
# Independent Variable: Packet Length

model <- lm(Anomaly.Scores ~ Packet.Length, data=cleaned_df)
summary(model)

# Test: Hypothesis Testing for Correlation Coefficient
# 
# Dependent Variable: Anomaly Scores
# Independent Variable: Packet Length
cor.test(cleaned_df$Packet.Length, cleaned_df$Anomaly.Scores, method="pearson")


#Question 2: Is there a significant linear relationship between anomaly scores and numerical severity?

# Variables:
# Dependent Variable: Anomaly Scores
# Independent Variable: Numerical Severity

#Scatter Plot and Visual Inspection:
plot(cleaned_df$Numerical_Severity, cleaned_df$Anomaly.Scores, 
     main = "Scatter Plot: Numerical Severity vs. Anomaly Scores",
     xlab = "Numerical Severity", ylab = "Anomaly Scores", col = "purple", pch = 16)

#Fit a linear regression model to quantify the relationship.
# Linear regression model
linear_model <- lm(Anomaly.Scores ~ Numerical_Severity, data = cleaned_df)

#Summary and Interpretation:
summary(linear_model)

#Correlation Analysis:
correlation_coefficient <- cor(cleaned_df$Numerical_Severity, cleaned_df$Anomaly.Scores)
correlation_coefficient

#Q3.Is there a significant association between the severity level of cybersecurity attacks and the length of network packets?

# Variables:
# Dependent Variable: Severity Level (Categorical)
# Independent Variable: Packet Length

#Scatter Plot and Visual Inspection:
boxplot(cleaned_df$Packet.Length ~ cleaned_df$Severity.Level,
main = "Box Plot: Severity Level vs. Packet Length",
xlab = "Severity Level", ylab = "Packet Length", col = "lightblue")

# Linear Regression Model
linear_model <- lm(Packet.Length ~ as.factor(Severity.Level), data = cleaned_df)
linear_model

# Correlation Test
correlation_coefficient <- cor.test(cleaned_df$Packet.Length, as.numeric(factor(cleaned_df$Severity.Level)))
correlation_coefficient

# ANOVA test
anova_result <- aov(Packet.Length ~ Severity.Level, data = cleaned_df)

# Summary of the ANOVA test
summary(anova_result)

#Q4. Is there a multivariate linear relationship between the severity level of cybersecurity attacks, the length of network packets, and anomaly scores?

# Multivariate Regression Model
multivariate_model <- lm(cbind(Packet.Length, Anomaly.Scores) ~ as.factor(Severity.Level), data = cleaned_df)
summary(multivariate_model)

