# Hacker News latest show stories

Retrieves latest show stories using Hacker News API

## Usage

``` r
get_latest_show_stories(max_items = NULL)
```

## Arguments

- max_items:

  Maximum number of items to retrieve. If max_items = NULL, returns all
  available

## Value

list of latest show HN stories

## Examples

``` r
# \donttest{
# get the latest show story on Hacker News
latest_show_story <- get_latest_show_stories(max_items = 1)
latest_show_story
#> [[1]]
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

# get 10 latest show stories on Hacker News
latest_10_show_stories <- get_latest_show_stories(max_items = 10)
latest_10_show_stories
#> [[1]]
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
#> [[2]]
#> List of 9
#>  $ by         : chr "ten-fold"
#>  $ descendants: int 0
#>  $ id         : int 46122139
#>  $ score      : int 2
#>  $ text       : chr "Hi HN,\nI recently left Uber after an intense decade as Senior and then Staff Engineer.<p>Coming from a small s"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:26:43"
#>  $ title      : chr "Show HN: I wrote a book for software engineers, based on 11 years at Uber"
#>  $ type       : chr "story"
#>  $ url        : chr "https://rfonti.gumroad.com/l/playbook"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[3]]
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
#> [[4]]
#> List of 10
#>  $ by         : chr "davailan"
#>  $ descendants: int 4
#>  $ id         : int 46119932
#>  $ kids       : int [1:3] 46121151 46120106 46120048
#>  $ score      : int 10
#>  $ text       : chr "Hi HN,<p>Would love your thoughts on Open Paper Digest. It’s a mobile feed that let’s you “doomscroll” through "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:55:09"
#>  $ title      : chr "Show HN: Doomscrolling Research Papers"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.openpaperdigest.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[5]]
#> List of 10
#>  $ by         : chr "cak"
#>  $ descendants: int 3
#>  $ id         : int 46119790
#>  $ kids       : int [1:2] 46119800 46119901
#>  $ score      : int 3
#>  $ text       : chr "I built a CLI tool called elf to streamline Advent of Code workflows. It removes a lot of the repetitive steps "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:35:00"
#>  $ title      : chr "Show HN: Elf – A CLI Helper for Advent of Code"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/cak/elf"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[6]]
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
#> [[7]]
#> List of 10
#>  $ by         : chr "rafferty97"
#>  $ descendants: int 1
#>  $ id         : int 46119615
#>  $ kids       : int 46119913
#>  $ score      : int 3
#>  $ text       : chr "I&#x27;ve spent the past two years building an app for quick, ad-hoc data manipulation because I was dissatisfi"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:07:31"
#>  $ title      : chr "Show HN: Visual, local-first data tool"
#>  $ type       : chr "story"
#>  $ url        : chr "https://columns.dev/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[8]]
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
#> [[9]]
#> List of 9
#>  $ by         : chr "b44rd"
#>  $ descendants: int 2
#>  $ id         : int 46119276
#>  $ kids       : int 46119919
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:19:43"
#>  $ title      : chr "Show HN: I want food – Simple swipe based restaurant discovery app"
#>  $ type       : chr "story"
#>  $ url        : chr "https://iwant.food/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[10]]
#> List of 9
#>  $ by         : chr "observer2022"
#>  $ descendants: int 1
#>  $ id         : int 46119234
#>  $ kids       : int 46119934
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:14:00"
#>  $ title      : chr "Show HN: I was reintroduced to computers: Raspberry Pi"
#>  $ type       : chr "story"
#>  $ url        : chr "https://airoboticist.blog/2025/12/01/i-was-reintroduced-to-computers-raspberry-pi/"
#>  - attr(*, "class")= chr "hn_item"
#> 

# get all latest show stories on Hacker News
latest_show_stories <- get_latest_show_stories()
latest_show_stories
#> [[1]]
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
#> [[2]]
#> List of 9
#>  $ by         : chr "ten-fold"
#>  $ descendants: int 0
#>  $ id         : int 46122139
#>  $ score      : int 2
#>  $ text       : chr "Hi HN,\nI recently left Uber after an intense decade as Senior and then Staff Engineer.<p>Coming from a small s"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:26:43"
#>  $ title      : chr "Show HN: I wrote a book for software engineers, based on 11 years at Uber"
#>  $ type       : chr "story"
#>  $ url        : chr "https://rfonti.gumroad.com/l/playbook"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[3]]
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
#> [[4]]
#> List of 10
#>  $ by         : chr "davailan"
#>  $ descendants: int 4
#>  $ id         : int 46119932
#>  $ kids       : int [1:3] 46121151 46120106 46120048
#>  $ score      : int 10
#>  $ text       : chr "Hi HN,<p>Would love your thoughts on Open Paper Digest. It’s a mobile feed that let’s you “doomscroll” through "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:55:09"
#>  $ title      : chr "Show HN: Doomscrolling Research Papers"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.openpaperdigest.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[5]]
#> List of 10
#>  $ by         : chr "cak"
#>  $ descendants: int 3
#>  $ id         : int 46119790
#>  $ kids       : int [1:2] 46119800 46119901
#>  $ score      : int 3
#>  $ text       : chr "I built a CLI tool called elf to streamline Advent of Code workflows. It removes a lot of the repetitive steps "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:35:00"
#>  $ title      : chr "Show HN: Elf – A CLI Helper for Advent of Code"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/cak/elf"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[6]]
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
#> [[7]]
#> List of 10
#>  $ by         : chr "rafferty97"
#>  $ descendants: int 1
#>  $ id         : int 46119615
#>  $ kids       : int 46119913
#>  $ score      : int 3
#>  $ text       : chr "I&#x27;ve spent the past two years building an app for quick, ad-hoc data manipulation because I was dissatisfi"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:07:31"
#>  $ title      : chr "Show HN: Visual, local-first data tool"
#>  $ type       : chr "story"
#>  $ url        : chr "https://columns.dev/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[8]]
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
#> [[9]]
#> List of 9
#>  $ by         : chr "b44rd"
#>  $ descendants: int 2
#>  $ id         : int 46119276
#>  $ kids       : int 46119919
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:19:43"
#>  $ title      : chr "Show HN: I want food – Simple swipe based restaurant discovery app"
#>  $ type       : chr "story"
#>  $ url        : chr "https://iwant.food/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[10]]
#> List of 9
#>  $ by         : chr "observer2022"
#>  $ descendants: int 1
#>  $ id         : int 46119234
#>  $ kids       : int 46119934
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:14:00"
#>  $ title      : chr "Show HN: I was reintroduced to computers: Raspberry Pi"
#>  $ type       : chr "story"
#>  $ url        : chr "https://airoboticist.blog/2025/12/01/i-was-reintroduced-to-computers-raspberry-pi/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[11]]
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
#> [[12]]
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
#> [[13]]
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
#> [[14]]
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
#> [[15]]
#> List of 8
#>  $ by         : chr "ben8888"
#>  $ descendants: int 0
#>  $ id         : int 46117413
#>  $ score      : int 2
#>  $ text       : chr "Explicode is a VS Code extension that lets you write Markdown directly inside your code comments. It provides a"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 04:05:24"
#>  $ title      : chr "Show HN: Explicode – Write Markdown in code comments"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[16]]
#> List of 10
#>  $ by         : chr "flx1012"
#>  $ descendants: int 2
#>  $ id         : int 46117275
#>  $ kids       : int 46118005
#>  $ score      : int 3
#>  $ text       : chr "No signup required—just upload or record a video to verify its truthfulness. You can test it on anyone: interne"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:46:40"
#>  $ title      : chr "Show HN: Watsn.ai – Scarily accurate lie detector"
#>  $ type       : chr "story"
#>  $ url        : chr "https://watsn.ai/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[17]]
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
#> [[18]]
#> List of 9
#>  $ by         : chr "martincsweiss"
#>  $ descendants: int 0
#>  $ id         : int 46116399
#>  $ score      : int 3
#>  $ text       : chr "I woke up Sunday morning ready to schedule my week at NeurIPS. To my immediate horror, the NeurIPS.cc poster se"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 01:55:40"
#>  $ title      : chr "Show HN: NeurIPS 2025 Poster Navigator"
#>  $ type       : chr "story"
#>  $ url        : chr "https://neurips2025.tiptreesystems.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[19]]
#> List of 9
#>  $ by         : chr "BigBigMiao"
#>  $ descendants: int 0
#>  $ id         : int 46116100
#>  $ score      : int 3
#>  $ text       : chr "Finally, after landing component preview support and moving the codebase under the RazorConsole org, we think i"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 01:20:35"
#>  $ title      : chr "Show HN: Net RazorConsole – Build Interactive TUI with Razor and Spectre.Console"
#>  $ type       : chr "story"
#>  $ url        : chr "https://razorconsole.github.io/RazorConsole/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[20]]
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
#> [[21]]
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
#> [[22]]
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
#> [[23]]
#> List of 10
#>  $ by         : chr "keooodev"
#>  $ descendants: int 0
#>  $ id         : int 46113369
#>  $ kids       : int 46120334
#>  $ score      : int 2
#>  $ text       : chr "In my area I have 8 ANPR car parks within a 10 min radius that are free to park in, but you need to remember to"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 21:19:09"
#>  $ title      : chr "Show HN: My pushback against ANPR carparks in the UK"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.getstung.io/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[24]]
#> List of 9
#>  $ by         : chr "lalithaar"
#>  $ descendants: int 0
#>  $ id         : int 46112714
#>  $ score      : int 5
#>  $ text       : chr "I usually look up palettes and the UI comes out nice except some color pairs don&#x27;t pass wcag color contras"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 20:26:17"
#>  $ title      : chr "Show HN: Cm-colors –I got tired of manually fixing wcag contrast,so I made this"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/comfort-mode-toolkit/cm-colors"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[25]]
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
#> [[26]]
#> List of 9
#>  $ by         : chr "soyzamudio"
#>  $ descendants: int 1
#>  $ id         : int 46112187
#>  $ kids       : int 46112188
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-01 19:48:42"
#>  $ title      : chr "Show HN: ReferralLoop – Waitlist platform with viral referral mechanics"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.referralloop.dev/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[27]]
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
#> [[28]]
#> List of 8
#>  $ by         : chr "ferryistaken"
#>  $ descendants: int 0
#>  $ id         : int 46111137
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-01 18:35:50"
#>  $ title      : chr "Show HN: Writing Rust modules for the xv6 kernel"
#>  $ type       : chr "story"
#>  $ url        : chr "https://alessandroferrari.live/rust-inside-xv6/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[29]]
#> List of 9
#>  $ by         : chr "ahmedm24"
#>  $ descendants: int 1
#>  $ id         : int 46111086
#>  $ kids       : int 46111127
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-01 18:32:16"
#>  $ title      : chr "Show HN: LogiCart – Intent-based shopping agent built with pgvector"
#>  $ type       : chr "story"
#>  $ url        : chr "https://logicart.ai"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[30]]
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
#> [[31]]
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
#> [[32]]
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
#> [[33]]
#> List of 9
#>  $ by         : chr "terraplanetary"
#>  $ descendants: int 1
#>  $ id         : int 46109742
#>  $ kids       : int [1:2] 46109753 46110139
#>  $ score      : int 6
#>  $ time       : POSIXct[1:1], format: "2025-12-01 16:56:34"
#>  $ title      : chr "Show HN: Rust-based ultra-low latency streaming framework – Wingfoil"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/wingfoil-io/wingfoil"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[34]]
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
#> [[35]]
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
#> [[36]]
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
#> [[37]]
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
#> [[38]]
#> List of 10
#>  $ by         : chr "cv_h"
#>  $ descendants: int 2
#>  $ id         : int 46105672
#>  $ kids       : int 46119397
#>  $ score      : int 15
#>  $ text       : chr "Flowctl is a self-service platform that gives users secure access to complex workflows, all in a single binary."| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 10:17:20"
#>  $ title      : chr "Show HN: Flowctl – Open-source self-service workflow automation platform"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/cvhariharan/flowctl"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[39]]
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
#> [[40]]
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
#> [[41]]
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
#> [[42]]
#> List of 9
#>  $ by         : chr "jiaweixie"
#>  $ descendants: int 0
#>  $ id         : int 46105195
#>  $ score      : int 3
#>  $ text       : chr "I used to be a lawyer and made some apps&#x27; privacy policies. Now, I have developed a software that scans pr"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 09:12:49"
#>  $ title      : chr "Show HN: Generate a privacy policy for your app with one click in VS Code"
#>  $ type       : chr "story"
#>  $ url        : chr "https://privacygen.tech/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[43]]
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
#> [[44]]
#> List of 9
#>  $ by         : chr "amiban"
#>  $ descendants: int 0
#>  $ id         : int 46104417
#>  $ score      : int 5
#>  $ text       : chr "I built this quiz after realizing how good AI has gotten at mimicking literature, speeches, and images. It&#x27"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 07:10:54"
#>  $ title      : chr "Show HN: Can you spot AI-generated content? (spoiler: probably not)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://valid-human.vercel.app/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[45]]
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
#> [[46]]
#> List of 9
#>  $ by         : chr "amiban"
#>  $ descendants: int 0
#>  $ id         : int 46104158
#>  $ score      : int 4
#>  $ text       : chr "every social app is trying to be Instagram + Snapchat + TikTok + X. I still want to see what my friends are up "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 06:24:46"
#>  $ title      : chr "Show HN: Photo app that does just one thing – no stories/reels/algorithm"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.drfts.app/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[47]]
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
#> [[48]]
#> List of 9
#>  $ by         : chr "yodamonk1"
#>  $ descendants: int 0
#>  $ id         : int 46103447
#>  $ score      : int 3
#>  $ text       : chr "Hi HN! I&#x27;ve been working on two novel programming languages built on field theory \nfrom superconductor re"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 04:21:59"
#>  $ title      : chr "Show HN: Two physics-based programming languages (WPE/TME and Crystalline)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/Heimdall-Organization/DHawk-Labs"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[49]]
#> List of 9
#>  $ by         : chr "tjwells"
#>  $ descendants: int 2
#>  $ id         : int 46103373
#>  $ kids       : int [1:2] 46103378 46103695
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-01 04:05:22"
#>  $ title      : chr "Show HN: C++ order book matching engine (3.2M orders/SEC, ~320ns)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/eelixir/mercury"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[50]]
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
#> [[51]]
#> List of 9
#>  $ by         : chr "UmGuys"
#>  $ descendants: int 0
#>  $ id         : int 46102695
#>  $ score      : int 2
#>  $ text       : chr "I started this project 3 weeks ago with the goal of finishing before I start a new job tomorrow. I didn&#x27;t "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 02:09:48"
#>  $ title      : chr "Show HN: Scrappy Free AI Code Assistant"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/HakAl/scrappy"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[52]]
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
#> [[53]]
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
#> [[54]]
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
#> [[55]]
#> List of 10
#>  $ by         : chr "Raj7k"
#>  $ descendants: int 2
#>  $ id         : int 46101032
#>  $ kids       : int 46103205
#>  $ score      : int 3
#>  $ text       : chr "hey HN,<p>I’ve been building this project through a lot of late nights and messy iterations, and it’s finally s"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-30 22:24:43"
#>  $ title      : chr "Show HN: I built utm.one a clean, minimal shortener+UTM governance tool (beta)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://utm.one/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[56]]
#> List of 9
#>  $ by         : chr "GenLabs-AI"
#>  $ descendants: int 0
#>  $ id         : int 46101008
#>  $ score      : int 2
#>  $ text       : chr "Built this because AI coding shouldn&#x27;t cost hundreds per month. It&#x27;s Cline with free Open Source and "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-30 22:21:01"
#>  $ title      : chr "Show HN: Free AI Coding with Open Source and Deca Models"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/GenLabsAI/Agentica/releases/tag/v0.0.1"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[57]]
#> List of 9
#>  $ by         : chr "nevenp"
#>  $ descendants: int 0
#>  $ id         : int 46100919
#>  $ score      : int 2
#>  $ text       : chr "Hi HN,<p>I built Aion, an “AI longevity coach” that integrates three data sources that are usually siloed:<p>We"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-30 22:07:38"
#>  $ title      : chr "Show HN: Aion – AI longevity coach using wearables, blood tests and facial scans"
#>  $ type       : chr "story"
#>  $ url        : chr "https://app.aionlongevity.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[58]]
#> List of 10
#>  $ by         : chr "fuegoio"
#>  $ descendants: int 1
#>  $ id         : int 46100623
#>  $ kids       : int 46100715
#>  $ score      : int 3
#>  $ text       : chr "Hello HN!<p>I&#x27;m a European traveler, and during my last 6 months of travel I created an app to keep track "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-30 21:29:58"
#>  $ title      : chr "Show HN: Tracktrip, Travel Expense Tracker"
#>  $ type       : chr "story"
#>  $ url        : chr "https://tracktrip.app/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[59]]
#> List of 9
#>  $ by         : chr "jMyles"
#>  $ descendants: int 1
#>  $ id         : int 46100402
#>  $ kids       : int 46100420
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-11-30 21:04:49"
#>  $ title      : chr "Show HN: Memory Lane – bootstrap your naive Claude instances with their history"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/jMyles/memory-lane"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[60]]
#> List of 9
#>  $ by         : chr "CodeIncept1111"
#>  $ descendants: int 6
#>  $ id         : int 46100290
#>  $ kids       : int 46100296
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-11-30 20:50:29"
#>  $ title      : chr "Show HN: Thermodynamic Alignment Forces Gemini Thinking into \"Burn Protocol\""
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/CodeIncept1111/Sovereign-Stack"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[61]]
#> List of 8
#>  $ by         : chr "wstaeblein"
#>  $ descendants: int 0
#>  $ id         : int 46099639
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-11-30 19:33:09"
#>  $ title      : chr "Show HN: A fun password strength meter I made for my teenage kids and friends"
#>  $ type       : chr "story"
#>  $ url        : chr "https://passwordcat.top"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[62]]
#> List of 8
#>  $ by         : chr "janreges"
#>  $ descendants: int 0
#>  $ id         : int 46099403
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-11-30 19:05:49"
#>  $ title      : chr "Show HN: Turn Any Website into Clean Markdown for LLMs/RAG with SiteOne Crawler"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/janreges/siteone-crawler"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[63]]
#> List of 9
#>  $ by         : chr "ing-norante"
#>  $ descendants: int 0
#>  $ id         : int 46099130
#>  $ score      : int 3
#>  $ text       : chr "I built a browser-only tool that disrupts invisible AI watermarks using Canvas, geometry, noise, and JPEG recom"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-30 18:37:19"
#>  $ title      : chr "Show HN: Unmarker.it – Client-Side Tool to Disrupt Invisible AI Watermarks"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.unmarker.it/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[64]]
#> List of 8
#>  $ by         : chr "Punyakrit"
#>  $ descendants: int 0
#>  $ id         : int 46098795
#>  $ score      : int 2
#>  $ text       : chr "I’ve started working on Schema Pilot, an open-source idea for a visual database designer that generates Prisma "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-30 17:51:31"
#>  $ title      : chr "Show HN: Schema Pilot – Visual Database Designer with Instant Prisma"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[65]]
#> List of 9
#>  $ by         : chr "wazzaaaa"
#>  $ descendants: int 6
#>  $ id         : int 46091442
#>  $ kids       : int [1:4] 46100456 46091443 46092766 46094283
#>  $ score      : int 6
#>  $ time       : POSIXct[1:1], format: "2025-11-29 22:35:55"
#>  $ title      : chr "Show HN: I made a free log anonymizer in the browser"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.getloglens.com/tools/log-sanitizer"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[66]]
#> List of 9
#>  $ by         : chr "arianrhodsand"
#>  $ descendants: int 0
#>  $ id         : int 46097293
#>  $ score      : int 2
#>  $ text       : chr "I built RetroAssembly as a classic games cabinet that lives entirely in the browser. It&#x27;s open source and "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-30 15:17:33"
#>  $ title      : chr "Show HN: RetroAssembly – Retro game library built for web browsers"
#>  $ type       : chr "story"
#>  $ url        : chr "https://retroassembly.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[67]]
#> List of 9
#>  $ by         : chr "weebhek"
#>  $ descendants: int 1
#>  $ id         : int 46108404
#>  $ kids       : int [1:2] 46108405 46108407
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-01 15:14:46"
#>  $ title      : chr "Show HN: Cut multi-turn AI agent cost/latency by ~80–90% with one small change"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.oneshotcodegen.com/blog"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[68]]
#> List of 9
#>  $ by         : chr "postgresapp"
#>  $ descendants: int 0
#>  $ id         : int 46105103
#>  $ score      : int 4
#>  $ text       : chr "Postgres.app is the easiest way to run PostgreSQL on your Mac.<p>We often get requests to add specific extensio"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 08:57:58"
#>  $ title      : chr "Show HN: Downloadable Extensions for Postgres.app"
#>  $ type       : chr "story"
#>  $ url        : chr "https://postgresapp.com/extensions/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[69]]
#> List of 10
#>  $ by         : chr "DavidLandup0"
#>  $ descendants: int 1
#>  $ id         : int 46096369
#>  $ kids       : int 46100330
#>  $ score      : int 3
#>  $ text       : chr "Hey HackerNews! Just wanted to share something slapped together recently, looking for feedback.<p>Context: I wo"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-30 13:13:18"
#>  $ title      : chr "Show HN: Mitsuki, a Python web framework as fast as Node or Java"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/DavidLandup0/mitsuki"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[70]]
#> List of 9
#>  $ by         : chr "Chrizzby"
#>  $ descendants: int 0
#>  $ id         : int 46096192
#>  $ score      : int 2
#>  $ text       : chr "It’s obviously easier to start a venture when you already have a clear idea in mind. But in reality, a lot of p"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-30 12:41:51"
#>  $ title      : chr "Show HN: SolveMyPainPoint – A single place to post and discover real problems"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.solvemypainpoint.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[71]]
#> List of 8
#>  $ by         : chr "bfdd"
#>  $ descendants: int 0
#>  $ id         : int 46095915
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-11-30 11:57:23"
#>  $ title      : chr "Show HN: Best Black Friday Deals [Mega List]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.blackfridaydeals.directory"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[72]]
#> List of 9
#>  $ by         : chr "habedi0"
#>  $ descendants: int 4
#>  $ id         : int 46070676
#>  $ kids       : int 46075341
#>  $ score      : int 20
#>  $ text       : chr "Hi everyone,<p>I&#x27;ve made an early version of ZigFormer, a small LLM implemented in Zig with no dependencie"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-27 16:19:55"
#>  $ title      : chr "Show HN: ZigFormer – An LLM implemented in pure Zig"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[73]]
#> List of 10
#>  $ by         : chr "lovish888"
#>  $ descendants: int 4
#>  $ id         : int 46087793
#>  $ kids       : int [1:2] 46090804 46087815
#>  $ score      : int 7
#>  $ text       : chr "I built MacGlow - A MacOS app to sync brightness across your Mac and all connected Monitors.<p>Supports every M"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-29 14:28:55"
#>  $ title      : chr "Show HN: MacGlow – macOS app to sync brightness across Mac and all Monitors"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.lovi.sh/macglow"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[74]]
#> List of 8
#>  $ by         : chr "shutty"
#>  $ descendants: int 0
#>  $ id         : int 46108902
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-01 15:58:02"
#>  $ title      : chr "Show HN: I benchmarked read latency of AWS S3, S3Express, EBS and Instance store"
#>  $ type       : chr "story"
#>  $ url        : chr "https://nixiesearch.substack.com/p/benchmarking-read-latency-of-aws"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[75]]
#> List of 9
#>  $ by         : chr "rane"
#>  $ descendants: int 2
#>  $ id         : int 46095202
#>  $ kids       : int [1:2] 46100428 46096884
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-11-30 09:35:14"
#>  $ title      : chr "Show HN: Let Claude Code call other LLMs when it runs in circles"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/raine/consult-llm-mcp"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[76]]
#> List of 9
#>  $ by         : chr "wesleyhill"
#>  $ descendants: int 0
#>  $ id         : int 46087339
#>  $ score      : int 3
#>  $ text       : chr "i always loved looking up the On-Line Encyclopedia of Integer Sequences (OEIS) when researching a sequence of n"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-29 13:20:01"
#>  $ title      : chr "Show HN: oeis-tui – A TUI to search OEIS integer sequences in the terminal"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/hako/oeis-tui"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[77]]
#> List of 8
#>  $ by         : chr "raaid-rt"
#>  $ descendants: int 0
#>  $ id         : int 46094330
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-11-30 06:18:57"
#>  $ title      : chr "Show HN: Tacopy – Tail Call Optimization for Python"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/raaidrt/tacopy"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[78]]
#> List of 9
#>  $ by         : chr "CoraleDev"
#>  $ descendants: int 0
#>  $ id         : int 46092853
#>  $ score      : int 2
#>  $ text       : chr "I’ve used Crypto++ for a long time, but I wanted newer algorithms and a more regular release cycle. To solve th"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-30 02:02:21"
#>  $ title      : chr "Show HN: Cryptopp-modern – maintained Crypto++ fork with BLAKE3, Argon2, CMake"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/cryptopp-modern/cryptopp-modern"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[79]]
#> List of 10
#>  $ by         : chr "jamescampbell"
#>  $ descendants: int 2
#>  $ id         : int 46075968
#>  $ kids       : int [1:2] 46076580 46087841
#>  $ score      : int 5
#>  $ text       : chr "A fast, cross-platform CLI tool that extracts dominant colors from images using k-means clustering."
#>  $ time       : POSIXct[1:1], format: "2025-11-28 06:08:02"
#>  $ title      : chr "Show HN: Swatchify – CLI to get a color palette from an image"
#>  $ type       : chr "story"
#>  $ url        : chr "https://james-see.github.io/swatchify/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[80]]
#> List of 9
#>  $ by         : chr "justinos"
#>  $ descendants: int 0
#>  $ id         : int 46091415
#>  $ score      : int 2
#>  $ text       : chr "I built ClearHearAI to help hearing impaired and deaf people. It is a transcription app that provides context i"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-29 22:31:00"
#>  $ title      : chr "Show HN: ClearHearAI-The Essential App for Hearing Impaired and Deaf Communities"
#>  $ type       : chr "story"
#>  $ url        : chr "https://clearhearai.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[81]]
#> List of 8
#>  $ by         : chr "hireclay"
#>  $ descendants: int 0
#>  $ id         : int 46091036
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-11-29 21:40:07"
#>  $ title      : chr "Show HN: Rust CLI validates scientific datasets for DOE's Genesis Mission"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/clay-good/genesis-preflight"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[82]]
#> List of 10
#>  $ by         : chr "azdle"
#>  $ descendants: int 5
#>  $ id         : int 46080141
#>  $ kids       : int [1:2] 46080778 46087110
#>  $ score      : int 8
#>  $ text       : chr "This is a little side project I&#x27;ve been working on for the last few months. It&#x27;s a service hosting Lu"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-28 16:35:13"
#>  $ title      : chr "Show HN: Bodge.app – μFaaS for hacked-together personal tools and small projects"
#>  $ type       : chr "story"
#>  $ url        : chr "https://bodge.app/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[83]]
#> List of 9
#>  $ by         : chr "mannymakes"
#>  $ descendants: int 0
#>  $ id         : int 46089344
#>  $ score      : int 2
#>  $ text       : chr "Hey there! I just finished a youtube video explaining our donut chess in detail: <a href=\"https:&#x2F;&#x2F;yo"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-29 17:48:17"
#>  $ title      : chr "Show HN: Chess on a Donut/Torus and Deep-Dive"
#>  $ type       : chr "story"
#>  $ url        : chr "https://mchess.io/donut"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[84]]
#> List of 10
#>  $ by         : chr "water_badger"
#>  $ descendants: int 2
#>  $ id         : int 46088823
#>  $ kids       : int 46090176
#>  $ score      : int 2
#>  $ text       : chr "Considering all the supply chain dependencies lately I&#x27;ve been building a collection of C89 libraries to m"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-29 16:39:00"
#>  $ title      : chr "Show HN: Rhubarb – C89 Libraries in Latin"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/farant/rhubarb"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[85]]
#> List of 8
#>  $ by         : chr "hkpatel"
#>  $ descendants: int 0
#>  $ id         : int 46088732
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-11-29 16:27:17"
#>  $ title      : chr "Show HN: Auth Agent – Let AI Agents Log In Without Human Credentials"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/auth-agent/auth-agent"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[86]]
#> List of 9
#>  $ by         : chr "guiltyf"
#>  $ descendants: int 0
#>  $ id         : int 46088179
#>  $ score      : int 2
#>  $ text       : chr "It was quite interesting to vibe code this artifact. I learned some basic ideas about commitment scheme and has"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-29 15:20:15"
#>  $ title      : chr "Show HN: Claude Artifact: P2P Coin Toss with hashed commitment scheme"
#>  $ type       : chr "story"
#>  $ url        : chr "https://claude.ai/public/artifacts/ab43ea56-ba14-4c4e-a96b-d644e2535509"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[87]]
#> List of 9
#>  $ by         : chr "deanalvero"
#>  $ descendants: int 0
#>  $ id         : int 46087405
#>  $ score      : int 4
#>  $ text       : chr "A chess variant where the top and bottom ranks are adjacent. An additional row of pawns protects your King in t"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-29 13:32:06"
#>  $ title      : chr "Show HN: Horizontal Cylinder Chess"
#>  $ type       : chr "story"
#>  $ url        : chr "https://deanalvero.github.io/horizontal-cylinder-chess/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[88]]
#> List of 9
#>  $ by         : chr "berkaycit"
#>  $ descendants: int 0
#>  $ id         : int 46087224
#>  $ score      : int 2
#>  $ text       : chr "I was using an app called Notch Flow, but even though I was a licensed user and paying every month, it kept ask"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-29 13:01:13"
#>  $ title      : chr "Show HN: Lightweight macOS menu bar Pomodoro Timer"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/berkaycit/pomodo-timer"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[89]]
#> List of 10
#>  $ by         : chr "2dogsanerd"
#>  $ descendants: int 1
#>  $ id         : int 46087160
#>  $ kids       : int 46087167
#>  $ score      : int 3
#>  $ text       : chr "A production-ready, Docker-powered RAG system that understands the difference between code and prose. Ingest yo"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-29 12:52:14"
#>  $ title      : chr "Show HN: Self-hosted RAG for docs and code (FastAPI, Docling, ChromaDB)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/2dogsandanerd/Knowledge-Base-Self-Hosting-Kit"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[90]]
#> List of 9
#>  $ by         : chr "sequoiar68"
#>  $ descendants: int 0
#>  $ id         : int 46086845
#>  $ score      : int 2
#>  $ text       : chr "Making KCP as a libUV extension in one week using Claude-Code + DeepSeek"
#>  $ time       : POSIXct[1:1], format: "2025-11-29 11:49:47"
#>  $ title      : chr "Show HN: uvkcp - Making KCP as a LibUV Extension"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/InstantWebP2P/libuvpp"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[91]]
#> List of 10
#>  $ by         : chr "gavinyork"
#>  $ descendants: int 1
#>  $ id         : int 46057766
#>  $ kids       : int 46112535
#>  $ score      : int 9
#>  $ text       : chr "Hi HN,<p>I’ve been working on Zephyr3D, an open-source 3D rendering engine for the modern web, plus a visual ed"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-26 14:37:46"
#>  $ title      : chr "Show HN: Zephyr3D – TypeScript WebGPU/WebGL 3D engine with an in‑browser editor"
#>  $ type       : chr "story"
#>  $ url        : chr "https://zephyr3d.org"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[92]]
#> List of 10
#>  $ by         : chr "danielepelleri"
#>  $ descendants: int 2
#>  $ id         : int 46086314
#>  $ kids       : int 46086824
#>  $ score      : int 3
#>  $ text       : chr "Hey HN,<p><pre><code>  I&#x27;ve been lifting for years and got frustrated with fitness apps that either (a) ge"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-29 09:43:02"
#>  $ title      : chr "Show HN: I built 19 AI agents because one wasn't enough to coach my workouts"
#>  $ type       : chr "story"
#>  $ url        : chr "https://arvo.guru"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[93]]
#> List of 10
#>  $ by         : chr "DRYTRIX"
#>  $ descendants: int 1
#>  $ id         : int 46086086
#>  $ kids       : int 46088398
#>  $ score      : int 4
#>  $ text       : chr "I&#x27;ve been building TimeTracker over the past few years, and it&#x27;s grown into a comprehensive self-host"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-29 08:53:16"
#>  $ title      : chr "Show HN: TimeTracker – Self-hosted time tracking with invoicing (120 features)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://timetracker.drytrix.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[94]]
#> List of 10
#>  $ by         : chr "thanhdongnguyen"
#>  $ descendants: int 3
#>  $ id         : int 46065449
#>  $ kids       : int [1:3] 46074935 46067562 46069009
#>  $ score      : int 9
#>  $ text       : chr "Creating high-quality skills for Claude manually is complex, requiring specific technical knowledge of the file"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-27 03:59:51"
#>  $ title      : chr "Show HN: MakeSkill – The Intelligent Skill Builder for Claude"
#>  $ type       : chr "story"
#>  $ url        : chr "https://makeskill.cc"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[95]]
#> List of 9
#>  $ by         : chr "LoMoGan"
#>  $ descendants: int 5
#>  $ id         : int 46057341
#>  $ kids       : int [1:4] 46060770 46067975 46058392 46060696
#>  $ score      : int 17
#>  $ text       : chr "Current AI chat assistants face a fundamental challenge: context management in long conversations. While curren"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-26 13:45:55"
#>  $ title      : chr "Show HN: ChatIndex – A Lossless Memory System for AI Agents"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[96]]
#> List of 8
#>  $ by         : chr "ianberdin"
#>  $ descendants: int 0
#>  $ id         : int 46083278
#>  $ score      : int 6
#>  $ time       : POSIXct[1:1], format: "2025-11-28 22:17:40"
#>  $ title      : chr "Show HN: I've built a Cursor alternative in browser. AI Coding Agent."
#>  $ type       : chr "story"
#>  $ url        : chr "https://playcode.io"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[97]]
#> List of 9
#>  $ by         : chr "rokontech"
#>  $ descendants: int 0
#>  $ id         : int 46082962
#>  $ score      : int 2
#>  $ text       : chr "Convert documents to meaningful things."
#>  $ time       : POSIXct[1:1], format: "2025-11-28 21:34:01"
#>  $ title      : chr "Show HN: Convert Your Docs to Beauty"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.doc2q.com"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[98]]
#> List of 9
#>  $ by         : chr "grosmar"
#>  $ descendants: int 3
#>  $ id         : int 46082916
#>  $ kids       : int 46082917
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-11-28 21:28:19"
#>  $ title      : chr "Show HN: Browser Calendar: Track Safari, Chrome, Firefox, Edge & Opera Releases"
#>  $ type       : chr "story"
#>  $ url        : chr "https://browsercalendar.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[99]]
#> List of 9
#>  $ by         : chr "539hex"
#>  $ descendants: int 0
#>  $ id         : int 46046004
#>  $ score      : int 6
#>  $ text       : chr "I built an open-source malware detection daemon that monitors all running processes in real-time using ML + heu"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-25 14:24:08"
#>  $ title      : chr "Show HN: Deft-Intruder – Real-time malware detection daemon for Linux"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/539hex/deft-intruder"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[100]]
#> List of 9
#>  $ by         : chr "andrey-serdyuk"
#>  $ descendants: int 1
#>  $ id         : int 46082045
#>  $ kids       : int 46082046
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-11-28 19:39:55"
#>  $ title      : chr "Show HN:TaskHub – Update"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/TaskHub-Server/TaskHub.Shared"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[101]]
#> List of 9
#>  $ by         : chr "Rafael_Mauricio"
#>  $ descendants: int 0
#>  $ id         : int 46081666
#>  $ score      : int 5
#>  $ text       : chr "Hi HN,<p>I&#x27;m Rafael Mauricio, the founder of RF Modern Bakery Design. For the last decade, I&#x27;ve worke"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-28 19:01:46"
#>  $ title      : chr "Show HN: Design a commercial bakery in an afternoon, not for $10k"
#>  $ type       : chr "story"
#>  $ url        : chr "https://rfmodernbakerydesign.com"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[102]]
#> List of 9
#>  $ by         : chr "dymk"
#>  $ descendants: int 0
#>  $ id         : int 46081520
#>  $ score      : int 4
#>  $ text       : chr "I work on embedded firmware for my day job, and I&#x27;ve found LLMs to be useful for answering questions about"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-28 18:47:39"
#>  $ title      : chr "Show HN: Local-first RAG for PDF user manuals, datasheets"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/dymk/askdocs-mcp"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[103]]
#> List of 10
#>  $ by         : chr "sirkaiwade"
#>  $ descendants: int 1
#>  $ id         : int 46081403
#>  $ kids       : int 46085988
#>  $ score      : int 5
#>  $ text       : chr "Hey HN! I just launched Dialed – a calendar app where your day is visualized as a clock instead of a grid.\nI&#"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-28 18:34:49"
#>  $ title      : chr "Show HN: Dialed – A Radial Calendar App for iOS"
#>  $ type       : chr "story"
#>  $ url        : chr "https://apps.apple.com/us/app/dialed-radial-day-planner/id6755455859"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[104]]
#> List of 9
#>  $ by         : chr "hireclay"
#>  $ descendants: int 2
#>  $ id         : int 46081007
#>  $ kids       : int 46081422
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-11-28 17:58:21"
#>  $ title      : chr "Show HN: Encryptalotta – Free client-side PGP encryption tool for files"
#>  $ type       : chr "story"
#>  $ url        : chr "https://encryptalotta.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[105]]
#> List of 9
#>  $ by         : chr "maxrev17"
#>  $ descendants: int 0
#>  $ id         : int 46080958
#>  $ score      : int 5
#>  $ text       : chr "Fed up of &#x27;restrictive&#x27; AI training plan creators, history analysers and lifestyle loggers. Try this "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-28 17:53:05"
#>  $ title      : chr "Show HN: Made a thing to use AI with intervals.icu"
#>  $ type       : chr "story"
#>  $ url        : chr "https://intervals.pro"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[106]]
#> List of 8
#>  $ by         : chr "vnaveen9296"
#>  $ descendants: int 0
#>  $ id         : int 46080138
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-11-28 16:34:54"
#>  $ title      : chr "Show HN: An AI powered Welcome Note Generator in Go (Moderation and LLM and UI)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/vnaveen-mh/welcome-note-generator"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[107]]
#> List of 9
#>  $ by         : chr "zippoxer"
#>  $ descendants: int 0
#>  $ id         : int 46079163
#>  $ score      : int 2
#>  $ text       : chr "I built this because finding old Claude Code &#x2F; Codex sessions to resume was tedious.<p>It indexes ~&#x2F;."| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-28 14:54:12"
#>  $ title      : chr "Show HN: Recall - TUI to Resume Claude/Codex conversations with full-text search"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/zippoxer/recall"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[108]]
#> List of 10
#>  $ by         : chr "houndz"
#>  $ descendants: int 2
#>  $ id         : int 46052530
#>  $ kids       : int 46055100
#>  $ score      : int 7
#>  $ text       : chr "Hi all, I built a CLI tool that allows you to seamlessly install software from GitHub release assets, similar t"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-26 00:14:28"
#>  $ title      : chr "Show HN: Parm – Install GitHub releases just like your favorite package manager"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/yhoundz/parm"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[109]]
#> List of 9
#>  $ by         : chr "Tarmo362"
#>  $ descendants: int 2
#>  $ id         : int 46078010
#>  $ kids       : int 46078017
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-11-28 12:20:45"
#>  $ title      : chr "Show HN: Simple xbox360 inspired CSS library: 360CSS"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/tarmo1/360css"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[110]]
#> List of 9
#>  $ by         : chr "jaypatelani"
#>  $ descendants: int 0
#>  $ id         : int 46077764
#>  $ score      : int 5
#>  $ text       : chr "high-reciprocity copyleft license."
#>  $ time       : POSIXct[1:1], format: "2025-11-28 11:41:45"
#>  $ title      : chr "Show HN: Total Reciprocity Public License"
#>  $ type       : chr "story"
#>  $ url        : chr "https://trplfoundation.org/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[111]]
#> List of 9
#>  $ by         : chr "QueensGambit"
#>  $ descendants: int 1
#>  $ id         : int 46079963
#>  $ kids       : int 46079978
#>  $ score      : int 10
#>  $ time       : POSIXct[1:1], format: "2025-11-28 16:19:04"
#>  $ title      : chr "Show HN: Research Papers as Memes"
#>  $ type       : chr "story"
#>  $ url        : chr "https://near.tl/tech"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[112]]
#> List of 8
#>  $ by         : chr "rookhack"
#>  $ descendants: int 0
#>  $ id         : int 46061453
#>  $ score      : int 7
#>  $ time       : POSIXct[1:1], format: "2025-11-26 19:34:05"
#>  $ title      : chr "Show HN: Infinite scroll AI logo generator built with Nano Banana"
#>  $ type       : chr "story"
#>  $ url        : chr "https://durable.co/ai-logo-generator"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[113]]
#> List of 10
#>  $ by         : chr "sastrophy"
#>  $ descendants: int 2
#>  $ id         : int 46076356
#>  $ kids       : int 46076798
#>  $ score      : int 4
#>  $ text       : chr "Hi HN! I&#x27;m an 11th grade student learning cybersecurity and web development. I built SiteIQ as a hands-on "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-28 07:24:58"
#>  $ title      : chr "Show HN: SiteIQ – LLM and Web security testing tool (built by a high schooler)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/sastrophy/siteiq"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[114]]
#> List of 9
#>  $ by         : chr "northerndev"
#>  $ descendants: int 1
#>  $ id         : int 46076303
#>  $ kids       : int 46076305
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-11-28 07:15:05"
#>  $ title      : chr "Show HN: Open-source RAG server with retrieval visualization (Postgres+pgvector)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/jakops88-hub/Long-Term-Memory-API"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[115]]
#> List of 9
#>  $ by         : chr "lovelycold"
#>  $ descendants: int 2
#>  $ id         : int 46075307
#>  $ kids       : int [1:2] 46083060 46079933
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-11-28 03:41:23"
#>  $ title      : chr "Show HN: AnyMusic – AI music generator (royalty‑free, songs，stems, lyrics)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://anymusic.ai"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[116]]
#> List of 10
#>  $ by         : chr "RaycatRakittra"
#>  $ descendants: int 4
#>  $ id         : int 46075018
#>  $ kids       : int [1:2] 46075217 46075956
#>  $ score      : int 5
#>  $ text       : chr "I built a website for games that catch my eye or have something interesting going on. I made it for fun but the"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-28 02:30:16"
#>  $ title      : chr "Show HN: I built a website for games that catch my eye"
#>  $ type       : chr "story"
#>  $ url        : chr "https://alistof.games"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[117]]
#> List of 10
#>  $ by         : chr "cr1st1an"
#>  $ descendants: int 64
#>  $ id         : int 46053385
#>  $ kids       : int [1:17] 46053849 46054262 46054048 46053824 46054197 46060256 46054958 46054223 46054347 46058843 ...
#>  $ score      : int 67
#>  $ text       : chr "Hi HN,<p>I built a WordPress plugin called Bandwidth Saver. It takes the images your site already has and serve"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-26 02:05:36"
#>  $ title      : chr "Show HN: A WordPress plugin that rewrites image URLs for near-zero-cost delivery"
#>  $ type       : chr "story"
#>  $ url        : chr "https://wordpress.org/plugins/bandwidth-saver/"
#>  - attr(*, "class")= chr "hn_item"
#> 
# }
```
