## code to prepare `DATASET` dataset goes here

# Necessary libraries
library(janitor)

dat <- read.csv("https://data.seattle.gov/api/views/65db-xm6k/rows.csv?accessType=DOWNLOAD")

# Clean up variable names
fremontBikes <- clean_names(dat)


usethis::use_data(fremontBikes, overwrite = TRUE)
