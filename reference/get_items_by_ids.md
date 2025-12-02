# Get Hacker News by ids

Retrieves items corresponding to specified list of ids using Hacker News
API

## Usage

``` r
get_items_by_ids(ids)
```

## Arguments

- ids:

  list of ids

## Value

list of hn_item objects

## Examples

``` r
# \donttest{
# retrieve the first two items on Hacker News
items <- get_items_by_ids(c(1,2))
items
#> [[1]]
#> List of 9
#>  $ by         : chr "pg"
#>  $ descendants: int 3
#>  $ id         : int 1
#>  $ kids       : int [1:4] 15 487171 234509 82729
#>  $ score      : int 57
#>  $ time       : POSIXct[1:1], format: "2006-10-09 18:21:51"
#>  $ title      : chr "Y Combinator"
#>  $ type       : chr "story"
#>  $ url        : chr "http://ycombinator.com"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[2]]
#> List of 8
#>  $ by         : chr "phyllis"
#>  $ descendants: int 0
#>  $ id         : int 2
#>  $ score      : int 16
#>  $ time       : POSIXct[1:1], format: "2006-10-09 18:30:28"
#>  $ title      : chr "A Student's Guide to Startups"
#>  $ type       : chr "story"
#>  $ url        : chr "http://www.paulgraham.com/mit.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
# }
```
