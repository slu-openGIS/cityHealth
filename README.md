<!-- README.md is generated from README.Rmd. Please edit that file -->
cityHealth <img src="https://slu-dss.github.io/img/gisLogoSm.png" align="right" />
==================================================================================

[![lifecycle\_badge](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://github.com/slu-openGIS/cityHealth) [![CRAN\_status\_badge](http://www.r-pkg.org/badges/version/cityHealth)](https://cran.r-project.org/package=cityHealth)

The goal of `cityHealth` is to provide easy access to the [CDC's 500 Cities Project](https://www.cdc.gov/500cities/).

### Motivation

The original 2016 and 2017 data are in the public domain and easily downloaded from the CDC. Working with the raw data present a number of practical challenges. Each release is nearly 228 megabytes in size (approaching half a gigabyte for both together). The full releases contain data from multiple observational units, and also have a separate corresponding shapefile containing the tract boundaries from all 500 cities clipped to their city boundary.

`cityHealth` provides "tidy" versions of the CDC's data in a format readily accessible to `R` at a fraction of the footprint. One way this is acheived is by removing metadata from each observation that is more economically stored in an alternate format. Thus the tables available in `cityHealth` are not identical to the [raw data](https://chronicdata.cdc.gov/500-Cities/500-Cities-Local-Data-for-Better-Health-2017-relea/6vp6-wxuq) available from the CDC.

### Data

`cityHealth` contains the following data:

-   `cdc_sf_tracts` - tract boundaries clipped to city boundaries
-   `cdc_tbl_state16` - state estimates, 2016
-   `cdc_tbl_state17` - state estimates, 2017
-   `cdc_tbl_tract16` - state estimates, 2016
-   `cdc_tbl_tract17` - state estimates, 2017
-   `cdc_tbl_us16` - United States estimates, 2016
-   `cdc_tbl_us17` - United States estimates, 2017

### Contributor Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
