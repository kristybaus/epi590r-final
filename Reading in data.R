##a way to read in the dataset

library(tidyverse)

africa <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2026/2026-01-13/africa.csv')

#create smaller version of data
africa_small <- slice(africa, 1:100)

# create data/clean folder if it doesn't already exist
if (!dir.exists(here::here("data", "clean"))) {
	dir.create(here::here("data", "clean"))
}

write_rds(africa_small, here::here("data", "clean", "africa_small.rds"))
