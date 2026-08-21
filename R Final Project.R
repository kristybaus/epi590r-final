library(tidyverse)
library(gtsummary)

#Read in data from github
africa <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2026/2026-01-13/africa.csv')

#descriptive statistics table
africa |>
	tbl_summary(
		by = family,
		include = native_speakers,
		statistic = all_continuous() ~ "{median} ({p25}, {p75})",
		digits = all_continuous() ~ 0,
		label = list(
			native_speakers ~ "Number of native speakers"
		),
		missing_text = "Missing"
	) |>
	add_overall() |>
	bold_labels() |>
	modify_caption("**Table 1. Native speakers by language family**")
