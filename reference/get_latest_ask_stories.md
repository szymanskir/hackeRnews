# Hacker News latest ask stories

Retrieves latest ask stories using Hacker News API

## Usage

``` r
get_latest_ask_stories(max_items = NULL)
```

## Arguments

- max_items:

  Maximum number of items to retrieve. If max_items = NULL, returns all
  available

## Value

list of latest ask HN stories ids

## Examples

``` r
# \donttest{
# get the lastest ask story on Hacker News
latest_ask_story <- get_latest_ask_stories(max_items = 1)
latest_ask_story
#> [[1]]
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

# get 10 latest ask stories on Hacker News
latest_10_ask_stories <- get_latest_ask_stories(max_items = 10)
latest_10_ask_stories
#> [[1]]
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
#> [[2]]
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
#> [[3]]
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
#> [[4]]
#> List of 9
#>  $ by         : chr "ifh-hn"
#>  $ descendants: int 5
#>  $ id         : int 46120761
#>  $ kids       : int [1:3] 46121389 46121166 46120873
#>  $ score      : int 4
#>  $ text       : chr "I&#x27;m yet again attempting AoC. I&#x27;ve never completed one yet. Mostly I get too busy on the run up to Ch"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:59:18"
#>  $ title      : chr "Ask HN: Is it OK to look at AoC solutions?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[5]]
#> List of 9
#>  $ by         : chr "_nhh"
#>  $ descendants: int 3
#>  $ id         : int 46120706
#>  $ kids       : int [1:3] 46122025 46122084 46121453
#>  $ score      : int 4
#>  $ text       : chr "I am working with technologies provided by big corps like apple, microsoft and google.<p>Especially painful is "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:52:13"
#>  $ title      : chr "Ask HN: Seeking advice in how to deal with frustration against big corps as dev"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[6]]
#> List of 9
#>  $ by         : chr "server_man3000"
#>  $ descendants: int 9
#>  $ id         : int 46119612
#>  $ kids       : int [1:8] 46121244 46121246 46120606 46120036 46119936 46120263 46119649 46119645
#>  $ score      : int 7
#>  $ text       : chr "Hi HN. I’ve been battling depression for a few years now and have become pretty numb to most things.<p>I’ve tri"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:07:12"
#>  $ title      : chr "Ask HN: Battling Depression"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[7]]
#> List of 9
#>  $ by         : chr "pera"
#>  $ descendants: int 3
#>  $ id         : int 46119058
#>  $ kids       : int [1:2] 46119090 46119193
#>  $ score      : int 5
#>  $ text       : chr "Can LLMs like Gemini, ChatGPT or Claude be used to generate an equivalent FOSS project but removed from its lic"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:47:08"
#>  $ title      : chr "Ask HN: Any experience using LLMs to license-wash FOSS projects?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[8]]
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
#> [[9]]
#> List of 9
#>  $ by         : chr "aiqbal"
#>  $ descendants: int 3
#>  $ id         : int 46118430
#>  $ kids       : int [1:3] 46121029 46118580 46119713
#>  $ score      : int 2
#>  $ text       : chr "I was wondering how to convince Andrej Karpathy or some really accomplished technological free electron kingpin"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 07:00:39"
#>  $ title      : chr "How to Convince Andrej Karpathy to join my startup?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[10]]
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

# get all latest ask stories on Hacker News
latest_ask_stories <- get_latest_ask_stories()
latest_ask_stories
#> [[1]]
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
#> [[2]]
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
#> [[3]]
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
#> [[4]]
#> List of 9
#>  $ by         : chr "ifh-hn"
#>  $ descendants: int 5
#>  $ id         : int 46120761
#>  $ kids       : int [1:3] 46121389 46121166 46120873
#>  $ score      : int 4
#>  $ text       : chr "I&#x27;m yet again attempting AoC. I&#x27;ve never completed one yet. Mostly I get too busy on the run up to Ch"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:59:18"
#>  $ title      : chr "Ask HN: Is it OK to look at AoC solutions?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[5]]
#> List of 9
#>  $ by         : chr "_nhh"
#>  $ descendants: int 3
#>  $ id         : int 46120706
#>  $ kids       : int [1:3] 46122025 46122084 46121453
#>  $ score      : int 4
#>  $ text       : chr "I am working with technologies provided by big corps like apple, microsoft and google.<p>Especially painful is "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:52:13"
#>  $ title      : chr "Ask HN: Seeking advice in how to deal with frustration against big corps as dev"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[6]]
#> List of 9
#>  $ by         : chr "server_man3000"
#>  $ descendants: int 9
#>  $ id         : int 46119612
#>  $ kids       : int [1:8] 46121244 46121246 46120606 46120036 46119936 46120263 46119649 46119645
#>  $ score      : int 7
#>  $ text       : chr "Hi HN. I’ve been battling depression for a few years now and have become pretty numb to most things.<p>I’ve tri"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:07:12"
#>  $ title      : chr "Ask HN: Battling Depression"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[7]]
#> List of 9
#>  $ by         : chr "pera"
#>  $ descendants: int 3
#>  $ id         : int 46119058
#>  $ kids       : int [1:2] 46119090 46119193
#>  $ score      : int 5
#>  $ text       : chr "Can LLMs like Gemini, ChatGPT or Claude be used to generate an equivalent FOSS project but removed from its lic"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:47:08"
#>  $ title      : chr "Ask HN: Any experience using LLMs to license-wash FOSS projects?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[8]]
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
#> [[9]]
#> List of 9
#>  $ by         : chr "aiqbal"
#>  $ descendants: int 3
#>  $ id         : int 46118430
#>  $ kids       : int [1:3] 46121029 46118580 46119713
#>  $ score      : int 2
#>  $ text       : chr "I was wondering how to convince Andrej Karpathy or some really accomplished technological free electron kingpin"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 07:00:39"
#>  $ title      : chr "How to Convince Andrej Karpathy to join my startup?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[10]]
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
#> [[11]]
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
#> [[12]]
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
#> [[13]]
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
#> [[14]]
#> List of 9
#>  $ by         : chr "jMyles"
#>  $ descendants: int 2
#>  $ id         : int 46116193
#>  $ kids       : int [1:2] 46121929 46117007
#>  $ score      : int 5
#>  $ text       : chr "I just had a fairly profound experience working with what I consider to be a long-running agent which I call ma"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 01:32:18"
#>  $ title      : chr "Ask HN: Others seeing agents do remarkable things when given their own logs?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[15]]
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
#> [[16]]
#> List of 9
#>  $ by         : chr "prdonahue"
#>  $ descendants: int 6
#>  $ id         : int 46115185
#>  $ kids       : int [1:5] 46116381 46118117 46117445 46116741 46119826
#>  $ score      : int 3
#>  $ text       : chr "We&#x27;re now a few years out from the Docker licensing fiasco. Who has successfully migrated their company to"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 23:42:09"
#>  $ title      : chr "Ask HN: What alternatives to Docker Desktop are people using?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[17]]
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
#> [[18]]
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
#> [[19]]
#> List of 9
#>  $ by         : chr "StealthyStart"
#>  $ descendants: int 5
#>  $ id         : int 46113194
#>  $ kids       : int [1:3] 46114357 46113583 46114939
#>  $ score      : int 4
#>  $ text       : chr "I’m building a small tool that syncs WordPress posts to Medium using canonical URLs to preserve SEO. Before I g"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 21:04:39"
#>  $ title      : chr "Ask HN: Does cross-posting to Medium still help, or does it just dilute SEO now?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[20]]
#> List of 9
#>  $ by         : chr "vigneshesan"
#>  $ descendants: int 2
#>  $ id         : int 46109322
#>  $ kids       : int [1:2] 46109505 46109334
#>  $ score      : int 2
#>  $ text       : chr "Just got iOS 15.8.5 in India"
#>  $ time       : POSIXct[1:1], format: "2025-12-01 16:27:20"
#>  $ title      : chr "My 2016 iPhone SE got an update after 9 Years"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[21]]
#> List of 9
#>  $ by         : chr "alecco"
#>  $ descendants: int 85
#>  $ id         : int 46079745
#>  $ kids       : int [1:34] 46079901 46079850 46080416 46079896 46081173 46079966 46080155 46080004 46081865 46080632 ...
#>  $ score      : int 297
#>  $ text       : chr "Most good posts die in &#x2F;newest, buried under low-quality submissions.<p>HN depends on people visiting &#x2"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-28 15:57:27"
#>  $ title      : chr "Tell HN: Want a better HN? Visit /newest"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[22]]
#> List of 9
#>  $ by         : chr "rando77"
#>  $ descendants: int 4
#>  $ id         : int 46106877
#>  $ kids       : int [1:3] 46107112 46113262 46107028
#>  $ score      : int 2
#>  $ text       : chr "I&#x27;m looking for something like devdocs but for sysadmins when they can&#x27;t access Google.<p>So I was th"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 12:57:17"
#>  $ title      : chr "Ask HN: Linux offline knowledge base app?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[23]]
#> List of 9
#>  $ by         : chr "nilsherzig"
#>  $ descendants: int 5
#>  $ id         : int 46106623
#>  $ kids       : int [1:5] 46119513 46107038 46107040 46107069 46107145
#>  $ score      : int 4
#>  $ text       : chr "Someone created a website and social media account for a project I&#x27;ve built two years ago and published on"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 12:29:24"
#>  $ title      : chr "Ask HN: Someone impersonates my GitHub project, what to do?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[24]]
#> List of 9
#>  $ by         : chr "jivaprime"
#>  $ descendants: int 0
#>  $ id         : int 46101676
#>  $ kids       : int 46103928
#>  $ score      : int 5
#>  $ text       : chr "Hi all<p>I’ve put together a repo demonstrating how to train PPO directly on a single TSPLIB instance (lin318) "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-30 23:45:46"
#>  $ title      : chr "CPU-only PPO solving TSPLIB lin318 in 20 mins (0.08% gap)"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[25]]
#> List of 9
#>  $ by         : chr "adipm_tech"
#>  $ descendants: int 1
#>  $ id         : int 46105176
#>  $ kids       : int 46108657
#>  $ score      : int 4
#>  $ text       : chr "I’m doing early research for a customer support product, and I’m trying to understand how people actually use c"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 09:09:49"
#>  $ title      : chr "Ask HN: Anyone using CRM and chatbot? What's broken or frustrating?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[26]]
#> List of 9
#>  $ by         : chr "casenmgreen"
#>  $ descendants: int 29
#>  $ id         : int 46083321
#>  $ kids       : int [1:8] 46084659 46087350 46090442 46088992 46083957 46083694 46084563 46083512
#>  $ score      : int 38
#>  $ text       : chr "I have a UK one-man company, through which I work as an IT contractor.<p>Recently, I changed the address.<p>Tra"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-28 22:24:22"
#>  $ title      : chr "I changed my address, and TransferWise in two days will empty my account"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[27]]
#> List of 8
#>  $ by         : chr "rudasn"
#>  $ descendants: int 0
#>  $ id         : int 46104699
#>  $ score      : int 5
#>  $ text       : chr "Anyone else experiencing this?<p>In a Pull Request&#x27;s description, I typed `#&lt;private issue id&gt;` (eg."| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 07:57:32"
#>  $ title      : chr "Is GitHub currently leaking private issues and pull requests?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[28]]
#> List of 9
#>  $ by         : chr "dharmatech"
#>  $ descendants: int 14
#>  $ id         : int 46103227
#>  $ kids       : int [1:6] 46117742 46106974 46103448 46104117 46103242 46109757
#>  $ score      : int 5
#>  $ text       : chr "I put together a small water consumption app (how much water you drink in a day) in SQLite and Python.<p>Then I"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 03:35:19"
#>  $ title      : chr "Python terminal app as Android Phone app"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[29]]
#> List of 9
#>  $ by         : chr "burgerquizz"
#>  $ descendants: int 1
#>  $ id         : int 46115315
#>  $ kids       : int 46118755
#>  $ score      : int 5
#>  $ text       : chr "What are you working on? Any new ideas that you&#x27;re thinking"
#>  $ time       : POSIXct[1:1], format: "2025-12-01 23:54:04"
#>  $ title      : chr "What are you working on? (Dec 2025)"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[30]]
#> List of 9
#>  $ by         : chr "novateg"
#>  $ descendants: int 9
#>  $ id         : int 46093303
#>  $ kids       : int [1:8] 46122083 46096220 46099333 46095099 46093321 46093656 46093489 46095558
#>  $ score      : int 17
#>  $ text       : chr "Lufthansa Group provides 100kb per second free WiFi for texting. It looks like some sites like HN and lite.cnn."| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-30 03:18:07"
#>  $ title      : chr "Tell HN: I'm posting this while in flight over Atlantic Ocean"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[31]]
#> List of 9
#>  $ by         : chr "eugene-kim"
#>  $ descendants: int 2
#>  $ id         : int 46081585
#>  $ kids       : int [1:2] 46084822 46090810
#>  $ score      : int 8
#>  $ text       : chr "Agentic coding loops work well when the LLM can run tests to verify its work. For backend code, this is straigh"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-28 18:54:36"
#>  $ title      : chr "Ask HN: How do you verify front-end code in agentic LLM coding loops?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[32]]
#> List of 9
#>  $ by         : chr "trio8453"
#>  $ descendants: int 19
#>  $ id         : int 46080968
#>  $ kids       : int [1:19] 46088459 46082321 46081187 46087085 46084738 46084323 46085830 46104380 46081526 46095098 ...
#>  $ score      : int 15
#>  $ text       : chr "Which ones have you tried? Which one do you find is the best and for what purposes? What tools and features mak"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-28 17:53:45"
#>  $ title      : chr "Ask HN: Which cloud provider do you like best and why?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[33]]
#> List of 9
#>  $ by         : chr "optbuild"
#>  $ descendants: int 1
#>  $ id         : int 46110824
#>  $ kids       : int [1:2] 46114021 46113224
#>  $ score      : int 5
#>  $ text       : chr "Are the materials publicly available?"
#>  $ time       : POSIXct[1:1], format: "2025-12-01 18:15:18"
#>  $ title      : chr "Ask HN: Which course you took ultimately had the biggest impact on your career?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[34]]
#> List of 9
#>  $ by         : chr "hilti"
#>  $ descendants: int 16
#>  $ id         : int 46055011
#>  $ kids       : int [1:4] 46055670 46055578 46055013 46092504
#>  $ score      : int 25
#>  $ text       : chr "Color.io will continue running until December 31, 2025. After that date, the web application and all online ser"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-26 07:27:18"
#>  $ title      : chr "Color.io Is Going Offline"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[35]]
#> List of 9
#>  $ by         : chr "jayzalowitz"
#>  $ descendants: int 36
#>  $ id         : int 46071771
#>  $ kids       : int [1:35] 46078998 46100901 46117053 46097148 46073429 46087217 46073718 46075043 46072199 46075103 ...
#>  $ score      : int 27
#>  $ text       : chr "This thanksgiving let&#x27;s give thanks to those that give back. Yall rock!"
#>  $ time       : POSIXct[1:1], format: "2025-11-27 18:12:46"
#>  $ title      : chr "Ask HN: What open source projects are you grateful for?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[36]]
#> List of 9
#>  $ by         : chr "megraf"
#>  $ descendants: int 37
#>  $ id         : int 46045677
#>  $ kids       : int [1:27] 46045836 46047138 46047666 46050357 46047068 46066789 46048270 46045785 46096685 46045753 ...
#>  $ score      : int 26
#>  $ text       : chr "Would it be beneficial for a platform to display the country of account origin on each user’s profile?\nI’m cur"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-25 13:39:54"
#>  $ title      : chr "Ask HN: Should account creation/origin country be displayed on HN profiles?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[37]]
#> List of 9
#>  $ by         : chr "kypro"
#>  $ descendants: int 14
#>  $ id         : int 46064205
#>  $ kids       : int [1:9] 46066687 46065731 46068737 46065983 46067570 46064585 46067099 46067847 46066724
#>  $ score      : int 19
#>  $ text       : chr "I&#x27;m not sure this is the right place to raise this but over the past few months ChatGPT has been lying to "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-11-27 00:59:38"
#>  $ title      : chr "Why is OpenAI lying about the data its collecting on users?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
# }
```
