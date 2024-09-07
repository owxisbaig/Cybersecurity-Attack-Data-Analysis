# Cybersecurity-Attack-Data-Analysis
This project focuses on analyzing a cybersecurity dataset to examine the relationships between various features, such as packet length, anomaly scores, and attack severity. The aim is to use statistical techniques to determine significant relationships and trends in the data, providing insights into the behavior of cybersecurity attacks.

Key Features:

    Data Cleaning and Preparation:
        A dataset, cybersecurity_attacks.csv, is loaded, cleaned, and prepared for analysis.
        External script linking is used to maintain modularity and ensure clean data is used throughout the analysis.

    Exploratory Data Analysis (EDA):
        Scatter plots and box plots are used to visualize relationships between packet length, anomaly scores, numerical severity, and attack severity levels.

    Statistical Analysis:
        Correlation Analysis: Used to quantify the strength of linear relationships between variables (e.g., packet length and anomaly scores, anomaly scores and numerical severity).
        Linear Regression: Applied to model the relationship between dependent and independent variables.
        Hypothesis Testing: Pearson’s correlation coefficient is used to test the significance of relationships.
        ANOVA (Analysis of Variance): Conducted to evaluate differences in packet length across different severity levels of attacks.
        Multivariate Regression: Investigates the joint impact of severity level on both packet length and anomaly scores.

Key Questions:

    Q1: Is there a significant linear relationship between Packet Length and Anomaly Scores?
        A scatter plot is created, followed by correlation and linear regression analysis to determine if there's a meaningful relationship between packet length and anomaly scores.

    Q2: Is there a significant linear relationship between anomaly scores and numerical severity?
        The project evaluates the relationship between anomaly scores and the numerical severity of the attack, using scatter plots, correlation, and regression analysis.

    Q3: Is there a significant association between the severity level of cybersecurity attacks and the length of network packets?
        A box plot visualizes the relationship, and ANOVA is performed to assess if different severity levels significantly impact packet lengths.

    Q4: Is there a multivariate linear relationship between severity level, packet length, and anomaly scores?
        A multivariate regression model is employed to assess the combined effect of attack severity on both packet length and anomaly scores.

Technologies Used:

    R: Used for data analysis and visualization.
    Libraries:
        tidyverse for data manipulation and visualization.
        ggplot2 for plotting.
        lubridate and readr for data handling.
        pacman for easy package management.

Insights & Conclusions:

The project investigates and quantifies the relationships between key cybersecurity metrics, aiding in understanding how certain factors like packet length and anomaly scores vary with the severity of attacks. By leveraging statistical tools, the analysis offers evidence of patterns and associations critical to strengthening cybersecurity defenses.
