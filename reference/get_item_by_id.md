# Get Hacker News by Id

Retrieves the item corresponding to specified id using Hacker News API

## Usage

``` r
get_item_by_id(id)
```

## Arguments

- id:

  id of the item that should be retrieved

## Value

item corresponding to the specified id

## Details

The API in some cases returns a null response. When this situation
occurs it is assumed that the item does not exist and NA is returned.

## Examples

``` r
# \donttest{
# retrieve the id of the latest Hacker News item
last_item_id <- get_max_item_id()
last_item_id
#> [1] 46122240

# retrieve the latest Hacker News item
last_hn_item <- get_item_by_id(last_item_id)
last_hn_item
#> List of 6
#>  $ by    : chr "RankingMember"
#>  $ id    : int 46122240
#>  $ parent: int 46121995
#>  $ text  : chr "Anecdotally, this is my perception as well- I&#x27;d say maybe 5% of the people I&#x27;ve worked with are the &"| __truncated__
#>  $ time  : POSIXct[1:1], format: "2025-12-02 15:34:59"
#>  $ type  : chr "comment"
#>  - attr(*, "class")= chr "hn_item"
# }
```
