# dependencies
library(devtools)
library(dplyr)
library(janitor)
library(readr)

# create full 2017 data from raw - needs to be available in the downloads
fullData16 <- read_csv("/Users/chris/Downloads/500_Cities__Local_Data_for_Better_Health__2016_release.csv")

## create us data set, 2016
ch_tbl_us16 <- filter(fullData16, GeographicLevel == "US")
ch_tbl_us16 %>%
  as_tibble() %>%
  select(Year, Category, Short_Question_Text, Data_Value_Type, Data_Value, Low_Confidence_Limit,
         High_Confidence_Limit) %>%
  clean_names() %>%
  rename(
    estimate_type = data_value_type,
    estimate = data_value,
    estimate_ci_low = low_confidence_limit,
    estimate_ci_high = high_confidence_limit,
    question = short_question_text
  ) %>%
  arrange(category, question, estimate_type) -> ch_tbl_us16

attr(ch_tbl_us16,'spec') <- NULL

use_data(ch_tbl_us16, overwrite = TRUE)

## create city data set, 2016
ch_tbl_city16 <- filter(fullData16, GeographicLevel == "City")
ch_tbl_city16 %>%
  as_tibble() %>%
  select(StateAbbr, StateDesc, CityName, CityFIPS, Year, Category, Short_Question_Text,
         Data_Value_Type, Data_Value, Low_Confidence_Limit, High_Confidence_Limit, Data_Value_Footnote) %>%
  clean_names() %>%
  rename(
    state = state_desc,
    city = city_name,
    estimate_type = data_value_type,
    estimate = data_value,
    estimate_ci_low = low_confidence_limit,
    estimate_ci_high = high_confidence_limit,
    question = short_question_text
  ) %>%
  arrange(state_abbr, city, category, question, estimate_type) -> ch_tbl_city16

attr(ch_tbl_city16,'spec') <- NULL

use_data(ch_tbl_city16, overwrite = TRUE)

## create tract data set, 2016
ch_tbl_tract16 <- filter(fullData16, GeographicLevel == "Census Tract")
ch_tbl_tract16 %>%
  as_tibble() %>%
  select(StateAbbr, StateDesc, CityName, CityFIPS, TractFIPS, Year, Category, Short_Question_Text,
         Data_Value, Low_Confidence_Limit, High_Confidence_Limit, Data_Value_Footnote) %>%
  clean_names() %>%
  rename(
    state = state_desc,
    city = city_name,
    estimate = data_value,
    estimate_ci_low = low_confidence_limit,
    estimate_ci_high = high_confidence_limit,
    question = short_question_text
  ) %>%
  arrange(state_abbr, city, category, question, tract_fips) -> ch_tbl_tract16

attr(ch_tbl_tract16,'spec') <- NULL

use_data(ch_tbl_tract16, overwrite = TRUE)

# create full 2017 data from raw - needs to be available in the downloads
fullData17 <- read_csv("/Users/chris/Downloads/500_Cities__Local_Data_for_Better_Health__2017_release.csv")

## create us data set, 2017
ch_tbl_us17 <- filter(fullData17, GeographicLevel == "US")
ch_tbl_us17 %>%
  as_tibble() %>%
  select(Year, Category, Short_Question_Text, Data_Value_Type, Data_Value, Low_Confidence_Limit,
         High_Confidence_Limit) %>%
  clean_names() %>%
  rename(
    estimate_type = data_value_type,
    estimate = data_value,
    estimate_ci_low = low_confidence_limit,
    estimate_ci_high = high_confidence_limit,
    question = short_question_text
  ) %>%
  arrange(category, question, estimate_type) -> ch_tbl_us17

attr(ch_tbl_us17,'spec') <- NULL

use_data(ch_tbl_us17, overwrite = TRUE)

## create city data set, 2017
ch_tbl_city17 <- filter(fullData17, GeographicLevel == "City")
ch_tbl_city17 %>%
  as_tibble() %>%
  select(StateAbbr, StateDesc, CityName, CityFIPS, Year, Category, Short_Question_Text,
         Data_Value_Type, Data_Value, Low_Confidence_Limit, High_Confidence_Limit, Data_Value_Footnote) %>%
  clean_names() %>%
  rename(
    state = state_desc,
    city = city_name,
    estimate_type = data_value_type,
    estimate = data_value,
    estimate_ci_low = low_confidence_limit,
    estimate_ci_high = high_confidence_limit,
    question = short_question_text
  ) %>%
  arrange(state_abbr, city, category, question, estimate_type) -> ch_tbl_city17

attr(ch_tbl_city17,'spec') <- NULL

use_data(ch_tbl_city17, overwrite = TRUE)

## create tract data set, 2017
ch_tbl_tract17 <- filter(fullData17, GeographicLevel == "Census Tract")
ch_tbl_tract17 %>%
  as_tibble() %>%
  select(StateAbbr, StateDesc, CityName, CityFIPS, TractFIPS, Year, Category, Short_Question_Text,
         Data_Value, Low_Confidence_Limit, High_Confidence_Limit, Data_Value_Footnote) %>%
  clean_names() %>%
  rename(
    state = state_desc,
    city = city_name,
    estimate = data_value,
    estimate_ci_low = low_confidence_limit,
    estimate_ci_high = high_confidence_limit,
    question = short_question_text
  ) %>%
  arrange(state_abbr, city, category, question, tract_fips) -> ch_tbl_tract17

attr(ch_tbl_tract17,'spec') <- NULL

use_data(ch_tbl_tract17, overwrite = TRUE)
