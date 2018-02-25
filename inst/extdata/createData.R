# dependencies
library(devtools)
library(dplyr)
library(janitor)
library(readr)

# create full 2017 data from raw - needs to be available in the downloads
fullData16 <- read_csv("/Users/chris/Downloads/500_Cities__Local_Data_for_Better_Health__2016_release.csv")

## create us data set, 2016
usData16 <- filter(fullData16, GeographicLevel == "US")
attributes(usData16) <- NULL
usData16 %>%
  as_tibble() %>%
  select(Year, Category, Data_Value_Type, Data_Value, Data_Value_Footnote, Low_Confidence_Limit,
         High_Confidence_Limit, Short_Question_Text) %>%
  clean_names() -> usData16
use_data(usData16, overwrite = TRUE)

# create full 2017 data from raw - needs to be available in the downloads
fullData17 <- read_csv("/Users/chris/Downloads/500_Cities__Local_Data_for_Better_Health__2017_release.csv")

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
