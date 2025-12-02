# Hacker News updated profiles

Retrieves changed item ids and changed profile usernames using Hacker
News API

## Usage

``` r
get_updates()
```

## Value

list of changed item ids and list of changed profile usernames

## Examples

``` r
# \donttest{
# get ids/usernames of updated items/profiles
hn_updates <- get_updates()
hn_updates
#> $items
#>  [1] 46121884 46122183 46117177 46121409 46121038 46121829 46121759 46119659
#>  [9] 46121646 46119573 46119773 46122236 46122237 46121923 46121993 46122230
#> [17] 46121518 46119441 46119485 46122238 46122116 46122229 46121412 46115830
#> [25] 46122204 46121153 46119908 46118318 46109269 46119780 46121776 46121747
#> [33] 46118457 46120938 46121901 46099021 46122239 46119526 46122240 46121995
#> [41] 46121092 46120166 46121428 46116567 46120728 46119416 46113682 46120181
#> [49] 46108941 46119500 46121736 46117112 46104193 46091211 46121914 46121539
#> [57] 46047170 46121243 46119699 46121860 46070883 46114122 46118722 46108437
#> [65] 46117126 46104396 46106556 46117802 46096781 46120611 46095662 46116724
#> 
#> $profiles
#>  [1] "bawolff"       "doubled112"    "wongarsu"      "jmathai"      
#>  [5] "andsoitis"     "kbd"           "surprisetalk"  "herbertl"     
#>  [9] "jerriep"       "bluGill"       "_bent"         "archerx"      
#> [13] "4er_transform" "cl3misch"      "jerf"          "RankingMember"
#> [17] "greenavocado" 
#> 
# }
```
