# Hacker News top stories

Retrieves top stories using Hacker News API

## Usage

``` r
get_top_stories(max_items = NULL)
```

## Arguments

- max_items:

  Maximum number of items to retrieve. If max_items = NULL, returns all
  available stories

## Value

List of top stories

## Examples

``` r
# \donttest{
# get the top story on Hacker News
top_story <- get_top_stories(max_items = 1)
top_story
#> [[1]]
#> List of 9
#>  $ by         : chr "messe"
#>  $ descendants: int 46
#>  $ id         : int 46120181
#>  $ kids       : int [1:13] 46122124 46120614 46122144 46120891 46120657 46120746 46120517 46121571 46121781 46121110 ...
#>  $ score      : int 159
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:30:29"
#>  $ title      : chr "Addressing the adding situation"
#>  $ type       : chr "story"
#>  $ url        : chr "https://xania.org/202512/02-adding-integers"
#>  - attr(*, "class")= chr "hn_item"
#> 

# get all top stories on Hacker News
top_stories <- get_top_stories()
#> [working] (341 + 0) -> 9 -> 150 | ■■■■■■■■■■                        30%
#> [working] (0 + 0) -> 0 -> 500 | ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■  100%
top_stories
#> [[1]]
#> List of 9
#>  $ by         : chr "messe"
#>  $ descendants: int 46
#>  $ id         : int 46120181
#>  $ kids       : int [1:13] 46122124 46120614 46122144 46120891 46120657 46120746 46120517 46121571 46121781 46121110 ...
#>  $ score      : int 159
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:30:29"
#>  $ title      : chr "Addressing the adding situation"
#>  $ type       : chr "story"
#>  $ url        : chr "https://xania.org/202512/02-adding-integers"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[2]]
#> List of 9
#>  $ by         : chr "vismit2000"
#>  $ descendants: int 23
#>  $ id         : int 46119500
#>  $ kids       : int [1:10] 46121854 46122203 46120380 46120639 46121036 46120689 46120288 46120146 46119679 46121049
#>  $ score      : int 213
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:51:42"
#>  $ title      : chr "Advent of Compiler Optimisations 2025"
#>  $ type       : chr "story"
#>  $ url        : chr "https://xania.org/202511/advent-of-compiler-optimisation"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[3]]
#> List of 9
#>  $ by         : chr "terryds"
#>  $ descendants: int 9
#>  $ id         : int 46052478
#>  $ kids       : int [1:5] 46121680 46121883 46121828 46121827 46121942
#>  $ score      : int 35
#>  $ time       : POSIXct[1:1], format: "2025-11-26 00:09:19"
#>  $ title      : chr "Learning Music with Strudel"
#>  $ type       : chr "story"
#>  $ url        : chr "https://terryds.notion.site/Learning-Music-with-Strudel-2ac98431b24180deb890cc7de667ea92"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[4]]
#> List of 9
#>  $ by         : chr "absqueued"
#>  $ descendants: int 40
#>  $ id         : int 46120549
#>  $ kids       : int [1:19] 46122224 46122136 46121973 46120819 46122148 46121102 46122181 46121869 46121043 46120793 ...
#>  $ score      : int 65
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:28:34"
#>  $ title      : chr "A series of vignettes from my childhood and early career"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.jasonscheirer.com/weblog/vignettes/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[5]]
#> List of 9
#>  $ by         : chr "charlie-haley"
#>  $ descendants: int 1
#>  $ id         : int 46121860
#>  $ kids       : int 46121911
#>  $ score      : int 14
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:59:40"
#>  $ title      : chr "Show HN: Marmot – Single-binary data catalog (no Kafka, no Elasticsearch)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/marmotdata/marmot"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[6]]
#> List of 9
#>  $ by         : chr "todsacerdoti"
#>  $ descendants: int 1
#>  $ id         : int 46121799
#>  $ kids       : int 46122225
#>  $ score      : int 7
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:54:49"
#>  $ title      : chr "Nixtml: Static website and blog generator written in Nix"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/arnarg/nixtml"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[7]]
#> List of 9
#>  $ by         : chr "vessenes"
#>  $ descendants: int 96
#>  $ id         : int 46117802
#>  $ kids       : int [1:18] 46118991 46119159 46122034 46119076 46121215 46121526 46121321 46121589 46118687 46121346 ...
#>  $ score      : int 298
#>  $ time       : POSIXct[1:1], format: "2025-12-02 05:10:01"
#>  $ title      : chr "Apple Releases Open Weights Video Model"
#>  $ type       : chr "story"
#>  $ url        : chr "https://starflow-v.github.io"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[8]]
#> List of 9
#>  $ by         : chr "cl3misch"
#>  $ descendants: int 6
#>  $ id         : int 46120611
#>  $ kids       : int [1:4] 46122158 46122067 46121830 46121340
#>  $ score      : int 43
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:38:28"
#>  $ title      : chr "Python Data Science Handbook"
#>  $ type       : chr "story"
#>  $ url        : chr "https://jakevdp.github.io/PythonDataScienceHandbook/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[9]]
#> List of 9
#>  $ by         : chr "herbertl"
#>  $ descendants: int 223
#>  $ id         : int 46117112
#>  $ kids       : int [1:29] 46118773 46122215 46117509 46117301 46121626 46117443 46122092 46119712 46118203 46119362 ...
#>  $ score      : int 369
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:23:10"
#>  $ title      : chr "What will enter the public domain in 2026?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://publicdomainreview.org/features/entering-the-public-domain/2026/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[10]]
#> List of 9
#>  $ by         : chr "giancarlostoro"
#>  $ descendants: int 16
#>  $ id         : int 46093613
#>  $ kids       : int [1:6] 46122080 46121886 46121787 46119828 46120375 46120709
#>  $ score      : int 104
#>  $ time       : POSIXct[1:1], format: "2025-11-30 04:09:41"
#>  $ title      : chr "YouTube increases FreeBASIC performance (2019)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://freebasic.net/forum/viewtopic.php?t=27927"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[11]]
#> List of 9
#>  $ by         : chr "delichon"
#>  $ descendants: int 36
#>  $ id         : int 46121243
#>  $ kids       : int [1:14] 46121901 46121943 46122066 46122201 46122000 46121924 46121801 46121909 46122131 46121910 ...
#>  $ score      : int 75
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:01:05"
#>  $ title      : chr "Proximity to coworkers increases long-run development, lowers short-term output"
#>  $ type       : chr "story"
#>  $ url        : chr "https://pallais.scholars.harvard.edu/publications/power-proximity-coworkers-training-tomorrow-or-productivity-today"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[12]]
#> List of 9
#>  $ by         : chr "hasanhaja"
#>  $ descendants: int 34
#>  $ id         : int 46119214
#>  $ kids       : int [1:13] 46120976 46120725 46122081 46119926 46119960 46122027 46121853 46120871 46121094 46120683 ...
#>  $ score      : int 78
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:11:41"
#>  $ title      : chr "Comparing AWS Lambda ARM64 vs. x86_64 Performance Across Runtimes in Late 2025"
#>  $ type       : chr "story"
#>  $ url        : chr "https://chrisebert.net/comparing-aws-lambda-arm64-vs-x86_64-performance-across-multiple-runtimes-in-late-2025/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[13]]
#> List of 9
#>  $ by         : chr "messe"
#>  $ descendants: int 14
#>  $ id         : int 46121539
#>  $ kids       : int [1:4] 46122229 46121923 46121989 46121861
#>  $ score      : int 29
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:31:16"
#>  $ title      : chr "Zig's new plan for asynchronous programs"
#>  $ type       : chr "story"
#>  $ url        : chr "https://lwn.net/SubscriberLink/1046084/4c048ee008e1c70e/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[14]]
#> List of 8
#>  $ by         : chr "surprisetalk"
#>  $ descendants: int 0
#>  $ id         : int 46047170
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-11-25 16:08:33"
#>  $ title      : chr "YesNotice"
#>  $ type       : chr "story"
#>  $ url        : chr "https://infinitedigits.co/docs/software/yesnotice/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[15]]
#> List of 9
#>  $ by         : chr "pember"
#>  $ descendants: int 7
#>  $ id         : int 46121889
#>  $ kids       : int [1:6] 46122209 46122214 46122156 46121991 46122146 46122091
#>  $ score      : int 50
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:01:53"
#>  $ title      : chr "Mistral 3 family of models released"
#>  $ type       : chr "story"
#>  $ url        : chr "https://mistral.ai/news/mistral-3"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[16]]
#> List of 10
#>  $ by         : chr "pretext"
#>  $ descendants: int 417
#>  $ id         : int 46108780
#>  $ kids       : int [1:33] 46111149 46121672 46113031 46111121 46112545 46111047 46121067 46116797 46118413 46107926 ...
#>  $ score      : int 883
#>  $ text       : chr "<a href=\"https:&#x2F;&#x2F;huggingface.co&#x2F;deepseek-ai&#x2F;DeepSeek-V3.2\" rel=\"nofollow\">https:&#x2F;&"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 15:48:03"
#>  $ title      : chr "DeepSeek-v3.2: Pushing the frontier of open large language models [pdf]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://huggingface.co/deepseek-ai/DeepSeek-V3.2/resolve/main/assets/paper.pdf"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[17]]
#> List of 9
#>  $ by         : chr "jmsflknr"
#>  $ descendants: int 579
#>  $ id         : int 46104193
#>  $ kids       : int [1:72] 46122164 46111364 46113588 46113821 46118379 46112842 46122029 46111278 46113105 46121456 ...
#>  $ score      : int 813
#>  $ time       : POSIXct[1:1], format: "2025-12-01 06:30:14"
#>  $ title      : chr "India orders smartphone makers to preload state-owned cyber safety app"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.reuters.com/sustainability/boards-policy-regulation/india-orders-mobile-phones-preloaded-with-gover"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[18]]
#> List of 9
#>  $ by         : chr "amruthreddi"
#>  $ descendants: int 88
#>  $ id         : int 46095662
#>  $ kids       : int [1:20] 46121385 46117955 46119775 46121969 46122014 46117694 46117603 46118458 46117614 46117965 ...
#>  $ score      : int 237
#>  $ time       : POSIXct[1:1], format: "2025-11-30 11:03:13"
#>  $ title      : chr "Beej's Guide to Learning Computer Science"
#>  $ type       : chr "story"
#>  $ url        : chr "https://beej.us/guide/bglcs/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[19]]
#> List of 9
#>  $ by         : chr "dijksterhuis"
#>  $ descendants: int 60
#>  $ id         : int 46118722
#>  $ kids       : int [1:14] 46121760 46120343 46120494 46121819 46121639 46119106 46119546 46120363 46120817 46119261 ...
#>  $ score      : int 123
#>  $ time       : POSIXct[1:1], format: "2025-12-02 07:46:47"
#>  $ title      : chr "How Brian Eno Created Ambient 1: Music for Airports (2019)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://reverbmachine.com/blog/deconstructing-brian-eno-music-for-airports/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[20]]
#> List of 9
#>  $ by         : chr "bouk"
#>  $ descendants: int 57
#>  $ id         : int 46118432
#>  $ kids       : int [1:14] 46119375 46119237 46118867 46120073 46119259 46118901 46118748 46118900 46118959 46120772 ...
#>  $ score      : int 92
#>  $ time       : POSIXct[1:1], format: "2025-12-02 07:01:03"
#>  $ title      : chr "Rootless Pings in Rust"
#>  $ type       : chr "story"
#>  $ url        : chr "https://bou.ke/blog/rust-ping/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[21]]
#> List of 9
#>  $ by         : chr "yzydserd"
#>  $ descendants: int 5
#>  $ id         : int 46066640
#>  $ kids       : int [1:4] 46122155 46122138 46120722 46121280
#>  $ score      : int 38
#>  $ time       : POSIXct[1:1], format: "2025-11-27 07:22:31"
#>  $ title      : chr "An LED panel that shows the aviation around you"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/AxisNimble/TheFlightWall_OSS"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[22]]
#> List of 8
#>  $ by         : chr "tvda"
#>  $ descendants: int 0
#>  $ id         : int 46120603
#>  $ score      : int 11
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:37:47"
#>  $ title      : chr "Lazier Binary Decision Diagrams for set-theoretic types"
#>  $ type       : chr "story"
#>  $ url        : chr "https://elixir-lang.org/blog/2025/12/02/lazier-bdds-for-set-theoretic-types/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[23]]
#> List of 10
#>  $ by         : chr "mstep"
#>  $ descendants: int 39
#>  $ id         : int 46091211
#>  $ kids       : int [1:24] 46120990 46122103 46122048 46120792 46119628 46118235 46120016 46119127 46117786 46122165 ...
#>  $ score      : int 138
#>  $ text       : chr "<a href=\"https:&#x2F;&#x2F;www.theguardian.com&#x2F;stage&#x2F;2025&#x2F;nov&#x2F;29&#x2F;tom-stoppard-playwri"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-29 22:03:33"
#>  $ title      : chr "Tom Stoppard has died"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bbc.com/news/articles/c74xe49q7vlo"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[24]]
#> List of 9
#>  $ by         : chr "gsf_emergency_6"
#>  $ descendants: int 26
#>  $ id         : int 46116724
#>  $ kids       : int [1:10] 46120916 46118149 46117222 46117345 46119553 46118612 46118718 46119420 46118290 46118658
#>  $ score      : int 137
#>  $ time       : POSIXct[1:1], format: "2025-12-02 02:35:47"
#>  $ title      : chr "Reverse math shows why hard problems are hard"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.quantamagazine.org/reverse-mathematics-illuminates-why-hard-problems-are-hard-20251201/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[25]]
#> List of 9
#>  $ by         : chr "zdw"
#>  $ descendants: int 112
#>  $ id         : int 46116567
#>  $ kids       : int [1:17] 46119400 46120601 46119057 46120107 46119448 46122054 46119801 46119831 46120605 46120568 ...
#>  $ score      : int 127
#>  $ time       : POSIXct[1:1], format: "2025-12-02 02:12:14"
#>  $ title      : chr "After Windows Update, Password icon invisible, click where it used to be"
#>  $ type       : chr "story"
#>  $ url        : chr "https://support.microsoft.com/en-us/topic/august-29-2025-kb5064081-os-build-26100-5074-preview-3f9eb9e1-72ca-4b"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[26]]
#> List of 9
#>  $ by         : chr "doener"
#>  $ descendants: int 22
#>  $ id         : int 46119699
#>  $ kids       : int [1:7] 46120875 46120406 46120527 46120889 46120381 46120900 46120312
#>  $ score      : int 113
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:20:34"
#>  $ title      : chr "Man unexpectedly cured of HIV after stem cell transplant"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.newscientist.com/article/2506595-man-unexpectedly-cured-of-hiv-after-stem-cell-transplant/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[27]]
#> List of 9
#>  $ by         : chr "stopachka"
#>  $ descendants: int 100
#>  $ id         : int 46080835
#>  $ kids       : int [1:22] 46122207 46087936 46114902 46117656 46082876 46120570 46119682 46118510 46114946 46085785 ...
#>  $ score      : int 258
#>  $ time       : POSIXct[1:1], format: "2025-11-28 17:41:01"
#>  $ title      : chr "Codex, Opus, Gemini try to build Counter Strike"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.instantdb.com/essays/agents_building_counterstrike"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[28]]
#> List of 9
#>  $ by         : chr "birdculture"
#>  $ descendants: int 19
#>  $ id         : int 46066764
#>  $ kids       : int [1:9] 46119811 46118803 46119626 46119591 46118725 46118937 46120554 46118972 46118779
#>  $ score      : int 66
#>  $ time       : POSIXct[1:1], format: "2025-11-27 07:42:39"
#>  $ title      : chr "URL in C (2011)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://susam.net/url-in-c.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[29]]
#> List of 9
#>  $ by         : chr "kylecarbs"
#>  $ descendants: int 105
#>  $ id         : int 46110842
#>  $ kids       : int [1:32] 46120770 46111944 46114523 46114486 46115260 46121139 46118156 46111726 46112336 46116955 ...
#>  $ score      : int 369
#>  $ time       : POSIXct[1:1], format: "2025-12-01 18:17:02"
#>  $ title      : chr "Ghostty compiled to WASM with xterm.js API compatibility"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/coder/ghostty-web"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[30]]
#> List of 9
#>  $ by         : chr "whoishiring"
#>  $ descendants: int 365
#>  $ id         : int 46108941
#>  $ kids       : int [1:294] 46122088 46122112 46121843 46122068 46121699 46117398 46121189 46121180 46121167 46113013 ...
#>  $ score      : int 282
#>  $ text       : chr "Please state the location and include REMOTE for remote work, REMOTE (US)\nor similar if the country is restric"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 16:01:26"
#>  $ title      : chr "Ask HN: Who is hiring? (December 2025)"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[31]]
#> List of 9
#>  $ by         : chr "surprisetalk"
#>  $ descendants: int 7
#>  $ id         : int 46085279
#>  $ kids       : int [1:4] 46121361 46120766 46121794 46121400
#>  $ score      : int 28
#>  $ time       : POSIXct[1:1], format: "2025-11-29 05:02:06"
#>  $ title      : chr "Wacky Fun Physics Ideas"
#>  $ type       : chr "story"
#>  $ url        : chr "https://scottlocklin.wordpress.com/2025/11/22/wacky-fun-physics-ideas/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[32]]
#> List of 9
#>  $ by         : chr "abraham"
#>  $ descendants: int 89
#>  $ id         : int 46117126
#>  $ kids       : int [1:23] 46118254 46118286 46118318 46118496 46120879 46118576 46118473 46118692 46118428 46118637 ...
#>  $ score      : int 99
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:24:44"
#>  $ title      : chr "Decreasing Certificate Lifetimes to 45 Days"
#>  $ type       : chr "story"
#>  $ url        : chr "https://letsencrypt.org/2025/12/02/from-90-to-45.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[33]]
#> List of 9
#>  $ by         : chr "thejoeflow"
#>  $ descendants: int 155
#>  $ id         : int 46070883
#>  $ kids       : int [1:39] 46118515 46121219 46116600 46114866 46116682 46115919 46073897 46119072 46121249 46075582 ...
#>  $ score      : int 314
#>  $ time       : POSIXct[1:1], format: "2025-11-27 16:39:35"
#>  $ title      : chr "10 years of writing a blog nobody reads"
#>  $ type       : chr "story"
#>  $ url        : chr "https://flowtwo.io/post/on-10-years-of-writing-a-blog-nobody-reads"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[34]]
#> List of 9
#>  $ by         : chr "mhb"
#>  $ descendants: int 75
#>  $ id         : int 46107282
#>  $ kids       : int [1:25] 46110519 46108140 46108169 46109650 46108728 46107878 46109671 46119736 46121179 46108349 ...
#>  $ score      : int 334
#>  $ time       : POSIXct[1:1], format: "2025-12-01 13:41:15"
#>  $ title      : chr "Cartographers have been hiding illustrations inside Switzerland’s maps (2020)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://eyeondesign.aiga.org/for-decades-cartographers-have-been-hiding-covert-illustrations-inside-of-switzerl"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[35]]
#> List of 9
#>  $ by         : chr "tambourine_man"
#>  $ descendants: int 209
#>  $ id         : int 46108437
#>  $ kids       : int [1:23] 46121977 46119908 46120752 46111519 46109774 46119570 46121040 46109472 46109879 46119323 ...
#>  $ score      : int 235
#>  $ time       : POSIXct[1:1], format: "2025-12-01 15:18:42"
#>  $ title      : chr "Google, Nvidia, and OpenAI"
#>  $ type       : chr "story"
#>  $ url        : chr "https://stratechery.com/2025/google-nvidia-and-openai/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[36]]
#> List of 9
#>  $ by         : chr "speckx"
#>  $ descendants: int 256
#>  $ id         : int 46108563
#>  $ kids       : int [1:23] 46115733 46111337 46110608 46110164 46109622 46109658 46110568 46112901 46110081 46111063 ...
#>  $ score      : int 343
#>  $ time       : POSIXct[1:1], format: "2025-12-01 15:28:49"
#>  $ title      : chr "Google unkills JPEG XL?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://tonisagrista.com/blog/2025/google-unkills-jpegxl/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[37]]
#> List of 9
#>  $ by         : chr "kjhughes"
#>  $ descendants: int 1
#>  $ id         : int 46122071
#>  $ kids       : int [1:2] 46122157 46122216
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:20:11"
#>  $ title      : chr "Is 2026 Next Year?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.google.com/search?q=is+2026+next+year&oq=is+2026+next+year"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[38]]
#> List of 9
#>  $ by         : chr "chmaynard"
#>  $ descendants: int 54
#>  $ id         : int 46117993
#>  $ kids       : int [1:11] 46120779 46118732 46119844 46119427 46119781 46120693 46120577 46119164 46120910 46118301 ...
#>  $ score      : int 68
#>  $ time       : POSIXct[1:1], format: "2025-12-02 05:40:39"
#>  $ title      : chr "Why Replicate is joining Cloudflare"
#>  $ type       : chr "story"
#>  $ url        : chr "https://blog.cloudflare.com/why-replicate-joining-cloudflare/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[39]]
#> List of 9
#>  $ by         : chr "bfirsh"
#>  $ descendants: int 4
#>  $ id         : int 46056022
#>  $ kids       : int [1:4] 46121404 46120731 46056568 46119998
#>  $ score      : int 36
#>  $ time       : POSIXct[1:1], format: "2025-11-26 10:24:56"
#>  $ title      : chr "Invisible details of interaction design (2023)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://rauno.me/craft/interaction-design"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[40]]
#> List of 9
#>  $ by         : chr "surprisetalk"
#>  $ descendants: int 90
#>  $ id         : int 46107658
#>  $ kids       : int [1:20] 46110840 46108806 46111161 46109926 46108859 46111174 46109256 46118555 46109119 46118627 ...
#>  $ score      : int 190
#>  $ time       : POSIXct[1:1], format: "2025-12-01 14:13:06"
#>  $ title      : chr "The Penicillin Myth"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.asimov.press/p/penicillin-myth"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[41]]
#> List of 10
#>  $ by         : chr "robbiet480"
#>  $ descendants: int 340
#>  $ id         : int 46114122
#>  $ kids       : int [1:48] 46114686 46115830 46122108 46122028 46114746 46115240 46117514 46114900 46114697 46121371 ...
#>  $ score      : int 137
#>  $ text       : chr "Additional reporting: <a href=\"https:&#x2F;&#x2F;www.macrumors.com&#x2F;2025&#x2F;12&#x2F;01&#x2F;apple-ai-chi"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 22:20:33"
#>  $ title      : chr "John Giannandrea to retire from Apple"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.apple.com/newsroom/2025/12/john-giannandrea-to-retire-from-apple/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[42]]
#> List of 9
#>  $ by         : chr "edent"
#>  $ descendants: int 40
#>  $ id         : int 46117900
#>  $ kids       : int [1:16] 46121302 46118208 46119418 46119078 46120886 46118985 46118984 46120277 46119647 46120499 ...
#>  $ score      : int 61
#>  $ time       : POSIXct[1:1], format: "2025-12-02 05:27:18"
#>  $ title      : chr "Frequently Asked Unicycling Questions"
#>  $ type       : chr "story"
#>  $ url        : chr "https://vale.rocks/posts/unicycle-faq"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[43]]
#> List of 7
#>  $ by   : chr "bekacru"
#>  $ id   : int 46109802
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-12-01 17:01:18"
#>  $ title: chr "Better Auth (YC X25) Is Hiring"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.ycombinator.com/companies/better-auth/jobs/eKk5nLt-developer-relation-engineer"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[44]]
#> List of 9
#>  $ by         : chr "hurrycane"
#>  $ descendants: int 15
#>  $ id         : int 46115682
#>  $ kids       : int [1:7] 46116355 46121312 46117657 46116350 46117591 46118199 46116253
#>  $ score      : int 65
#>  $ time       : POSIXct[1:1], format: "2025-12-02 00:31:01"
#>  $ title      : chr "Arcee Trinity Mini: US-Trained Moe Model"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.arcee.ai/blog/the-trinity-manifesto?src=hn"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[45]]
#> List of 8
#>  $ by         : chr "mfbx9da4"
#>  $ descendants: int 0
#>  $ id         : int 46080790
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-11-28 17:36:11"
#>  $ title      : chr "Forward compatibility and fault tolerance in TypeScript API Clients/SDKs"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.speakeasy.com/blog/typescript-forward-compatibility"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[46]]
#> List of 9
#>  $ by         : chr "ibobev"
#>  $ descendants: int 50
#>  $ id         : int 46107177
#>  $ kids       : int [1:21] 46110539 46110514 46110115 46111552 46115898 46111225 46110926 46113695 46119487 46111037 ...
#>  $ score      : int 191
#>  $ time       : POSIXct[1:1], format: "2025-12-01 13:31:58"
#>  $ title      : chr "A vector graphics workstation from the 70s"
#>  $ type       : chr "story"
#>  $ url        : chr "https://justanotherelectronicsblog.com/?p=1429"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[47]]
#> List of 9
#>  $ by         : chr "ingve"
#>  $ descendants: int 14
#>  $ id         : int 46074222
#>  $ kids       : int [1:4] 46121807 46120699 46119753 46119916
#>  $ score      : int 36
#>  $ time       : POSIXct[1:1], format: "2025-11-27 23:47:07"
#>  $ title      : chr "Shrinking While Linking"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.tweag.io/blog/2025-11-27-shrinking-static-libs/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[48]]
#> List of 9
#>  $ by         : chr "barremian"
#>  $ descendants: int 175
#>  $ id         : int 46111469
#>  $ kids       : int [1:51] 46115446 46118456 46112307 46111897 46111827 46112113 46115377 46111871 46119110 46118174 ...
#>  $ score      : int 151
#>  $ time       : POSIXct[1:1], format: "2025-12-01 18:58:50"
#>  $ title      : chr "Why I stopped using JSON for my APIs"
#>  $ type       : chr "story"
#>  $ url        : chr "https://aloisdeniel.com/blog/better-than-json"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[49]]
#> List of 9
#>  $ by         : chr "whoishiring"
#>  $ descendants: int 284
#>  $ id         : int 46108940
#>  $ kids       : int [1:309] 46122030 46122031 46121948 46122020 46121627 46121892 46121594 46121617 46121356 46121247 ...
#>  $ score      : int 135
#>  $ text       : chr "Share your information if you are looking for work. Please use this format:<p><pre><code>  Location:\n  Remote:"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 16:01:26"
#>  $ title      : chr "Ask HN: Who wants to be hired? (December 2025)"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[50]]
#> List of 9
#>  $ by         : chr "goplayoutside"
#>  $ descendants: int 1
#>  $ id         : int 46121870
#>  $ kids       : int 46122172
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:00:16"
#>  $ title      : chr "OpenAI declares 'code red' as Google catches up in AI race"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.theverge.com/news/836212/openai-code-red-chatgpt"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[51]]
#> List of 9
#>  $ by         : chr "doener"
#>  $ descendants: int 432
#>  $ id         : int 46104396
#>  $ kids       : int [1:31] 46108253 46108468 46107824 46107554 46105912 46122160 46121090 46108143 46105878 46105575 ...
#>  $ score      : int 297
#>  $ time       : POSIXct[1:1], format: "2025-12-01 07:05:57"
#>  $ title      : chr "Games using anti-cheats and their compatibility with GNU/Linux or Wine/Proton"
#>  $ type       : chr "story"
#>  $ url        : chr "https://areweanticheatyet.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[52]]
#> List of 9
#>  $ by         : chr "RickJWagner"
#>  $ descendants: int 53
#>  $ id         : int 46090184
#>  $ kids       : int [1:16] 46116948 46117419 46117589 46118306 46117350 46116792 46116850 46116844 46117340 46117431 ...
#>  $ score      : int 54
#>  $ time       : POSIXct[1:1], format: "2025-11-29 19:43:59"
#>  $ title      : chr "Tested: 1981 Datsun 280ZX Turbo (1981)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.caranddriver.com/reviews/a69529696/1981-datsun-280-zx-turbo-archive-test/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[53]]
#> List of 9
#>  $ by         : chr "thm"
#>  $ descendants: int 2
#>  $ id         : int 46121786
#>  $ kids       : int [1:2] 46122004 46121818
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:53:41"
#>  $ title      : chr "Claude 4.5 Opus' Soul Document"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.lesswrong.com/posts/vpNG99GhbBoLov9og/claude-4-5-opus-soul-document"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[54]]
#> List of 9
#>  $ by         : chr "surprisetalk"
#>  $ descendants: int 618
#>  $ id         : int 46103858
#>  $ kids       : int [1:58] 46104058 46107704 46104696 46110676 46105401 46104708 46110074 46104535 46108683 46104220 ...
#>  $ score      : int 415
#>  $ time       : POSIXct[1:1], format: "2025-12-01 05:36:48"
#>  $ title      : chr "It’s been a very hard year"
#>  $ type       : chr "story"
#>  $ url        : chr "https://bell.bz/its-been-a-very-hard-year/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[55]]
#> List of 9
#>  $ by         : chr "rcarmo"
#>  $ descendants: int 13
#>  $ id         : int 46072016
#>  $ kids       : int [1:6] 46119449 46117425 46072020 46117493 46119353 46117893
#>  $ score      : int 68
#>  $ time       : POSIXct[1:1], format: "2025-11-27 18:39:11"
#>  $ title      : chr "Cloud-Init on Raspberry Pi OS"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.raspberrypi.com/news/cloud-init-on-raspberry-pi-os/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[56]]
#> List of 9
#>  $ by         : chr "piker"
#>  $ descendants: int 2
#>  $ id         : int 46121736
#>  $ kids       : int [1:2] 46122180 46121894
#>  $ score      : int 8
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:48:24"
#>  $ title      : chr "Jury trials scrapped for crimes with sentences of less than three years"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bbc.co.uk/news/articles/cn5lxg2l0lqo"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[57]]
#> List of 9
#>  $ by         : chr "mfiguiere"
#>  $ descendants: int 350
#>  $ id         : int 46113092
#>  $ kids       : int [1:53] 46117376 46113474 46113466 46114442 46115000 46116824 46120999 46114242 46116590 46113330 ...
#>  $ score      : int 265
#>  $ time       : POSIXct[1:1], format: "2025-12-01 20:55:56"
#>  $ title      : chr "Instagram chief orders staff back to the office five days a week in 2026"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.businessinsider.com/instagram-chief-adam-mosseri-announces-five-day-office-return-2025-12"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[58]]
#> List of 9
#>  $ by         : chr "mooreds"
#>  $ descendants: int 18
#>  $ id         : int 46111120
#>  $ kids       : int [1:6] 46113034 46115522 46112576 46114516 46113051 46118238
#>  $ score      : int 70
#>  $ time       : POSIXct[1:1], format: "2025-12-01 18:35:01"
#>  $ title      : chr "Durin is a library for reading and writing the Dwarf debugging format"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/tmcgilchrist/durin"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[59]]
#> List of 9
#>  $ by         : chr "vismit2000"
#>  $ descendants: int 375
#>  $ id         : int 46096337
#>  $ kids       : int [1:55] 46096639 46098281 46097412 46102652 46096704 46097105 46101660 46096557 46098588 46103510 ...
#>  $ score      : int 1194
#>  $ time       : POSIXct[1:1], format: "2025-11-30 13:07:15"
#>  $ title      : chr "Advent of Code 2025"
#>  $ type       : chr "story"
#>  $ url        : chr "https://adventofcode.com/2025/about"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[60]]
#> List of 9
#>  $ by         : chr "bj-rn"
#>  $ descendants: int 17
#>  $ id         : int 46054787
#>  $ kids       : int [1:4] 46119064 46119084 46121333 46119784
#>  $ score      : int 25
#>  $ time       : POSIXct[1:1], format: "2025-11-26 06:43:58"
#>  $ title      : chr "Stride Game Engine 4.3 with .NET 10 Support"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.stride3d.net/blog/announcing-stride-4-3-in-dotnet-10/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[61]]
#> List of 9
#>  $ by         : chr "dmitrygr"
#>  $ descendants: int 358
#>  $ id         : int 46103376
#>  $ kids       : int [1:57] 46122195 46105297 46103662 46103774 46105877 46103986 46109117 46103735 46107034 46104027 ...
#>  $ score      : int 863
#>  $ time       : POSIXct[1:1], format: "2025-12-01 04:06:06"
#>  $ title      : chr "Search tool that only returns content created before ChatGPT's public release"
#>  $ type       : chr "story"
#>  $ url        : chr "https://tegabrain.com/Slop-Evader"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[62]]
#> List of 9
#>  $ by         : chr "ferguess_k"
#>  $ descendants: int 158
#>  $ id         : int 46108071
#>  $ kids       : int [1:58] 46117402 46122022 46115250 46108828 46117407 46115715 46109352 46116423 46117024 46108866 ...
#>  $ score      : int 87
#>  $ text       : chr "I have been purchasing used&#x2F;new Lenovo&#x2F;Dell laptops for the last 7 years, and I have noticed that the"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 14:47:48"
#>  $ title      : chr "Ask HN: Quality of recent gens of Dell/Lenovo laptops worse than 10 years ago?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[63]]
#> List of 9
#>  $ by         : chr "shrx"
#>  $ descendants: int 117
#>  $ id         : int 46106186
#>  $ kids       : int [1:15] 46106759 46106273 46107938 46118999 46120272 46107128 46106924 46117522 46108144 46108924 ...
#>  $ score      : int 157
#>  $ time       : POSIXct[1:1], format: "2025-12-01 11:37:18"
#>  $ title      : chr "1GB Raspberry Pi 5, and memory-driven price rises"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.raspberrypi.com/news/1gb-raspberry-pi-5-now-available-at-45-and-memory-driven-price-rises/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[64]]
#> List of 9
#>  $ by         : chr "hasheddan"
#>  $ descendants: int 204
#>  $ id         : int 46106556
#>  $ kids       : int [1:40] 46107832 46107036 46107099 46114105 46107200 46111993 46107455 46121170 46107237 46107216 ...
#>  $ score      : int 547
#>  $ time       : POSIXct[1:1], format: "2025-12-01 12:22:35"
#>  $ title      : chr "Why xor eax, eax?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://xania.org/202512/01-xor-eax-eax"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[65]]
#> List of 9
#>  $ by         : chr "voxleone"
#>  $ descendants: int 248
#>  $ id         : int 46109534
#>  $ kids       : int [1:49] 46109931 46110055 46109852 46110355 46120403 46110102 46109878 46110722 46109899 46110006 ...
#>  $ score      : int 181
#>  $ time       : POSIXct[1:1], format: "2025-12-01 16:42:15"
#>  $ title      : chr "A new AI winter is coming?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://taranis.ie/llms-are-a-failure-a-new-ai-winter-is-coming/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[66]]
#> List of 9
#>  $ by         : chr "nivethan"
#>  $ descendants: int 142
#>  $ id         : int 46113682
#>  $ kids       : int [1:23] 46113762 46114491 46122044 46117177 46117109 46116284 46117306 46117679 46118047 46117727 ...
#>  $ score      : int 203
#>  $ time       : POSIXct[1:1], format: "2025-12-01 21:44:07"
#>  $ title      : chr "Mozilla's latest quagmire"
#>  $ type       : chr "story"
#>  $ url        : chr "https://rubenerd.com/mozillas-latest-quagmire/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[67]]
#> List of 9
#>  $ by         : chr "klaussilveira"
#>  $ descendants: int 28
#>  $ id         : int 46109080
#>  $ kids       : int [1:7] 46110869 46110004 46111925 46111917 46109321 46109832 46109482
#>  $ score      : int 83
#>  $ time       : POSIXct[1:1], format: "2025-12-01 16:11:15"
#>  $ title      : chr "ImAnim: Modern animation capabilities to ImGui applications"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/soufianekhiat/ImAnim"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[68]]
#> List of 9
#>  $ by         : chr "bpierre"
#>  $ descendants: int 108
#>  $ id         : int 46115214
#>  $ kids       : int [1:17] 46115539 46116435 46117263 46116106 46115912 46115850 46116019 46118427 46118297 46116851 ...
#>  $ score      : int 196
#>  $ time       : POSIXct[1:1], format: "2025-12-01 23:44:51"
#>  $ title      : chr "AI agents find $4.6M in blockchain smart contract exploits"
#>  $ type       : chr "story"
#>  $ url        : chr "https://red.anthropic.com/2025/smart-contracts/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[69]]
#> List of 10
#>  $ by         : chr "jadesee"
#>  $ descendants: int 3
#>  $ id         : int 46117937
#>  $ kids       : int [1:3] 46122026 46121881 46121940
#>  $ score      : int 15
#>  $ text       : chr "I needed a lightweight way to archive documentation from a website. wget and similar tools failed to clone the "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 05:32:42"
#>  $ title      : chr "Show HN: Webclone.js – A simple tool to clone websites"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/jademsee/webclone"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[70]]
#> List of 9
#>  $ by         : chr "dxs"
#>  $ descendants: int 27
#>  $ id         : int 46045876
#>  $ kids       : int [1:11] 46111269 46111366 46108390 46116173 46107865 46107892 46111590 46113904 46110224 46113578 ...
#>  $ score      : int 131
#>  $ time       : POSIXct[1:1], format: "2025-11-25 14:04:37"
#>  $ title      : chr "Historic Engineering Wonders: Photos That Reveal How They Pulled It Off"
#>  $ type       : chr "story"
#>  $ url        : chr "https://rarehistoricalphotos.com/engineering-methods-from-the-past/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[71]]
#> List of 9
#>  $ by         : chr "gmays"
#>  $ descendants: int 476
#>  $ id         : int 46110908
#>  $ kids       : int [1:28] 46112340 46111454 46111583 46111614 46111825 46111383 46112267 46116927 46111333 46111257 ...
#>  $ score      : int 266
#>  $ time       : POSIXct[1:1], format: "2025-12-01 18:21:19"
#>  $ title      : chr "High-income job losses are cooling housing demand"
#>  $ type       : chr "story"
#>  $ url        : chr "https://jbrec.com/insights/job-growth-housing-demand-metro-analysis-2026/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[72]]
#> List of 9
#>  $ by         : chr "Sami_Lehtinen"
#>  $ descendants: int 1
#>  $ id         : int 46117743
#>  $ kids       : int 46119566
#>  $ score      : int 12
#>  $ time       : POSIXct[1:1], format: "2025-12-02 04:59:17"
#>  $ title      : chr "Decreasing Certificate Lifetimes to 45 Days"
#>  $ type       : chr "story"
#>  $ url        : chr "https://letsencrypt.org/2025/12/02/from-90-to-45"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[73]]
#> List of 10
#>  $ by         : chr "robbyrussell"
#>  $ descendants: int 158
#>  $ id         : int 46110836
#>  $ kids       : int [1:54] 46112300 46112580 46112149 46111662 46112032 46112042 46113152 46111483 46113106 46111152 ...
#>  $ score      : int 138
#>  $ text       : chr "Related: <i>Ruby is not a serious programming language</i> - <a href=\"https:&#x2F;&#x2F;news.ycombinator.com&#"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 18:16:09"
#>  $ title      : chr "Response to \"Ruby Is Not a Serious Programming Language\""
#>  $ type       : chr "story"
#>  $ url        : chr "https://robbyonrails.com/articles/2025/12/01/why-so-serious/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[74]]
#> List of 9
#>  $ by         : chr "hogwash"
#>  $ descendants: int 8
#>  $ id         : int 46120830
#>  $ kids       : int [1:7] 46121097 46122128 46121469 46122075 46121209 46121347 46121700
#>  $ score      : int 12
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:09:30"
#>  $ title      : chr "The Rise of AI Denialism"
#>  $ type       : chr "story"
#>  $ url        : chr "https://bigthink.com/the-present/the-rise-of-ai-denialism/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[75]]
#> List of 9
#>  $ by         : chr "walterbell"
#>  $ descendants: int 78
#>  $ id         : int 46103097
#>  $ kids       : int [1:20] 46105137 46104384 46103929 46104082 46104636 46108366 46113439 46107477 46108770 46107058 ...
#>  $ score      : int 189
#>  $ time       : POSIXct[1:1], format: "2025-12-01 03:12:29"
#>  $ title      : chr "X210Ai is a new motherboard to upgrade ThinkPad X201/200"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.tpart.net/about-x210ai/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[76]]
#> List of 9
#>  $ by         : chr "todsacerdoti"
#>  $ descendants: int 6
#>  $ id         : int 46118249
#>  $ kids       : int [1:3] 46119944 46120536 46119949
#>  $ score      : int 17
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:27:04"
#>  $ title      : chr "Gitmal – a static pages generator for Git repos"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/antonmedv/gitmal"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[77]]
#> List of 10
#>  $ by         : chr "nl"
#>  $ descendants: int 92
#>  $ id         : int 46094037
#>  $ kids       : int [1:18] 46103249 46106864 46103274 46095562 46095038 46094768 46103346 46095773 46110903 46098804 ...
#>  $ score      : int 235
#>  $ text       : chr "<a href=\"https:&#x2F;&#x2F;twitter.com&#x2F;vladtenev&#x2F;status&#x2F;1994922827208663383\" rel=\"nofollow\">"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-30 05:19:33"
#>  $ title      : chr "AI just proved Erdos Problem #124"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.erdosproblems.com/forum/thread/124#post-1892"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[78]]
#> List of 9
#>  $ by         : chr "ibobev"
#>  $ descendants: int 3
#>  $ id         : int 46115729
#>  $ kids       : int [1:2] 46121842 46117690
#>  $ score      : int 21
#>  $ time       : POSIXct[1:1], format: "2025-12-02 00:36:15"
#>  $ title      : chr "Around The World, Part 27: Planting trees"
#>  $ type       : chr "story"
#>  $ url        : chr "https://frozenfractal.com/blog/2025/11/28/around-the-world-27-planting-trees/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[79]]
#> List of 9
#>  $ by         : chr "jxmorris12"
#>  $ descendants: int 93
#>  $ id         : int 46112640
#>  $ kids       : int [1:15] 46114202 46113024 46113580 46114131 46113298 46113442 46113951 46113263 46114669 46116614 ...
#>  $ score      : int 158
#>  $ time       : POSIXct[1:1], format: "2025-12-01 20:20:19"
#>  $ title      : chr "Sycophancy is the first LLM \"dark pattern\""
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.seangoedecke.com/ai-sycophancy/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[80]]
#> List of 9
#>  $ by         : chr "jonathanzufi"
#>  $ descendants: int 111
#>  $ id         : int 46056232
#>  $ kids       : int [1:18] 46114544 46113496 46115027 46115903 46113874 46113971 46115762 46116307 46115844 46116644 ...
#>  $ score      : int 145
#>  $ time       : POSIXct[1:1], format: "2025-11-26 11:05:26"
#>  $ title      : chr "Amazon faces FAA probe after delivery drone snaps internet cable in Texas"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.cnbc.com/2025/11/25/amazon-faa-probe-delivery-drone-incident-texas.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[81]]
#> List of 9
#>  $ by         : chr "akersten"
#>  $ descendants: int 142
#>  $ id         : int 46103657
#>  $ kids       : int [1:19] 46107052 46107695 46105140 46104929 46106237 46105240 46106487 46105763 46113505 46104772 ...
#>  $ score      : int 157
#>  $ time       : POSIXct[1:1], format: "2025-12-01 05:01:01"
#>  $ title      : chr "SmartTube Compromised"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.aftvnews.com/smarttubes-official-apk-was-compromised-with-malware-what-you-should-do-if-you-use-it/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[82]]
#> List of 9
#>  $ by         : chr "sg5421"
#>  $ descendants: int 47
#>  $ id         : int 46116179
#>  $ kids       : int [1:12] 46118388 46119747 46119442 46119107 46118904 46118504 46118849 46120941 46120740 46120485 ...
#>  $ score      : int 81
#>  $ time       : POSIXct[1:1], format: "2025-12-02 01:30:15"
#>  $ title      : chr "Notes on Bhutan"
#>  $ type       : chr "story"
#>  $ url        : chr "https://apropos.substack.com/p/notes-on-bhutan"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[83]]
#> List of 10
#>  $ by         : chr "domofutu"
#>  $ descendants: int 52
#>  $ id         : int 46061390
#>  $ kids       : int [1:13] 46105608 46105659 46106232 46106222 46120920 46106327 46106105 46105748 46106268 46105591 ...
#>  $ score      : int 95
#>  $ text       : chr "Research paper: <a href=\"https:&#x2F;&#x2F;www.nature.com&#x2F;articles&#x2F;s41586-025-09736-y\" rel=\"nofoll"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-26 19:26:43"
#>  $ title      : chr "Detection of triboelectric discharges during dust events on Mars"
#>  $ type       : chr "story"
#>  $ url        : chr "https://gizmodo.com/weve-detected-lightning-on-mars-for-the-first-time-2000691996"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[84]]
#> List of 9
#>  $ by         : chr "frizlab"
#>  $ descendants: int 240
#>  $ id         : int 46114599
#>  $ kids       : int [1:50] 46115472 46115194 46114924 46115042 46115213 46116658 46116038 46115805 46116036 46118337 ...
#>  $ score      : int 402
#>  $ time       : POSIXct[1:1], format: "2025-12-01 22:56:16"
#>  $ title      : chr "Last Week on My Mac: Losing confidence"
#>  $ type       : chr "story"
#>  $ url        : chr "https://eclecticlight.co/2025/11/30/last-week-on-my-mac-losing-confidence/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[85]]
#> List of 9
#>  $ by         : chr "DamnInteresting"
#>  $ descendants: int 104
#>  $ id         : int 46111284
#>  $ kids       : int [1:17] 46112899 46112322 46111884 46111927 46112103 46112491 46111775 46113546 46112072 46112008 ...
#>  $ score      : int 130
#>  $ time       : POSIXct[1:1], format: "2025-12-01 18:46:17"
#>  $ title      : chr "Intel could return to Apple computers in 2027"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.theverge.com/news/832366/intel-apple-m-chip-low-end-processor"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[86]]
#> List of 9
#>  $ by         : chr "todsacerdoti"
#>  $ descendants: int 6
#>  $ id         : int 46077637
#>  $ kids       : int [1:3] 46115573 46114504 46087500
#>  $ score      : int 64
#>  $ time       : POSIXct[1:1], format: "2025-11-28 11:19:34"
#>  $ title      : chr "Help, My Java Object Vanished (and the GC Is Not at Fault)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://arraying.de/posts/markword/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[87]]
#> List of 9
#>  $ by         : chr "zdw"
#>  $ descendants: int 4
#>  $ id         : int 46092387
#>  $ kids       : int [1:3] 46118541 46118911 46118992
#>  $ score      : int 10
#>  $ time       : POSIXct[1:1], format: "2025-11-30 00:48:53"
#>  $ title      : chr "A Bus Ride and the (At Least) 3x UX FAILs"
#>  $ type       : chr "story"
#>  $ url        : chr "https://bsdly.blogspot.com/2025/11/a-bus-ride-and-at-least-3x-ux-fails.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[88]]
#> List of 9
#>  $ by         : chr "objcts"
#>  $ descendants: int 284
#>  $ id         : int 46098838
#>  $ kids       : int [1:63] 46102048 46100616 46100884 46100185 46100308 46100269 46105422 46110161 46110994 46100137 ...
#>  $ score      : int 722
#>  $ time       : POSIXct[1:1], format: "2025-11-30 17:56:43"
#>  $ title      : chr "Writing a good Claude.md"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.humanlayer.dev/blog/writing-a-good-claude-md"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[89]]
#> List of 8
#>  $ by         : chr "todsacerdoti"
#>  $ descendants: int 0
#>  $ id         : int 46116659
#>  $ score      : int 20
#>  $ time       : POSIXct[1:1], format: "2025-12-02 02:27:11"
#>  $ title      : chr "FreeBSD 15.0-Release Announcement"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.freebsd.org/releases/15.0R/announce/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[90]]
#> List of 9
#>  $ by         : chr "PaulHoule"
#>  $ descendants: int 3
#>  $ id         : int 46113387
#>  $ kids       : int 46114275
#>  $ score      : int 34
#>  $ time       : POSIXct[1:1], format: "2025-12-01 21:20:28"
#>  $ title      : chr "Pose-free 3D Gaussian splatting via shape-ray estimation"
#>  $ type       : chr "story"
#>  $ url        : chr "https://arxiv.org/abs/2505.22978"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[91]]
#> List of 9
#>  $ by         : chr "helsinkiandrew"
#>  $ descendants: int 1
#>  $ id         : int 46120833
#>  $ kids       : int 46120838
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:10:06"
#>  $ title      : chr "Samsung Debuts First TriFold Months Ahead of Foldable iPhone"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bloomberg.com/news/articles/2025-12-02/samsung-debuts-2-450-galaxy-z-trifold-months-ahead-of-foldable-iphone"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[92]]
#> List of 9
#>  $ by         : chr "cratermoon"
#>  $ descendants: int 7
#>  $ id         : int 46079629
#>  $ kids       : int [1:5] 46118776 46117714 46118638 46118973 46120379
#>  $ score      : int 16
#>  $ time       : POSIXct[1:1], format: "2025-11-28 15:46:01"
#>  $ title      : chr "Dark Corners of Unicode (2015)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://eev.ee/blog/2015/09/12/dark-corners-of-unicode/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[93]]
#> List of 10
#>  $ by         : chr "tlhunter"
#>  $ descendants: int 9
#>  $ id         : int 46109843
#>  $ kids       : int [1:4] 46113478 46113552 46119347 46110760
#>  $ score      : int 26
#>  $ text       : chr "I&#x27;ve worked at several companies during the past two decades and I kept encountering the same issues with "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 17:04:10"
#>  $ title      : chr "Show HN: RFC Hub"
#>  $ type       : chr "story"
#>  $ url        : chr "https://rfchub.app/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[94]]
#> List of 9
#>  $ by         : chr "birdculture"
#>  $ descendants: int 55
#>  $ id         : int 46097671
#>  $ kids       : int [1:15] 46099331 46101920 46099109 46101040 46098941 46103464 46100994 46099189 46103741 46101218 ...
#>  $ score      : int 127
#>  $ time       : POSIXct[1:1], format: "2025-11-30 15:57:34"
#>  $ title      : chr "Langjam Gamejam: Build a programming language then make a game with it"
#>  $ type       : chr "story"
#>  $ url        : chr "https://langjamgamejam.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[95]]
#> List of 8
#>  $ by         : chr "fleahunter"
#>  $ descendants: int 0
#>  $ id         : int 46120741
#>  $ score      : int 6
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:56:11"
#>  $ title      : chr "University of Pennsylvania confirms new data breach after Oracle hack"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bleepingcomputer.com/news/security/university-of-pennsylvania-confirms-data-theft-after-oracle-ebs-hack/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[96]]
#> List of 9
#>  $ by         : chr "rbanffy"
#>  $ descendants: int 307
#>  $ id         : int 46100892
#>  $ kids       : int [1:36] 46101714 46101483 46102183 46102956 46101433 46106354 46102327 46103779 46103187 46102891 ...
#>  $ score      : int 421
#>  $ time       : POSIXct[1:1], format: "2025-11-30 22:05:07"
#>  $ title      : chr "A Love Letter to FreeBSD"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.tara.sh/posts/2025/2025-11-25_freebsd_letter/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[97]]
#> List of 9
#>  $ by         : chr "Aaronontheweb"
#>  $ descendants: int 337
#>  $ id         : int 46113689
#>  $ kids       : int [1:53] 46114322 46114230 46114484 46121944 46114367 46114279 46114220 46114051 46115727 46114097 ...
#>  $ score      : int 262
#>  $ time       : POSIXct[1:1], format: "2025-12-01 21:44:34"
#>  $ title      : chr "The healthcare market is taxing reproduction out of existence"
#>  $ type       : chr "story"
#>  $ url        : chr "https://aaronstannard.com/40k-baby/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[98]]
#> List of 9
#>  $ by         : chr "T-A"
#>  $ descendants: int 45
#>  $ id         : int 46063145
#>  $ kids       : int [1:10] 46107581 46107016 46065325 46104879 46110126 46105070 46105128 46109197 46105800 46109360
#>  $ score      : int 94
#>  $ time       : POSIXct[1:1], format: "2025-11-26 22:38:24"
#>  $ title      : chr "Engineers repurpose a mosquito proboscis to create a 3D printing nozzle"
#>  $ type       : chr "story"
#>  $ url        : chr "https://techxplore.com/news/2025-11-repurpose-mosquito-proboscis-3d-nozzle.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[99]]
#> List of 9
#>  $ by         : chr "tamnd"
#>  $ descendants: int 465
#>  $ id         : int 46103532
#>  $ kids       : int [1:71] 46104563 46103880 46109187 46105169 46104692 46107805 46104985 46104098 46104263 46106749 ...
#>  $ score      : int 506
#>  $ time       : POSIXct[1:1], format: "2025-12-01 04:39:28"
#>  $ title      : chr "Google Antigravity just deleted the contents of whole drive"
#>  $ type       : chr "story"
#>  $ url        : chr "https://old.reddit.com/r/google_antigravity/comments/1p82or6/google_antigravity_just_deleted_the_contents_of/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[100]]
#> List of 9
#>  $ by         : chr "robtaylor"
#>  $ descendants: int 119
#>  $ id         : int 46108243
#>  $ kids       : int [1:23] 46108956 46108555 46108712 46108752 46109886 46108490 46112204 46108432 46109490 46114062 ...
#>  $ score      : int 128
#>  $ time       : POSIXct[1:1], format: "2025-12-01 15:00:45"
#>  $ title      : chr "WordPress plugin quirk resulted in UK Gov OBR Budget leak [pdf]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://obr.uk/docs/dlm_uploads/01122025-Investigation-into-November-2025-EFO-publication-error.pdf"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[101]]
#> List of 9
#>  $ by         : chr "modinfo"
#>  $ descendants: int 14
#>  $ id         : int 46101996
#>  $ kids       : int [1:7] 46107194 46107707 46106011 46105391 46106771 46104966 46106211
#>  $ score      : int 102
#>  $ time       : POSIXct[1:1], format: "2025-12-01 00:28:04"
#>  $ title      : chr "Ly – A lightweight TUI (ncurses-like) display manager for Linux and BSD"
#>  $ type       : chr "story"
#>  $ url        : chr "https://codeberg.org/fairyglade/ly"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[102]]
#> List of 9
#>  $ by         : chr "the-anarchist"
#>  $ descendants: int 143
#>  $ id         : int 46106132
#>  $ kids       : int [1:26] 46107368 46106638 46107867 46106424 46108055 46106549 46106325 46106400 46109249 46107273 ...
#>  $ score      : int 256
#>  $ time       : POSIXct[1:1], format: "2025-12-01 11:26:39"
#>  $ title      : chr "Self-hosting a Matrix server for 5 years"
#>  $ type       : chr "story"
#>  $ url        : chr "https://yaky.dev/2025-11-30-self-hosting-matrix/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[103]]
#> List of 10
#>  $ by         : chr "schoblaska"
#>  $ descendants: int 7
#>  $ id         : int 46110897
#>  $ kids       : int [1:6] 46114054 46114344 46114495 46118108 46119359 46116921
#>  $ score      : int 32
#>  $ text       : chr "Hey HN! Over the weekend (leaning heavily on Opus 4.5) I wrote Jargon - an AI-managed zettelkasten that reads a"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 18:20:46"
#>  $ title      : chr "Show HN: An AI zettelkasten that extracts ideas from articles, videos, and PDFs"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/schoblaska/jargon"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[104]]
#> List of 9
#>  $ by         : chr "nreece"
#>  $ descendants: int 1
#>  $ id         : int 46119262
#>  $ kids       : int 46121050
#>  $ score      : int 12
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:18:37"
#>  $ title      : chr "Rockstar co-founder compares AI to 'mad cow disease'"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.pcgamer.com/software/ai/rockstar-co-founder-compares-ai-to-mad-cow-disease-and-says-the-execs-pushi"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[105]]
#> List of 9
#>  $ by         : chr "Brajeshwar"
#>  $ descendants: int 203
#>  $ id         : int 46108106
#>  $ kids       : int [1:37] 46110000 46109099 46109824 46109357 46109262 46108841 46109481 46109166 46108879 46108970 ...
#>  $ score      : int 202
#>  $ time       : POSIXct[1:1], format: "2025-12-01 14:50:16"
#>  $ title      : chr "Netflix kills casting from its mobile app to most modern TVs"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.macrumors.com/2025/12/01/netflix-kills-casting-from-mobile-app-to-tvs/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[106]]
#> List of 9
#>  $ by         : chr "surprisetalk"
#>  $ descendants: int 7
#>  $ id         : int 46098575
#>  $ kids       : int [1:5] 46121147 46116159 46117041 46119968 46115855
#>  $ score      : int 17
#>  $ time       : POSIXct[1:1], format: "2025-11-30 17:26:01"
#>  $ title      : chr "User-Adjustable Leather Tool Organizers"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.core77.com/posts/138928/User-Adjustable-Leather-Tool-Organizers"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[107]]
#> List of 9
#>  $ by         : chr "foxmoss"
#>  $ descendants: int 28
#>  $ id         : int 46072521
#>  $ kids       : int [1:15] 46104237 46104478 46072636 46103552 46103807 46108204 46106191 46117539 46107139 46103545 ...
#>  $ score      : int 103
#>  $ time       : POSIXct[1:1], format: "2025-11-27 19:34:23"
#>  $ title      : chr "Replacing My Window Manager with Google Chrome"
#>  $ type       : chr "story"
#>  $ url        : chr "https://foxmoss.com/blog/dote/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[108]]
#> List of 9
#>  $ by         : chr "keyle"
#>  $ descendants: int 9
#>  $ id         : int 46054471
#>  $ kids       : int [1:3] 46111474 46111291 46110973
#>  $ score      : int 32
#>  $ time       : POSIXct[1:1], format: "2025-11-26 05:33:49"
#>  $ title      : chr "Spleen Monospaced Bitmap Fonts"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/fcambus/spleen"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[109]]
#> List of 9
#>  $ by         : chr "beardyw"
#>  $ descendants: int 13
#>  $ id         : int 46118735
#>  $ kids       : int [1:6] 46119551 46119288 46119382 46119321 46119871 46119300
#>  $ score      : int 13
#>  $ time       : POSIXct[1:1], format: "2025-12-02 07:49:08"
#>  $ title      : chr "Samsung reveals its tri-fold phone – and its desktop mode"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.theregister.com/2025/12/02/samsung_galaxy_z_trifold/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[110]]
#> List of 9
#>  $ by         : chr "speckx"
#>  $ descendants: int 19
#>  $ id         : int 46045643
#>  $ kids       : int [1:9] 46105630 46104504 46105033 46106694 46116237 46107108 46106077 46105219 46105360
#>  $ score      : int 108
#>  $ time       : POSIXct[1:1], format: "2025-11-25 13:35:22"
#>  $ title      : chr "N-Body Simulator – Interactive 3 Body Problem and Gravitational Physics"
#>  $ type       : chr "story"
#>  $ url        : chr "https://trisolarchaos.com/?pr=lagrange&n=3&s=5.0&so=0.01&im=verlet&dt=5.00e-4&rt=1.0e-6&at=1.0e-8&bs=0.50&sf=0&"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[111]]
#> List of 9
#>  $ by         : chr "rozenmd"
#>  $ descendants: int 99
#>  $ id         : int 46071317
#>  $ kids       : int [1:22] 46098596 46095566 46095336 46071663 46102981 46096977 46098115 46096449 46110365 46097905 ...
#>  $ score      : int 253
#>  $ time       : POSIXct[1:1], format: "2025-11-27 17:23:06"
#>  $ title      : chr "What's Hiding Inside Haribo's Power Bank and Headphones?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.lumafield.com/first-article/posts/whats-hiding-inside-haribos-power-bank-and-headphones"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[112]]
#> List of 9
#>  $ by         : chr "thm"
#>  $ descendants: int 9
#>  $ id         : int 46120015
#>  $ kids       : int [1:5] 46121599 46120323 46121020 46120055 46120369
#>  $ score      : int 9
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:06:33"
#>  $ title      : chr "I love AI. Why doesn't everyone?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.noahpinion.blog/p/i-love-ai-why-doesnt-everyone"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[113]]
#> List of 9
#>  $ by         : chr "lazyant"
#>  $ descendants: int 119
#>  $ id         : int 46102347
#>  $ kids       : int [1:16] 46103083 46118976 46102630 46111118 46103437 46105323 46105792 46106842 46103799 46102470 ...
#>  $ score      : int 357
#>  $ time       : POSIXct[1:1], format: "2025-12-01 01:17:28"
#>  $ title      : chr "Advent of Sysadmin 2025"
#>  $ type       : chr "story"
#>  $ url        : chr "https://sadservers.com/advent"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[114]]
#> List of 9
#>  $ by         : chr "digital55"
#>  $ descendants: int 1
#>  $ id         : int 46117919
#>  $ kids       : int 46119384
#>  $ score      : int 27
#>  $ time       : POSIXct[1:1], format: "2025-12-02 05:29:28"
#>  $ title      : chr "AlphaFold is five years old – these charts show how it revolutionized science"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.nature.com/articles/d41586-025-03886-9"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[115]]
#> List of 10
#>  $ by         : chr "gregsadetsky"
#>  $ descendants: int 112
#>  $ id         : int 46054879
#>  $ kids       : int [1:26] 46121964 46088147 46057308 46089230 46055448 46089367 46065722 46086645 46088186 46086299 ...
#>  $ score      : int 339
#>  $ text       : chr "I read through the years about Bourdain&#x27;s content on the defunct li.st service, but was never able to find"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-26 07:03:27"
#>  $ title      : chr "Anthony Bourdain's Lost Li.st's"
#>  $ type       : chr "story"
#>  $ url        : chr "https://bourdain.greg.technology/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[116]]
#> List of 9
#>  $ by         : chr "victorbuilds"
#>  $ descendants: int 87
#>  $ id         : int 46105079
#>  $ kids       : int [1:14] 46105298 46105466 46105338 46108984 46105500 46106209 46105859 46106344 46105976 46110878 ...
#>  $ score      : int 262
#>  $ time       : POSIXct[1:1], format: "2025-12-01 08:54:31"
#>  $ title      : chr "DeepSeekMath-V2: Towards Self-Verifiable Mathematical Reasoning"
#>  $ type       : chr "story"
#>  $ url        : chr "https://huggingface.co/deepseek-ai/DeepSeek-Math-V2"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[117]]
#> List of 9
#>  $ by         : chr "makeitdouble"
#>  $ descendants: int 70
#>  $ id         : int 46101263
#>  $ kids       : int [1:14] 46104298 46102864 46104015 46102141 46101965 46102761 46101981 46102198 46102453 46101877 ...
#>  $ score      : int 145
#>  $ time       : POSIXct[1:1], format: "2025-11-30 22:53:08"
#>  $ title      : chr "Bricklink suspends Marketplace operations in 35 countries"
#>  $ type       : chr "story"
#>  $ url        : chr "https://jaysbrickblog.com/news/bricklink-suspends-marketplace-operations-in-35-countries/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[118]]
#> List of 9
#>  $ by         : chr "jdmoreira"
#>  $ descendants: int 71
#>  $ id         : int 46098359
#>  $ kids       : int [1:9] 46100116 46098813 46099926 46100983 46104572 46100238 46099260 46099110 46099372
#>  $ score      : int 147
#>  $ time       : POSIXct[1:1], format: "2025-11-30 17:02:48"
#>  $ title      : chr "LLVM-MOS – Clang LLVM fork targeting the 6502"
#>  $ type       : chr "story"
#>  $ url        : chr "https://llvm-mos.org/wiki/Welcome"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[119]]
#> List of 9
#>  $ by         : chr "yehiaabdelm"
#>  $ descendants: int 38
#>  $ id         : int 46051422
#>  $ kids       : int [1:14] 46097254 46098742 46099783 46098833 46101147 46101294 46096931 46098967 46100565 46101475 ...
#>  $ score      : int 195
#>  $ time       : POSIXct[1:1], format: "2025-11-25 22:11:50"
#>  $ title      : chr "Paul Hegarty's updated CS193p SwiftUI course released by Stanford"
#>  $ type       : chr "story"
#>  $ url        : chr "https://cs193p.stanford.edu/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[120]]
#> List of 9
#>  $ by         : chr "ChrisArchitect"
#>  $ descendants: int 137
#>  $ id         : int 46097773
#>  $ kids       : int [1:20] 46097961 46099204 46099538 46098461 46098620 46099429 46098935 46098564 46111061 46098428 ...
#>  $ score      : int 210
#>  $ time       : POSIXct[1:1], format: "2025-11-30 16:07:11"
#>  $ title      : chr "The Thinking Game Film – Google DeepMind documentary"
#>  $ type       : chr "story"
#>  $ url        : chr "https://thinkinggamefilm.com"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[121]]
#> List of 9
#>  $ by         : chr "LorenDB"
#>  $ descendants: int 261
#>  $ id         : int 46096556
#>  $ kids       : int [1:36] 46097879 46097376 46096988 46097181 46097142 46097475 46099228 46097164 46099169 46097193 ...
#>  $ score      : int 495
#>  $ time       : POSIXct[1:1], format: "2025-11-30 13:40:17"
#>  $ title      : chr "Windows drive letters are not limited to A-Z"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.ryanliptak.com/blog/windows-drive-letters-are-not-limited-to-a-z/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[122]]
#> List of 9
#>  $ by         : chr "ivankra"
#>  $ descendants: int 89
#>  $ id         : int 46116628
#>  $ kids       : int [1:22] 46116972 46116845 46117049 46116903 46119990 46116873 46116863 46117133 46117082 46116915 ...
#>  $ score      : int 79
#>  $ time       : POSIXct[1:1], format: "2025-12-02 02:21:49"
#>  $ title      : chr "Netherlands – Capital Growth Tax and Capital Gains Tax for Box 3"
#>  $ type       : chr "story"
#>  $ url        : chr "https://kpmg.com/xx/en/our-insights/gms-flash-alert/flash-alert-2025-116.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[123]]
#> List of 9
#>  $ by         : chr "todsacerdoti"
#>  $ descendants: int 212
#>  $ id         : int 46096800
#>  $ kids       : int [1:35] 46097220 46097425 46099854 46097257 46097015 46097045 46097427 46097640 46099649 46097946 ...
#>  $ score      : int 420
#>  $ time       : POSIXct[1:1], format: "2025-11-30 14:11:40"
#>  $ title      : chr "Migrating Dillo from GitHub"
#>  $ type       : chr "story"
#>  $ url        : chr "https://dillo-browser.org/news/migration-from-github/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[124]]
#> List of 9
#>  $ by         : chr "speckx"
#>  $ descendants: int 23
#>  $ id         : int 46113232
#>  $ kids       : int [1:5] 46114013 46114646 46113702 46113248 46114512
#>  $ score      : int 96
#>  $ time       : POSIXct[1:1], format: "2025-12-01 21:08:07"
#>  $ title      : chr "Lawmakers Want to Ban VPNs–and They Have No Idea What They're Doing"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.techdirt.com/2025/12/01/lawmakers-want-to-ban-vpns-and-they-have-no-idea-what-theyre-doing/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[125]]
#> List of 9
#>  $ by         : chr "marvinborner"
#>  $ descendants: int 82
#>  $ id         : int 46107109
#>  $ kids       : int [1:22] 46108210 46108147 46108357 46107284 46107485 46107992 46108173 46107478 46107986 46108101 ...
#>  $ score      : int 98
#>  $ time       : POSIXct[1:1], format: "2025-12-01 13:23:44"
#>  $ title      : chr "WhatsApp will become interoperable with other messaging apps in Europe"
#>  $ type       : chr "story"
#>  $ url        : chr "https://tuta.com/blog/whatsapp-interoperable-in-europe"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[126]]
#> List of 9
#>  $ by         : chr "ajdude"
#>  $ descendants: int 2
#>  $ id         : int 46117216
#>  $ kids       : int 46118829
#>  $ score      : int 21
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:37:12"
#>  $ title      : chr "New AI slop signal: code blocks with weird indentation"
#>  $ type       : chr "story"
#>  $ url        : chr "https://xeiaso.net/notes/2025/slop-signal-indentation/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[127]]
#> List of 9
#>  $ by         : chr "todsacerdoti"
#>  $ descendants: int 132
#>  $ id         : int 46097829
#>  $ kids       : int [1:15] 46100638 46103632 46100237 46100421 46103188 46100457 46100671 46107833 46105916 46102563 ...
#>  $ score      : int 340
#>  $ time       : POSIXct[1:1], format: "2025-11-30 16:12:13"
#>  $ title      : chr "GitHub to Codeberg: my experience"
#>  $ type       : chr "story"
#>  $ url        : chr "https://eldred.fr/blog/forge-migration/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[128]]
#> List of 9
#>  $ by         : chr "Anon84"
#>  $ descendants: int 33
#>  $ id         : int 46101492
#>  $ kids       : int [1:11] 46102609 46103399 46103254 46101973 46115928 46120952 46104494 46107742 46108543 46102524 ...
#>  $ score      : int 379
#>  $ time       : POSIXct[1:1], format: "2025-11-30 23:21:32"
#>  $ title      : chr "Algorithms for Optimization [pdf]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://algorithmsbook.com/optimization/files/optimization.pdf"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[129]]
#> List of 9
#>  $ by         : chr "gregsadetsky"
#>  $ descendants: int 144
#>  $ id         : int 46093473
#>  $ kids       : int [1:53] 46093925 46094630 46095403 46096803 46094308 46098492 46095390 46095573 46094243 46093969 ...
#>  $ score      : int 764
#>  $ time       : POSIXct[1:1], format: "2025-11-30 03:46:35"
#>  $ title      : chr "Show HN: Boing"
#>  $ type       : chr "story"
#>  $ url        : chr "https://boing.greg.technology/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[130]]
#> List of 9
#>  $ by         : chr "todsacerdoti"
#>  $ descendants: int 30
#>  $ id         : int 46099997
#>  $ kids       : int [1:9] 46103252 46103661 46108635 46116405 46109268 46103230 46107050 46105107 46103991
#>  $ score      : int 71
#>  $ time       : POSIXct[1:1], format: "2025-11-30 20:15:45"
#>  $ title      : chr "Hacking on the ReMarkable 2"
#>  $ type       : chr "story"
#>  $ url        : chr "https://sgt.hootr.club/blog/hacking-on-the-remarkable-2/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[131]]
#> List of 10
#>  $ by         : chr "harambae"
#>  $ descendants: int 637
#>  $ id         : int 46102202
#>  $ kids       : int [1:33] 46104312 46102868 46102521 46103822 46106075 46102399 46116335 46121052 46103149 46102392 ...
#>  $ score      : int 284
#>  $ text       : chr "<a href=\"https:&#x2F;&#x2F;archive.is&#x2F;NvSXc\" rel=\"nofollow\">https:&#x2F;&#x2F;archive.is&#x2F;NvSXc</a>"
#>  $ time       : POSIXct[1:1], format: "2025-12-01 00:58:32"
#>  $ title      : chr "Is America's jobs market nearing a cliff?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.economist.com/finance-and-economics/2025/11/30/is-americas-jobs-market-nearing-a-cliff"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[132]]
#> List of 9
#>  $ by         : chr "jnord"
#>  $ descendants: int 869
#>  $ id         : int 46091591
#>  $ kids       : int [1:77] 46093419 46094576 46091974 46094153 46093547 46094016 46095623 46092029 46096732 46093857 ...
#>  $ score      : int 486
#>  $ time       : POSIXct[1:1], format: "2025-11-29 22:56:14"
#>  $ title      : chr "Americans no longer see four-year college degrees as worth the cost"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.nbcnews.com/politics/politics-news/poll-dramatic-shift-americans-no-longer-see-four-year-college-de"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[133]]
#> List of 9
#>  $ by         : chr "ndr42"
#>  $ descendants: int 6
#>  $ id         : int 46115248
#>  $ kids       : int [1:3] 46115332 46117335 46115276
#>  $ score      : int 10
#>  $ time       : POSIXct[1:1], format: "2025-12-01 23:47:23"
#>  $ title      : chr "3D printed titanium Apple Watch cases"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.apple.com/newsroom/2025/11/mapping-the-future-with-3d-printed-titanium-apple-watch-cases/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[134]]
#> List of 9
#>  $ by         : chr "DamnInteresting"
#>  $ descendants: int 39
#>  $ id         : int 46098979
#>  $ kids       : int [1:9] 46100074 46099969 46100260 46102322 46099364 46101580 46099043 46104238 46100201
#>  $ score      : int 94
#>  $ time       : POSIXct[1:1], format: "2025-11-30 18:15:37"
#>  $ title      : chr "There is No Quintic Formula [video]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.youtube.com/watch?v=9HIy5dJE-zQ"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[135]]
#> List of 9
#>  $ by         : chr "hn_acker"
#>  $ descendants: int 3
#>  $ id         : int 46114475
#>  $ kids       : int [1:3] 46116819 46116760 46114476
#>  $ score      : int 42
#>  $ time       : POSIXct[1:1], format: "2025-12-01 22:47:01"
#>  $ title      : chr "Meta's new EU regulator is contractually prohibited from hurting Meta's feelings"
#>  $ type       : chr "story"
#>  $ url        : chr "https://pluralistic.net/2025/12/01/erin-go-blagged/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[136]]
#> List of 9
#>  $ by         : chr "herbertl"
#>  $ descendants: int 402
#>  $ id         : int 46090433
#>  $ kids       : int [1:79] 46090792 46090919 46091844 46095968 46091080 46090742 46094374 46090722 46090955 46094919 ...
#>  $ score      : int 803
#>  $ time       : POSIXct[1:1], format: "2025-11-29 20:22:44"
#>  $ title      : chr "All it takes is for one to work out"
#>  $ type       : chr "story"
#>  $ url        : chr "https://alearningaday.blog/2025/11/28/all-it-takes-is-for-one-to-work-out-2/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[137]]
#> List of 9
#>  $ by         : chr "furcyd"
#>  $ descendants: int 8
#>  $ id         : int 46114303
#>  $ kids       : int [1:4] 46115869 46117429 46115200 46115969
#>  $ score      : int 48
#>  $ time       : POSIXct[1:1], format: "2025-12-01 22:34:15"
#>  $ title      : chr "OpenAI desperate to avoid explaining why it deleted pirated book datasets"
#>  $ type       : chr "story"
#>  $ url        : chr "https://arstechnica.com/tech-policy/2025/12/openai-desperate-to-avoid-explaining-why-it-deleted-pirated-book-datasets/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[138]]
#> List of 8
#>  $ by         : chr "todsacerdoti"
#>  $ descendants: int 0
#>  $ id         : int 46107043
#>  $ score      : int 16
#>  $ time       : POSIXct[1:1], format: "2025-12-01 13:17:44"
#>  $ title      : chr "Constructing the Word's First JPEG XL MD5 Hash Quine"
#>  $ type       : chr "story"
#>  $ url        : chr "https://stackchk.fail/blog/jxl_hashquine_writeup"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[139]]
#> List of 8
#>  $ by         : chr "endcycles"
#>  $ descendants: int 0
#>  $ id         : int 46109381
#>  $ score      : int 14
#>  $ time       : POSIXct[1:1], format: "2025-12-01 16:31:32"
#>  $ title      : chr "Show HN: FFmpeg Engineering Handbook"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/endcycles/ffmpeg-engineering-handbook"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[140]]
#> List of 9
#>  $ by         : chr "defrost"
#>  $ descendants: int 3
#>  $ id         : int 46119740
#>  $ kids       : int [1:3] 46120075 46119959 46120289
#>  $ score      : int 10
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:27:04"
#>  $ title      : chr "Another open source project dies of neglect, leaving thousands scrambling"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.theregister.com/2025/12/02/ingress_nginx_opinion/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[141]]
#> List of 9
#>  $ by         : chr "tsenturk"
#>  $ descendants: int 137
#>  $ id         : int 46099367
#>  $ kids       : int [1:35] 46099873 46101670 46103003 46100005 46107797 46109011 46104962 46099943 46099929 46099865 ...
#>  $ score      : int 147
#>  $ time       : POSIXct[1:1], format: "2025-11-30 19:02:04"
#>  $ title      : chr "You want microservices, but do you need them?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.docker.com/blog/do-you-really-need-microservices/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[142]]
#> List of 8
#>  $ by         : chr "birdculture"
#>  $ descendants: int 0
#>  $ id         : int 46119117
#>  $ score      : int 7
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:58:32"
#>  $ title      : chr "Duplication Isn't Always an Anti-Pattern"
#>  $ type       : chr "story"
#>  $ url        : chr "https://medium.com/@HobokenDays/rethinking-duplication-c1f85f1c0102"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[143]]
#> List of 8
#>  $ by         : chr "shashikumar"
#>  $ descendants: int 0
#>  $ id         : int 46119086
#>  $ score      : int 10
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:51:34"
#>  $ title      : chr "Decompiling Sanchar Saathi: Code Review of India's New Mandatory App"
#>  $ type       : chr "story"
#>  $ url        : chr "https://onlinetinker.com/blog/sanchar-saathi-security-analysis"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[144]]
#> List of 9
#>  $ by         : chr "doener"
#>  $ descendants: int 270
#>  $ id         : int 46095585
#>  $ kids       : int [1:37] 46095894 46095889 46096170 46096758 46096963 46095759 46096179 46095783 46095851 46095841 ...
#>  $ score      : int 301
#>  $ time       : POSIXct[1:1], format: "2025-11-30 10:47:27"
#>  $ title      : chr "CachyOS: Fast and Customizable Linux Distribution"
#>  $ type       : chr "story"
#>  $ url        : chr "https://cachyos.org/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[145]]
#> List of 9
#>  $ by         : chr "fizl"
#>  $ descendants: int 7
#>  $ id         : int 46116099
#>  $ kids       : int [1:4] 46117393 46117595 46118014 46117307
#>  $ score      : int 32
#>  $ time       : POSIXct[1:1], format: "2025-12-02 01:20:19"
#>  $ title      : chr "Supreme Court hears case that could trigger big crackdown on Internet piracy"
#>  $ type       : chr "story"
#>  $ url        : chr "https://arstechnica.com/tech-policy/2025/12/supreme-court-debates-whether-isps-must-kick-pirates-off-the-internet/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[146]]
#> List of 9
#>  $ by         : chr "surprisetalk"
#>  $ descendants: int 26
#>  $ id         : int 46070537
#>  $ kids       : int [1:7] 46098796 46097618 46097338 46098067 46099369 46099370 46097413
#>  $ score      : int 92
#>  $ time       : POSIXct[1:1], format: "2025-11-27 16:07:24"
#>  $ title      : chr "The Easiest Way to Build a Type Checker"
#>  $ type       : chr "story"
#>  $ url        : chr "https://jimmyhmiller.com/easiest-way-to-build-type-checker"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[147]]
#> List of 9
#>  $ by         : chr "robtherobber"
#>  $ descendants: int 191
#>  $ id         : int 46106181
#>  $ kids       : int [1:26] 46106809 46107908 46107844 46120205 46109706 46107837 46109401 46106773 46107575 46106727 ...
#>  $ score      : int 197
#>  $ time       : POSIXct[1:1], format: "2025-12-01 11:35:34"
#>  $ title      : chr "UK Government plans new powers to label dissenting movements as 'subversion'"
#>  $ type       : chr "story"
#>  $ url        : chr "https://netpol.org/2025/11/28/government-plans-new-powers-to-label-dissenting-movements-as-subversion/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[148]]
#> List of 9
#>  $ by         : chr "koolba"
#>  $ descendants: int 7
#>  $ id         : int 46117285
#>  $ kids       : int [1:6] 46117611 46118053 46117927 46117373 46117844 46117508
#>  $ score      : int 24
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:48:21"
#>  $ title      : chr "IT consultant arrested after posing with gun on LinkedIn"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.telegraph.co.uk/news/2025/11/28/it-consultant-arrested-after-posing-with-gun-on-linkedin/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[149]]
#> List of 9
#>  $ by         : chr "happy-game-dev"
#>  $ descendants: int 14
#>  $ id         : int 46071221
#>  $ kids       : int [1:7] 46091910 46092253 46091542 46093608 46094041 46071222 46091563
#>  $ score      : int 121
#>  $ time       : POSIXct[1:1], format: "2025-11-27 17:13:51"
#>  $ title      : chr "Blender facial animation tool. What else should it do?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/shun126/livelinkface_arkit_receiver/wiki"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[150]]
#> List of 9
#>  $ by         : chr "Garbage"
#>  $ descendants: int 62
#>  $ id         : int 46095250
#>  $ kids       : int [1:17] 46098845 46096675 46096627 46096123 46097890 46096464 46098918 46098684 46100086 46095985 ...
#>  $ score      : int 91
#>  $ time       : POSIXct[1:1], format: "2025-11-30 09:44:15"
#>  $ title      : chr "The space of minds"
#>  $ type       : chr "story"
#>  $ url        : chr "https://karpathy.bearblog.dev/the-space-of-minds/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[151]]
#> List of 9
#>  $ by         : chr "birdculture"
#>  $ descendants: int 36
#>  $ id         : int 46087022
#>  $ kids       : int [1:10] 46089662 46089239 46089688 46091111 46094162 46101960 46094140 46090410 46092032 46091511
#>  $ score      : int 214
#>  $ time       : POSIXct[1:1], format: "2025-11-29 12:25:35"
#>  $ title      : chr "The CRDT Dictionary: A Field Guide to Conflict-Free Replicated Data Types"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.iankduncan.com/engineering/2025-11-27-crdt-dictionary/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[152]]
#> List of 9
#>  $ by         : chr "todsacerdoti"
#>  $ descendants: int 145
#>  $ id         : int 46093518
#>  $ kids       : int [1:24] 46095338 46094412 46095051 46094326 46094337 46094633 46094501 46096052 46096151 46094050 ...
#>  $ score      : int 473
#>  $ time       : POSIXct[1:1], format: "2025-11-30 03:54:51"
#>  $ title      : chr "Zigbook Is Plagiarizing the Zigtools Playground"
#>  $ type       : chr "story"
#>  $ url        : chr "https://zigtools.org/blog/zigbook-plagiarizing-playground/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[153]]
#> List of 9
#>  $ by         : chr "MilnerRoute"
#>  $ descendants: int 341
#>  $ id         : int 46097624
#>  $ kids       : int [1:44] 46098081 46098059 46098834 46098312 46099752 46099721 46099667 46099846 46098464 46100911 ...
#>  $ score      : int 318
#>  $ time       : POSIXct[1:1], format: "2025-11-30 15:52:41"
#>  $ title      : chr "Modern cars are spying on you. Here's what you can do about it"
#>  $ type       : chr "story"
#>  $ url        : chr "https://apnews.com/article/auto-car-privacy-3674ce59c9b30f2861d29178a31e6ab7"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[154]]
#> List of 9
#>  $ by         : chr "OuterVale"
#>  $ descendants: int 258
#>  $ id         : int 46070203
#>  $ kids       : int [1:33] 46077359 46076888 46077755 46075601 46075662 46076698 46076930 46077340 46076904 46076001 ...
#>  $ score      : int 416
#>  $ time       : POSIXct[1:1], format: "2025-11-27 15:36:56"
#>  $ title      : chr "GitLab discovers widespread NPM supply chain attack"
#>  $ type       : chr "story"
#>  $ url        : chr "https://about.gitlab.com/blog/gitlab-discovers-widespread-npm-supply-chain-attack/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[155]]
#> List of 9
#>  $ by         : chr "gnabgib"
#>  $ descendants: int 75
#>  $ id         : int 46092478
#>  $ kids       : int [1:13] 46094626 46095483 46096156 46093162 46099898 46096000 46096042 46096969 46108695 46093664 ...
#>  $ score      : int 110
#>  $ time       : POSIXct[1:1], format: "2025-11-30 01:03:44"
#>  $ title      : chr "A new Little Prince museum has opened its doors in Switzerland"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.lepetitprince.com/en/events-around-the-world/a-new-little-prince-museum-has-opened-its-doors-in-switzerland/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[156]]
#> List of 9
#>  $ by         : chr "rrsp"
#>  $ descendants: int 3
#>  $ id         : int 46118396
#>  $ kids       : int [1:3] 46121868 46121005 46119739
#>  $ score      : int 16
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:55:44"
#>  $ title      : chr "OpenAI's Altman Declares 'Code Red' to Improve ChatGPT"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.wsj.com/tech/ai/openais-altman-declares-code-red-to-improve-chatgpt-as-google-threatens-ai-lead-7faf5ea6"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[157]]
#> List of 8
#>  $ by         : chr "_____k"
#>  $ descendants: int 0
#>  $ id         : int 46120878
#>  $ score      : int 8
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:14:29"
#>  $ title      : chr "Apple refuses Indias order to preload state cyber safety app Sanchar Saathi"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.telegraphindia.com/business/apple-refuses-indias-order-to-preload-state-cyber-safety-app-citing-pri"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[158]]
#> List of 9
#>  $ by         : chr "andsoitis"
#>  $ descendants: int 1
#>  $ id         : int 46115758
#>  $ kids       : int [1:2] 46115930 46115926
#>  $ score      : int 9
#>  $ time       : POSIXct[1:1], format: "2025-12-02 00:39:41"
#>  $ title      : chr "Nimony (eventually Nim 3.0) Design Principles"
#>  $ type       : chr "story"
#>  $ url        : chr "https://nim-lang.org/araq/nimony.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[159]]
#> List of 10
#>  $ by         : chr "defly"
#>  $ descendants: int 117
#>  $ id         : int 46100323
#>  $ kids       : int [1:14] 46100849 46101104 46100839 46100739 46100821 46103224 46103094 46102584 46103496 46101394 ...
#>  $ score      : int 321
#>  $ text       : chr "<a href=\"https:&#x2F;&#x2F;xcancel.com&#x2F;hkashfi&#x2F;status&#x2F;1995109785679573167\" rel=\"nofollow\">ht"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-30 20:54:43"
#>  $ title      : chr "“Boobs check” – Technique to verify if sites behind CDN are hosted in Iran"
#>  $ type       : chr "story"
#>  $ url        : chr "https://twitter.com/hkashfi/status/1995109785679573167"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[160]]
#> List of 9
#>  $ by         : chr "mrkaluzny"
#>  $ descendants: int 8
#>  $ id         : int 46055173
#>  $ kids       : int [1:5] 46110183 46109909 46108791 46112563 46109063
#>  $ score      : int 31
#>  $ time       : POSIXct[1:1], format: "2025-11-26 07:55:28"
#>  $ title      : chr "How to Run Profitable Pricing Experiments?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://cleancommit.io/blog/pricing-experiments/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[161]]
#> List of 10
#>  $ by         : chr "antiochIst"
#>  $ descendants: int 70
#>  $ id         : int 46053076
#>  $ kids       : int [1:40] 46097882 46096377 46097494 46096188 46119379 46096956 46095788 46096343 46101058 46101082 ...
#>  $ score      : int 251
#>  $ text       : chr "I built a system that monitors ~200,000 news RSS feeds in near real-time and clusters related articles to show "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-26 01:27:16"
#>  $ title      : chr "Show HN: Real-time system that tracks how news spreads across 200k websites"
#>  $ type       : chr "story"
#>  $ url        : chr "https://yandori.io/news-flow/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[162]]
#> List of 9
#>  $ by         : chr "salkahfi"
#>  $ descendants: int 1
#>  $ id         : int 46115541
#>  $ kids       : int 46119893
#>  $ score      : int 6
#>  $ time       : POSIXct[1:1], format: "2025-12-02 00:19:05"
#>  $ title      : chr "Lux – the world best computer use model and developer toolkit"
#>  $ type       : chr "story"
#>  $ url        : chr "https://agiopen.org/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[163]]
#> List of 9
#>  $ by         : chr "__rito__"
#>  $ descendants: int 19
#>  $ id         : int 46098747
#>  $ kids       : int [1:8] 46100106 46101114 46100334 46099839 46099275 46099738 46100600 46099300
#>  $ score      : int 184
#>  $ time       : POSIXct[1:1], format: "2025-11-30 17:45:51"
#>  $ title      : chr "ETH-Zurich: Digital Design and Computer Architecture; 227-0003-10L, Spring, 2025"
#>  $ type       : chr "story"
#>  $ url        : chr "https://safari.ethz.ch/ddca/spring2025/doku.php?id=start"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[164]]
#> List of 10
#>  $ by         : chr "GavCo"
#>  $ descendants: int 39
#>  $ id         : int 46090619
#>  $ kids       : int [1:21] 46122062 46090986 46090751 46091188 46094435 46117427 46090816 46092986 46090940 46090944 ...
#>  $ score      : int 170
#>  $ text       : chr "The new Gemini 3 Pro Image model (aka Nano Banana) is incredible at generating slides, so I thought it would be"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-29 20:44:24"
#>  $ title      : chr "Show HN: Nano PDF – A CLI Tool to Edit PDFs with Gemini's Nano Banana"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/gavrielc/Nano-PDF"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[165]]
#> List of 9
#>  $ by         : chr "benbreen"
#>  $ descendants: int 101
#>  $ id         : int 46085585
#>  $ kids       : int [1:23] 46085717 46086666 46089113 46090008 46086455 46088626 46086417 46086076 46087093 46089593 ...
#>  $ score      : int 189
#>  $ time       : POSIXct[1:1], format: "2025-11-29 06:37:05"
#>  $ title      : chr "Garfield's Proof of the Pythagorean Theorem"
#>  $ type       : chr "story"
#>  $ url        : chr "https://en.wikipedia.org/wiki/Garfield%27s_proof_of_the_Pythagorean_theorem"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[166]]
#> List of 9
#>  $ by         : chr "ilamont"
#>  $ descendants: int 1
#>  $ id         : int 46069905
#>  $ kids       : int 46114075
#>  $ score      : int 11
#>  $ time       : POSIXct[1:1], format: "2025-11-27 15:06:35"
#>  $ title      : chr "Ancestry and the NRS: when the corporate genealogy world turns ugly"
#>  $ type       : chr "story"
#>  $ url        : chr "http://scottishgenes.blogspot.com/2025/09/ancestry-and-nrs-when-corporate.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[167]]
#> List of 9
#>  $ by         : chr "zhiheng_huang"
#>  $ descendants: int 1
#>  $ id         : int 46112689
#>  $ kids       : int 46112690
#>  $ score      : int 8
#>  $ time       : POSIXct[1:1], format: "2025-12-01 20:23:58"
#>  $ title      : chr "NotebookLM vs. Denser AI Chat: Which AI Knowledge Assistant Is Right for You?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://denser.ai/blog/ai-knowledge-bases-compared-notebooklm-denser/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[168]]
#> List of 9
#>  $ by         : chr "breve"
#>  $ descendants: int 194
#>  $ id         : int 46099985
#>  $ kids       : int [1:30] 46101262 46100787 46102134 46102214 46100307 46102237 46101019 46100960 46101413 46101000 ...
#>  $ score      : int 198
#>  $ time       : POSIXct[1:1], format: "2025-11-30 20:14:12"
#>  $ title      : chr "People keep flocking to Linux, not just to escape Windows"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.zdnet.com/article/why-people-keep-flocking-to-linux-in-2025-and-its-not-just-to-escape-windows/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[169]]
#> List of 9
#>  $ by         : chr "surprisetalk"
#>  $ descendants: int 37
#>  $ id         : int 46098569
#>  $ kids       : int [1:11] 46100651 46100094 46103203 46100151 46101340 46100153 46105819 46100578 46102066 46101173 ...
#>  $ score      : int 70
#>  $ time       : POSIXct[1:1], format: "2025-11-30 17:25:40"
#>  $ title      : chr "Notes on Shadowing a Hospitalist"
#>  $ type       : chr "story"
#>  $ url        : chr "https://humaninvariant.substack.com/p/notes-on-shadowing-a-hospitalist"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[170]]
#> List of 9
#>  $ by         : chr "robtherobber"
#>  $ descendants: int 5
#>  $ id         : int 46110448
#>  $ kids       : int [1:5] 46120778 46118585 46115389 46110877 46115786
#>  $ score      : int 45
#>  $ time       : POSIXct[1:1], format: "2025-12-01 17:47:14"
#>  $ title      : chr "Microsoft Teams will tell your boss when you're out of the office"
#>  $ type       : chr "story"
#>  $ url        : chr "https://mashable.com/article/microsoft-teams-will-tell-your-boss-when-you-are-out-of-office"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[171]]
#> List of 9
#>  $ by         : chr "cubefox"
#>  $ descendants: int 47
#>  $ id         : int 46067011
#>  $ kids       : int [1:8] 46096605 46097538 46096202 46114331 46098373 46098827 46096250 46096017
#>  $ score      : int 118
#>  $ time       : POSIXct[1:1], format: "2025-11-27 08:23:03"
#>  $ title      : chr "The inefficiency of RL, and implications for RLVR progress"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.dwarkesh.com/p/bits-per-sample"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[172]]
#> List of 9
#>  $ by         : chr "mindracer"
#>  $ descendants: int 434
#>  $ id         : int 46087616
#>  $ kids       : int [1:69] 46094171 46094848 46093475 46088037 46093006 46093294 46088239 46095111 46087941 46093507 ...
#>  $ score      : int 493
#>  $ time       : POSIXct[1:1], format: "2025-11-29 14:05:53"
#>  $ title      : chr "Datacenters in space aren't going to work"
#>  $ type       : chr "story"
#>  $ url        : chr "https://taranis.ie/datacenters-in-space-are-a-terrible-horrible-no-good-idea/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[173]]
#> List of 9
#>  $ by         : chr "Aloha"
#>  $ descendants: int 208
#>  $ id         : int 46090172
#>  $ kids       : int [1:54] 46090463 46090648 46090437 46091341 46090542 46090822 46090583 46090616 46095089 46090725 ...
#>  $ score      : int 355
#>  $ time       : POSIXct[1:1], format: "2025-11-29 19:41:55"
#>  $ title      : chr "Be Like Clippy"
#>  $ type       : chr "story"
#>  $ url        : chr "https://be-clippy.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[174]]
#> List of 8
#>  $ by         : chr "surprisetalk"
#>  $ descendants: int 0
#>  $ id         : int 46115239
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-12-01 23:46:42"
#>  $ title      : chr "Jonbar Hinge"
#>  $ type       : chr "story"
#>  $ url        : chr "https://en.wikipedia.org/wiki/Jonbar_hinge"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[175]]
#> List of 9
#>  $ by         : chr "mkagenius"
#>  $ descendants: int 34
#>  $ id         : int 46099108
#>  $ kids       : int [1:16] 46100721 46099808 46099792 46100075 46103279 46102335 46100590 46104515 46099988 46103256 ...
#>  $ score      : int 132
#>  $ time       : POSIXct[1:1], format: "2025-11-30 18:34:52"
#>  $ title      : chr "Program-of-Thought Prompting Outperforms Chain-of-Thought by 15% (2022)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://arxiv.org/abs/2211.12588"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[176]]
#> List of 9
#>  $ by         : chr "giuliomagnifico"
#>  $ descendants: int 32
#>  $ id         : int 46098673
#>  $ kids       : int [1:11] 46100033 46100980 46101952 46099426 46100760 46101293 46100786 46104630 46099640 46100165 ...
#>  $ score      : int 125
#>  $ time       : POSIXct[1:1], format: "2025-11-30 17:37:09"
#>  $ title      : chr "ESA Sentinel-1D delivers first high-resolution images"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.esa.int/Applications/Observing_the_Earth/Copernicus/Sentinel-1/Sentinel-1D_delivers_first_images_fr"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[177]]
#> List of 9
#>  $ by         : chr "flail"
#>  $ descendants: int 16
#>  $ id         : int 46109905
#>  $ kids       : int [1:8] 46110855 46119938 46114463 46118945 46113678 46110849 46114588 46113875
#>  $ score      : int 36
#>  $ time       : POSIXct[1:1], format: "2025-12-01 17:09:06"
#>  $ title      : chr "Why I'm Betting Against the AGI Hype"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.notesfromthecircus.com/p/why-im-betting-against-the-agi-hype"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[178]]
#> List of 9
#>  $ by         : chr "HugoDz"
#>  $ descendants: int 33
#>  $ id         : int 46058566
#>  $ kids       : int [1:15] 46100182 46098707 46099034 46119364 46101110 46101813 46098328 46104256 46101005 46098531 ...
#>  $ score      : int 187
#>  $ time       : POSIXct[1:1], format: "2025-11-26 15:46:51"
#>  $ title      : chr "Show HN: Fixing Google Nano Banana Pixel Art with Rust"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/Hugo-Dz/spritefusion-pixel-snapper"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[179]]
#> List of 9
#>  $ by         : chr "louismerlin"
#>  $ descendants: int 62
#>  $ id         : int 46078684
#>  $ kids       : int [1:9] 46090278 46091805 46090629 46091070 46091623 46089812 46092363 46097217 46089616
#>  $ score      : int 101
#>  $ time       : POSIXct[1:1], format: "2025-11-28 13:57:43"
#>  $ title      : chr "An update on the Farphone's battery"
#>  $ type       : chr "story"
#>  $ url        : chr "https://far.computer/battery-update/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[180]]
#> List of 9
#>  $ by         : chr "giuliomagnifico"
#>  $ descendants: int 19
#>  $ id         : int 46060432
#>  $ kids       : int [1:6] 46091115 46092845 46092266 46090906 46092844 46091865
#>  $ score      : int 111
#>  $ time       : POSIXct[1:1], format: "2025-11-26 18:02:45"
#>  $ title      : chr "Rare X-ray images of a 4.5-ton satellite that returned intact from space"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.empa.ch/web/s604/eureca-satellit-mit-roentgenmethoden-untersucht"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[181]]
#> List of 9
#>  $ by         : chr "zdw"
#>  $ descendants: int 13
#>  $ id         : int 46051077
#>  $ kids       : int [1:6] 46104574 46105492 46104293 46104333 46108074 46106255
#>  $ score      : int 102
#>  $ time       : POSIXct[1:1], format: "2025-11-25 21:35:29"
#>  $ title      : chr "NVMe driver for Windows 2000, targeting both x86 and Alpha AXP platforms"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/techomancer/nvme2k"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[182]]
#> List of 9
#>  $ by         : chr "razighter777"
#>  $ descendants: int 115
#>  $ id         : int 46090969
#>  $ kids       : int [1:21] 46095737 46092847 46091755 46091740 46093292 46098938 46091692 46094699 46091957 46094007 ...
#>  $ score      : int 287
#>  $ time       : POSIXct[1:1], format: "2025-11-29 21:30:53"
#>  $ title      : chr "Landlock-Ing Linux"
#>  $ type       : chr "story"
#>  $ url        : chr "https://blog.prizrak.me/post/landlock/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[183]]
#> List of 9
#>  $ by         : chr "warangal"
#>  $ descendants: int 14
#>  $ id         : int 46087549
#>  $ kids       : int [1:6] 46088016 46088652 46088469 46087991 46089352 46090161
#>  $ score      : int 149
#>  $ time       : POSIXct[1:1], format: "2025-11-29 13:56:04"
#>  $ title      : chr "Hachi: An Image Search Engine"
#>  $ type       : chr "story"
#>  $ url        : chr "https://eagledot.xyz/hachi.md.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[184]]
#> List of 9
#>  $ by         : chr "ColinWright"
#>  $ descendants: int 34
#>  $ id         : int 46089394
#>  $ kids       : int [1:5] 46089770 46091025 46090092 46090564 46093801
#>  $ score      : int 113
#>  $ time       : POSIXct[1:1], format: "2025-11-29 17:53:57"
#>  $ title      : chr "Zero knowlege proof of compositeness"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.johndcook.com/blog/2025/11/29/zkp-composite/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[185]]
#> List of 9
#>  $ by         : chr "Brajeshwar"
#>  $ descendants: int 202
#>  $ id         : int 46088998
#>  $ kids       : int [1:31] 46089914 46089960 46089888 46094455 46093141 46089320 46089335 46090333 46090225 46092511 ...
#>  $ score      : int 217
#>  $ time       : POSIXct[1:1], format: "2025-11-29 16:58:58"
#>  $ title      : chr "We're learning more about what Vitamin D does"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.technologyreview.com/2025/11/21/1128206/vitamin-d-bodies-bone-health-immune/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[186]]
#> List of 8
#>  $ by         : chr "measurablefunc"
#>  $ descendants: int 0
#>  $ id         : int 46117766
#>  $ score      : int 11
#>  $ time       : POSIXct[1:1], format: "2025-12-02 05:03:02"
#>  $ title      : chr "A Camera System Now Feeds Information to Police on Drivers Across the US"
#>  $ type       : chr "story"
#>  $ url        : chr "https://truthout.org/articles/a-vast-camera-system-now-feeds-information-to-police-on-drivers-across-the-us/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[187]]
#> List of 9
#>  $ by         : chr "victorbuilds"
#>  $ descendants: int 123
#>  $ id         : int 46089546
#>  $ kids       : int [1:12] 46090374 46091621 46092651 46090290 46090122 46092442 46090647 46091475 46090409 46089984 ...
#>  $ score      : int 98
#>  $ time       : POSIXct[1:1], format: "2025-11-29 18:14:21"
#>  $ title      : chr "Student perceptions of AI coding assistants in learning"
#>  $ type       : chr "story"
#>  $ url        : chr "https://arxiv.org/abs/2507.22900"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[188]]
#> List of 8
#>  $ by         : chr "saubeidl"
#>  $ descendants: int 0
#>  $ id         : int 46118906
#>  $ score      : int 9
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:18:33"
#>  $ title      : chr "'Security Disaster'–500M Microsoft Users Say No to Windows 11"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.forbes.com/sites/zakdoffman/2025/12/01/security-disaster-500-million-microsoft-users-say-no-to-windows-11/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[189]]
#> List of 8
#>  $ by         : chr "surprisetalk"
#>  $ descendants: int 0
#>  $ id         : int 46107660
#>  $ score      : int 6
#>  $ time       : POSIXct[1:1], format: "2025-12-01 14:13:14"
#>  $ title      : chr "A Most Important Mustard"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.asimov.press/p/arabidopsis"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[190]]
#> List of 9
#>  $ by         : chr "trulyrandom"
#>  $ descendants: int 64
#>  $ id         : int 46099022
#>  $ kids       : int [1:11] 46099714 46099383 46101383 46100196 46102541 46105623 46102435 46100515 46101928 46100262 ...
#>  $ score      : int 202
#>  $ time       : POSIXct[1:1], format: "2025-11-30 18:21:45"
#>  $ title      : chr "NixOS 25.11 released"
#>  $ type       : chr "story"
#>  $ url        : chr "https://nixos.org/blog/announcements/2025/nixos-2511/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[191]]
#> List of 9
#>  $ by         : chr "nasaok"
#>  $ descendants: int 44
#>  $ id         : int 46100282
#>  $ kids       : int [1:13] 46105619 46105736 46104503 46103267 46104893 46100347 46105941 46103323 46100591 46103963 ...
#>  $ score      : int 132
#>  $ time       : POSIXct[1:1], format: "2025-11-30 20:49:49"
#>  $ title      : chr "How to run phones while being struck by suicide drones"
#>  $ type       : chr "story"
#>  $ url        : chr "https://nasa.cx/hn/posts/how-to-run-hundreds-of-phones-while-being-struck-by-suicide-drones/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[192]]
#> List of 9
#>  $ by         : chr "0x79de"
#>  $ descendants: int 43
#>  $ id         : int 46077136
#>  $ kids       : int [1:13] 46080357 46084398 46081264 46080674 46080026 46083132 46081092 46080718 46080694 46080538 ...
#>  $ score      : int 196
#>  $ time       : POSIXct[1:1], format: "2025-11-28 09:39:57"
#>  $ title      : chr "The Math of Why You Can't Focus at Work"
#>  $ type       : chr "story"
#>  $ url        : chr "https://justoffbyone.com/posts/math-of-why-you-cant-focus-at-work/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[193]]
#> List of 9
#>  $ by         : chr "mitchbob"
#>  $ descendants: int 2
#>  $ id         : int 46120669
#>  $ kids       : int [1:2] 46120947 46120670
#>  $ score      : int 8
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:45:53"
#>  $ title      : chr "Don't Fear Self-Driving Cars. They Save Lives."
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.nytimes.com/2025/12/02/opinion/self-driving-cars.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[194]]
#> List of 8
#>  $ by         : chr "mhb"
#>  $ descendants: int 0
#>  $ id         : int 46118100
#>  $ score      : int 9
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:01:39"
#>  $ title      : chr "Researchers isolate elusive cells that may slow down aging"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.timesofisrael.com/medical-holy-grail-israeli-researchers-isolate-elusive-cells-that-may-slow-down-aging/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[195]]
#> List of 9
#>  $ by         : chr "pyrophoenix"
#>  $ descendants: int 174
#>  $ id         : int 46083004
#>  $ kids       : int [1:29] 46084635 46088882 46085955 46086253 46085524 46084650 46086487 46090291 46085368 46085928 ...
#>  $ score      : int 507
#>  $ time       : POSIXct[1:1], format: "2025-11-28 21:40:21"
#>  $ title      : chr "Airbus A320 – intense solar radiation may corrupt data critical for flight"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.airbus.com/en/newsroom/press-releases/2025-11-airbus-update-on-a320-family-precautionary-fleet-action"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[196]]
#> List of 10
#>  $ by         : chr "fleahunter"
#>  $ descendants: int 735
#>  $ id         : int 46086771
#>  $ kids       : int [1:124] 46087109 46087091 46087576 46094956 46092622 46087298 46087323 46095415 46087544 46087363 ...
#>  $ score      : int 847
#>  $ text       : chr "<a href=\"https:&#x2F;&#x2F;x.com&#x2F;btibor91&#x2F;status&#x2F;1994714152636690834\" rel=\"nofollow\">https:&"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-29 11:31:58"
#>  $ title      : chr "Leak confirms OpenAI is preparing ads on ChatGPT for public roll out"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bleepingcomputer.com/news/artificial-intelligence/leak-confirms-openai-is-preparing-ads-on-chatgpt-"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[197]]
#> List of 8
#>  $ by         : chr "mustaphah"
#>  $ descendants: int 0
#>  $ id         : int 46113409
#>  $ score      : int 16
#>  $ time       : POSIXct[1:1], format: "2025-12-01 21:22:24"
#>  $ title      : chr "Stop Hiring for Languages. Start Hiring Great Engineers"
#>  $ type       : chr "story"
#>  $ url        : chr "https://medium.com/jonathans-musings/stop-hiring-for-languages-start-hiring-great-engineers-cd6ace7a446c"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[198]]
#> List of 9
#>  $ by         : chr "privacyops"
#>  $ descendants: int 13
#>  $ id         : int 46066746
#>  $ kids       : int [1:3] 46100684 46100564 46101317
#>  $ score      : int 31
#>  $ time       : POSIXct[1:1], format: "2025-11-27 07:40:43"
#>  $ title      : chr "Finding the grain of sand in a heap of Salt"
#>  $ type       : chr "story"
#>  $ url        : chr "https://blog.cloudflare.com/finding-the-grain-of-sand-in-a-heap-of-salt/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[199]]
#> List of 9
#>  $ by         : chr "mikejeays"
#>  $ descendants: int 36
#>  $ id         : int 46087596
#>  $ kids       : int [1:10] 46087940 46087919 46088009 46090069 46090348 46087924 46088045 46088264 46088137 46087954
#>  $ score      : int 143
#>  $ time       : POSIXct[1:1], format: "2025-11-29 14:02:23"
#>  $ title      : chr "DNS LOC Record (2014)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://blog.cloudflare.com/the-weird-and-wonderful-world-of-dns-loc-records/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[200]]
#> List of 9
#>  $ by         : chr "debo_"
#>  $ descendants: int 73
#>  $ id         : int 46092558
#>  $ kids       : int [1:14] 46096067 46093548 46093228 46092621 46093105 46098950 46098234 46097259 46098390 46095487 ...
#>  $ score      : int 297
#>  $ time       : POSIXct[1:1], format: "2025-11-30 01:15:59"
#>  $ title      : chr "Meshtastic"
#>  $ type       : chr "story"
#>  $ url        : chr "https://meshtastic.org/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[201]]
#> List of 9
#>  $ by         : chr "onestay42"
#>  $ descendants: int 18
#>  $ id         : int 46092000
#>  $ kids       : int [1:7] 46092725 46093275 46092946 46093435 46096530 46094672 46093560
#>  $ score      : int 84
#>  $ time       : POSIXct[1:1], format: "2025-11-29 23:51:21"
#>  $ title      : chr "Scala"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.huygens-fokker.org/scala/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[202]]
#> List of 8
#>  $ by         : chr "6LLvveMx2koXfwn"
#>  $ descendants: int 0
#>  $ id         : int 46106246
#>  $ score      : int 7
#>  $ time       : POSIXct[1:1], format: "2025-12-01 11:47:01"
#>  $ title      : chr "'Vampire Squid from Hell' Reveals the Ancient Origins of Octopuses"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.sciencealert.com/vampire-squid-from-hell-reveals-the-ancient-origins-of-octopuses"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[203]]
#> List of 9
#>  $ by         : chr "salykova"
#>  $ descendants: int 22
#>  $ id         : int 46047052
#>  $ kids       : int [1:2] 46094090 46096948
#>  $ score      : int 60
#>  $ time       : POSIXct[1:1], format: "2025-11-25 15:57:53"
#>  $ title      : chr "Matrix Core Programming on AMD CDNA Architecture"
#>  $ type       : chr "story"
#>  $ url        : chr "https://rocm.blogs.amd.com/software-tools-optimization/matrix-cores-cdna/README.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[204]]
#> List of 9
#>  $ by         : chr "surprisetalk"
#>  $ descendants: int 44
#>  $ id         : int 46111449
#>  $ kids       : int [1:13] 46112316 46112861 46112863 46118888 46112214 46115523 46113906 46113660 46112510 46113246 ...
#>  $ score      : int 64
#>  $ time       : POSIXct[1:1], format: "2025-12-01 18:57:27"
#>  $ title      : chr "React and Remix Choose Different Futures"
#>  $ type       : chr "story"
#>  $ url        : chr "https://laconicwit.com/react-and-remix-choose-different-futures/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[205]]
#> List of 9
#>  $ by         : chr "toomanyrichies"
#>  $ descendants: int 25
#>  $ id         : int 46110583
#>  $ kids       : int [1:11] 46112549 46112943 46110873 46111658 46112695 46118606 46112191 46111071 46111574 46111005 ...
#>  $ score      : int 46
#>  $ time       : POSIXct[1:1], format: "2025-12-01 17:55:17"
#>  $ title      : chr "Google Starts Sharing All Your Text Messages with Your Employer"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.forbes.com/sites/zakdoffman/2025/11/30/google-starts-sharing-all-your-text-messages-with-your-employer/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[206]]
#> List of 9
#>  $ by         : chr "dnetesn"
#>  $ descendants: int 1
#>  $ id         : int 46106080
#>  $ kids       : int 46114681
#>  $ score      : int 12
#>  $ time       : POSIXct[1:1], format: "2025-12-01 11:18:39"
#>  $ title      : chr "How to Print a Human"
#>  $ type       : chr "story"
#>  $ url        : chr "https://nautil.us/how-to-print-a-human-1250487/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[207]]
#> List of 8
#>  $ by         : chr "naves"
#>  $ descendants: int 0
#>  $ id         : int 46111759
#>  $ score      : int 7
#>  $ time       : POSIXct[1:1], format: "2025-12-01 19:18:43"
#>  $ title      : chr "Stopping evil and open source: my thoughts"
#>  $ type       : chr "story"
#>  $ url        : chr "https://blog.liw.fi/posts/2025/stop-evil/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[208]]
#> List of 8
#>  $ by         : chr "ngaut"
#>  $ descendants: int 0
#>  $ id         : int 46099881
#>  $ score      : int 25
#>  $ time       : POSIXct[1:1], format: "2025-11-30 20:02:36"
#>  $ title      : chr "Training Foundation Models on a Full-Stack AMD Platform"
#>  $ type       : chr "story"
#>  $ url        : chr "https://arxiv.org/abs/2511.17127"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[209]]
#> List of 9
#>  $ by         : chr "ashishgupta2209"
#>  $ descendants: int 390
#>  $ id         : int 46057488
#>  $ kids       : int [1:57] 46069798 46057922 46058528 46058532 46057890 46068639 46067107 46064874 46060042 46058499 ...
#>  $ score      : int 1084
#>  $ time       : POSIXct[1:1], format: "2025-11-26 14:02:46"
#>  $ title      : chr "Voyager 1 is about to reach one light-day from Earth"
#>  $ type       : chr "story"
#>  $ url        : chr "https://scienceclock.com/voyager-1-is-about-to-reach-one-light-day-from-earth/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[210]]
#> List of 9
#>  $ by         : chr "n1b0m"
#>  $ descendants: int 62
#>  $ id         : int 46105825
#>  $ kids       : int [1:14] 46106883 46107428 46106728 46108619 46107519 46106879 46108542 46106535 46109402 46106895 ...
#>  $ score      : int 57
#>  $ time       : POSIXct[1:1], format: "2025-12-01 10:41:14"
#>  $ title      : chr "Accenture dubs 800k staff 'reinventors' amid shift to AI"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.theguardian.com/business/2025/dec/01/accenture-rebrands-staff-reinventors-ai-artificial-intelligence"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[211]]
#> List of 8
#>  $ by         : chr "stgl"
#>  $ descendants: int 0
#>  $ id         : int 46107897
#>  $ score      : int 7
#>  $ time       : POSIXct[1:1], format: "2025-12-01 14:34:51"
#>  $ title      : chr "Patching Pulse Oximeter Firmware"
#>  $ type       : chr "story"
#>  $ url        : chr "https://stefan-gloor.ch/pulseoximeter-hack"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[212]]
#> List of 9
#>  $ by         : chr "kamaraju"
#>  $ descendants: int 1
#>  $ id         : int 46115622
#>  $ kids       : int 46117561
#>  $ score      : int 14
#>  $ time       : POSIXct[1:1], format: "2025-12-02 00:26:26"
#>  $ title      : chr "Meta's Instagram orders employees back to the office 5 days a week"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.cnbc.com/2025/12/01/meta-instagram-rto-return-to-office.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[213]]
#> List of 9
#>  $ by         : chr "netfortius"
#>  $ descendants: int 77
#>  $ id         : int 46079073
#>  $ kids       : int [1:17] 46087328 46085477 46087126 46089257 46087204 46085893 46090102 46086529 46084897 46089300 ...
#>  $ score      : int 138
#>  $ time       : POSIXct[1:1], format: "2025-11-28 14:42:19"
#>  $ title      : chr "Language is primarily a tool for communication rather than thought (2024) [pdf]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://gwern.net/doc/psychology/linguistics/2024-fedorenko.pdf"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[214]]
#> List of 9
#>  $ by         : chr "Ivoah"
#>  $ descendants: int 128
#>  $ id         : int 46056954
#>  $ kids       : int [1:22] 46095123 46093236 46093383 46093142 46093492 46093144 46092934 46093417 46093593 46096099 ...
#>  $ score      : int 259
#>  $ time       : POSIXct[1:1], format: "2025-11-26 12:57:35"
#>  $ title      : chr "The HTTP Query Method"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.ietf.org/archive/id/draft-ietf-httpbis-safe-method-w-body-14.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[215]]
#> List of 9
#>  $ by         : chr "saubeidl"
#>  $ descendants: int 167
#>  $ id         : int 46096555
#>  $ kids       : int [1:17] 46097208 46097087 46096770 46100338 46099709 46099955 46097437 46097022 46096801 46096915 ...
#>  $ score      : int 339
#>  $ time       : POSIXct[1:1], format: "2025-11-30 13:40:09"
#>  $ title      : chr "Norway wealth fund to vote for human rights report at Microsoft, against Nadella"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.cnbc.com/2025/11/30/norway-wealth-fund-to-vote-for-human-rights-report-at-microsoft-agm-against-management.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[216]]
#> List of 9
#>  $ by         : chr "jdkee"
#>  $ descendants: int 1
#>  $ id         : int 46115188
#>  $ kids       : int 46116574
#>  $ score      : int 12
#>  $ time       : POSIXct[1:1], format: "2025-12-01 23:42:27"
#>  $ title      : chr "The Devil's Plan to Ruin the Next Generation"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.afterbabel.com/p/the-devils-plan-to-ruin-the-next"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[217]]
#> List of 9
#>  $ by         : chr "Bootvis"
#>  $ descendants: int 9
#>  $ id         : int 46106871
#>  $ kids       : int [1:2] 46107262 46108939
#>  $ score      : int 42
#>  $ time       : POSIXct[1:1], format: "2025-12-01 12:56:41"
#>  $ title      : chr "14yo won $25k for origami, discovered pattern that holds 10k times its weight"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.businessinsider.com/14-year-old-origami-first-place-25000-award-science-project-2025-11"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[218]]
#> List of 10
#>  $ by         : chr "mikeayles"
#>  $ descendants: int 49
#>  $ id         : int 46051449
#>  $ kids       : int [1:22] 46054027 46055649 46056239 46053889 46053275 46053002 46060971 46057687 46056368 46062796 ...
#>  $ score      : int 361
#>  $ text       : chr "I got DOOM running in KiCad by rendering it with PCB traces and footprints instead of pixels.<p>Walls are rende"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-25 22:13:35"
#>  $ title      : chr "Show HN: KiDoom – Running DOOM on PCB Traces"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.mikeayles.com/#kidoom"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[219]]
#> List of 9
#>  $ by         : chr "Petiver"
#>  $ descendants: int 119
#>  $ id         : int 46050861
#>  $ kids       : int [1:11] 46093359 46091719 46091433 46091625 46097012 46094601 46091734 46097986 46094770 46091604 ...
#>  $ score      : int 41
#>  $ time       : POSIXct[1:1], format: "2025-11-25 21:12:55"
#>  $ title      : chr "A new myth appeared during the presidential campaign of Andrew Jackson"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.historynewsnetwork.org/article/self-made"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[220]]
#> List of 8
#>  $ by         : chr "salt-thrower"
#>  $ descendants: int 0
#>  $ id         : int 46117184
#>  $ score      : int 6
#>  $ text       : chr "I&#x27;m wondering if recruiters are more likely to pass on job applicants who are currently in contract roles,"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:32:24"
#>  $ title      : chr "Ask HN: Recruiters, does contractor vs. FTE matter?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[221]]
#> List of 9
#>  $ by         : chr "Zen1th"
#>  $ descendants: int 39
#>  $ id         : int 46090269
#>  $ kids       : int [1:13] 46091941 46091331 46094925 46091735 46091250 46093623 46095572 46095953 46091507 46091020 ...
#>  $ score      : int 266
#>  $ time       : POSIXct[1:1], format: "2025-11-29 19:55:17"
#>  $ title      : chr "Learning Feynman's Trick for Integrals"
#>  $ type       : chr "story"
#>  $ url        : chr "https://zackyzz.github.io/feynman.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[222]]
#> List of 8
#>  $ by         : chr "hilti"
#>  $ descendants: int 0
#>  $ id         : int 46104092
#>  $ score      : int 15
#>  $ text       : chr "It&#x27;s this time of year to discover cool projects bringing back memories of the good old days.<p>I am still"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 06:15:53"
#>  $ title      : chr "Show HN: Furnace – the ultimate chiptune music tracker"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[223]]
#> List of 8
#>  $ by         : chr "todsacerdoti"
#>  $ descendants: int 0
#>  $ id         : int 46107022
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-12-01 13:15:36"
#>  $ title      : chr "Medley Interlisp for the Newcomer"
#>  $ type       : chr "story"
#>  $ url        : chr "https://primer.interlisp.org"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[224]]
#> List of 9
#>  $ by         : chr "tymscar"
#>  $ descendants: int 171
#>  $ id         : int 46081188
#>  $ kids       : int [1:51] 46081758 46081916 46081543 46084613 46083429 46082304 46081658 46084099 46084266 46082059 ...
#>  $ score      : int 492
#>  $ time       : POSIXct[1:1], format: "2025-11-28 18:15:50"
#>  $ title      : chr "Imgur geo-blocked the UK, so I geo-unblocked my network"
#>  $ type       : chr "story"
#>  $ url        : chr "https://blog.tymscar.com/posts/imgurukproxy/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[225]]
#> List of 9
#>  $ by         : chr "todsacerdoti"
#>  $ descendants: int 71
#>  $ id         : int 46079785
#>  $ kids       : int [1:14] 46081042 46084741 46080879 46080820 46081535 46080437 46082335 46085531 46080240 46081925 ...
#>  $ score      : int 143
#>  $ time       : POSIXct[1:1], format: "2025-11-28 16:01:01"
#>  $ title      : chr "Don't tug on that, you never know what it might be attached to (2016)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://blog.plover.com/2016/07/01/#tmpdir"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[226]]
#> List of 9
#>  $ by         : chr "fkozlowski"
#>  $ descendants: int 48
#>  $ id         : int 46056715
#>  $ kids       : int [1:18] 46088748 46087915 46087780 46089214 46087861 46095362 46087661 46087550 46089146 46087952 ...
#>  $ score      : int 118
#>  $ time       : POSIXct[1:1], format: "2025-11-26 12:20:04"
#>  $ title      : chr "Running a business means contact with reality"
#>  $ type       : chr "story"
#>  $ url        : chr "https://fredkozlowski.com/2025/11/02/running-a-business-means-contact-with-reality/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[227]]
#> List of 9
#>  $ by         : chr "zerosizedweasle"
#>  $ descendants: int 8
#>  $ id         : int 46117478
#>  $ kids       : int [1:6] 46118072 46117623 46119311 46117553 46119922 46117520
#>  $ score      : int 24
#>  $ time       : POSIXct[1:1], format: "2025-12-02 04:17:01"
#>  $ title      : chr "Nvidia: Too Many Red Flags – Ratings Downgrade"
#>  $ type       : chr "story"
#>  $ url        : chr "https://seekingalpha.com/article/4848532-nvidia-too-many-red-flags-rating-downgrade"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[228]]
#> List of 9
#>  $ by         : chr "jrhizor"
#>  $ descendants: int 4
#>  $ id         : int 46101522
#>  $ kids       : int [1:2] 46104824 46103967
#>  $ score      : int 20
#>  $ time       : POSIXct[1:1], format: "2025-11-30 23:25:46"
#>  $ title      : chr "Timeline for Selling a Micro-SaaS"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.jrhizor.dev/posts/timeline-for-selling-a-microsaas"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[229]]
#> List of 10
#>  $ by         : chr "nullpxl"
#>  $ descendants: int 193
#>  $ id         : int 46075882
#>  $ kids       : int [1:43] 46076398 46077632 46076613 46076725 46078016 46080774 46076523 46077324 46077886 46076716 ...
#>  $ score      : int 503
#>  $ text       : chr "Hi! Recently smart-glasses with cameras like the Meta Ray-bans seem to be getting more popular. As does some pe"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-28 05:52:38"
#>  $ title      : chr "Show HN: Glasses to detect smart-glasses that have cameras"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/NullPxl/banrays"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[230]]
#> List of 9
#>  $ by         : chr "gjvc"
#>  $ descendants: int 99
#>  $ id         : int 46076642
#>  $ kids       : int [1:20] 46080301 46080273 46079143 46079671 46077993 46079869 46086461 46080036 46079351 46080236 ...
#>  $ score      : int 176
#>  $ time       : POSIXct[1:1], format: "2025-11-28 08:15:50"
#>  $ title      : chr "SQLite as an Application File Format"
#>  $ type       : chr "story"
#>  $ url        : chr "https://sqlite.org/appfileformat.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[231]]
#> List of 9
#>  $ by         : chr "ibobev"
#>  $ descendants: int 109
#>  $ id         : int 46084956
#>  $ kids       : int [1:14] 46088949 46085404 46085786 46085187 46085210 46085467 46085443 46085090 46090903 46085060 ...
#>  $ score      : int 331
#>  $ time       : POSIXct[1:1], format: "2025-11-29 03:26:01"
#>  $ title      : chr "System 7 natively boots on the Mac mini G4"
#>  $ type       : chr "story"
#>  $ url        : chr "https://macos9lives.com/smforum/index.php?topic=7711.0"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[232]]
#> List of 9
#>  $ by         : chr "nnx"
#>  $ descendants: int 1
#>  $ id         : int 46101277
#>  $ kids       : int 46121220
#>  $ score      : int 12
#>  $ time       : POSIXct[1:1], format: "2025-11-30 22:54:13"
#>  $ title      : chr "Radicle is a sovereign code forge built on Git"
#>  $ type       : chr "story"
#>  $ url        : chr "https://radicle.xyz"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[233]]
#> List of 9
#>  $ by         : chr "todsacerdoti"
#>  $ descendants: int 93
#>  $ id         : int 46090294
#>  $ kids       : int [1:15] 46120621 46090779 46091368 46093455 46093403 46093868 46091124 46092146 46093580 46091154 ...
#>  $ score      : int 77
#>  $ time       : POSIXct[1:1], format: "2025-11-29 19:59:12"
#>  $ title      : chr "The Origins of Scala (2009)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.artima.com/articles/the-origins-of-scala"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[234]]
#> List of 9
#>  $ by         : chr "thm"
#>  $ descendants: int 1
#>  $ id         : int 46094606
#>  $ kids       : int 46095133
#>  $ score      : int 29
#>  $ time       : POSIXct[1:1], format: "2025-11-30 07:27:25"
#>  $ title      : chr "Qwen3-VL can scan two-hour videos and pinpoint nearly every detail"
#>  $ type       : chr "story"
#>  $ url        : chr "https://the-decoder.com/qwen3-vl-can-scan-two-hour-videos-and-pinpoint-nearly-every-detail/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[235]]
#> List of 9
#>  $ by         : chr "unix-junkie"
#>  $ descendants: int 4
#>  $ id         : int 46099838
#>  $ kids       : int [1:3] 46106720 46106580 46106341
#>  $ score      : int 27
#>  $ time       : POSIXct[1:1], format: "2025-11-30 19:58:48"
#>  $ title      : chr "AI rendering of Roman war scenes from Trajan's Column"
#>  $ type       : chr "story"
#>  $ url        : chr "https://trajancolumn.com"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[236]]
#> List of 9
#>  $ by         : chr "klaussilveira"
#>  $ descendants: int 183
#>  $ id         : int 46045207
#>  $ kids       : int [1:26] 46085582 46085990 46086825 46085444 46085910 46085915 46086429 46085734 46085632 46085840 ...
#>  $ score      : int 341
#>  $ time       : POSIXct[1:1], format: "2025-11-25 12:34:25"
#>  $ title      : chr "WinApps: Run Windows apps as if they were a part of the native Linux OS"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/winapps-org/winapps"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[237]]
#> List of 8
#>  $ by         : chr "defrost"
#>  $ descendants: int 0
#>  $ id         : int 46118139
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:07:48"
#>  $ title      : chr "Giving men a common antidepressant could help tackle domestic violence"
#>  $ type       : chr "story"
#>  $ url        : chr "https://theconversation.com/giving-men-a-common-antidepressant-could-help-tackle-domestic-violence-world-first-study-270968"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[238]]
#> List of 9
#>  $ by         : chr "makepanic"
#>  $ descendants: int 70
#>  $ id         : int 46057141
#>  $ kids       : int [1:16] 46091824 46092267 46091622 46091067 46090942 46097226 46091344 46091150 46090765 46091855 ...
#>  $ score      : int 99
#>  $ time       : POSIXct[1:1], format: "2025-11-26 13:22:46"
#>  $ title      : chr "Post-mortem of Shai-Hulud attack on November 24th, 2025"
#>  $ type       : chr "story"
#>  $ url        : chr "https://posthog.com/blog/nov-24-shai-hulud-attack-post-mortem"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[239]]
#> List of 9
#>  $ by         : chr "speckx"
#>  $ descendants: int 11
#>  $ id         : int 46047562
#>  $ kids       : int [1:2] 46099977 46100246
#>  $ score      : int 39
#>  $ time       : POSIXct[1:1], format: "2025-11-25 16:37:31"
#>  $ title      : chr "A Second Look at Geolocation and Starlink"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.potaroo.net/ispcol/2025-11/starlinkgeo2.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[240]]
#> List of 8
#>  $ by         : chr "punkpeye"
#>  $ descendants: int 0
#>  $ id         : int 46103220
#>  $ score      : int 14
#>  $ time       : POSIXct[1:1], format: "2025-12-01 03:34:01"
#>  $ title      : chr "OpenTelemetry for MCP"
#>  $ type       : chr "story"
#>  $ url        : chr "https://glama.ai/blog/2025-11-29-open-telemetry-for-model-context-protocol-mcp-analytics-and-agent-observability"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[241]]
#> List of 9
#>  $ by         : chr "pedriquepacheco"
#>  $ descendants: int 104
#>  $ id         : int 46080364
#>  $ kids       : int [1:26] 46080933 46080844 46089106 46080936 46084754 46090034 46085885 46085685 46088948 46085496 ...
#>  $ score      : int 387
#>  $ time       : POSIXct[1:1], format: "2025-11-28 16:54:56"
#>  $ title      : chr "So you wanna build a local RAG?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://blog.yakkomajuri.com/blog/local-rag"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[242]]
#> List of 9
#>  $ by         : chr "surprisetalk"
#>  $ descendants: int 221
#>  $ id         : int 46088379
#>  $ kids       : int [1:27] 46094293 46089267 46092397 46089497 46093112 46089687 46089343 46089713 46089206 46096422 ...
#>  $ score      : int 172
#>  $ time       : POSIXct[1:1], format: "2025-11-29 15:43:58"
#>  $ title      : chr "Testing shows automotive glassbreakers can't break modern automotive glass"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.core77.com/posts/138925/Testing-Shows-Automotive-Glassbreakers-Cant-Break-Modern-Automotive-Glass"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[243]]
#> List of 9
#>  $ by         : chr "frereubu"
#>  $ descendants: int 5
#>  $ id         : int 46111973
#>  $ kids       : int [1:3] 46112305 46112630 46113793
#>  $ score      : int 13
#>  $ time       : POSIXct[1:1], format: "2025-12-01 19:32:32"
#>  $ title      : chr "Cara Hunter on the deepfake video that nearly ended her political career"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.theguardian.com/society/ng-interactive/2025/dec/01/it-was-extremely-pornographic-cara-hunter-on-the"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[244]]
#> List of 9
#>  $ by         : chr "roam"
#>  $ descendants: int 41
#>  $ id         : int 46083051
#>  $ kids       : int [1:14] 46084615 46085536 46085616 46084849 46083989 46083448 46086033 46087641 46083816 46084562 ...
#>  $ score      : int 155
#>  $ time       : POSIXct[1:1], format: "2025-11-28 21:46:07"
#>  $ title      : chr "A first look at Django's new background tasks"
#>  $ type       : chr "story"
#>  $ url        : chr "https://roam.be/notes/2025/a-first-look-at-djangos-new-background-tasks/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[245]]
#> List of 9
#>  $ by         : chr "modinfo"
#>  $ descendants: int 203
#>  $ id         : int 46075320
#>  $ kids       : int [1:47] 46076856 46080221 46076714 46076240 46076199 46076390 46076442 46075891 46077337 46077474 ...
#>  $ score      : int 658
#>  $ time       : POSIXct[1:1], format: "2025-11-28 03:45:04"
#>  $ title      : chr "Pocketbase – open-source realtime back end in 1 file"
#>  $ type       : chr "story"
#>  $ url        : chr "https://pocketbase.io/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[246]]
#> List of 9
#>  $ by         : chr "selvan"
#>  $ descendants: int 203
#>  $ id         : int 46064757
#>  $ kids       : int [1:32] 46068577 46066155 46067169 46065853 46065577 46069831 46066284 46066846 46067625 46065388 ...
#>  $ score      : int 769
#>  $ time       : POSIXct[1:1], format: "2025-11-27 02:14:36"
#>  $ title      : chr "Penpot: The Open-Source Figma"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/penpot/penpot"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[247]]
#> List of 9
#>  $ by         : chr "monero-xmr"
#>  $ descendants: int 5
#>  $ id         : int 46117008
#>  $ kids       : int 46117229
#>  $ score      : int 8
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:12:33"
#>  $ title      : chr "Europe's Green Energy Rush Slashed Emissions – and Crippled the Economy"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.wsj.com/business/energy-oil/europes-green-energy-rush-slashed-emissionsand-crippled-the-economy-e65a1a07"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[248]]
#> List of 9
#>  $ by         : chr "Weves"
#>  $ descendants: int 160
#>  $ id         : int 46045987
#>  $ kids       : int [1:54] 46046553 46046530 46048668 46062910 46048123 46061256 46050934 46056235 46047975 46055897 ...
#>  $ score      : int 252
#>  $ text       : chr "Hey HN, Chris and Yuhong here from Onyx (<a href=\"https:&#x2F;&#x2F;github.com&#x2F;onyx-dot-app&#x2F;onyx\" r"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-25 14:20:30"
#>  $ title      : chr "Launch HN: Onyx (YC W24) – Open-source chat UI"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[249]]
#> List of 9
#>  $ by         : chr "donohoe"
#>  $ descendants: int 160
#>  $ id         : int 46088192
#>  $ kids       : int [1:26] 46089376 46089117 46088426 46088254 46089931 46088912 46088824 46091051 46089590 46089461 ...
#>  $ score      : int 374
#>  $ time       : POSIXct[1:1], format: "2025-11-29 15:21:29"
#>  $ title      : chr "Iceland declares ocean-current instability a national security risk"
#>  $ type       : chr "story"
#>  $ url        : chr "https://edition.cnn.com/2025/11/15/climate/iceland-warming-current-amoc-collapse-threat"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[250]]
#> List of 9
#>  $ by         : chr "kiney"
#>  $ descendants: int 2
#>  $ id         : int 46117567
#>  $ kids       : int 46118954
#>  $ score      : int 8
#>  $ time       : POSIXct[1:1], format: "2025-12-02 04:33:29"
#>  $ title      : chr "Linus Torvalds' Backup Philosophy: 30 Years Proven"
#>  $ type       : chr "story"
#>  $ url        : chr "https://blog.kiney.de/en/blog/linus-backup-philosophie/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[251]]
#> List of 9
#>  $ by         : chr "edwinjm"
#>  $ descendants: int 1
#>  $ id         : int 46113453
#>  $ kids       : int 46117629
#>  $ score      : int 12
#>  $ time       : POSIXct[1:1], format: "2025-12-01 21:25:57"
#>  $ title      : chr "Canadian Court: OVHcloud from France must hand over user data"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.heise.de/en/news/Canadian-Court-OVHcloud-from-France-must-hand-over-user-data-11092029.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[252]]
#> List of 9
#>  $ by         : chr "jaredwiener"
#>  $ descendants: int 113
#>  $ id         : int 46066522
#>  $ kids       : int [1:29] 46067189 46071296 46067021 46067040 46066889 46067437 46066981 46069127 46066635 46070764 ...
#>  $ score      : int 245
#>  $ time       : POSIXct[1:1], format: "2025-11-27 07:02:40"
#>  $ title      : chr "Mixpanel Security Breach"
#>  $ type       : chr "story"
#>  $ url        : chr "https://mixpanel.com/blog/sms-security-incident/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[253]]
#> List of 9
#>  $ by         : chr "pseudolus"
#>  $ descendants: int 3
#>  $ id         : int 46097563
#>  $ kids       : int 46103315
#>  $ score      : int 14
#>  $ time       : POSIXct[1:1], format: "2025-11-30 15:46:36"
#>  $ title      : chr "Ethiopian Volcano Erupts for First Time in Nearly 12K Years of Records"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.smithsonianmag.com/smart-news/ethiopian-volcano-erupts-for-the-first-time-in-nearly-12000-years-of-"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[254]]
#> List of 9
#>  $ by         : chr "01-_-"
#>  $ descendants: int 162
#>  $ id         : int 46057000
#>  $ kids       : int [1:34] 46059172 46057849 46068212 46058402 46067641 46058230 46057979 46058303 46057678 46057620 ...
#>  $ score      : int 197
#>  $ time       : POSIXct[1:1], format: "2025-11-26 13:05:33"
#>  $ title      : chr "Indie game developers have a new sales pitch: being 'AI free'"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.theverge.com/entertainment/827650/indie-developers-gen-ai-nexon-arc-raiders"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[255]]
#> List of 9
#>  $ by         : chr "nateb2022"
#>  $ descendants: int 140
#>  $ id         : int 46075628
#>  $ kids       : int [1:33] 46076080 46076149 46076589 46079370 46079890 46076109 46076130 46076147 46077170 46075957 ...
#>  $ score      : int 127
#>  $ time       : POSIXct[1:1], format: "2025-11-28 04:53:07"
#>  $ title      : chr "Tiger Style: Coding philosophy (2024)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://tigerstyle.dev/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[256]]
#> List of 9
#>  $ by         : chr "sien"
#>  $ descendants: int 2
#>  $ id         : int 46119970
#>  $ kids       : int 46119992
#>  $ score      : int 7
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:02:05"
#>  $ title      : chr "Young Adults in China pay pretend to work companies"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bbc.com/news/articles/cdd3ep76g3go"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[257]]
#> List of 8
#>  $ by         : chr "zerosizedweasle"
#>  $ descendants: int 0
#>  $ id         : int 46114072
#>  $ score      : int 12
#>  $ time       : POSIXct[1:1], format: "2025-12-01 22:16:03"
#>  $ title      : chr "U.S. Investors Rattled over Prospect of Rate Rise in Japan"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.wsj.com/finance/stocks/global-stocks-markets-dow-news-12-01-2025-95d2c05c"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[258]]
#> List of 9
#>  $ by         : chr "cperciva"
#>  $ descendants: int 1
#>  $ id         : int 46115663
#>  $ kids       : int 46118752
#>  $ score      : int 23
#>  $ time       : POSIXct[1:1], format: "2025-12-02 00:29:26"
#>  $ title      : chr "FreeBSD 15.0 is now available"
#>  $ type       : chr "story"
#>  $ url        : chr "https://lists.freebsd.org/archives/freebsd-announce/2025-December/000213.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[259]]
#> List of 9
#>  $ by         : chr "Kerrick"
#>  $ descendants: int 345
#>  $ id         : int 46083303
#>  $ kids       : int [1:57] 46083904 46085336 46084829 46086538 46084334 46085408 46084629 46087191 46084036 46083642 ...
#>  $ score      : int 376
#>  $ time       : POSIXct[1:1], format: "2025-11-28 22:21:25"
#>  $ title      : chr "Confessions of a Software Developer: No More Self-Censorship"
#>  $ type       : chr "story"
#>  $ url        : chr "https://kerrick.blog/articles/2025/confessions-of-a-software-developer-no-more-self-censorship/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[260]]
#> List of 9
#>  $ by         : chr "ubavic"
#>  $ descendants: int 5
#>  $ id         : int 46091708
#>  $ kids       : int [1:3] 46091821 46107080 46091807
#>  $ score      : int 28
#>  $ time       : POSIXct[1:1], format: "2025-11-29 23:11:33"
#>  $ title      : chr "Mint Is Not TeX"
#>  $ type       : chr "story"
#>  $ url        : chr "https://mint.ubavic.rs/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[261]]
#> List of 9
#>  $ by         : chr "navigate8310"
#>  $ descendants: int 36
#>  $ id         : int 46080769
#>  $ kids       : int [1:11] 46082844 46081611 46081552 46082353 46085556 46082796 46083352 46081504 46086573 46081175 ...
#>  $ score      : int 89
#>  $ time       : POSIXct[1:1], format: "2025-11-28 17:34:26"
#>  $ title      : chr "JSON Schema Demystified: Dialects, Vocabularies and Metaschemas"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.iankduncan.com/engineering/2025-11-24-json-schema-demystified/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[262]]
#> List of 9
#>  $ by         : chr "memalign"
#>  $ descendants: int 31
#>  $ id         : int 46066695
#>  $ kids       : int [1:17] 46067635 46068410 46067512 46106185 46067473 46069146 46072540 46067485 46071017 46075844 ...
#>  $ score      : int 198
#>  $ time       : POSIXct[1:1], format: "2025-11-27 07:31:24"
#>  $ title      : chr "Ray Marching Soft Shadows in 2D (2020)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.rykap.com/2020/09/23/distance-fields/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[263]]
#> List of 9
#>  $ by         : chr "joexbayer"
#>  $ descendants: int 14
#>  $ id         : int 46080579
#>  $ kids       : int [1:5] 46082956 46082861 46080628 46080753 46082467
#>  $ score      : int 101
#>  $ time       : POSIXct[1:1], format: "2025-11-28 17:15:20"
#>  $ title      : chr "C++ Web Server on my custom hobby OS"
#>  $ type       : chr "story"
#>  $ url        : chr "https://oshub.org/projects/retros-32/posts/getting-a-webserver-running"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[264]]
#> List of 9
#>  $ by         : chr "pera"
#>  $ descendants: int 24
#>  $ id         : int 46095873
#>  $ kids       : int [1:15] 46100172 46096172 46096085 46098875 46100276 46100837 46106935 46102770 46104033 46096158 ...
#>  $ score      : int 71
#>  $ text       : chr "There is a long list of about:config settings that allow users disable most of the recently introduced AI chatb"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-30 11:48:42"
#>  $ title      : chr "Tell HN: It's now impossible to disable all AI features in Firefox 145 (latest)"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[265]]
#> List of 9
#>  $ by         : chr "eustoria"
#>  $ descendants: int 309
#>  $ id         : int 46080473
#>  $ kids       : int [1:49] 46081037 46080964 46081470 46081476 46081615 46081001 46081246 46080863 46082125 46083623 ...
#>  $ score      : int 419
#>  $ time       : POSIXct[1:1], format: "2025-11-28 17:05:31"
#>  $ title      : chr "Bringing Sexy Back. Internet surveillance has killed eroticism"
#>  $ type       : chr "story"
#>  $ url        : chr "https://lux-magazine.com/article/privacy-eroticism/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[266]]
#> List of 9
#>  $ by         : chr "nill0"
#>  $ descendants: int 81
#>  $ id         : int 46084535
#>  $ kids       : int [1:20] 46086230 46085183 46087156 46086087 46085579 46086766 46085254 46085500 46086844 46088425 ...
#>  $ score      : int 250
#>  $ time       : POSIXct[1:1], format: "2025-11-29 01:37:42"
#>  $ title      : chr "Every mathematician has only a few tricks (2020)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://mathoverflow.net/questions/363119/every-mathematician-has-only-a-few-tricks"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[267]]
#> List of 9
#>  $ by         : chr "Antitoxic6185"
#>  $ descendants: int 15
#>  $ id         : int 46093766
#>  $ kids       : int [1:3] 46095552 46099038 46095637
#>  $ score      : int 28
#>  $ time       : POSIXct[1:1], format: "2025-11-30 04:35:33"
#>  $ title      : chr "NFCGate flagged as malware even after multiple followups saying it isn't"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/nfcgate/nfcgate/issues/164"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[268]]
#> List of 9
#>  $ by         : chr "annanay"
#>  $ descendants: int 31
#>  $ id         : int 46051332
#>  $ kids       : int [1:8] 46089409 46089199 46090365 46089063 46090669 46089975 46089019 46090340
#>  $ score      : int 47
#>  $ time       : POSIXct[1:1], format: "2025-11-25 22:03:00"
#>  $ title      : chr "Building road signs at home using a Cricut Machine"
#>  $ type       : chr "story"
#>  $ url        : chr "https://annanay.dev/build-a-signboard/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[269]]
#> List of 9
#>  $ by         : chr "alien_"
#>  $ descendants: int 1
#>  $ id         : int 46100913
#>  $ kids       : int 46103797
#>  $ score      : int 8
#>  $ time       : POSIXct[1:1], format: "2025-11-30 22:07:08"
#>  $ title      : chr "Show HN: Identifiy test coverage gaps in your Go projects"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/LeanerCloud/testvet"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[270]]
#> List of 8
#>  $ by         : chr "fleahunter"
#>  $ descendants: int 0
#>  $ id         : int 46107541
#>  $ score      : int 24
#>  $ time       : POSIXct[1:1], format: "2025-12-01 14:03:42"
#>  $ title      : chr "Flock Uses Overseas Gig Workers to Build Its Surveillance AI"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.wired.com/story/flock-uses-overseas-gig-workers-to-build-its-surveillance-ai/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[271]]
#> List of 9
#>  $ by         : chr "etiam"
#>  $ descendants: int 6
#>  $ id         : int 46106629
#>  $ kids       : int [1:4] 46108083 46111066 46108018 46109594
#>  $ score      : int 36
#>  $ time       : POSIXct[1:1], format: "2025-12-01 12:30:24"
#>  $ title      : chr "WW1 toxic compound sprayed on Georgian protesters, BBC evidence suggests"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bbc.com/news/articles/czrk7g50e1po"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[272]]
#> List of 9
#>  $ by         : chr "lioeters"
#>  $ descendants: int 20
#>  $ id         : int 46077106
#>  $ kids       : int [1:6] 46077676 46077848 46079628 46077449 46078264 46079116
#>  $ score      : int 96
#>  $ time       : POSIXct[1:1], format: "2025-11-28 09:32:38"
#>  $ title      : chr "A Repository with 44 Years of Unix Evolution"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.spinellis.gr/pubs/conf/2015-MSR-Unix-History/html/Spi15c.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[273]]
#> List of 9
#>  $ by         : chr "emschwartz"
#>  $ descendants: int 214
#>  $ id         : int 46092630
#>  $ kids       : int [1:90] 46095078 46093430 46095020 46092980 46093035 46092954 46095810 46093407 46093062 46092661 ...
#>  $ score      : int 119
#>  $ time       : POSIXct[1:1], format: "2025-11-30 01:25:43"
#>  $ title      : chr "Stopping bad guys from using my open source project (feedback wanted)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://evanhahn.com/stopping-bad-guys-from-using-my-open-source-project/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[274]]
#> List of 9
#>  $ by         : chr "vegasbrianc"
#>  $ descendants: int 317
#>  $ id         : int 46069048
#>  $ kids       : int [1:42] 46070265 46074962 46070381 46072356 46070555 46074167 46069977 46075182 46070246 46075032 ...
#>  $ score      : int 427
#>  $ time       : POSIXct[1:1], format: "2025-11-27 13:28:34"
#>  $ title      : chr "TPUs vs. GPUs and why Google is positioned to win AI race in the long term"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.uncoveralpha.com/p/the-chip-made-for-the-ai-inference"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[275]]
#> List of 9
#>  $ by         : chr "tensegrist"
#>  $ descendants: int 84
#>  $ id         : int 46051182
#>  $ kids       : int [1:22] 46092530 46092638 46092956 46092948 46092125 46092668 46092693 46092386 46094363 46091968 ...
#>  $ score      : int 69
#>  $ time       : POSIXct[1:1], format: "2025-11-25 21:46:21"
#>  $ title      : chr "Let go of StackOverflow; communities must take ownership"
#>  $ type       : chr "story"
#>  $ url        : chr "https://ahelwer.ca/post/2025-11-25-stackoverflow/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[276]]
#> List of 9
#>  $ by         : chr "mfrw"
#>  $ descendants: int 21
#>  $ id         : int 46075746
#>  $ kids       : int [1:6] 46080058 46076960 46077430 46080115 46077288 46079742
#>  $ score      : int 88
#>  $ time       : POSIXct[1:1], format: "2025-11-28 05:19:45"
#>  $ title      : chr "How to use Linux vsock for fast VM communication"
#>  $ type       : chr "story"
#>  $ url        : chr "https://popovicu.com/posts/how-to-use-linux-vsock-for-fast-vm-communication/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[277]]
#> List of 9
#>  $ by         : chr "murphyslab"
#>  $ descendants: int 1
#>  $ id         : int 46117343
#>  $ kids       : int 46117344
#>  $ score      : int 7
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:54:54"
#>  $ title      : chr "All life copies DNA unambiguously into proteins. Archaea may be the exception"
#>  $ type       : chr "story"
#>  $ url        : chr "https://news.berkeley.edu/2025/12/01/all-life-copies-dna-unambiguously-into-proteins-archaea-may-be-the-exception/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[278]]
#> List of 9
#>  $ by         : chr "mfilion"
#>  $ descendants: int 230
#>  $ id         : int 46070668
#>  $ kids       : int [1:32] 46073287 46074288 46071187 46072488 46071369 46071040 46071080 46071154 46073480 46071073 ...
#>  $ score      : int 451
#>  $ time       : POSIXct[1:1], format: "2025-11-27 16:19:03"
#>  $ title      : chr "Same-day upstream Linux support for Snapdragon 8 Elite Gen 5"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.qualcomm.com/developer/blog/2025/10/same-day-snapdragon-8-elite-gen-5-upstream-linux-support"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[279]]
#> List of 9
#>  $ by         : chr "mgh2"
#>  $ descendants: int 4
#>  $ id         : int 46108885
#>  $ kids       : int [1:3] 46111762 46110808 46109282
#>  $ score      : int 26
#>  $ time       : POSIXct[1:1], format: "2025-12-01 15:56:43"
#>  $ title      : chr "Nvidia Invests $2B in Synopsys"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.morningstar.com/news/dow-jones/202512013548/nvidia-invests-2-billion-in-synopsys"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[280]]
#> List of 9
#>  $ by         : chr "gslin"
#>  $ descendants: int 1
#>  $ id         : int 46114374
#>  $ kids       : int 46114671
#>  $ score      : int 12
#>  $ time       : POSIXct[1:1], format: "2025-12-01 22:39:26"
#>  $ title      : chr "Apple's artificial intelligence chief is stepping down, company says"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.cnbc.com/2025/12/01/apple-ai.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[281]]
#> List of 9
#>  $ by         : chr "PhilippGille"
#>  $ descendants: int 138
#>  $ id         : int 46078770
#>  $ kids       : int [1:24] 46079468 46083135 46079229 46081489 46079043 46079056 46079016 46079276 46079982 46086757 ...
#>  $ score      : int 608
#>  $ time       : POSIXct[1:1], format: "2025-11-28 14:08:14"
#>  $ title      : chr "Petition to formally recognize open source work as civic service in Germany"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.openpetition.de/petition/online/anerkennung-von-open-source-arbeit-als-ehrenamt-in-deutschland#petition-main"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[282]]
#> List of 9
#>  $ by         : chr "_pdp_"
#>  $ descendants: int 4
#>  $ id         : int 46055942
#>  $ kids       : int [1:2] 46055943 46095871
#>  $ score      : int 21
#>  $ time       : POSIXct[1:1], format: "2025-11-26 10:08:19"
#>  $ title      : chr "Dynamic Skillset Reference Architecture"
#>  $ type       : chr "story"
#>  $ url        : chr "https://chatbotkit.com/examples/dynamic-skillset-reference-architecture"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[283]]
#> List of 8
#>  $ by         : chr "billybuckwheat"
#>  $ descendants: int 0
#>  $ id         : int 46117196
#>  $ score      : int 8
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:33:53"
#>  $ title      : chr "What are small language models and how do they differ from large ones?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://theconversation.com/what-are-small-language-models-and-how-do-they-differ-from-large-ones-269103"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[284]]
#> List of 9
#>  $ by         : chr "CGMthrowaway"
#>  $ descendants: int 17
#>  $ id         : int 46102167
#>  $ kids       : int [1:7] 46102938 46102774 46102441 46102765 46102954 46102875 46103579
#>  $ score      : int 63
#>  $ time       : POSIXct[1:1], format: "2025-12-01 00:53:12"
#>  $ title      : chr "Malware embedded into audio driver is silently recording from system mic"
#>  $ type       : chr "story"
#>  $ url        : chr "https://twitter.com/Officialwhyte22/status/1995024999934001602"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[285]]
#> List of 9
#>  $ by         : chr "birdculture"
#>  $ descendants: int 76
#>  $ id         : int 46082291
#>  $ kids       : int [1:25] 46084856 46083614 46083438 46085980 46085245 46085056 46085794 46085449 46087042 46084442 ...
#>  $ score      : int 132
#>  $ time       : POSIXct[1:1], format: "2025-11-28 20:06:30"
#>  $ title      : chr "Electron vs. Tauri"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.dolthub.com/blog/2025-11-13-electron-vs-tauri/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[286]]
#> List of 9
#>  $ by         : chr "wafflesfreak"
#>  $ descendants: int 29
#>  $ id         : int 46080737
#>  $ kids       : int [1:10] 46081759 46080738 46081547 46080908 46086395 46081382 46081566 46081155 46085525 46085355
#>  $ score      : int 54
#>  $ time       : POSIXct[1:1], format: "2025-11-28 17:30:41"
#>  $ title      : chr "Show HN: An LLM-Powered Tool to Catch PCB Schematic Mistakes"
#>  $ type       : chr "story"
#>  $ url        : chr "https://netlist.io/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[287]]
#> List of 9
#>  $ by         : chr "tanelpoder"
#>  $ descendants: int 94
#>  $ id         : int 46066280
#>  $ kids       : int [1:32] 46067422 46071845 46066961 46067938 46067296 46067487 46106226 46068521 46067504 46069143 ...
#>  $ score      : int 603
#>  $ time       : POSIXct[1:1], format: "2025-11-27 06:17:37"
#>  $ title      : chr "Linux Kernel Explorer"
#>  $ type       : chr "story"
#>  $ url        : chr "https://reverser.dev/linux-kernel-explorer"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[288]]
#> List of 9
#>  $ by         : chr "Paradigm2020"
#>  $ descendants: int 1
#>  $ id         : int 46111654
#>  $ kids       : int 46116592
#>  $ score      : int 7
#>  $ text       : chr "I was looking for some good discounts on software for BF and realized that I really should do the effort of sen"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 19:11:25"
#>  $ title      : chr "Ask HN: Looking for \"invisible\" OSS projects to donate to for Cybermonday"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[289]]
#> List of 8
#>  $ by         : chr "sundarurfriend"
#>  $ descendants: int 0
#>  $ id         : int 46112243
#>  $ score      : int 14
#>  $ time       : POSIXct[1:1], format: "2025-12-01 19:52:37"
#>  $ title      : chr "The Coming War on General Computation [Cory Doctorow, 2011]"
#>  $ type       : chr "story"
#>  $ url        : chr "http://opentranscripts.org/transcript/coming-war-general-computation/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[290]]
#> List of 9
#>  $ by         : chr "SmolCloud"
#>  $ descendants: int 8
#>  $ id         : int 46102451
#>  $ kids       : int [1:8] 46114592 46105832 46118778 46104560 46105689 46109992 46112287 46107032
#>  $ score      : int 361
#>  $ text       : chr "Hello,\nplease forgive any grammatical errors on my part for I am not an English native speaker.\nI found this "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 01:33:46"
#>  $ title      : chr "Regarding Thien-Thi Nguyen"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[291]]
#> List of 8
#>  $ by         : chr "howdyhowdy123"
#>  $ descendants: int 0
#>  $ id         : int 46115542
#>  $ score      : int 10
#>  $ time       : POSIXct[1:1], format: "2025-12-02 00:19:10"
#>  $ title      : chr "Anduril Fails a Lot"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.wsj.com/politics/national-security/anduril-industries-defense-tech-problems-52b90cae"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[292]]
#> List of 9
#>  $ by         : chr "jeudesprits"
#>  $ descendants: int 1
#>  $ id         : int 46099059
#>  $ kids       : int 46100767
#>  $ score      : int 12
#>  $ time       : POSIXct[1:1], format: "2025-11-30 18:27:31"
#>  $ title      : chr "Confidential Compute Open Network"
#>  $ type       : chr "story"
#>  $ url        : chr "https://cocoon.org"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[293]]
#> List of 9
#>  $ by         : chr "jorangreef"
#>  $ descendants: int 16
#>  $ id         : int 46077964
#>  $ kids       : int [1:4] 46081341 46079958 46078286 46079245
#>  $ score      : int 76
#>  $ time       : POSIXct[1:1], format: "2025-11-28 12:11:39"
#>  $ title      : chr "A Tale of Four Fuzzers"
#>  $ type       : chr "story"
#>  $ url        : chr "https://tigerbeetle.com/blog/2025-11-28-tale-of-four-fuzzers/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[294]]
#> List of 9
#>  $ by         : chr "FreeQueso"
#>  $ descendants: int 219
#>  $ id         : int 46079868
#>  $ kids       : int [1:30] 46083788 46082886 46082371 46080429 46080228 46080544 46080042 46080256 46080093 46080761 ...
#>  $ score      : int 419
#>  $ time       : POSIXct[1:1], format: "2025-11-28 16:09:50"
#>  $ title      : chr "Credit report shows Meta keeping $27B off its books through advanced geometry"
#>  $ type       : chr "story"
#>  $ url        : chr "https://stohl.substack.com/p/exclusive-credit-report-shows-meta"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[295]]
#> List of 9
#>  $ by         : chr "azinman2"
#>  $ descendants: int 105
#>  $ id         : int 46080289
#>  $ kids       : int [1:29] 46082774 46082995 46085478 46080471 46082005 46085440 46086630 46089069 46086052 46082900 ...
#>  $ score      : int 269
#>  $ time       : POSIXct[1:1], format: "2025-11-28 16:49:12"
#>  $ title      : chr "Airloom – 3D Flight Tracker"
#>  $ type       : chr "story"
#>  $ url        : chr "https://objectiveunclear.com/airloom.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[296]]
#> List of 10
#>  $ by         : chr "arlindb"
#>  $ descendants: int 4
#>  $ id         : int 46098912
#>  $ kids       : int [1:4] 46117883 46110363 46103162 46104458
#>  $ score      : int 20
#>  $ text       : chr "Hi HN,<p>I just launched Tinyfocus, a small productivity tool designed specifically for solo founders and build"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-30 18:05:58"
#>  $ title      : chr "Show HN: I Built Tinyfocus – A Minimal Tool to Help Solo Founders Focus"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.tinyfoc.us/landing"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[297]]
#> List of 9
#>  $ by         : chr "NyuB"
#>  $ descendants: int 0
#>  $ id         : int 46062284
#>  $ score      : int 6
#>  $ text       : chr "It&#x27;s quite limited but does the job, I invite anybody not aware of what cram tests are to give them a try,"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-26 21:04:18"
#>  $ title      : chr "Show HN: A \"Cram tests\" script for windows shells"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/NyuB/craw"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[298]]
#> List of 9
#>  $ by         : chr "diwank"
#>  $ descendants: int 37
#>  $ id         : int 46081704
#>  $ kids       : int [1:12] 46082386 46082751 46084441 46083391 46084818 46092675 46082976 46083276 46082692 46082292 ...
#>  $ score      : int 124
#>  $ time       : POSIXct[1:1], format: "2025-11-28 19:05:16"
#>  $ title      : chr "Effective harnesses for long-running agents"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.anthropic.com/engineering/effective-harnesses-for-long-running-agents"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[299]]
#> List of 8
#>  $ by         : chr "marcodiego"
#>  $ descendants: int 0
#>  $ id         : int 46116800
#>  $ score      : int 7
#>  $ time       : POSIXct[1:1], format: "2025-12-02 02:47:38"
#>  $ title      : chr "Steam on Linux Use Easily Hits an All-Time High in November"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.phoronix.com/news/Steam-Linux-November-2025"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[300]]
#> List of 8
#>  $ by         : chr "PaulHoule"
#>  $ descendants: int 0
#>  $ id         : int 46116755
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 02:40:44"
#>  $ title      : chr "Sustainable olive production in super-high-density orchards"
#>  $ type       : chr "story"
#>  $ url        : chr "https://link.springer.com/article/10.1007/s13593-025-01050-1"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[301]]
#> List of 9
#>  $ by         : chr "dtj1123"
#>  $ descendants: int 257
#>  $ id         : int 46080916
#>  $ kids       : int [1:38] 46082867 46083038 46081763 46082374 46084017 46085261 46082958 46082360 46084977 46087613 ...
#>  $ score      : int 412
#>  $ time       : POSIXct[1:1], format: "2025-11-28 17:48:25"
#>  $ title      : chr "Molly: An Improved Signal App"
#>  $ type       : chr "story"
#>  $ url        : chr "https://molly.im/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[302]]
#> List of 10
#>  $ by         : chr "skvark"
#>  $ descendants: int 4
#>  $ id         : int 46105112
#>  $ kids       : int [1:2] 46118110 46108855
#>  $ score      : int 11
#>  $ text       : chr "It has been almost 10 years since I started the opencv-python packaging project. Scaling it to more than 100 mi"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 08:59:52"
#>  $ title      : chr "Show HN: GitHits – Code example engine for AI agents and devs (Private Beta)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://githits.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[303]]
#> List of 9
#>  $ by         : chr "iliasabs"
#>  $ descendants: int 35
#>  $ id         : int 46075219
#>  $ kids       : int [1:8] 46078237 46079099 46077823 46078595 46077209 46078059 46082662 46079331
#>  $ score      : int 68
#>  $ time       : POSIXct[1:1], format: "2025-11-28 03:19:51"
#>  $ title      : chr "Shor's algorithm: the one quantum algo that ends RSA/ECC tomorrow"
#>  $ type       : chr "story"
#>  $ url        : chr "https://blog.ellipticc.com/posts/what-is-shors-algorithm-and-why-its-the-single-biggest-threat-to-classical-cryptography/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[304]]
#> List of 9
#>  $ by         : chr "geerlingguy"
#>  $ descendants: int 0
#>  $ id         : int 46113147
#>  $ kids       : int 46113378
#>  $ score      : int 13
#>  $ time       : POSIXct[1:1], format: "2025-12-01 20:59:44"
#>  $ title      : chr "The Nvidia GB10 ConnectX-7 200GbE Networking Is Different"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.servethehome.com/the-nvidia-gb10-connectx-7-200gbe-networking-is-really-different/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[305]]
#> List of 9
#>  $ by         : chr "brcmthrowaway"
#>  $ descendants: int 26
#>  $ id         : int 46083375
#>  $ kids       : int [1:8] 46085874 46084764 46084616 46086334 46087369 46086039 46085603 46087833
#>  $ score      : int 64
#>  $ time       : POSIXct[1:1], format: "2025-11-28 22:32:03"
#>  $ title      : chr "Fabric Project"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/Fabric-Project/Fabric"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[306]]
#> List of 9
#>  $ by         : chr "robtherobber"
#>  $ descendants: int 362
#>  $ id         : int 46079721
#>  $ kids       : int [1:50] 46083022 46080406 46080959 46080213 46084724 46080420 46080318 46080659 46080883 46081998 ...
#>  $ score      : int 322
#>  $ time       : POSIXct[1:1], format: "2025-11-28 15:53:39"
#>  $ title      : chr "Can Dutch universities do without Microsoft?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://dub.uu.nl/en/news/can-dutch-universities-do-without-microsoft"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[307]]
#> List of 9
#>  $ by         : chr "_____k"
#>  $ descendants: int 134
#>  $ id         : int 46088236
#>  $ kids       : int [1:35] 46088580 46089316 46089007 46088909 46088930 46088570 46088527 46088942 46089685 46089567 ...
#>  $ score      : int 215
#>  $ time       : POSIXct[1:1], format: "2025-11-29 15:26:58"
#>  $ title      : chr "Major AI conference flooded with peer reviews written by AI"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.nature.com/articles/d41586-025-03506-6"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[308]]
#> List of 9
#>  $ by         : chr "doener"
#>  $ descendants: int 400
#>  $ id         : int 46091362
#>  $ kids       : int [1:49] 46094613 46092225 46091859 46093038 46092368 46099787 46092057 46092552 46095247 46092273 ...
#>  $ score      : int 490
#>  $ time       : POSIXct[1:1], format: "2025-11-29 22:22:24"
#>  $ title      : chr "Bazzite: Operating System for Linux gaming"
#>  $ type       : chr "story"
#>  $ url        : chr "https://bazzite.gg/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[309]]
#> List of 9
#>  $ by         : chr "donatj"
#>  $ descendants: int 102
#>  $ id         : int 46061239
#>  $ kids       : int [1:30] 46062688 46065297 46062938 46063383 46062699 46063489 46064935 46063250 46065387 46062886 ...
#>  $ score      : int 170
#>  $ time       : POSIXct[1:1], format: "2025-11-26 19:12:40"
#>  $ title      : chr "Alan.app – Add a Border to macOS Active Window"
#>  $ type       : chr "story"
#>  $ url        : chr "https://tyler.io/2025/11/alan/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[310]]
#> List of 9
#>  $ by         : chr "enz"
#>  $ descendants: int 34
#>  $ id         : int 46073817
#>  $ kids       : int [1:9] 46075657 46075081 46074209 46075188 46075621 46075337 46078200 46078383 46074800
#>  $ score      : int 118
#>  $ time       : POSIXct[1:1], format: "2025-11-27 22:41:06"
#>  $ title      : chr "A programmer-friendly I/O abstraction over io_uring and kqueue (2022)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://tigerbeetle.com/blog/2022-11-23-a-friendly-abstraction-over-iouring-and-kqueue/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[311]]
#> List of 9
#>  $ by         : chr "burgerquizz"
#>  $ descendants: int 14
#>  $ id         : int 46118229
#>  $ kids       : int [1:14] 46121814 46121606 46120762 46121256 46119917 46120948 46119799 46118712 46118728 46118699 ...
#>  $ score      : int 13
#>  $ text       : chr "What are you working on? Any new ideas that you&#x27;re thinking"
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:24:59"
#>  $ title      : chr "Ask HN: What are you working on? (Dec 2025)"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[312]]
#> List of 9
#>  $ by         : chr "nrhrjrjrjtntbt"
#>  $ descendants: int 104
#>  $ id         : int 46082825
#>  $ kids       : int [1:9] 46083284 46083024 46082849 46085273 46084703 46083851 46086655 46084757 46085997
#>  $ score      : int 233
#>  $ time       : POSIXct[1:1], format: "2025-11-28 21:16:46"
#>  $ title      : chr "Flight disruption warning as Airbus requests modifications to 6k planes"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bbc.com/news/live/cvg4y6g74ert"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[313]]
#> List of 9
#>  $ by         : chr "SchwKatze"
#>  $ descendants: int 29
#>  $ id         : int 46064680
#>  $ kids       : int [1:2] 46066177 46066249
#>  $ score      : int 116
#>  $ time       : POSIXct[1:1], format: "2025-11-27 02:04:57"
#>  $ title      : chr "Functional Data Structures and Algorithms: a Proof Assistant Approach"
#>  $ type       : chr "story"
#>  $ url        : chr "https://fdsa-book.net/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[314]]
#> List of 8
#>  $ by         : chr "ziggy42"
#>  $ descendants: int 0
#>  $ id         : int 46102311
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-12-01 01:12:03"
#>  $ title      : chr "Epsilon: A WASM virtual machine written in Go"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/ziggy42/epsilon"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[315]]
#> List of 9
#>  $ by         : chr "cspags"
#>  $ descendants: int 1
#>  $ id         : int 46102276
#>  $ kids       : int 46102370
#>  $ score      : int 9
#>  $ time       : POSIXct[1:1], format: "2025-12-01 01:08:01"
#>  $ title      : chr "Bikeshedding, or why I want to build a laptop"
#>  $ type       : chr "story"
#>  $ url        : chr "https://geohot.github.io//blog/jekyll/update/2025/11/29/bikeshedding-or-laptop.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[316]]
#> List of 10
#>  $ by         : chr "thm"
#>  $ descendants: int 204
#>  $ id         : int 46077038
#>  $ kids       : int [1:28] 46079018 46080267 46078933 46078101 46080631 46084159 46077357 46079286 46084434 46079907 ...
#>  $ score      : int 202
#>  $ text       : chr "<a href=\"https:&#x2F;&#x2F;archive.is&#x2F;j1XTl\" rel=\"nofollow\">https:&#x2F;&#x2F;archive.is&#x2F;j1XTl</a>"
#>  $ time       : POSIXct[1:1], format: "2025-11-28 09:21:55"
#>  $ title      : chr "Tech Titans Amass Multimillion-Dollar War Chests to Fight AI Regulation"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.wsj.com/tech/ai/tech-titans-amass-multimillion-dollar-war-chests-to-fight-ai-regulation-88c600e1"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[317]]
#> List of 8
#>  $ by         : chr "petethomas"
#>  $ descendants: int 0
#>  $ id         : int 46118675
#>  $ score      : int 9
#>  $ time       : POSIXct[1:1], format: "2025-12-02 07:39:01"
#>  $ title      : chr "China floods the world with gasoline cars it can't sell at home"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.reuters.com/investigations/china-floods-world-with-gasoline-cars-it-cant-sell-home-2025-12-02/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[318]]
#> List of 9
#>  $ by         : chr "LorenDB"
#>  $ descendants: int 66
#>  $ id         : int 46089980
#>  $ kids       : int [1:6] 46090529 46090493 46093193 46099116 46090839 46091068
#>  $ score      : int 156
#>  $ time       : POSIXct[1:1], format: "2025-11-29 19:14:13"
#>  $ title      : chr "Framework Computer Now Sponsoring LVFS / Fwupd Development"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.phoronix.com/news/Framework-Sponsoring-LVFS"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[319]]
#> List of 8
#>  $ by         : chr "1659447091"
#>  $ descendants: int 0
#>  $ id         : int 46101816
#>  $ score      : int 11
#>  $ time       : POSIXct[1:1], format: "2025-12-01 00:03:51"
#>  $ title      : chr "The Differences Between an IndyCar and a F1 Car"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.openwheelworld.net/en/indycar101/76/IndyCar_vs_Formula_1_cars"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[320]]
#> List of 9
#>  $ by         : chr "joecobb"
#>  $ descendants: int 76
#>  $ id         : int 46090794
#>  $ kids       : int [1:17] 46091251 46091125 46091194 46095236 46092949 46092854 46092215 46092128 46092529 46096138 ...
#>  $ score      : int 164
#>  $ time       : POSIXct[1:1], format: "2025-11-29 21:10:15"
#>  $ title      : chr "Europe's New War on Privacy"
#>  $ type       : chr "story"
#>  $ url        : chr "https://unherd.com/2025/11/europes-new-war-on-privacy/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[321]]
#> List of 9
#>  $ by         : chr "DocIsInDaHouse"
#>  $ descendants: int 118
#>  $ id         : int 46087737
#>  $ kids       : int [1:29] 46088728 46087858 46088755 46087829 46087851 46087965 46089356 46088263 46090055 46090672 ...
#>  $ score      : int 270
#>  $ time       : POSIXct[1:1], format: "2025-11-29 14:20:46"
#>  $ title      : chr "It's Always the Process, Stupid"
#>  $ type       : chr "story"
#>  $ url        : chr "https://its.promp.td/its-always-the-process-stupid/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[322]]
#> List of 9
#>  $ by         : chr "PikelEmi"
#>  $ descendants: int 5
#>  $ id         : int 46078566
#>  $ kids       : int [1:3] 46079973 46081126 46080487
#>  $ score      : int 48
#>  $ time       : POSIXct[1:1], format: "2025-11-28 13:43:17"
#>  $ title      : chr "Writing Builds Resilience in Everyday Challenges by Changing Your Brain"
#>  $ type       : chr "story"
#>  $ url        : chr "https://scienceclock.com/writing-builds-resilience-in-everyday-challenges-by-changing-your-brain/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[323]]
#> List of 9
#>  $ by         : chr "mooreds"
#>  $ descendants: int 5
#>  $ id         : int 46109903
#>  $ kids       : int [1:4] 46110887 46109911 46113260 46110128
#>  $ score      : int 17
#>  $ time       : POSIXct[1:1], format: "2025-12-01 17:09:02"
#>  $ title      : chr "\"There's Just No Reason to Deal with Young Employees\""
#>  $ type       : chr "story"
#>  $ url        : chr "https://nymag.com/intelligencer/article/ai-replacing-entry-level-jobs-gen-z-careers.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[324]]
#> List of 9
#>  $ by         : chr "mooreds"
#>  $ descendants: int 8
#>  $ id         : int 46092217
#>  $ kids       : int [1:4] 46095310 46093340 46095515 46093555
#>  $ score      : int 30
#>  $ time       : POSIXct[1:1], format: "2025-11-30 00:24:25"
#>  $ title      : chr "The engineer–manager pendulum is breaking"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.modernleader.is/p/pendulum-revisited"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[325]]
#> List of 8
#>  $ by         : chr "pr337h4m"
#>  $ descendants: int 0
#>  $ id         : int 46106433
#>  $ score      : int 14
#>  $ time       : POSIXct[1:1], format: "2025-12-01 12:10:09"
#>  $ title      : chr "DeepSeek-V3.2 Release"
#>  $ type       : chr "story"
#>  $ url        : chr "https://api-docs.deepseek.com/news/news251201"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[326]]
#> List of 9
#>  $ by         : chr "ayoisaiah"
#>  $ descendants: int 144
#>  $ id         : int 46060508
#>  $ kids       : int [1:41] 46063949 46064317 46063081 46064565 46066690 46064195 46066369 46061907 46061175 46061210 ...
#>  $ score      : int 400
#>  $ time       : POSIXct[1:1], format: "2025-11-26 18:08:02"
#>  $ title      : chr "Gemini CLI tips and tricks for agentic coding"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/addyosmani/gemini-cli-tips"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[327]]
#> List of 9
#>  $ by         : chr "pillars"
#>  $ descendants: int 1
#>  $ id         : int 46098655
#>  $ kids       : int 46098703
#>  $ score      : int 8
#>  $ time       : POSIXct[1:1], format: "2025-11-30 17:34:46"
#>  $ title      : chr "Making tiny 0.1cc two stroke engine from scratch"
#>  $ type       : chr "story"
#>  $ url        : chr "https://youtu.be/nKVq9u52A-c?si=KVY6AK7tsudqnbJN"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[328]]
#> List of 8
#>  $ by         : chr "jaredwiener"
#>  $ descendants: int 0
#>  $ id         : int 46111687
#>  $ score      : int 9
#>  $ time       : POSIXct[1:1], format: "2025-12-01 19:13:56"
#>  $ title      : chr "AWS Lambda Managed Instances: Serverless Simplicity with EC2 Flexibility"
#>  $ type       : chr "story"
#>  $ url        : chr "https://aws.amazon.com/blogs/aws/introducing-aws-lambda-managed-instances-serverless-simplicity-with-ec2-flexibility/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[329]]
#> List of 9
#>  $ by         : chr "pseudolus"
#>  $ descendants: int 601
#>  $ id         : int 46045085
#>  $ kids       : int [1:98] 46049703 46047424 46048934 46056067 46048287 46054475 46053925 46048641 46057601 46048020 ...
#>  $ score      : int 625
#>  $ time       : POSIXct[1:1], format: "2025-11-25 12:14:11"
#>  $ title      : chr "Trillions spent and big software projects are still failing"
#>  $ type       : chr "story"
#>  $ url        : chr "https://spectrum.ieee.org/it-management-software-failures"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[330]]
#> List of 8
#>  $ by         : chr "doener"
#>  $ descendants: int 0
#>  $ id         : int 46104580
#>  $ score      : int 22
#>  $ time       : POSIXct[1:1], format: "2025-12-01 07:36:20"
#>  $ title      : chr "Crowdsourced Linux and Steam Deck game compatibility reports"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.protondb.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[331]]
#> List of 9
#>  $ by         : chr "todsacerdoti"
#>  $ descendants: int 882
#>  $ id         : int 46064571
#>  $ kids       : int [1:92] 46065008 46064782 46065007 46065986 46065622 46069615 46065093 46064647 46065142 46064895 ...
#>  $ score      : int 907
#>  $ time       : POSIXct[1:1], format: "2025-11-27 01:49:00"
#>  $ title      : chr "Migrating the main Zig repository from GitHub to Codeberg"
#>  $ type       : chr "story"
#>  $ url        : chr "https://ziglang.org/news/migrating-from-github-to-codeberg/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[332]]
#> List of 9
#>  $ by         : chr "fleahunter"
#>  $ descendants: int 1
#>  $ id         : int 46109364
#>  $ kids       : int 46111490
#>  $ score      : int 11
#>  $ time       : POSIXct[1:1], format: "2025-12-01 16:30:29"
#>  $ title      : chr "Retail giant Coupang suffers data breach impacting 33.7M people"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bleepingcomputer.com/news/security/retail-giant-coupang-suffers-data-breach-impacting-337-million-people/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[333]]
#> List of 8
#>  $ by         : chr "doener"
#>  $ descendants: int 0
#>  $ id         : int 46091532
#>  $ score      : int 16
#>  $ time       : POSIXct[1:1], format: "2025-11-29 22:47:42"
#>  $ title      : chr "Nobara Project: Fedora Linux with user-friendly fixes added to it"
#>  $ type       : chr "story"
#>  $ url        : chr "https://nobaraproject.org/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[334]]
#> List of 9
#>  $ by         : chr "matthewsinclair"
#>  $ descendants: int 129
#>  $ id         : int 46063450
#>  $ kids       : int [1:55] 46066642 46064655 46063877 46068986 46068133 46064055 46064032 46064049 46066352 46063996 ...
#>  $ score      : int 129
#>  $ time       : POSIXct[1:1], format: "2025-11-26 23:22:24"
#>  $ title      : chr "C100 Developer Terminal"
#>  $ type       : chr "story"
#>  $ url        : chr "https://caligra.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[335]]
#> List of 9
#>  $ by         : chr "coloneltcb"
#>  $ descendants: int 8
#>  $ id         : int 46115862
#>  $ kids       : int [1:3] 46117138 46116849 46116185
#>  $ score      : int 8
#>  $ time       : POSIXct[1:1], format: "2025-12-02 00:51:30"
#>  $ title      : chr "MKBHD's wallpaper app Panels is shutting down"
#>  $ type       : chr "story"
#>  $ url        : chr "https://techcrunch.com/2025/12/01/mkbhds-wallpaper-app-panels-is-shutting-down/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[336]]
#> List of 10
#>  $ by         : chr "damir00"
#>  $ descendants: int 7
#>  $ id         : int 46089764
#>  $ kids       : int [1:4] 46090461 46091620 46090656 46090567
#>  $ score      : int 18
#>  $ text       : chr "The model uses a 1024-dimensional complex Hilbert space with 32 layers of programmable Mach–Zehnder meshes (Rec"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-29 18:45:49"
#>  $ title      : chr "Show HN: Zero-power photonic language model–code"
#>  $ type       : chr "story"
#>  $ url        : chr "https://zenodo.org/records/17764289"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[337]]
#> List of 9
#>  $ by         : chr "tony"
#>  $ descendants: int 50
#>  $ id         : int 46082204
#>  $ kids       : int [1:11] 46085341 46085459 46082538 46082792 46085020 46084327 46082609 46086997 46090054 46082826 ...
#>  $ score      : int 131
#>  $ time       : POSIXct[1:1], format: "2025-11-28 19:58:13"
#>  $ title      : chr "The original ABC language, Python's predecessor (1991)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/gvanrossum/abc-unix"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[338]]
#> List of 8
#>  $ by         : chr "sygma"
#>  $ descendants: int 0
#>  $ id         : int 46055091
#>  $ score      : int 22
#>  $ time       : POSIXct[1:1], format: "2025-11-26 07:40:43"
#>  $ title      : chr "Plinko PIR Tutorial"
#>  $ type       : chr "story"
#>  $ url        : chr "https://vitalik.eth.limo/general/2025/11/25/plinko.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[339]]
#> List of 9
#>  $ by         : chr "boplicity"
#>  $ descendants: int 135
#>  $ id         : int 46078138
#>  $ kids       : int [1:38] 46078827 46081185 46078969 46078330 46080133 46080153 46079616 46078690 46078272 46078496 ...
#>  $ score      : int 355
#>  $ time       : POSIXct[1:1], format: "2025-11-28 12:41:32"
#>  $ title      : chr "A Remarkable Assertion from A16Z"
#>  $ type       : chr "story"
#>  $ url        : chr "https://nealstephenson.substack.com/p/a-remarkable-assertion-from-a16z"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[340]]
#> List of 9
#>  $ by         : chr "sashk"
#>  $ descendants: int 310
#>  $ id         : int 46065034
#>  $ kids       : int [1:52] 46074921 46069870 46071675 46066351 46065620 46065401 46073512 46066457 46071699 46065837 ...
#>  $ score      : int 450
#>  $ time       : POSIXct[1:1], format: "2025-11-27 02:54:23"
#>  $ title      : chr "DIY NAS: 2026 Edition"
#>  $ type       : chr "story"
#>  $ url        : chr "https://blog.briancmoses.com/2025/11/diy-nas-2026-edition.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[341]]
#> List of 9
#>  $ by         : chr "ibobev"
#>  $ descendants: int 2
#>  $ id         : int 46089347
#>  $ kids       : int [1:2] 46095843 46090815
#>  $ score      : int 16
#>  $ time       : POSIXct[1:1], format: "2025-11-29 17:48:51"
#>  $ title      : chr "Compiled ZX Spectrum Basic and Z88DK Added to Online Retro IDE"
#>  $ type       : chr "story"
#>  $ url        : chr "https://retrogamecoders.com/zx-spectrum-basic-z88dk/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[342]]
#> List of 8
#>  $ by         : chr "flexdinesh"
#>  $ descendants: int 0
#>  $ id         : int 46103571
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-01 04:47:30"
#>  $ title      : chr "Stacked Diffs with git rebase —onto"
#>  $ type       : chr "story"
#>  $ url        : chr "https://dineshpandiyan.com/blog/stacked-diffs-with-rebase-onto/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[343]]
#> List of 9
#>  $ by         : chr "walterbell"
#>  $ descendants: int 170
#>  $ id         : int 46081053
#>  $ kids       : int [1:25] 46081800 46081274 46081590 46081401 46081386 46081375 46082671 46081697 46083548 46081260 ...
#>  $ score      : int 451
#>  $ time       : POSIXct[1:1], format: "2025-11-28 18:02:04"
#>  $ title      : chr "28M Hacker News comments as vector embedding search dataset"
#>  $ type       : chr "story"
#>  $ url        : chr "https://clickhouse.com/docs/getting-started/example-datasets/hackernews-vector-search-dataset"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[344]]
#> List of 9
#>  $ by         : chr "jjmaxwell4"
#>  $ descendants: int 214
#>  $ id         : int 46048996
#>  $ kids       : int [1:49] 46049625 46050928 46049840 46049536 46049385 46050628 46049070 46050586 46049938 46049222 ...
#>  $ score      : int 766
#>  $ time       : POSIXct[1:1], format: "2025-11-25 18:31:16"
#>  $ title      : chr "Google Antigravity exfiltrates data via indirect prompt injection attack"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.promptarmor.com/resources/google-antigravity-exfiltrates-data"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[345]]
#> List of 9
#>  $ by         : chr "gfysfm"
#>  $ descendants: int 311
#>  $ id         : int 46082223
#>  $ kids       : int [1:64] 46083941 46082989 46083625 46083339 46084965 46082966 46083519 46083301 46084287 46083027 ...
#>  $ score      : int 401
#>  $ time       : POSIXct[1:1], format: "2025-11-28 19:59:32"
#>  $ title      : chr "How good engineers write bad code at big companies"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.seangoedecke.com/bad-code-at-big-companies/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[346]]
#> List of 9
#>  $ by         : chr "ashishgupta2209"
#>  $ descendants: int 73
#>  $ id         : int 46086624
#>  $ kids       : int [1:15] 46087257 46087754 46087335 46087260 46091531 46087194 46089597 46088220 46088110 46087384 ...
#>  $ score      : int 188
#>  $ time       : POSIXct[1:1], format: "2025-11-29 10:54:16"
#>  $ title      : chr "High air pollution could diminish exercise benefits by half – study"
#>  $ type       : chr "story"
#>  $ url        : chr "https://scienceclock.com/exercise-may-protect-less-when-air-pollution-is-high-study-finds/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[347]]
#> List of 9
#>  $ by         : chr "basemi"
#>  $ descendants: int 38
#>  $ id         : int 46080143
#>  $ kids       : int [1:8] 46087037 46083527 46080678 46080413 46086803 46080962 46082500 46087521
#>  $ score      : int 178
#>  $ time       : POSIXct[1:1], format: "2025-11-28 16:35:24"
#>  $ title      : chr "True P2P Email on Top of Yggdrasil Network"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/JB-SelfCompany/Tyr"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[348]]
#> List of 9
#>  $ by         : chr "davikr"
#>  $ descendants: int 40
#>  $ id         : int 46045039
#>  $ kids       : int [1:19] 46046133 46046068 46046876 46046280 46049424 46050802 46045609 46055352 46050379 46049682 ...
#>  $ score      : int 249
#>  $ time       : POSIXct[1:1], format: "2025-11-25 12:05:39"
#>  $ title      : chr "Making Crash Bandicoot (2011)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://all-things-andy-gavin.com/video-games/making-crash/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[349]]
#> List of 9
#>  $ by         : chr "anonymous_ibex"
#>  $ descendants: int 121
#>  $ id         : int 46092688
#>  $ kids       : int [1:57] 46093410 46093371 46093229 46115772 46094220 46092914 46104053 46097650 46093166 46093391 ...
#>  $ score      : int 242
#>  $ text       : chr "I&#x27;m writing this 38 hours before I go into a surgery on Monday that I may not survive, and while I am told"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-30 01:33:27"
#>  $ title      : chr "Tell HN: Regrets. Think carefully about how you spend your time"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[350]]
#> List of 10
#>  $ by         : chr "473999"
#>  $ descendants: int 31
#>  $ id         : int 46081443
#>  $ kids       : int [1:16] 46081487 46086129 46081922 46084968 46089427 46082431 46082914 46083536 46083802 46082261 ...
#>  $ score      : int 85
#>  $ text       : chr "I wanted to listen to music with friends who live far away. Not &quot;watch a YouTube video together&quot; - ac"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-28 18:39:34"
#>  $ title      : chr "Show HN: Pulse 2.0 – Live co-listening rooms where anyone can be a DJ"
#>  $ type       : chr "story"
#>  $ url        : chr "https://473999.net/pulse"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[351]]
#> List of 9
#>  $ by         : chr "davikr"
#>  $ descendants: int 1
#>  $ id         : int 46050302
#>  $ kids       : int [1:2] 46093747 46093565
#>  $ score      : int 15
#>  $ time       : POSIXct[1:1], format: "2025-11-25 20:24:12"
#>  $ title      : chr "1964 Recompiling Engine Documentation (2001) [pdf]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://emudev.org/docs/1964-recompiling-engine-documentation.pdf"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[352]]
#> List of 9
#>  $ by         : chr "jonymo"
#>  $ descendants: int 309
#>  $ id         : int 46068777
#>  $ kids       : int [1:15] 46069783 46069736 46069220 46069515 46069531 46069173 46069476 46077478 46078628 46069405 ...
#>  $ score      : int 220
#>  $ time       : POSIXct[1:1], format: "2025-11-27 12:48:12"
#>  $ title      : chr "The current state of the theory that GPL propagates to AI models"
#>  $ type       : chr "story"
#>  $ url        : chr "https://shujisado.org/2025/11/27/gpl-propagates-to-ai-models-trained-on-gpl-code/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[353]]
#> List of 9
#>  $ by         : chr "AlgebraFox"
#>  $ descendants: int 9
#>  $ id         : int 46060534
#>  $ kids       : int [1:6] 46060688 46067044 46096460 46066715 46069228 46070404
#>  $ score      : int 99
#>  $ time       : POSIXct[1:1], format: "2025-11-26 18:10:18"
#>  $ title      : chr "A temporary victory – but we still need to stop Chat Control"
#>  $ type       : chr "story"
#>  $ url        : chr "https://mullvad.net/en/blog/an-important-victory-but-we-still-need-to-stop-chat-control"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[354]]
#> List of 9
#>  $ by         : chr "tzury"
#>  $ descendants: int 63
#>  $ id         : int 46084122
#>  $ kids       : int [1:10] 46084916 46084506 46084924 46089101 46085570 46085297 46084263 46084212 46086932 46084786
#>  $ score      : int 135
#>  $ time       : POSIXct[1:1], format: "2025-11-29 00:26:42"
#>  $ title      : chr "A triangle whose interior angles sum to zero"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.johndcook.com/blog/2025/11/28/tricusp-triangle/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[355]]
#> List of 9
#>  $ by         : chr "decimalenough"
#>  $ descendants: int 6
#>  $ id         : int 46100887
#>  $ kids       : int [1:4] 46101322 46101467 46101291 46101593
#>  $ score      : int 51
#>  $ time       : POSIXct[1:1], format: "2025-11-30 22:04:42"
#>  $ title      : chr "The reality of life after getting your brand stocked in a national retailer"
#>  $ type       : chr "story"
#>  $ url        : chr "https://old.reddit.com/r/ausbusiness/comments/1pa94j9/ink_nurse_how_our_small_aussie_business_performed/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[356]]
#> List of 8
#>  $ by         : chr "petethomas"
#>  $ descendants: int 0
#>  $ id         : int 46115225
#>  $ score      : int 6
#>  $ time       : POSIXct[1:1], format: "2025-12-01 23:45:39"
#>  $ title      : chr "In the Shadow of Jane Street and Citadel Securities, Hudson River Mints Billions"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bloomberg.com/news/features/2025-12-01/high-speed-trader-hudson-river-steps-up-battle-with-citadel-"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[357]]
#> List of 9
#>  $ by         : chr "piotrgrabowski"
#>  $ descendants: int 355
#>  $ id         : int 46048125
#>  $ kids       : int [1:48] 46054756 46052864 46052248 46052668 46051401 46051755 46051318 46051517 46051209 46051524 ...
#>  $ score      : int 446
#>  $ time       : POSIXct[1:1], format: "2025-11-25 17:21:52"
#>  $ title      : chr "Ilya Sutskever: We're moving from the age of scaling to the age of research"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.dwarkesh.com/p/ilya-sutskever-2"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[358]]
#> List of 9
#>  $ by         : chr "pshirshov"
#>  $ descendants: int 2
#>  $ id         : int 46099393
#>  $ kids       : int 46099394
#>  $ score      : int 8
#>  $ time       : POSIXct[1:1], format: "2025-11-30 19:04:44"
#>  $ title      : chr "Stal/IX: declarative statically linked Linux distribution"
#>  $ type       : chr "story"
#>  $ url        : chr "https://stal-ix.github.io/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[359]]
#> List of 9
#>  $ by         : chr "MaximilianEmel"
#>  $ descendants: int 149
#>  $ id         : int 46061682
#>  $ kids       : int [1:26] 46062114 46063120 46062545 46067701 46062030 46061917 46062105 46062005 46062278 46063846 ...
#>  $ score      : int 429
#>  $ time       : POSIXct[1:1], format: "2025-11-26 19:58:27"
#>  $ title      : chr "S&box is now an open source game engine"
#>  $ type       : chr "story"
#>  $ url        : chr "https://sbox.game/news/update-25-11-26"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[360]]
#> List of 9
#>  $ by         : chr "dola"
#>  $ descendants: int 5
#>  $ id         : int 46107755
#>  $ kids       : int [1:2] 46109137 46119873
#>  $ score      : int 17
#>  $ time       : POSIXct[1:1], format: "2025-12-01 14:21:43"
#>  $ title      : chr "Europol and partners shut down Cryptomixer.io"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.europol.europa.eu/media-press/newsroom/news/europol-and-partners-shut-down-cryptomixer"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[361]]
#> List of 9
#>  $ by         : chr "hhs"
#>  $ descendants: int 72
#>  $ id         : int 46092056
#>  $ kids       : int [1:8] 46092383 46092241 46092629 46092164 46092873 46092794 46092370 46092795
#>  $ score      : int 56
#>  $ time       : POSIXct[1:1], format: "2025-11-29 23:59:49"
#>  $ title      : chr "Dilution vs. Risk taking: Capital gains taxes and entrepreneurs"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.nber.org/papers/w34512"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[362]]
#> List of 9
#>  $ by         : chr "bariumbitmap"
#>  $ descendants: int 672
#>  $ id         : int 46063072
#>  $ kids       : int [1:102] 46064952 46063648 46063921 46064095 46064163 46063490 46063616 46063745 46063446 46063906 ...
#>  $ score      : int 803
#>  $ time       : POSIXct[1:1], format: "2025-11-26 22:26:36"
#>  $ title      : chr "Bring bathroom doors back to hotels"
#>  $ type       : chr "story"
#>  $ url        : chr "https://bringbackdoors.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[363]]
#> List of 9
#>  $ by         : chr "ozgrakkurt"
#>  $ descendants: int 2
#>  $ id         : int 46102753
#>  $ kids       : int 46109019
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-12-01 02:19:43"
#>  $ title      : chr "Show HN: FastLanes based integer compression in Zig"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/steelcake/zint"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[364]]
#> List of 9
#>  $ by         : chr "Anon84"
#>  $ descendants: int 36
#>  $ id         : int 46087029
#>  $ kids       : int [1:8] 46088305 46087999 46088089 46088917 46094248 46092492 46088763 46089397
#>  $ score      : int 65
#>  $ time       : POSIXct[1:1], format: "2025-11-29 12:26:54"
#>  $ title      : chr "Chainalysis Successful Deanonymization Attack on Monero"
#>  $ type       : chr "story"
#>  $ url        : chr "https://darkwebinformer.com/chainalysis-successful-deanonymization-attack-on-monero-2/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[365]]
#> List of 9
#>  $ by         : chr "rdg42"
#>  $ descendants: int 70
#>  $ id         : int 46074111
#>  $ kids       : int [1:20] 46076334 46075522 46075451 46076572 46074344 46075349 46074284 46074701 46077100 46078355 ...
#>  $ score      : int 160
#>  $ time       : POSIXct[1:1], format: "2025-11-27 23:30:11"
#>  $ title      : chr "Vsora Jotunn-8 5nm European inference chip"
#>  $ type       : chr "story"
#>  $ url        : chr "https://vsora.com/products/jotunn-8/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[366]]
#> List of 9
#>  $ by         : chr "aanthonymax"
#>  $ descendants: int 1
#>  $ id         : int 46092198
#>  $ kids       : int 46092199
#>  $ score      : int 10
#>  $ time       : POSIXct[1:1], format: "2025-11-30 00:21:19"
#>  $ title      : chr "CSS now has an if() conditional function"
#>  $ type       : chr "story"
#>  $ url        : chr "https://caniuse.com/?search=if"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[367]]
#> List of 8
#>  $ by         : chr "robin_reala"
#>  $ descendants: int 0
#>  $ id         : int 46107253
#>  $ score      : int 9
#>  $ time       : POSIXct[1:1], format: "2025-12-01 13:39:20"
#>  $ title      : chr "Trailblazing scheme to reconnect thousands with HIV treatment"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.gov.uk/government/news/trailblazing-scheme-to-reconnect-thousands-with-hiv-treatment"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[368]]
#> List of 9
#>  $ by         : chr "exvi"
#>  $ descendants: int 27
#>  $ id         : int 46053017
#>  $ kids       : int [1:5] 46054022 46055689 46053700 46054091 46054454
#>  $ score      : int 55
#>  $ time       : POSIXct[1:1], format: "2025-11-26 01:19:17"
#>  $ title      : chr "Space: 1999 – Special Effects Techniques"
#>  $ type       : chr "story"
#>  $ url        : chr "https://catacombs.space1999.net/main/pguide/upsfx.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[369]]
#> List of 9
#>  $ by         : chr "everydaydev"
#>  $ descendants: int 11
#>  $ id         : int 46106504
#>  $ kids       : int [1:6] 46107306 46108471 46107227 46114250 46108872 46107877
#>  $ score      : int 14
#>  $ text       : chr "I&#x27;ve worked at several companies where we&#x27;d discover hours later that critical webhooks from Stripe&#"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 12:18:36"
#>  $ title      : chr "How do you handle lost webhooks in production?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[370]]
#> List of 9
#>  $ by         : chr "fspeech"
#>  $ descendants: int 50
#>  $ id         : int 46072786
#>  $ kids       : int [1:12] 46073825 46074718 46075343 46073041 46073084 46073943 46073131 46072940 46073156 46074813 ...
#>  $ score      : int 230
#>  $ time       : POSIXct[1:1], format: "2025-11-27 20:03:25"
#>  $ title      : chr "DeepSeekMath-V2: Towards Self-Verifiable Mathematical Reasoning [pdf]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/deepseek-ai/DeepSeek-Math-V2/blob/main/DeepSeekMath_V2.pdf"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[371]]
#> List of 10
#>  $ by         : chr "ahlCVA"
#>  $ descendants: int 60
#>  $ id         : int 46045385
#>  $ kids       : int [1:8] 46045483 46052654 46054543 46051861 46081327 46051718 46061789 46057708
#>  $ score      : int 112
#>  $ text       : chr "<a href=\"https:&#x2F;&#x2F;archive.is&#x2F;tIXt7\" rel=\"nofollow\">https:&#x2F;&#x2F;archive.is&#x2F;tIXt7</a>"
#>  $ time       : POSIXct[1:1], format: "2025-11-25 13:02:06"
#>  $ title      : chr "Constant-time support coming to LLVM: Protecting cryptographic code"
#>  $ type       : chr "story"
#>  $ url        : chr "https://blog.trailofbits.com/2025/11/25/constant-time-support-coming-to-llvm-protecting-cryptographic-code-at-t"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[372]]
#> List of 9
#>  $ by         : chr "ashishgupta2209"
#>  $ descendants: int 53
#>  $ id         : int 46105803
#>  $ kids       : int [1:10] 46107366 46106187 46105982 46107110 46106878 46106156 46107254 46105988 46109578 46105927
#>  $ score      : int 98
#>  $ time       : POSIXct[1:1], format: "2025-12-01 10:37:39"
#>  $ title      : chr "AWS data centers' water use tied to spike in cancer and miscarriages in Oregon"
#>  $ type       : chr "story"
#>  $ url        : chr "https://techoreon.com/oregon-data-centers-water-use-nitrates-cancer-miscarriage/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[373]]
#> List of 9
#>  $ by         : chr "konmok"
#>  $ descendants: int 17
#>  $ id         : int 46100784
#>  $ kids       : int [1:5] 46101185 46100802 46105645 46105460 46101042
#>  $ score      : int 29
#>  $ time       : POSIXct[1:1], format: "2025-11-30 21:50:39"
#>  $ title      : chr "Effective Altruists Use Threats and Harassment to Silence Their Critics"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.realtimetechpocalypse.com/p/how-effective-altruists-use-threats"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[374]]
#> List of 9
#>  $ by         : chr "theyogadev"
#>  $ descendants: int 11
#>  $ id         : int 46079605
#>  $ kids       : int [1:6] 46079606 46080950 46097147 46079960 46082932 46083197
#>  $ score      : int 41
#>  $ time       : POSIXct[1:1], format: "2025-11-28 15:44:04"
#>  $ title      : chr "Open-Source n8n Alternative for Workflow Building (GUI and Docker Included)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/empowerd-cms/nyno"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[375]]
#> List of 9
#>  $ by         : chr "ohjeez"
#>  $ descendants: int 89
#>  $ id         : int 46058471
#>  $ kids       : int [1:27] 46075508 46072778 46074434 46077218 46072867 46073055 46075040 46074768 46073205 46072979 ...
#>  $ score      : int 218
#>  $ time       : POSIXct[1:1], format: "2025-11-26 15:40:14"
#>  $ title      : chr "Feedback doesn't scale"
#>  $ type       : chr "story"
#>  $ url        : chr "https://another.rodeo/feedback/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[376]]
#> List of 9
#>  $ by         : chr "Klaster_1"
#>  $ descendants: int 27
#>  $ id         : int 46066255
#>  $ kids       : int [1:3] 46070140 46075530 46067348
#>  $ score      : int 65
#>  $ time       : POSIXct[1:1], format: "2025-11-27 06:14:21"
#>  $ title      : chr "Last Issue of \"ECMAScript News\""
#>  $ type       : chr "story"
#>  $ url        : chr "https://ecmascript.news/archive/es-next-news-2025-11-26.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[377]]
#> List of 9
#>  $ by         : chr "HotGarbage"
#>  $ descendants: int 2
#>  $ id         : int 46114161
#>  $ kids       : int 46116211
#>  $ score      : int 9
#>  $ time       : POSIXct[1:1], format: "2025-12-01 22:24:06"
#>  $ title      : chr "Let's See What's Going on Down at the Piss Factory"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.todayintabs.com/p/let-s-see-what-s-going-on-down-at-the-piss-factory"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[378]]
#> List of 9
#>  $ by         : chr "hu3"
#>  $ descendants: int 7
#>  $ id         : int 46094739
#>  $ kids       : int [1:2] 46095077 46094772
#>  $ score      : int 37
#>  $ time       : POSIXct[1:1], format: "2025-11-30 07:55:49"
#>  $ title      : chr "Reddit Migrates Comment Back End from Python to Go Microservice to Halve Latency"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.infoq.com/news/2025/11/reddit-comments-go-migration/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[379]]
#> List of 10
#>  $ by         : chr "gregTurri"
#>  $ descendants: int 18
#>  $ id         : int 46065997
#>  $ kids       : int [1:7] 46076845 46073944 46066555 46070730 46066549 46066600 46068763
#>  $ score      : int 62
#>  $ text       : chr "Just watched this video by ThePrimeagen (<a href=\"https:&#x2F;&#x2F;www.youtube.com&#x2F;watch?v=efwDZw7l2Nk\""| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-27 05:28:50"
#>  $ title      : chr "Show HN: Era – Open-source local sandbox for AI agents"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/BinSquare/ERA"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[380]]
#> List of 9
#>  $ by         : chr "nogajun"
#>  $ descendants: int 8
#>  $ id         : int 46064210
#>  $ kids       : int [1:4] 46067834 46072656 46067224 46070128
#>  $ score      : int 72
#>  $ time       : POSIXct[1:1], format: "2025-11-27 00:59:58"
#>  $ title      : chr "Collabora Online Desktop Released with Improved UI from LibreOffice"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.collaboraonline.com/blog/collabora-online-now-available-on-desktop/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[381]]
#> List of 9
#>  $ by         : chr "klez"
#>  $ descendants: int 20
#>  $ id         : int 46080972
#>  $ kids       : int [1:8] 46081115 46084619 46083203 46082163 46083106 46083511 46081738 46082779
#>  $ score      : int 38
#>  $ time       : POSIXct[1:1], format: "2025-11-28 17:54:05"
#>  $ title      : chr "Rock Paper Scissors Solitaire"
#>  $ type       : chr "story"
#>  $ url        : chr "https://klezlab.it/rock-paper-scissors-solitaire.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[382]]
#> List of 9
#>  $ by         : chr "speckx"
#>  $ descendants: int 3
#>  $ id         : int 46108393
#>  $ kids       : int [1:3] 46108895 46109433 46110314
#>  $ score      : int 18
#>  $ time       : POSIXct[1:1], format: "2025-12-01 15:14:09"
#>  $ title      : chr "Vibe coding is not the same as AI-Assisted engineering"
#>  $ type       : chr "story"
#>  $ url        : chr "https://medium.com/@addyosmani/vibe-coding-is-not-the-same-as-ai-assisted-engineering-3f81088d5b98"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[383]]
#> List of 9
#>  $ by         : chr "ohjeez"
#>  $ descendants: int 17
#>  $ id         : int 46061871
#>  $ kids       : int [1:7] 46072726 46074673 46072939 46077196 46073274 46072722 46075596
#>  $ score      : int 64
#>  $ time       : POSIXct[1:1], format: "2025-11-26 20:17:44"
#>  $ title      : chr "Inspired by Spider-Man, scientists recreate web-slinging technology"
#>  $ type       : chr "story"
#>  $ url        : chr "https://scienceclock.com/inspired-by-spider-man-scientists-recreate-web-slinging-technology/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[384]]
#> List of 8
#>  $ by         : chr "PaulHoule"
#>  $ descendants: int 0
#>  $ id         : int 46113870
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-12-01 21:58:47"
#>  $ title      : chr "3k tons of cocaine: controversial figure pits Colombia against the UN"
#>  $ type       : chr "story"
#>  $ url        : chr "https://english.elpais.com/international/2025-11-18/3000-tons-of-cocaine-the-controversial-figure-that-pits-col"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[385]]
#> List of 9
#>  $ by         : chr "prodigycorp"
#>  $ descendants: int 198
#>  $ id         : int 46065955
#>  $ kids       : int [1:137] 46066132 46073113 46073202 46072317 46072221 46073017 46073173 46074947 46074769 46076168 ...
#>  $ score      : int 801
#>  $ text       : chr "I’ve been a part of this community for fifteen years. Despite the yearly bemoaning of HN’s quality compared to "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-27 05:21:16"
#>  $ title      : chr "Tell HN: Happy Thanksgiving"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[386]]
#> List of 9
#>  $ by         : chr "pshirshov"
#>  $ descendants: int 7
#>  $ id         : int 46090372
#>  $ kids       : int [1:2] 46091126 46091291
#>  $ score      : int 17
#>  $ time       : POSIXct[1:1], format: "2025-11-29 20:12:37"
#>  $ title      : chr "Baboon: Data Modeling with Automatic Evolutions and tagless binary codecs"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/7mind/baboon"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[387]]
#> List of 9
#>  $ by         : chr "abdelhousni"
#>  $ descendants: int 2
#>  $ id         : int 46094636
#>  $ kids       : int [1:2] 46094710 46098184
#>  $ score      : int 10
#>  $ time       : POSIXct[1:1], format: "2025-11-30 07:33:34"
#>  $ title      : chr "Dell: About 1B PCs will not or cannot be upgraded to Windows 11 – OSnews"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.osnews.com/story/143922/dell-about-1-billion-pcs-will-not-or-cannot-be-upgraded-to-windows-11/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[388]]
#> List of 9
#>  $ by         : chr "thunderbong"
#>  $ descendants: int 3
#>  $ id         : int 46097601
#>  $ kids       : int 46099208
#>  $ score      : int 33
#>  $ time       : POSIXct[1:1], format: "2025-11-30 15:50:04"
#>  $ title      : chr "6174"
#>  $ type       : chr "story"
#>  $ url        : chr "https://en.wikipedia.org/wiki/6174"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[389]]
#> List of 9
#>  $ by         : chr "addaon"
#>  $ descendants: int 71
#>  $ id         : int 46065698
#>  $ kids       : int [1:10] 46065995 46066012 46072346 46066050 46081746 46065906 46066801 46073043 46067465 46066059
#>  $ score      : int 166
#>  $ time       : POSIXct[1:1], format: "2025-11-27 04:34:56"
#>  $ title      : chr "Coq: The World's Best Macro Assembler? (2013) [pdf]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://nickbenton.name/coqasm.pdf"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[390]]
#> List of 10
#>  $ by         : chr "rohan2003"
#>  $ descendants: int 16
#>  $ id         : int 46090284
#>  $ kids       : int [1:5] 46091540 46092262 46092379 46091047 46091980
#>  $ score      : int 16
#>  $ text       : chr "Hi everyone, for last 7 months, I have been learning all the attempts made to eliminate codebase environment se"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-29 19:57:56"
#>  $ title      : chr "Show HN: No Environment Setups Anymore"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.gitarsenal.dev/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[391]]
#> List of 9
#>  $ by         : chr "azhenley"
#>  $ descendants: int 11
#>  $ id         : int 46064367
#>  $ kids       : int [1:8] 46067380 46066441 46065972 46065367 46066390 46065156 46065890 46066117
#>  $ score      : int 69
#>  $ time       : POSIXct[1:1], format: "2025-11-27 01:20:33"
#>  $ title      : chr "Bonsai_term: A library for building dynamic terminal apps by Jane Street"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/janestreet/bonsai_term"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[392]]
#> List of 8
#>  $ by         : chr "dzonga"
#>  $ descendants: int 0
#>  $ id         : int 46113687
#>  $ score      : int 6
#>  $ time       : POSIXct[1:1], format: "2025-12-01 21:44:28"
#>  $ title      : chr "Rockstar co-founder compares AI to 'mad cow disease'"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.pcgamer.com/software/ai/rockstar-co-founder-compares-ai-to-mad-cow-disease-and-says-the-execs-pushi"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[393]]
#> List of 10
#>  $ by         : chr "MartenBE"
#>  $ descendants: int 15
#>  $ id         : int 46068847
#>  $ kids       : int [1:6] 46070658 46070138 46070429 46076447 46070167 46072274
#>  $ score      : int 77
#>  $ text       : chr "As a teacher, we keep our slides as markdown files in git repos and want to build these automatically so they c"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-27 13:00:17"
#>  $ title      : chr "Show HN: MkSlides – Markdown to slides with a similar workflow to MkDocs"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/MartenBE/mkslides"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[394]]
#> List of 9
#>  $ by         : chr "meysamazad"
#>  $ descendants: int 52
#>  $ id         : int 46108704
#>  $ kids       : int [1:19] 46112140 46112067 46119733 46111031 46110851 46117730 46114290 46113817 46115841 46113537 ...
#>  $ score      : int 45
#>  $ time       : POSIXct[1:1], format: "2025-12-01 15:41:51"
#>  $ title      : chr "AI-Assisted Coding Killed My Joy of Programming"
#>  $ type       : chr "story"
#>  $ url        : chr "https://meysam.io/blog/ai-assisted-coding-killed-programming-joy/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[395]]
#> List of 9
#>  $ by         : chr "50kIters"
#>  $ descendants: int 22
#>  $ id         : int 46055177
#>  $ kids       : int [1:4] 46057771 46056037 46064291 46061972
#>  $ score      : int 124
#>  $ time       : POSIXct[1:1], format: "2025-11-26 07:55:49"
#>  $ title      : chr "Image Diffusion Models Exhibit Emergent Temporal Propagation in Videos"
#>  $ type       : chr "story"
#>  $ url        : chr "https://arxiv.org/abs/2511.19936"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[396]]
#> List of 10
#>  $ by         : chr "chr15m"
#>  $ descendants: int 48
#>  $ id         : int 46069556
#>  $ kids       : int [1:17] 46073308 46079569 46070483 46070340 46071023 46071028 46072520 46070843 46073747 46074367 ...
#>  $ score      : int 132
#>  $ text       : chr "I built a single-file Python script that lets you run LLM prompts from the command line with templating, struct"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-27 14:26:35"
#>  $ title      : chr "Show HN: Runprompt – run .prompt files from the command line"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/chr15m/runprompt"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[397]]
#> List of 10
#>  $ by         : chr "jaydenmilne"
#>  $ descendants: int 691
#>  $ id         : int 46051340
#>  $ kids       : int [1:75] 46052377 46052317 46052970 46052579 46053012 46057421 46052837 46052429 46052771 46056421 ...
#>  $ score      : int 1000
#>  $ text       : chr "Related: <i>Someone at YouTube needs glasses</i> - <a href=\"https:&#x2F;&#x2F;news.ycombinator.com&#x2F;item?i"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-25 22:04:31"
#>  $ title      : chr "Someone at YouTube Needs Glasses: The Prophecy Has Been Fulfilled"
#>  $ type       : chr "story"
#>  $ url        : chr "https://jayd.ml/2025/11/10/someone-at-youtube-needs-glasses-prophecy-fulfilled.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[398]]
#> List of 9
#>  $ by         : chr "mkagenius"
#>  $ descendants: int 24
#>  $ id         : int 46080597
#>  $ kids       : int [1:11] 46081580 46082648 46083072 46083268 46082608 46084127 46081621 46088273 46083224 46082490 ...
#>  $ score      : int 76
#>  $ time       : POSIXct[1:1], format: "2025-11-28 17:16:52"
#>  $ title      : chr "Anti-patterns while working with LLMs"
#>  $ type       : chr "story"
#>  $ url        : chr "https://instavm.io/blog/llm-anti-patterns"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[399]]
#> List of 9
#>  $ by         : chr "grohan"
#>  $ descendants: int 14
#>  $ id         : int 46058033
#>  $ kids       : int [1:7] 46065198 46063696 46064968 46064179 46063826 46064580 46058034
#>  $ score      : int 66
#>  $ time       : POSIXct[1:1], format: "2025-11-26 15:03:09"
#>  $ title      : chr "Compressed filesystems à la language models"
#>  $ type       : chr "story"
#>  $ url        : chr "https://grohan.co/2025/11/25/llmfuse/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[400]]
#> List of 10
#>  $ by         : chr "NaOH"
#>  $ descendants: int 4
#>  $ id         : int 46062650
#>  $ kids       : int [1:4] 46103027 46102161 46062778 46101832
#>  $ score      : int 11
#>  $ text       : chr "<a href=\"https:&#x2F;&#x2F;archive.md&#x2F;N0v6d\" rel=\"nofollow\">https:&#x2F;&#x2F;archive.md&#x2F;N0v6d</a>"
#>  $ time       : POSIXct[1:1], format: "2025-11-26 21:38:44"
#>  $ title      : chr "David Lerner, cofounder of Tekserve, has died"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.nytimes.com/2025/11/26/technology/personaltech/david-lerner-dead.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[401]]
#> List of 8
#>  $ by         : chr "harryday"
#>  $ descendants: int 0
#>  $ id         : int 46096341
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-11-30 13:07:38"
#>  $ title      : chr "Term-keys – Lossless keyboard input for Emacs"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/CyberShadow/term-keys"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[402]]
#> List of 8
#>  $ by         : chr "beardyw"
#>  $ descendants: int 0
#>  $ id         : int 46118863
#>  $ score      : int 7
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:10:18"
#>  $ title      : chr "India demands smartphone makers install a government app on every handset"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.theregister.com/2025/12/02/india_mandatory_sanchar_saathi_app/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[403]]
#> List of 9
#>  $ by         : chr "1659447091"
#>  $ descendants: int 92
#>  $ id         : int 46074362
#>  $ kids       : int [1:12] 46074805 46075153 46075100 46076200 46074571 46075519 46075013 46076511 46078706 46074758 ...
#>  $ score      : int 173
#>  $ time       : POSIXct[1:1], format: "2025-11-28 00:10:38"
#>  $ title      : chr "How Charles M Schulz created Charlie Brown and Snoopy (2024)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bbc.com/culture/article/20241205-how-charles-m-schulz-created-charlie-brown-and-snoopy"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[404]]
#> List of 9
#>  $ by         : chr "unkn0wnUlv"
#>  $ descendants: int 0
#>  $ id         : int 46100664
#>  $ kids       : int 46100665
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-11-30 21:35:04"
#>  $ title      : chr "AoC is starting! This project will help you bootstrap in C++"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/jphjsoares/aoc-cpp-template"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[405]]
#> List of 10
#>  $ by         : chr "1659447091"
#>  $ descendants: int 98
#>  $ id         : int 46065817
#>  $ kids       : int [1:20] 46067227 46070608 46074132 46068606 46067288 46066713 46067505 46067609 46069558 46069913 ...
#>  $ score      : int 222
#>  $ text       : chr "Study: <a href=\"https:&#x2F;&#x2F;mmd.iammonline.com&#x2F;index.php&#x2F;musmed&#x2F;article&#x2F;view&#x2F;11"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-27 04:55:57"
#>  $ title      : chr "Music eases surgery and speeds recovery, study finds"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bbc.com/news/articles/c231dv9zpz3o"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[406]]
#> List of 9
#>  $ by         : chr "sabas_ge"
#>  $ descendants: int 70
#>  $ id         : int 46057266
#>  $ kids       : int [1:23] 46073027 46072747 46074059 46073562 46073234 46078799 46075023 46077211 46073821 46077166 ...
#>  $ score      : int 184
#>  $ time       : POSIXct[1:1], format: "2025-11-26 13:36:19"
#>  $ title      : chr "Memories of .us"
#>  $ type       : chr "story"
#>  $ url        : chr "https://computer.rip/2025-11-11-dot-us.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[407]]
#> List of 9
#>  $ by         : chr "toomuchtodo"
#>  $ descendants: int 38
#>  $ id         : int 46102583
#>  $ kids       : int [1:10] 46102842 46103523 46102796 46102635 46102803 46102749 46102790 46102916 46102769 46102646
#>  $ score      : int 66
#>  $ time       : POSIXct[1:1], format: "2025-12-01 01:54:16"
#>  $ title      : chr "In Re: 23andMe, Inc. Customer Data Security Breach Litigation"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.23andmedatasettlement.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[408]]
#> List of 9
#>  $ by         : chr "ibobev"
#>  $ descendants: int 146
#>  $ id         : int 46055935
#>  $ kids       : int [1:25] 46057537 46057819 46061842 46057705 46057132 46057230 46057269 46062048 46063924 46057802 ...
#>  $ score      : int 290
#>  $ time       : POSIXct[1:1], format: "2025-11-26 10:06:41"
#>  $ title      : chr "A cell so minimal that it challenges definitions of life"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.quantamagazine.org/a-cell-so-minimal-that-it-challenges-definitions-of-life-20251124/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[409]]
#> List of 9
#>  $ by         : chr "maxloh"
#>  $ descendants: int 85
#>  $ id         : int 46061208
#>  $ kids       : int [1:17] 46064189 46066553 46070775 46064021 46065223 46063872 46063245 46063283 46063375 46069845 ...
#>  $ score      : int 190
#>  $ time       : POSIXct[1:1], format: "2025-11-26 19:10:24"
#>  $ title      : chr "Fara-7B: An efficient agentic model for computer use"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/microsoft/fara"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[410]]
#> List of 10
#>  $ by         : chr "agreeahmed"
#>  $ descendants: int 222
#>  $ id         : int 46048252
#>  $ kids       : int [1:46] 46056225 46048972 46054904 46048836 46052567 46053109 46051076 46048373 46051880 46048412 ...
#>  $ score      : int 401
#>  $ text       : chr "Hi HN! For the past bit we’ve been building Flowglad (<a href=\"https:&#x2F;&#x2F;flowglad.com\">https:&#x2F;&#"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-25 17:33:50"
#>  $ title      : chr "Show HN: We built an open source, zero webhooks payment processor"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/flowglad/flowglad"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[411]]
#> List of 9
#>  $ by         : chr "ndsipa_pomu"
#>  $ descendants: int 2
#>  $ id         : int 46111497
#>  $ kids       : int [1:2] 46115410 46116663
#>  $ score      : int 18
#>  $ time       : POSIXct[1:1], format: "2025-12-01 19:00:28"
#>  $ title      : chr "Police consider corporate manslaughter charges in Post Office scandal"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bbc.co.uk/news/articles/c14vxlxv4kko"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[412]]
#> List of 9
#>  $ by         : chr "luxpir"
#>  $ descendants: int 5
#>  $ id         : int 46105728
#>  $ kids       : int [1:6] 46107076 46107790 46109989 46105923 46107815 46108579
#>  $ score      : int 13
#>  $ time       : POSIXct[1:1], format: "2025-12-01 10:26:27"
#>  $ title      : chr "I have high levels of forever chemicals in my blood – what can I do about it?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bbc.co.uk/news/articles/ce8z8pv1e0ko"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[413]]
#> List of 8
#>  $ by         : chr "rbanffy"
#>  $ descendants: int 0
#>  $ id         : int 46091181
#>  $ score      : int 6
#>  $ time       : POSIXct[1:1], format: "2025-11-29 21:58:12"
#>  $ title      : chr "What We Know About the DOE's New Genesis Mission"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.hpcwire.com/2025/11/26/heres-what-we-know-about-the-does-new-genesis-mission/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[414]]
#> List of 9
#>  $ by         : chr "robtherobber"
#>  $ descendants: int 32
#>  $ id         : int 46087333
#>  $ kids       : int [1:9] 46088475 46088885 46088855 46088630 46089185 46089475 46100747 46100121 46089217
#>  $ score      : int 88
#>  $ time       : POSIXct[1:1], format: "2025-11-29 13:19:06"
#>  $ title      : chr "Users brutually reject Microsoft's \"Copilot for work\" in Edge and Windows 11"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.windowslatest.com/2025/11/28/you-heard-wrong-users-brutually-reject-microsofts-copilot-for-work-in-"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[415]]
#> List of 9
#>  $ by         : chr "meetpateltech"
#>  $ descendants: int 1
#>  $ id         : int 46106030
#>  $ kids       : int 46110893
#>  $ score      : int 63
#>  $ time       : POSIXct[1:1], format: "2025-12-01 11:11:15"
#>  $ title      : chr "DeepSeek-v3.2"
#>  $ type       : chr "story"
#>  $ url        : chr "https://huggingface.co/deepseek-ai/DeepSeek-V3.2"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[416]]
#> List of 9
#>  $ by         : chr "pseudolus"
#>  $ descendants: int 1
#>  $ id         : int 46112877
#>  $ kids       : int 46112926
#>  $ score      : int 6
#>  $ time       : POSIXct[1:1], format: "2025-12-01 20:39:24"
#>  $ title      : chr "Netflix drops support for casting to most TVs"
#>  $ type       : chr "story"
#>  $ url        : chr "https://arstechnica.com/gadgets/2025/12/netflix-quietly-drops-support-for-casting-to-most-tvs/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[417]]
#> List of 9
#>  $ by         : chr "OuterVale"
#>  $ descendants: int 117
#>  $ id         : int 46063272
#>  $ kids       : int [1:14] 46063499 46067491 46066303 46063932 46065238 46077312 46066832 46067676 46067861 46066986 ...
#>  $ score      : int 220
#>  $ time       : POSIXct[1:1], format: "2025-11-26 22:57:56"
#>  $ title      : chr "Running Unsupported iOS on Deprecated Devices"
#>  $ type       : chr "story"
#>  $ url        : chr "https://nyansatan.github.io/run-unsupported-ios/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[418]]
#> List of 8
#>  $ by         : chr "sparklost"
#>  $ descendants: int 0
#>  $ id         : int 46088116
#>  $ score      : int 8
#>  $ time       : POSIXct[1:1], format: "2025-11-29 15:11:35"
#>  $ title      : chr "Endcord: The most feature-rich Discord terminal client"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/sparklost/endcord"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[419]]
#> List of 9
#>  $ by         : chr "fragebogen"
#>  $ descendants: int 426
#>  $ id         : int 46077393
#>  $ kids       : int [1:38] 46077508 46077602 46078213 46077641 46077547 46077925 46077501 46077658 46079375 46078065 ...
#>  $ score      : int 632
#>  $ time       : POSIXct[1:1], format: "2025-11-28 10:36:08"
#>  $ title      : chr "EU Council Approves New \"Chat Control\" Mandate Pushing Mass Surveillance"
#>  $ type       : chr "story"
#>  $ url        : chr "https://reclaimthenet.org/eu-council-approves-new-chat-control-mandate-pushing-mass-surveillance"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[420]]
#> List of 8
#>  $ by         : chr "doener"
#>  $ descendants: int 0
#>  $ id         : int 46086332
#>  $ score      : int 15
#>  $ time       : POSIXct[1:1], format: "2025-11-29 09:48:10"
#>  $ title      : chr "SteamOS performs better in gaming than Windows 11 on the new Lenovo Legion Go S"
#>  $ type       : chr "story"
#>  $ url        : chr "https://en.movilforum.com/SteamOS-performs-better-in-gaming-than-Windows-11-on-the-new-Lenovo-Legion-Go-S./"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[421]]
#> List of 9
#>  $ by         : chr "onemoresoop"
#>  $ descendants: int 5
#>  $ id         : int 46114510
#>  $ kids       : int [1:4] 46114769 46114693 46115426 46114789
#>  $ score      : int 17
#>  $ time       : POSIXct[1:1], format: "2025-12-01 22:48:48"
#>  $ title      : chr "Musk says H-1B visas being 'gamed' by outsourcing firms"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bbc.com/news/articles/c1j9p43d0zzo"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[422]]
#> List of 9
#>  $ by         : chr "snvzz"
#>  $ descendants: int 17
#>  $ id         : int 46053262
#>  $ kids       : int [1:4] 46055010 46053829 46055981 46057226
#>  $ score      : int 62
#>  $ time       : POSIXct[1:1], format: "2025-11-26 01:51:26"
#>  $ title      : chr "BebboSSH: SSH2 implementation for Amiga systems (68000, GPLv3)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://franke.ms/git/bebbo/bebbossh"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[423]]
#> List of 9
#>  $ by         : chr "doener"
#>  $ descendants: int 247
#>  $ id         : int 46073855
#>  $ kids       : int [1:23] 46074012 46074000 46074374 46075255 46075759 46073999 46074534 46074545 46074476 46076529 ...
#>  $ score      : int 333
#>  $ time       : POSIXct[1:1], format: "2025-11-27 22:48:44"
#>  $ title      : chr "250MWh 'Sand Battery' to start construction in Finland"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.energy-storage.news/250mwh-sand-battery-to-start-construction-in-finland-for-both-heating-and-ancillary-services/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[424]]
#> List of 9
#>  $ by         : chr "kerim-ca"
#>  $ descendants: int 2
#>  $ id         : int 46090574
#>  $ kids       : int [1:2] 46091353 46091552
#>  $ score      : int 58
#>  $ time       : POSIXct[1:1], format: "2025-11-29 20:37:59"
#>  $ title      : chr "Joe Armstrong interviews Alan Kay (2016) [video]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.youtube.com/watch?v=fhOHn9TClXY"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[425]]
#> List of 9
#>  $ by         : chr "bookofjoe"
#>  $ descendants: int 2
#>  $ id         : int 46093132
#>  $ kids       : int [1:2] 46096456 46093135
#>  $ score      : int 19
#>  $ time       : POSIXct[1:1], format: "2025-11-30 02:49:09"
#>  $ title      : chr "Parkrun is an unwitting British public-health success"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.economist.com/britain/2025/10/24/parkrun-is-an-unwitting-british-public-health-success"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[426]]
#> List of 9
#>  $ by         : chr "billybuckwheat"
#>  $ descendants: int 14
#>  $ id         : int 46098965
#>  $ kids       : int [1:8] 46099387 46099521 46100696 46101207 46099615 46099376 46099086 46099299
#>  $ score      : int 34
#>  $ time       : POSIXct[1:1], format: "2025-11-30 18:12:32"
#>  $ title      : chr "Does 'Laziness' Start in the Brain?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.theguardian.com/books/2025/nov/30/does-laziness-start-in-the-brain-apathy-motivation"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[427]]
#> List of 9
#>  $ by         : chr "typeofhuman"
#>  $ descendants: int 5
#>  $ id         : int 46117639
#>  $ kids       : int 46117715
#>  $ score      : int 7
#>  $ time       : POSIXct[1:1], format: "2025-12-02 04:44:23"
#>  $ title      : chr "US FDA memo links at least 10 child deaths to Covid vaccines"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.reuters.com/business/healthcare-pharmaceuticals/us-fda-memo-links-10-child-deaths-covid-vaccines-ny"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[428]]
#> List of 9
#>  $ by         : chr "progfan234"
#>  $ descendants: int 1
#>  $ id         : int 46099512
#>  $ kids       : int 46099513
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-11-30 19:19:02"
#>  $ title      : chr "Yore – Deterministic document indexer for large, agent-driven codebases"
#>  $ type       : chr "story"
#>  $ url        : chr "http://github.com/rahulrajaram/yore"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[429]]
#> List of 9
#>  $ by         : chr "tosh"
#>  $ descendants: int 5
#>  $ id         : int 46085897
#>  $ kids       : int [1:3] 46088193 46088801 46088372
#>  $ score      : int 18
#>  $ time       : POSIXct[1:1], format: "2025-11-29 08:14:23"
#>  $ title      : chr "The undeserved status of the pigeon-hole principle (1991)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.cs.utexas.edu/~EWD/transcriptions/EWD10xx/EWD1094.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[430]]
#> List of 9
#>  $ by         : chr "mindracer"
#>  $ descendants: int 1
#>  $ id         : int 46106429
#>  $ kids       : int [1:2] 46109434 46109439
#>  $ score      : int 10
#>  $ time       : POSIXct[1:1], format: "2025-12-01 12:09:25"
#>  $ title      : chr "Retracted: Safety Evaluation and Risk Assessment of the Herbicide Roundup"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.sciencedirect.com:5037/science/article/pii/S0273230099913715"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[431]]
#> List of 9
#>  $ by         : chr "myth_drannon"
#>  $ descendants: int 1
#>  $ id         : int 46092763
#>  $ kids       : int 46096031
#>  $ score      : int 11
#>  $ time       : POSIXct[1:1], format: "2025-11-30 01:45:14"
#>  $ title      : chr "The Writing Is on the Wall for Handwriting Recognition"
#>  $ type       : chr "story"
#>  $ url        : chr "https://newsletter.dancohen.org/archive/the-writing-is-on-the-wall-for-handwriting-recognition/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[432]]
#> List of 9
#>  $ by         : chr "joshwcomeau"
#>  $ descendants: int 98
#>  $ id         : int 46047053
#>  $ kids       : int [1:18] 46053881 46056108 46053976 46053414 46054235 46054982 46054825 46054416 46054898 46054460 ...
#>  $ score      : int 306
#>  $ time       : POSIXct[1:1], format: "2025-11-25 15:57:54"
#>  $ title      : chr "New layouts with CSS Subgrid"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.joshwcomeau.com/css/subgrid/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[433]]
#> List of 8
#>  $ by         : chr "bookofjoe"
#>  $ descendants: int 0
#>  $ id         : int 46089669
#>  $ score      : int 10
#>  $ time       : POSIXct[1:1], format: "2025-11-29 18:32:34"
#>  $ title      : chr "Archaeologists Find 2,250-Year-Old Monument Beneath Ancient Roman City"
#>  $ type       : chr "story"
#>  $ url        : chr "https://scitechdaily.com/archaeologists-uncover-massive-2250-year-old-monument-beneath-ancient-roman-city/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[434]]
#> List of 9
#>  $ by         : chr "walterbell"
#>  $ descendants: int 4
#>  $ id         : int 46112089
#>  $ kids       : int [1:2] 46112547 46112277
#>  $ score      : int 7
#>  $ time       : POSIXct[1:1], format: "2025-12-01 19:41:27"
#>  $ title      : chr "IDF tightens cellphone regulations, bars Android phones"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.israelnationalnews.com/news/418418"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[435]]
#> List of 9
#>  $ by         : chr "lifeisstillgood"
#>  $ descendants: int 73
#>  $ id         : int 46055421
#>  $ kids       : int [1:8] 46055919 46057026 46058725 46057181 46061957 46063270 46064426 46056905
#>  $ score      : int 229
#>  $ time       : POSIXct[1:1], format: "2025-11-26 08:40:29"
#>  $ title      : chr "Statistical Process Control in Python"
#>  $ type       : chr "story"
#>  $ url        : chr "https://timothyfraser.com/sigma/statistical-process-control-in-python.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[436]]
#> List of 8
#>  $ by         : chr "nateb2022"
#>  $ descendants: int 0
#>  $ id         : int 46080054
#>  $ score      : int 23
#>  $ time       : POSIXct[1:1], format: "2025-11-28 16:26:41"
#>  $ title      : chr "Travels: Fast framework-agnostic undo/redo powered by mutative JSON patch"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/mutativejs/travels"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[437]]
#> List of 9
#>  $ by         : chr "danbitengo"
#>  $ descendants: int 36
#>  $ id         : int 46069598
#>  $ kids       : int [1:17] 46069808 46071820 46069635 46073042 46080740 46071450 46071688 46071913 46073119 46073192 ...
#>  $ score      : int 87
#>  $ time       : POSIXct[1:1], format: "2025-11-27 14:31:44"
#>  $ title      : chr "Show HN: SyncKit – Offline-first sync engine (Rust/WASM and TypeScript)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/Dancode-188/synckit"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[438]]
#> List of 9
#>  $ by         : chr "todsacerdoti"
#>  $ descendants: int 55
#>  $ id         : int 46047958
#>  $ kids       : int [1:10] 46052446 46051353 46051399 46054635 46049409 46057791 46051190 46061286 46057086 46051483
#>  $ score      : int 191
#>  $ time       : POSIXct[1:1], format: "2025-11-25 17:07:06"
#>  $ title      : chr "Unifying our mobile and desktop domains"
#>  $ type       : chr "story"
#>  $ url        : chr "https://techblog.wikimedia.org/2025/11/21/unifying-mobile-and-desktop-domains/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[439]]
#> List of 9
#>  $ by         : chr "rguiscard"
#>  $ descendants: int 1
#>  $ id         : int 46118545
#>  $ kids       : int 46118571
#>  $ score      : int 6
#>  $ time       : POSIXct[1:1], format: "2025-12-02 07:22:11"
#>  $ title      : chr "China claims 3D hybrid bonding techniques for 120 TFLOPS of power"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.tomshardware.com/tech-industry/semiconductors/china-claims-14nm-ai-chip-can-rival-nvidia-4nm-gpus"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[440]]
#> List of 9
#>  $ by         : chr "meetpateltech"
#>  $ descendants: int 117
#>  $ id         : int 46046916
#>  $ kids       : int [1:24] 46049528 46048014 46048635 46049298 46047533 46047519 46047494 46054924 46048115 46047865 ...
#>  $ score      : int 369
#>  $ time       : POSIXct[1:1], format: "2025-11-25 15:47:14"
#>  $ title      : chr "FLUX.2: Frontier Visual Intelligence"
#>  $ type       : chr "story"
#>  $ url        : chr "https://bfl.ai/blog/flux-2"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[441]]
#> List of 8
#>  $ by         : chr "gpi"
#>  $ descendants: int 0
#>  $ id         : int 46111813
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-12-01 19:22:40"
#>  $ title      : chr "Passwords Aren't Going Anywhere"
#>  $ type       : chr "story"
#>  $ url        : chr "https://ciamweekly.substack.com/p/passwords-arent-going-anywhere"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[442]]
#> List of 8
#>  $ by         : chr "yberreby"
#>  $ descendants: int 0
#>  $ id         : int 46059386
#>  $ score      : int 6
#>  $ time       : POSIXct[1:1], format: "2025-11-26 16:46:05"
#>  $ title      : chr "Drawing with Chaos"
#>  $ type       : chr "story"
#>  $ url        : chr "https://yberreby.com/posts/strangedraw/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[443]]
#> List of 9
#>  $ by         : chr "mooreds"
#>  $ descendants: int 14
#>  $ id         : int 46096921
#>  $ kids       : int [1:7] 46097380 46098047 46098656 46098346 46097301 46097323 46097248
#>  $ score      : int 39
#>  $ time       : POSIXct[1:1], format: "2025-11-30 14:29:26"
#>  $ title      : chr "Geothermal Breakthrough in South Texas Signals New Era for Ercot"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.powermag.com/geothermal-breakthrough-in-south-texas-signals-new-era-for-ercot/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[444]]
#> List of 9
#>  $ by         : chr "Anon84"
#>  $ descendants: int 43
#>  $ id         : int 46086863
#>  $ kids       : int [1:6] 46087540 46087345 46087284 46087307 46087341 46087740
#>  $ score      : int 70
#>  $ time       : POSIXct[1:1], format: "2025-11-29 11:52:21"
#>  $ title      : chr "DMT-induced shifts in criticality correlate with self-dissolution"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.jneurosci.org/content/early/2025/10/24/JNEUROSCI.0344-25.2025"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[445]]
#> List of 9
#>  $ by         : chr "Frieren"
#>  $ descendants: int 38
#>  $ id         : int 46079460
#>  $ kids       : int [1:9] 46080515 46080018 46080140 46081057 46079799 46079730 46079823 46081049 46099644
#>  $ score      : int 128
#>  $ time       : POSIXct[1:1], format: "2025-11-28 15:27:49"
#>  $ title      : chr "Swedish publishers file police report against Meta's Zuckerberg for fraud"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.sverigesradio.se/artikel/swedish-publishers-file-police-report-against-metas-zuckerberg-for-fraud"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[446]]
#> List of 8
#>  $ by         : chr "todsacerdoti"
#>  $ descendants: int 0
#>  $ id         : int 46098356
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-11-30 17:02:32"
#>  $ title      : chr "Interop and MathML Core"
#>  $ type       : chr "story"
#>  $ url        : chr "https://conflor.es/blog/2025-11-27-interop-and-mathml/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[447]]
#> List of 9
#>  $ by         : chr "m-hodges"
#>  $ descendants: int 2
#>  $ id         : int 46098222
#>  $ kids       : int [1:2] 46099419 46098818
#>  $ score      : int 6
#>  $ time       : POSIXct[1:1], format: "2025-11-30 16:50:35"
#>  $ title      : chr "Trolley Problems"
#>  $ type       : chr "story"
#>  $ url        : chr "https://neal.fun/absurd-trolley-problems/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[448]]
#> List of 9
#>  $ by         : chr "brunohaid"
#>  $ descendants: int 262
#>  $ id         : int 46066482
#>  $ kids       : int [1:27] 46068030 46068524 46068179 46068299 46069005 46068825 46074341 46077698 46072691 46068184 ...
#>  $ score      : int 312
#>  $ time       : POSIXct[1:1], format: "2025-11-27 06:53:17"
#>  $ title      : chr "The Nerd Reich – Silicon Valley Fascism and the War on Democracy"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.simonandschuster.com/books/The-Nerd-Reich/Gil-Duran/9781668221402"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[449]]
#> List of 9
#>  $ by         : chr "jxmorris12"
#>  $ descendants: int 0
#>  $ id         : int 46098108
#>  $ kids       : int 46113390
#>  $ score      : int 7
#>  $ time       : POSIXct[1:1], format: "2025-11-30 16:39:46"
#>  $ title      : chr "What I don't like about chains of thoughts"
#>  $ type       : chr "story"
#>  $ url        : chr "https://samsja.github.io/blogs/cot/blog/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[450]]
#> List of 9
#>  $ by         : chr "Brajeshwar"
#>  $ descendants: int 2
#>  $ id         : int 46118450
#>  $ kids       : int 46118508
#>  $ score      : int 14
#>  $ time       : POSIXct[1:1], format: "2025-12-02 07:05:22"
#>  $ title      : chr "Apple to resist India order to preload state-run app as political outcry builds"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.reuters.com/sustainability/boards-policy-regulation/apple-resist-india-order-preload-state-run-app-"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[451]]
#> List of 9
#>  $ by         : chr "kunal51107"
#>  $ descendants: int 1
#>  $ id         : int 46097267
#>  $ kids       : int 46097283
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-11-30 15:15:41"
#>  $ title      : chr "Show HN: Speculative Decoding from Scratch in PyTorch (2.8x CPU Speedup)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/kunal51107/Speculative-decoding-engine"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[452]]
#> List of 9
#>  $ by         : chr "dboreham"
#>  $ descendants: int 6
#>  $ id         : int 46082210
#>  $ kids       : int [1:2] 46082234 46085006
#>  $ score      : int 20
#>  $ time       : POSIXct[1:1], format: "2025-11-28 19:58:45"
#>  $ title      : chr "Airbus grounds A320 aircraft amid solar radiation risk"
#>  $ type       : chr "story"
#>  $ url        : chr "https://aerospaceglobalnews.com/news/a320-grounding-radiation/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[453]]
#> List of 9
#>  $ by         : chr "ForHackernews"
#>  $ descendants: int 39
#>  $ id         : int 46070868
#>  $ kids       : int [1:7] 46072083 46071721 46073421 46074598 46072049 46072541 46072926
#>  $ score      : int 46
#>  $ time       : POSIXct[1:1], format: "2025-11-27 16:38:35"
#>  $ title      : chr "The VanDersarl Blériot: a 1911 airplane homebuilt by teenage brothers (2017)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.historynet.com/vandersarl-bleriot/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[454]]
#> List of 9
#>  $ by         : chr "MilnerRoute"
#>  $ descendants: int 53
#>  $ id         : int 46085344
#>  $ kids       : int [1:12] 46085714 46085545 46086296 46085606 46086376 46085678 46087782 46088790 46086342 46085903 ...
#>  $ score      : int 119
#>  $ time       : POSIXct[1:1], format: "2025-11-29 05:22:13"
#>  $ title      : chr "The 'S&P 493' reveals a different U.S. economy"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.msn.com/en-us/money/markets/the-s-p-493-reveals-a-very-different-us-economy/ar-AA1R1VUJ"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[455]]
#> List of 9
#>  $ by         : chr "toomanyrichies"
#>  $ descendants: int 2
#>  $ id         : int 46110582
#>  $ kids       : int [1:2] 46110689 46110876
#>  $ score      : int 8
#>  $ time       : POSIXct[1:1], format: "2025-12-01 17:55:01"
#>  $ title      : chr "Microsoft Teams Starts Telling Your Company If You're Not at Work"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.forbes.com/sites/zakdoffman/2025/10/25/microsoft-teams-starts-telling-your-company-if-youre-not-at-work/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[456]]
#> List of 9
#>  $ by         : chr "speckx"
#>  $ descendants: int 328
#>  $ id         : int 46047580
#>  $ kids       : int [1:96] 46051391 46048999 46049129 46052217 46051725 46054887 46052043 46049133 46052744 46054911 ...
#>  $ score      : int 346
#>  $ time       : POSIXct[1:1], format: "2025-11-25 16:38:57"
#>  $ title      : chr "Python is not a great language for data science"
#>  $ type       : chr "story"
#>  $ url        : chr "https://blog.genesmindsmachines.com/p/python-is-not-a-great-language-for"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[457]]
#> List of 9
#>  $ by         : chr "binarycrusader"
#>  $ descendants: int 145
#>  $ id         : int 46059737
#>  $ kids       : int [1:32] 46060917 46061287 46060715 46061859 46068997 46062335 46060645 46061626 46060795 46061078 ...
#>  $ score      : int 268
#>  $ time       : POSIXct[1:1], format: "2025-11-26 17:12:01"
#>  $ title      : chr "DRAM prices are spiking, but I don't trust the industry's why"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.xda-developers.com/dram-prices-spiking-dont-trust-industry-reasons/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[458]]
#> List of 9
#>  $ by         : chr "PikelEmi"
#>  $ descendants: int 286
#>  $ id         : int 46068015
#>  $ kids       : int [1:17] 46071139 46068204 46070181 46068275 46068691 46068861 46068951 46071440 46069430 46068869 ...
#>  $ score      : int 212
#>  $ time       : POSIXct[1:1], format: "2025-11-27 10:54:02"
#>  $ title      : chr "Arthur Conan Doyle explored men’s mental health through Sherlock Holmes"
#>  $ type       : chr "story"
#>  $ url        : chr "https://theconversation.com/arthur-conan-doyle-explored-mens-mental-health-through-his-sherlock-holmes-stories-246728"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[459]]
#> List of 9
#>  $ by         : chr "rob"
#>  $ descendants: int 2
#>  $ id         : int 46096375
#>  $ kids       : int [1:2] 46121530 46096567
#>  $ score      : int 7
#>  $ time       : POSIXct[1:1], format: "2025-11-30 13:14:23"
#>  $ title      : chr "Zig Book – An open, technical and introductory book for Zig"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/pedropark99/zig-book"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[460]]
#> List of 9
#>  $ by         : chr "level09"
#>  $ descendants: int 0
#>  $ id         : int 46094552
#>  $ score      : int 3
#>  $ text       : chr "Hi HN! I&#x27;ve been building ReadyKit, an open-source SaaS boilerplate that handles all the hard parts: multi"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-30 07:18:15"
#>  $ title      : chr "Show HN: ReadyKit – Superfast SaaS Starter with Multi-Tenant Workspaces"
#>  $ type       : chr "story"
#>  $ url        : chr "https://readykit.dev/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[461]]
#> List of 9
#>  $ by         : chr "todsacerdoti"
#>  $ descendants: int 2
#>  $ id         : int 46079567
#>  $ kids       : int 46080722
#>  $ score      : int 33
#>  $ time       : POSIXct[1:1], format: "2025-11-28 15:40:49"
#>  $ title      : chr "Generating 3D Meshes from Text"
#>  $ type       : chr "story"
#>  $ url        : chr "https://cprimozic.net/notes/posts/generating-3d-meshes-from-text/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[462]]
#> List of 9
#>  $ by         : chr "teleforce"
#>  $ descendants: int 7
#>  $ id         : int 46064065
#>  $ kids       : int [1:4] 46067111 46066349 46066445 46074354
#>  $ score      : int 64
#>  $ time       : POSIXct[1:1], format: "2025-11-27 00:42:13"
#>  $ title      : chr "DSP 101 Part 1: An Introductory Course in DSP System Design"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.analog.com/en/resources/analog-dialogue/articles/dsp-101-part-1.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[463]]
#> List of 8
#>  $ by         : chr "fanf2"
#>  $ descendants: int 0
#>  $ id         : int 46096193
#>  $ score      : int 7
#>  $ time       : POSIXct[1:1], format: "2025-11-30 12:42:04"
#>  $ title      : chr "Schubfach: The smallest floating point double-to-string impleme"
#>  $ type       : chr "story"
#>  $ url        : chr "https://vitaut.net/posts/2025/smallest-dtoa/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[464]]
#> List of 8
#>  $ by         : chr "dpatterbee"
#>  $ descendants: int 0
#>  $ id         : int 46109781
#>  $ score      : int 6
#>  $ time       : POSIXct[1:1], format: "2025-12-01 16:59:40"
#>  $ title      : chr "Proposed Price Increases for Sourcehut"
#>  $ type       : chr "story"
#>  $ url        : chr "https://sourcehut.org/blog/2025-12-01-proposed-pricing-changes/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[465]]
#> List of 10
#>  $ by         : chr "dsmurrell"
#>  $ descendants: int 17
#>  $ id         : int 46068138
#>  $ kids       : int [1:6] 46080262 46079400 46085379 46079452 46079466 46072991
#>  $ score      : int 36
#>  $ text       : chr "Hi all!<p>I built Spikelog because I kept wanting to track simple numbers over time but every time I looked at "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-27 11:10:51"
#>  $ title      : chr "Show HN: Spikelog – A simple metrics service for scripts, cron jobs, and MVPs"
#>  $ type       : chr "story"
#>  $ url        : chr "https://spikelog.com"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[466]]
#> List of 10
#>  $ by         : chr "upmostly"
#>  $ descendants: int 15
#>  $ id         : int 46078571
#>  $ kids       : int [1:6] 46085720 46100504 46082731 46086160 46082114 46084657
#>  $ score      : int 32
#>  $ text       : chr "Hi HN,<p>Over the past few months I&#x27;ve been building DB Pro with my co-founder. DB Pro is a modern desktop"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-28 13:44:08"
#>  $ title      : chr "Show HN: DB Pro – A Modern Desktop Client for Postgres, MySQL, SQLite and LibSQL"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.dbpro.app/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[467]]
#> List of 8
#>  $ by         : chr "doener"
#>  $ descendants: int 0
#>  $ id         : int 46095817
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-11-30 11:36:34"
#>  $ title      : chr "Z-Image: Powerful and highly efficient image generation model with 6B parameters"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/Tongyi-MAI/Z-Image"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[468]]
#> List of 8
#>  $ by         : chr "r721"
#>  $ descendants: int 0
#>  $ id         : int 46109294
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-01 16:25:53"
#>  $ title      : chr "Some people are unhappy with AI 2027 title and our AI timelines. Let me clarify"
#>  $ type       : chr "story"
#>  $ url        : chr "https://twitter.com/DKokotajlo/status/1992316608073847201"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[469]]
#> List of 8
#>  $ by         : chr "peter_d_sherman"
#>  $ descendants: int 0
#>  $ id         : int 46088281
#>  $ score      : int 14
#>  $ time       : POSIXct[1:1], format: "2025-11-29 15:34:19"
#>  $ title      : chr "Compact (8KB) embedded x86 BIOS for FPGA/emulators/386EX"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/b-dmitry1/BIOS"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[470]]
#> List of 9
#>  $ by         : chr "showesome"
#>  $ descendants: int 10
#>  $ id         : int 46092826
#>  $ kids       : int [1:3] 46092870 46094728 46118384
#>  $ score      : int 37
#>  $ time       : POSIXct[1:1], format: "2025-11-30 01:56:00"
#>  $ title      : chr "Built a Free, Unlimited Screen Recorder Because Everything Else Annoyed Me"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.indiehackers.com/post/built-a-free-unlimited-screen-recorder-because-everything-else-annoyed-me-pjS"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[471]]
#> List of 9
#>  $ by         : chr "thunderbong"
#>  $ descendants: int 6
#>  $ id         : int 46095834
#>  $ kids       : int [1:4] 46096183 46097605 46097686 46097400
#>  $ score      : int 22
#>  $ time       : POSIXct[1:1], format: "2025-11-30 11:40:01"
#>  $ title      : chr "Man behind in-flight Evil Twin WiFi attacks gets 7 years in prison"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bleepingcomputer.com/news/security/man-behind-in-flight-evil-twin-wifi-attacks-gets-7-years-in-prison/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[472]]
#> List of 9
#>  $ by         : chr "AbstractH24"
#>  $ descendants: int 15
#>  $ id         : int 46099222
#>  $ kids       : int [1:7] 46100681 46100301 46099546 46099790 46099945 46103248 46103385
#>  $ score      : int 25
#>  $ time       : POSIXct[1:1], format: "2025-11-30 18:46:03"
#>  $ title      : chr "Garry Tan says MCP \"barely works\" today"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.reddit.com/r/mcp/s/dQoNo0fSx3"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[473]]
#> List of 9
#>  $ by         : chr "toomuchtodo"
#>  $ descendants: int 154
#>  $ id         : int 46079987
#>  $ kids       : int [1:23] 46082136 46080098 46080373 46084293 46081244 46080730 46080327 46080060 46081383 46080746 ...
#>  $ score      : int 192
#>  $ time       : POSIXct[1:1], format: "2025-11-28 16:21:09"
#>  $ title      : chr "AI Adoption Rates Starting to Flatten Out"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.apolloacademy.com/ai-adoption-rates-starting-to-flatten-out/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[474]]
#> List of 9
#>  $ by         : chr "venamresm__"
#>  $ descendants: int 10
#>  $ id         : int 46071030
#>  $ kids       : int [1:2] 46072275 46073010
#>  $ score      : int 124
#>  $ time       : POSIXct[1:1], format: "2025-11-27 16:55:30"
#>  $ title      : chr "The input stack on Linux: An end-to-end architecture overview"
#>  $ type       : chr "story"
#>  $ url        : chr "https://venam.net/blog/unix/2025/11/27/input_devices_linux.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[475]]
#> List of 9
#>  $ by         : chr "manojlds"
#>  $ descendants: int 62
#>  $ id         : int 46120728
#>  $ kids       : int [1:25] 46121153 46121499 46121428 46121698 46121533 46121604 46121520 46121481 46121566 46121928 ...
#>  $ score      : int 36
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:54:56"
#>  $ title      : chr "Gary Tan claims Zoho will be out of business due to vibe coding"
#>  $ type       : chr "story"
#>  $ url        : chr "https://twitter.com/garrytan/status/1995664097007091818"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[476]]
#> List of 9
#>  $ by         : chr "TechTechTech"
#>  $ descendants: int 44
#>  $ id         : int 46077885
#>  $ kids       : int [1:9] 46078643 46078757 46078953 46079967 46078658 46080249 46077914 46078801 46078236
#>  $ score      : int 93
#>  $ time       : POSIXct[1:1], format: "2025-11-28 12:00:35"
#>  $ title      : chr "Switzerland: Data Protection Officers Impose Broad Cloud Ban for Authorities"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.heise.de/en/news/Switzerland-Data-Protection-Officers-Impose-Broad-Cloud-Ban-for-Authorities-11093477.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[477]]
#> List of 9
#>  $ by         : chr "numeri"
#>  $ descendants: int 95
#>  $ id         : int 46073033
#>  $ kids       : int [1:29] 46075298 46073525 46076297 46074509 46073401 46073593 46073570 46073560 46073423 46074255 ...
#>  $ score      : int 226
#>  $ time       : POSIXct[1:1], format: "2025-11-27 20:37:51"
#>  $ title      : chr "Underrated reasons to be thankful V"
#>  $ type       : chr "story"
#>  $ url        : chr "https://dynomight.net/thanks-5/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[478]]
#> List of 8
#>  $ by         : chr "daninet"
#>  $ descendants: int 0
#>  $ id         : int 46095474
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-11-30 10:21:34"
#>  $ title      : chr "Show HN: MTXT – Music Text Format"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/Daninet/mtxt"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[479]]
#> List of 9
#>  $ by         : chr "alwillis"
#>  $ descendants: int 5
#>  $ id         : int 46103078
#>  $ kids       : int [1:4] 46105657 46103421 46103418 46103194
#>  $ score      : int 32
#>  $ time       : POSIXct[1:1], format: "2025-12-01 03:09:35"
#>  $ title      : chr "I Tested the M5 iPad Pro's Neural-Accelerated AI, and the Hype Is Real"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.macstories.net/stories/ipad-pro-m5-neural-benchmarks-mlx/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[480]]
#> List of 9
#>  $ by         : chr "surprisetalk"
#>  $ descendants: int 15
#>  $ id         : int 46079857
#>  $ kids       : int [1:7] 46080457 46082891 46081193 46080949 46085728 46080726 46081110
#>  $ score      : int 24
#>  $ time       : POSIXct[1:1], format: "2025-11-28 16:08:52"
#>  $ title      : chr "Playtiles: The Pocket-Sized Gaming Platform"
#>  $ type       : chr "story"
#>  $ url        : chr "https://get.playtil.es"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[481]]
#> List of 9
#>  $ by         : chr "digital55"
#>  $ descendants: int 158
#>  $ id         : int 46049932
#>  $ kids       : int [1:15] 46053842 46056993 46053395 46051930 46051824 46052824 46053266 46052977 46052869 46051236 ...
#>  $ score      : int 254
#>  $ time       : POSIXct[1:1], format: "2025-11-25 19:53:20"
#>  $ title      : chr "A new bridge links the math of infinity to computer science"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.quantamagazine.org/a-new-bridge-links-the-strange-math-of-infinity-to-computer-science-20251121/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[482]]
#> List of 9
#>  $ by         : chr "thinkingemote"
#>  $ descendants: int 3
#>  $ id         : int 46056757
#>  $ kids       : int [1:3] 46059398 46061431 46066411
#>  $ score      : int 43
#>  $ time       : POSIXct[1:1], format: "2025-11-26 12:26:49"
#>  $ title      : chr "Qiskit open-source SDK for working with quantum computers"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/Qiskit/qiskit"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[483]]
#> List of 9
#>  $ by         : chr "cf100clunk"
#>  $ descendants: int 151
#>  $ id         : int 46080161
#>  $ kids       : int [1:32] 46080862 46080672 46082085 46081235 46080847 46082847 46080412 46082367 46082376 46081447 ...
#>  $ score      : int 188
#>  $ time       : POSIXct[1:1], format: "2025-11-28 16:37:32"
#>  $ title      : chr "Stellantis Is Spamming Owners' Screens with Pop-Up Ads for New Car Discounts"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.thedrive.com/news/stellantis-is-spamming-owners-screens-with-pop-up-ads-for-new-car-discounts"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[484]]
#> List of 8
#>  $ by         : chr "fleahunter"
#>  $ descendants: int 0
#>  $ id         : int 46108573
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-12-01 15:29:56"
#>  $ title      : chr "College Students Choosing A.I. Majors over Computer Science"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.nytimes.com/2025/12/01/technology/college-computer-science-ai-boom.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[485]]
#> List of 9
#>  $ by         : chr "birdculture"
#>  $ descendants: int 1
#>  $ id         : int 46095087
#>  $ kids       : int 46095228
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-11-30 09:11:40"
#>  $ title      : chr "Self-hosting my photos with Immich"
#>  $ type       : chr "story"
#>  $ url        : chr "https://michael.stapelberg.ch/posts/2025-11-29-self-hosting-photos-with-immich/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[486]]
#> List of 9
#>  $ by         : chr "jonbaer"
#>  $ descendants: int 60
#>  $ id         : int 46052685
#>  $ kids       : int [1:8] 46056306 46053696 46053859 46058456 46056965 46053675 46057737 46057763
#>  $ score      : int 206
#>  $ time       : POSIXct[1:1], format: "2025-11-26 00:33:29"
#>  $ title      : chr "CS234: Reinforcement Learning Winter 2025"
#>  $ type       : chr "story"
#>  $ url        : chr "https://web.stanford.edu/class/cs234/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[487]]
#> List of 9
#>  $ by         : chr "birdculture"
#>  $ descendants: int 1
#>  $ id         : int 46091075
#>  $ kids       : int 46091370
#>  $ score      : int 7
#>  $ time       : POSIXct[1:1], format: "2025-11-29 21:45:38"
#>  $ title      : chr "Bfs: A breadth-first version of the Unix find command"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/tavianator/bfs"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[488]]
#> List of 8
#>  $ by         : chr "RyeCombinator"
#>  $ descendants: int 0
#>  $ id         : int 46118365
#>  $ score      : int 6
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:51:28"
#>  $ title      : chr "Six billion reasons to cheer for Shopify"
#>  $ type       : chr "story"
#>  $ url        : chr "https://world.hey.com/dhh/six-billion-reasons-to-cheer-for-shopify-55720846"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[489]]
#> List of 9
#>  $ by         : chr "latchkey"
#>  $ descendants: int 68
#>  $ id         : int 46075616
#>  $ kids       : int [1:18] 46077589 46077291 46077717 46079238 46077770 46077675 46079051 46080829 46078569 46077453 ...
#>  $ score      : int 108
#>  $ time       : POSIXct[1:1], format: "2025-11-28 04:50:57"
#>  $ title      : chr "Beads – A memory upgrade for your coding agent"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/steveyegge/beads"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[490]]
#> List of 9
#>  $ by         : chr "exvi"
#>  $ descendants: int 118
#>  $ id         : int 46053566
#>  $ kids       : int [1:15] 46054641 46054517 46054535 46057800 46053841 46058003 46054557 46054478 46053727 46058625 ...
#>  $ score      : int 149
#>  $ time       : POSIXct[1:1], format: "2025-11-26 02:31:41"
#>  $ title      : chr "Space Truckin' – The Nostromo (2012)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://alienseries.wordpress.com/2012/10/23/space-truckin-the-nostromo/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[491]]
#> List of 9
#>  $ by         : chr "blenderob"
#>  $ descendants: int 84
#>  $ id         : int 46080218
#>  $ kids       : int [1:6] 46080988 46081748 46082967 46082820 46082840 46082545
#>  $ score      : int 100
#>  $ time       : POSIXct[1:1], format: "2025-11-28 16:42:46"
#>  $ title      : chr "Lobsters Interview"
#>  $ type       : chr "story"
#>  $ url        : chr "https://susam.net/my-lobsters-interview.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[492]]
#> List of 9
#>  $ by         : chr "Bender"
#>  $ descendants: int 3
#>  $ id         : int 46102601
#>  $ kids       : int 46103211
#>  $ score      : int 15
#>  $ time       : POSIXct[1:1], format: "2025-12-01 01:56:29"
#>  $ title      : chr "Swiss government says give M365, and all SaaS, a miss as it lacks E2EE"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.theregister.com/2025/12/01/infosec_news_in_brief/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[493]]
#> List of 9
#>  $ by         : chr "toomuchtodo"
#>  $ descendants: int 5
#>  $ id         : int 46099592
#>  $ kids       : int [1:3] 46099635 46100920 46100281
#>  $ score      : int 19
#>  $ time       : POSIXct[1:1], format: "2025-11-30 19:27:43"
#>  $ title      : chr "Norway may break up with Europe's power grid over soaring energy prices"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.euractiv.com/news/norway-may-break-up-with-europes-power-grid-over-soaring-energy-prices/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[494]]
#> List of 9
#>  $ by         : chr "zdw"
#>  $ descendants: int 3
#>  $ id         : int 46065959
#>  $ kids       : int 46068978
#>  $ score      : int 29
#>  $ time       : POSIXct[1:1], format: "2025-11-27 05:22:28"
#>  $ title      : chr "Evaluating Uniform Memory Access Mode on AMD's Turin"
#>  $ type       : chr "story"
#>  $ url        : chr "https://chipsandcheese.com/p/evaluating-uniform-memory-access"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[495]]
#> List of 8
#>  $ by         : chr "doener"
#>  $ descendants: int 0
#>  $ id         : int 46100877
#>  $ score      : int 13
#>  $ time       : POSIXct[1:1], format: "2025-11-30 22:01:58"
#>  $ title      : chr "RIP Windows: Linux GPU Gaming Benchmarks on Bazzite [video]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.youtube.com/watch?v=ovOx4_8ajZ8"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[496]]
#> List of 9
#>  $ by         : chr "lukax"
#>  $ descendants: int 13
#>  $ id         : int 46100815
#>  $ kids       : int [1:6] 46101465 46102285 46101428 46101621 46102361 46104059
#>  $ score      : int 21
#>  $ time       : POSIXct[1:1], format: "2025-11-30 21:55:15"
#>  $ title      : chr "Did Nvidia Just Prove There Is No AI Bubble"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.planetearthandbeyond.co/p/did-nvidia-just-prove-there-is-no"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[497]]
#> List of 8
#>  $ by         : chr "systematizeD"
#>  $ descendants: int 0
#>  $ id         : int 46116008
#>  $ score      : int 6
#>  $ time       : POSIXct[1:1], format: "2025-12-02 01:08:26"
#>  $ title      : chr "Steam on Linux Use Easily Hits an All-Time High in November"
#>  $ type       : chr "story"
#>  $ url        : chr "https://store.steampowered.com/hwsurvey/Steam-Hardware-Software-Survey-Welcome-to-Steam"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[498]]
#> List of 9
#>  $ by         : chr "doener"
#>  $ descendants: int 1
#>  $ id         : int 46094589
#>  $ kids       : int 46094758
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-11-30 07:24:00"
#>  $ title      : chr "Aurora: The Linux-based ultimate workstation"
#>  $ type       : chr "story"
#>  $ url        : chr "https://getaurora.dev/en"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[499]]
#> List of 9
#>  $ by         : chr "durumcrustulum"
#>  $ descendants: int 13
#>  $ id         : int 46074183
#>  $ kids       : int [1:5] 46076898 46074381 46086231 46074373 46077753
#>  $ score      : int 42
#>  $ time       : POSIXct[1:1], format: "2025-11-27 23:42:00"
#>  $ title      : chr "ML-KEM Mythbusting"
#>  $ type       : chr "story"
#>  $ url        : chr "https://keymaterial.net/2025/11/27/ml-kem-mythbusting/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[500]]
#> List of 9
#>  $ by         : chr "WorldPeas"
#>  $ descendants: int 19
#>  $ id         : int 46051724
#>  $ kids       : int [1:3] 46053819 46053585 46052906
#>  $ score      : int 55
#>  $ time       : POSIXct[1:1], format: "2025-11-25 22:40:52"
#>  $ title      : chr "Notes on the Troubleshooting and Repair of Computer and Video Monitors"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.repairfaq.org/sam/monfaq.htm"
#>  - attr(*, "class")= chr "hn_item"
#> 
# }
```
