# Analysis of Toronto's Transport Bus Initiative Usage

## Project Overview
This repository contains the analysis of the Transport Bus Initiative usage in Toronto from December 2023 to April 2024. The study examines usage patterns, predicts total clients based on transported and stationary clients, and provides insights for urban transit planning.

## Data Source
Data is sourced from the [Open Data Toronto portal](https://open.toronto.ca/dataset/transport-bus-initiative-usage/). It is updated monthly and includes daily records of total clients, transported clients, and stationary clients.

## Repository Structure
- `data/`: Contains raw and processed data files
- `scripts/`: R scripts for data cleaning, analysis, and visualization
- `paper/`: Quarto document for the final paper
- `sketches/`: Hand-drawn sketches related to the analysis (not included in the public repo)

## Key Files
- `scripts/00-simulate_data.R`: Simulates dataset and develops tests
- `scripts/01-download_data.R`: Downloads actual data from Open Data Toronto
- `scripts/02-data_cleaning.R`: Cleans and prepares data for analysis
- `scripts/03-model.R`: Builds and evaluates the regression model
- `paper/paper.qmd`: Quarto document containing the full analysis and report

## Reproducibility
To reproduce this analysis:
1. Clone this repository
2. Ensure R (version 4.1.2 or later) is installed along with the following packages:
   - tidyverse
   - ggplot2
   - knitr
   - modelsummary
3. Run the scripts in the `scripts/` directory in numerical order
4. Render the Quarto document in the `paper/` directory

## LLM Usage Statement
Aspects of the code were written with the assistance of GitHub Copilot, an AI-powered code completion tool. The abstract and introduction were drafted with the help of ChatGPT, and the entire chat history is available in `other/llm/usage.txt`.

## License
This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments
- City of Toronto for providing the open data.
