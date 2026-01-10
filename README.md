# Bellabeat Case Study: Smart Device Usage Analysis
Author: Divya Sharma
Tools: R, Tableau
Dataset: Fitbit Fitness Tracker Data (Kaggle)

### Project Overview
This case study follows the analytics process of Ask, Prepare, Process, Analyze, and Share to explore how consumers use smart devices and how Bellabeat can improve its marketing strategy.

The primary goals of this project are:

Understand user behavior with fitness tracking features.

Identify patterns in activity and sleep across weekdays and weekends.

Highlight consistent vs inconsistent usage of features.

Provide actionable recommendations to Bellabeat’s marketing and product teams.

### Business Task

Bellabeat is a wellness-focused tech company that produces smart devices for health tracking.

### Key Questions Explored:

How do consumers use smart devices?

Are there patterns by weekday vs weekend?

Which features are used most consistently?

### Stakeholders:

Bellabeat Marketing Team

Bellabeat Leadership Team

### Data Sources

The dataset is publicly available on Kaggle and includes Fitbit fitness tracker data.

### Files used:

dailyActivity_merged.csv

sleepDay_merged.csv

### Limitations:

Small sample size

Self-reported data

Short observation period

Data Preparation & Cleaning

Merged multiple CSV files into a single dataset.

Standardized column names using janitor::clean_names().

Fixed date formats with lubridate.

Created new columns:

day_type (Weekday/Weekend)

total_active_minutes

consistency_level (High/Medium/Low)

Deduplicated multiple entries per user per day.

Analysis & Visualizations

The analysis includes:

Average steps and active minutes: Weekday vs Weekend, by day of week.

User consistency: High, Medium, Low based on activity logging.

Sleep analysis: Average sleep duration, distribution, and correlation with activity.

Merged sleep and activity datasets to explore relationships between activity and rest.

### Tools Used:

R: tidyverse, lubridate, janitor, ggplot2

Tableau: Interactive dashboards for visual analysis

### Example Visualizations:

Average Steps by Weekday

Sleep Duration Distribution

Sleep vs Total Active Minutes

### Key Insights

Users are slightly more active on weekdays than weekends.

Step tracking is used more consistently than sleep tracking.

Average sleep duration is ~7 hours on weekdays.

Active users tend to have slightly longer sleep durations.

### Recommendations for Bellabeat

Push notifications: Morning and evening on weekdays; weekend-specific nudges.

Feature focus: Promote step tracking challenges; encourage sleep tracking for inconsistent users.

Marketing strategies: Target low-consistency users with wellness programs; leverage midweek peak activity for campaigns.
