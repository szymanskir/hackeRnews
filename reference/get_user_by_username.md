# Get Hacker News user

Get user corresponding to the specified username

## Usage

``` r
get_user_by_username(username)
```

## Arguments

- username:

  of the user that should be retrieved

## Value

user corresponding to the specified username

## Examples

``` r
# \donttest{
# Retrieve information about the jl user
get_user_by_username("jl")
#> List of 5
#>  $ about    : chr "This is a test"
#>  $ created  : POSIXct[1:1], format: "2007-03-15 01:50:46"
#>  $ id       : chr "jl"
#>  $ karma    : int 4522
#>  $ submitted: int [1:851] 44074017 35686379 35675818 25172559 25172553 19464269 18498213 16659709 16659632 16659556 ...
#>  - attr(*, "class")= chr "hn_user"
# }
```
