library(ggplot2)

# Read in the cleaned data
cleaned_data <- read.csv("~/Desktop/starter_folder-main/data/analysis_data/cleaned_transport_bus_data.csv")

# Convert Date to Date class for proper time series plotting
cleaned_data$Date <- as.Date(cleaned_data$Date)

# Plot total clients over time
ggplot(cleaned_data, aes(x = Date, y = Total_Clients)) +
  geom_line(color = "blue") +
  labs(title = "Total Clients Served Over Time", x = "Date", y = "Total Clients") +
  theme_minimal()

# Plot stationary vs transported clients
ggplot(cleaned_data, aes(x = Clients_Transported, y = Clients_Stationary)) +
  geom_point(color = "green") +
  labs(title = "Stationary vs Transported Clients", x = "Clients Transported", y = "Clients Stationary") +
  theme_minimal()

# Summary statistics for each variable
summary(cleaned_data)
