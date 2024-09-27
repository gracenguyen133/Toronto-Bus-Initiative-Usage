library(opendatatoronto)
library(tidyverse)

library(opendatatoronto)
library(dplyr)  # Ensure dplyr is loaded

# Ensure the raw data directory exists
if (!dir.exists("~/Desktop/starter_folder-main/data/raw_data")) {
  dir.create("~/Desktop/starter_folder-main/data/raw_data", recursive = TRUE)
}

# Search for the dataset on Open Data Toronto and prepare to filter
package <- search_packages("Transport Bus Initiative") %>%
  list_package_resources()

# Filter for the first CSV resource
csv_resource <- package %>%
  filter(format == "CSV") %>%
  slice(1)

# Download the data using the resource ID from the first CSV file
data <- get_resource(csv_resource$id)

# Save the raw data to a CSV file
write.csv(data, "~/Desktop/starter_folder-main/data/raw_data/transport_bus_initiative.csv", row.names = FALSE)
