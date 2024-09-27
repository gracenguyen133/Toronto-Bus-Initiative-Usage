library(ggplot2)
library(dplyr)

# Read in the cleaned data
cleaned_data <- read.csv("~/Desktop/starter_folder-main/data/analysis_data/cleaned_transport_bus_data.csv")

# Convert Date to Date class
cleaned_data$Date <- as.Date(cleaned_data$Date)

# Convert Date to numeric for regression analysis (days since start)
cleaned_data$Days_Since_Start <- as.numeric(cleaned_data$Date - min(cleaned_data$Date))

# Linear regression model to predict total clients served
model <- lm(Total_Clients ~ Days_Since_Start + Clients_Transported + Clients_Stationary, data = cleaned_data)

# View the summary of the model
summary(model)

# Visualize the relationship between actual and predicted values
cleaned_data$Predicted_Clients <- predict(model, cleaned_data)

ggplot(cleaned_data, aes(x = Date)) +
  geom_line(aes(y = Total_Clients, color = "Actual")) +
  geom_line(aes(y = Predicted_Clients, color = "Predicted")) +
  labs(title = "Actual vs Predicted Total Clients Served Over Time", x = "Date", y = "Total Clients") +
  scale_color_manual(name = "Legend", values = c("Actual" = "blue", "Predicted" = "red")) +
  theme_minimal()
