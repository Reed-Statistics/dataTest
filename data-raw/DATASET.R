## code to prepare `DATASET` dataset goes here

# Necessary libraries
library(janitor)
library(lubridate)
library(tidyverse)

dat <- read.csv("https://data.seattle.gov/api/views/65db-xm6k/rows.csv?accessType=DOWNLOAD")

# Clean up variable names
fremontBikes <- clean_names(dat)

# Fix date
fremontBikes <- fremontBikes %>%
  mutate(date = mdy_hms(date))


usethis::use_data(fremontBikes, overwrite = TRUE)
