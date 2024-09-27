#### Preamble ####
# Purpose: Simulates bus transport data in Toronto from November 2023 to April 2024
# Author: Grace Nguyen
# Date: 26 September 2024
# Contact: hagiang.nguyen@mail.utoronto.ca
# License: MIT
# Pre-requisites: The `tidyverse` package must be installed

# Simulate transport bus data
set.seed(123) # for reproducibility

simulate_data <- data.frame(
  Date = seq.Date(from = as.Date("2023-11-15"), to = as.Date("2024-04-15"), by = "day"),
  Clients = sample(0:50, 153, replace = TRUE),  # Total clients served
  Clients_transported = sample(0:30, 153, replace = TRUE),  # Transported clients
  Clients_stationary = sample(0:20, 153, replace = TRUE)    # Stationary clients
)

# Write simulated data to file
write.csv(simulate_data, "~/Desktop/starter_folder-main/data/analysis_data/simulated_transport_bus.csv", row.names = FALSE)
