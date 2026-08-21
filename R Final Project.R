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

#regression table
model1 <- lm(
	log(native_speakers) ~ family,
	data = africa
)

model1 |>
	tbl_regression(
		label = list(
			family ~ "Language family"
		)
	) |>
	bold_labels() |>
	modify_caption(
		"**Table 2. Linear regression of native speakers by language family**"
	)

#create histogram
ggplot(africa, aes(x = log(native_speakers))) +
  geom_histogram(bins = 30) +
  labs(
    title = "Distribution of Native Speakers",
    x = "Log Number of Native Speakers",
    y = "Count"
  )

#create a function to calculate median by group
median_by_group <- function(data, variable, group) {
	data |>
		summarize(
			median = median({{ variable }}, na.rm = TRUE),
			.by = {{ group }}
		)
}

# calculate median native speakers by language family
median_by_group(
	africa,
	native_speakers,
	family
)
