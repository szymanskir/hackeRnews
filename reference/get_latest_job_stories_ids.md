# Hacker News latest job stories ids

Retrieves latest job stories ids using Hacker News API

## Usage

``` r
get_latest_job_stories_ids()
```

## Value

list of latest job stories ids

## Examples

``` r
# \donttest{
# get ids of latest job stories
latest_job_stories_ids <- get_latest_job_stories_ids()
latest_job_stories_ids
#>  [1] 46109802 46098336 46094478 46089008 46059620 46056583 46036222 46028046
#>  [9] 46025055 46022892 46016799 46006250 46003686 45972390 45962178 45938785
#> [17] 45936837 45932131 45928822 45920468 45917282 45912744 45910625 45906604
#> [25] 45892773 45889783 45886350 45856069 45845568 45844151 45840612
# }
```
