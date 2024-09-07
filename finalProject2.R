#Owais Baig
#ALY6010- Probability and Statistics
#2nd Dec, 2023
#Final Milestone Project-2

library(dplyr)
library(lubridate)
library(readr)
library(tidyverse)
library(ggplot2)


# Load the dataset
df <- read.csv("cybersecurity_attacks.csv")

# Extract the "Anomaly.Scores" column from the dataframe
anomaly_scores <- df$Anomaly.Scores
population_mean <- 50

# Perform one-sample t-test
result1 <- t.test(anomaly_scores, mu = population_mean)

# Print the result
print(result1)

# Create subsets for Source Port and Destination Port
source_port_data <- df$Source.Port
destination_port_data <- df$Destination.Port

# Perform a two-sample t-test
t_test_result <- t.test(source_port_data, destination_port_data)

# Print the result
print(t_test_result)

# Load the necessary library (if not already installed)
install.packages("car")
library(car)

# Perform ANOVA
result_anova <- aov(`Anomaly.Scores` ~ `Alerts.Warnings`, data = df)
print(result_anova)

# Print ANOVA table
print(summary(result_anova))

