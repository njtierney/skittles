
<!-- README.md is generated from README.Rmd. Please edit that file -->

skittles
========

<!-- badges: start -->
<!-- badges: end -->

The goal of skittles is to provide data on skittles taste testing - can
people accurately assess flavour based on taste alone, while
blindfolded?

    library(readr)
    skittles <- read_csv("data/skittles.csv")
    #> Parsed with column specification:
    #> cols(
    #>   skittle_type = col_double(),
    #>   person = col_character(),
    #>   order = col_double(),
    #>   choice = col_character(),
    #>   real_skittle = col_character(),
    #>   correct = col_logical()
    #> )

    skittles
    #> # A tibble: 30 x 6
    #>    skittle_type person order choice real_skittle correct
    #>           <dbl> <chr>  <dbl> <chr>  <chr>        <lgl>  
    #>  1            1 a          4 purple red          FALSE  
    #>  2            1 b          9 red    red          TRUE   
    #>  3            1 c          6 purple red          FALSE  
    #>  4            1 a         10 red    red          TRUE   
    #>  5            1 b         10 green  red          FALSE  
    #>  6            1 c         10 red    red          TRUE   
    #>  7            2 a          2 yellow orange       FALSE  
    #>  8            2 b          4 orange orange       TRUE   
    #>  9            2 c          1 orange orange       TRUE   
    #> 10            2 a          5 orange orange       TRUE   
    #> # … with 20 more rows
