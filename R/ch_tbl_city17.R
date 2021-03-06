#' City-wide estimates, 2017 release
#'
#' @description A data set containing estimates for the 28 outcomes in the 500 Cities data for each
#' of the cities. Both crude and age-adjusted prevalence are provided for each measure.
#'
#' @docType data
#'
#' @usage data(ch_tbl_city17)
#'
#' @format A tibble with 28000 rows and 12 variables:
#' \describe{
#'   \item{state_abbr}{USPS state abbreviation}
#'   \item{state}{state name}
#'   \item{city}{city name}
#'   \item{city_fips}{fips code for city}
#'   \item{year}{year of estimate}
#'   \item{category}{outcome type: health outcome, prevention, or unhealthy behaviors}
#'   \item{question}{specific outcome}
#'   \item{estimate_type}{crude or age-adjusted}
#'   \item{estimate}{estimated prevlance of question}
#'   \item{estimate_ci_low}{lower bound of crude prevalance estimate}
#'   \item{estimate_ci_high}{upper bound of crude prevalance estimate}
#'   \item{note}{footnote text}
#'   }
#'
#' @source \href{https://www.cdc.gov/500cities/}{Centers for Disease Control 500 Cities Project}
#'
#' #' @examples
#' str(ch_tbl_city17)
#' head(ch_tbl_city17)
#'
"ch_tbl_city17"
