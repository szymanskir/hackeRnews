# Hacker News latest ask stories ids

Retrieves latest ask stories ids using Hacker News API

## Usage

``` r
get_latest_ask_stories_ids()
```

## Value

list of latest ask Hacker News stories ids

## Examples

``` r
# \donttest{
# get ids of latest ask stories
ask_stories_ids <- get_latest_ask_stories_ids()
ask_stories_ids
#>  [1] 46108941 46108940 46108071 46120761 46120706 46119612 46119058 46117184
#>  [9] 46118430 46095873 46111654 46102451 46118229 46116193 46092688 46115185
#> [17] 46106504 46065955 46113194 46109322 46079745 46106877 46106623 46101676
#> [25] 46105176 46083321 46104699 46103227 46115315 46093303 46081585 46080968
#> [33] 46110824 46055011 46071771 46045677 46064205
# }
```
