library(dplyr)

# Read in the raw data
raw_data <- read.csv("~/Desktop/starter_folder-main/data/raw_data/transport_bus_initiative.csv")

# Inspect the first few rows of the raw data
head(raw_data)
str(raw_data)  # Check the structure of the data

# Clean the data: Handle missing values and rename columns
cleaned_data <- raw_data %>%
  na.omit() %>%  # Remove rows with missing values (if applicable)
  rename(
    Date = Date,  # Keep as is
    Total_Clients = Clients,  # Rename Clients to Total_Clients
    Clients_Transported = Clients.transported,  # Rename correctly with the dot notation
    Clients_Stationary = Clients.stationary  # Rename correctly with the dot notation
  )

# Write the cleaned data to the analysis_data folder
write.csv(cleaned_data, "~/Desktop/starter_folder-main/data/analysis_data/cleaned_transport_bus_data.csv", row.names = FALSE)
summary(cleaned_data)
