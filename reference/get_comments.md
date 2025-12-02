# Hacker News nested comments

Retrieves all comments under an item using Hacker News API

## Usage

``` r
get_comments(item)
```

## Arguments

- item:

  item whose children (comments) will be retrieved

## Value

dataframe of all comments under an item

## Examples

``` r
# \donttest{
story <- get_item_by_id(21499889)
comments <- get_comments(story)

# Convert to a tibble to improve formatting
# as comment content might long
tibble::as_tibble(comments)
#> # A tibble: 23 × 7
#>          id deleted by         time                text             dead  parent
#>       <int> <lgl>   <chr>      <dttm>              <chr>            <lgl>  <int>
#>  1 21500268 FALSE   macintux   2019-11-10 21:18:40 Can anyone with… FALSE 2.15e7
#>  2 21500296 FALSE   turboturbo 2019-11-10 21:26:02 I followed the … FALSE 2.15e7
#>  3 21500592 FALSE   AlexTrask  2019-11-10 22:26:44 I edited the co… FALSE 2.15e7
#>  4 21501210 TRUE    NA         2019-11-11 00:30:47 NA               FALSE 2.15e7
#>  5 21500441 FALSE   ncmncm     2019-11-10 21:59:50 tl;dr: This app… FALSE 2.15e7
#>  6 21500453 FALSE   Gaelan     2019-11-10 22:03:17 Disclaimer: I&#… FALSE 2.15e7
#>  7 21500824 FALSE   thomersch_ 2019-11-10 23:16:30 OSM is more lik… FALSE 2.15e7
#>  8 21501562 FALSE   brmgb      2019-11-11 02:04:07 &gt; Can anyone… FALSE 2.15e7
#>  9 21503713 FALSE   sp8962     2019-11-11 10:49:54 OK, this is goi… FALSE 2.15e7
#> 10 21501300 FALSE   kaikai     2019-11-11 00:53:04 This is a class… FALSE 2.15e7
#> # ℹ 13 more rows
# }
```
