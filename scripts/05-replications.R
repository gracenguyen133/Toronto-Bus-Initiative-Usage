# Load necessary libraries
library(dplyr)
library(ggplot2)

# Replicate steps from previous scripts

# Step 1: Simulate data again with the same seed to ensure consistency
set.seed(123)  # Same seed as before
simulate_data <- data.frame(
  Date = seq.Date(from = as.Date("2023-11-15"), to = as.Date("2024-04-15"), by = "day"),
  Total_Clients = sample(0:50, 153, replace = TRUE),
  Clients_Transported = sample(0:30, 153, replace = TRUE),
  Clients_Stationary = sample(0:20, 153, replace = TRUE)
)

# Step 2: Load cleaned data from previous scripts
cleaned_data <- read.csv("~/Desktop/starter_folder-main/data/analysis_data/cleaned_transport_bus_data.csv")
cleaned_data$Date <- as.Date(cleaned_data$Date)

# Step 3: Rebuild the linear model to ensure reproducibility
model <- lm(Total_Clients ~ Clients_Transported + Clients_Stationary, data = cleaned_data)

# Step 4: Generate the same predictions
cleaned_data$Predicted_Clients <- predict(model, cleaned_data)

# Step 5: Verify the consistency of the model summary
model_summary <- summary(model)
print(model_summary)

# Step 6: Replicate visualizations
ggplot(cleaned_data, aes(x = Date)) +
  geom_line(aes(y = Total_Clients, color = "Actual")) +
  geom_line(aes(y = Predicted_Clients, color = "Predicted")) +
  labs(title = "Actual vs Predicted Total Clients Served Over Time", x = "Date", y = "Total Clients") +
  scale_color_manual(name = "Legend", values = c("Actual" = "blue", "Predicted" = "red")) +
  theme_minimal()


citation()  # For R itself
citation("tidyverse")
citation("ggplot2")
citation("knitr")
citation("modelsummary")
# Add any other packages you used