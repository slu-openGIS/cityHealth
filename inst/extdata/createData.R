# dependencies
library(devtools)
library(dplyr)
library(readr)

# create full 2017 data from raw - needs to be available in the downloads
fullData <- read_csv("/Users/chris/Downloads/500_Cities__Local_Data_for_Better_Health__2017_release.csv")

## create us data set, 2017
usData17 <- filter(fullData, GeographicLevel == "US")
usData17 %>%
  as_tibble() -> usData17
use_data(usData17, overwrite = TRUE)

## create city data set, 2017
cityData17 <- filter(fullData, GeographicLevel == "City")
cityData17 %>%
  as_tibble() -> cityData17
use_data(cityData17, overwrite = TRUE)

## create tract data set, 2017
tractData17 <- filter(fullData, GeographicLevel == "Census Tract")
tractData17 %>%
  as_tibble() -> tractData17
use_data(tractData17, overwrite = TRUE)
