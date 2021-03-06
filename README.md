<!-- README.md is generated from README.Rmd. Please edit that file -->
cityHealth <img src="https://slu-dss.github.io/img/gisLogoSm.png" align="right" />
==================================================================================

[![lifecycle\_badge](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://github.com/slu-openGIS/cityHealth) [![Travis-CI Build Status](https://travis-ci.org/slu-openGIS/cityHealth.svg?branch=master)](https://travis-ci.org/slu-openGIS/cityHealth) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/slu-openGIS/cityHealth?branch=master&svg=true)](https://ci.appveyor.com/project/slu-openGIS/cityHealth) [![CRAN\_status\_badge](http://www.r-pkg.org/badges/version/cityHealth)](https://cran.r-project.org/package=cityHealth)

The goal of `cityHealth` is to provide easy access to the [CDC's 500 Cities Project](https://www.cdc.gov/500cities/).

### Motivation

The original 2016 and 2017 data are in the public domain and easily downloaded from the CDC. Working with the raw data present a number of practical challenges. Each release is nearly 228 megabytes in size (approaching half a gigabyte for both together). The full releases contain data from multiple observational unitsas well as numerous variables that contain metadata that can be stored more efficiently in other formats.

`cityHealth` provides "tidy" versions of the CDC's data in a format readily accessible to `R` at a fraction of the footprint. Each release is reduced from approximately 228 megabyes to less than 2.8 megabytes. One way this is acheived is by removing metadata from each observation. Thus the tables available in `cityHealth` are not identical to the [raw data](https://chronicdata.cdc.gov/500-Cities/500-Cities-Local-Data-for-Better-Health-2017-relea/6vp6-wxuq) available from the CDC. Another way is by using `.rda` files rather than `.csv` files, which occupy less disk space.

### Data

`cityHealth` contains the following data:

-   `ch_tbl_state16` - state estimates, 2016
-   `ch_tbl_state17` - state estimates, 2017
-   `ch_tbl_tract16` - state estimates, 2016
-   `ch_tbl_tract17` - state estimates, 2017
-   `ch_tbl_us16` - United States estimates, 2016
-   `ch_tbl_us17` - United States estimates, 2017

All data are stored as tibbles.

### Contributor Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
