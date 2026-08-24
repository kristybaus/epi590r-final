# Languages of Africa Analysis

## Project Description

This project analyzes data on languages spoken across Africa. The analysis includes descriptive statistics, a linear regression model, and a figure showing the distribution of the number of native speakers. 

## Data

The data come from the TidyTuesday project for January 13, 2026, "The Languages of Africa." The dataset was curated by Robert Muwanga using information from the Wikipedia page "Languages of Africa."

The dataset includes the following variables:

- `language`: Language name
- `family`: Language family
- `native_speakers`: Number of native speakers
- `country`: Country where the language is spoken

The raw data used for this analysis are stored in `data/africa.csv`.

## Reproducing the Analysis

To reproduce the analysis:

1. Open the `epi590r-final.Rproj` R project in RStudio.
2. Make sure the required R packages are installed: `tidyverse`, `gtsummary`, and `here`.
3. Open `R Final Project.qmd`.
4. Render `R Final Project.qmd`.

The Quarto document reads `data/africa.csv` using the `here` package and performs all data analysis directly from this file.

To examine how changes to the underlying data affect the results, make a minor change to `data/africa.csv`, save the file, and re-render `R Final Project.qmd`. The descriptive statistics, regression results, figure, and inline statistics will be recalculated automatically.

## AI Use
I used AI minimally for help with debugging my code regarding writing my function code. I attached the AI conversation below: <img width="781" height="348" alt="Screenshot 2026-08-24 at 4 41 34 PM" src="https://github.com/user-attachments/assets/a37bbf7c-f354-48e0-8187-288983096171" />

