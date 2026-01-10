library(dplyr)
library(readr)
library(lubridate)

folder1 <- "C:/Users/divya/OneDrive/Desktop/Bellabeat_capstone/raw_data/3.12 - 4.11/"
folder2 <- "C:/Users/divya/OneDrive/Desktop/Bellabeat_capstone/raw_data/4.12 - 5.12/"

daily1 <- read_csv(paste0(folder1, "dailyActivity_merged.csv"))
daily2 <- read_csv(paste0(folder2, "dailyActivity_merged.csv"))

daily_full <- bind_rows(daily1, daily2)

daily_full$ActivateDate <- as.Date(daily_full$ActivityDate, format = "%m/%d/%Y")

colnames(daily_full) <- tolower(gsub(" ", "_", colnames(daily_full)))

sum(is.na(daily_full))

daily_full <- distinct(daily_full)

daily_full <- daily_full %>%
  mutate(total_active_minutes = veryactiveminutes + fairlyactiveminutes + lightlyactiveminutes)

write_csv(daily_full, "cleaned_data/dailyActivity_master.csv")
install.packages("ggplot2")

library(ggplot2)
data <- read.csv("cleaned_data/dailyActivity_master.csv")
# Count users per consistency level
consistency_counts <- table(data$ConsistencyLevel)
consistency_counts
ggplot(data, aes(x = ConsistencyLevel)) +
  geom_bar(fill = c("green", "orange", "red")) +
  labs(title = "User Consistency Level",
       x = "Consistency Level",
       y = "Number of Users") +
  theme_minimal()


