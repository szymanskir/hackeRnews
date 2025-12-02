# Hacker News best stories

Retrieves best stories using Hacker News API

## Usage

``` r
get_best_stories(max_items = NULL)
```

## Arguments

- max_items:

  Maximum number of items to retrieve. If max_items = NULL, returns all
  available

## Value

list of best stories

## Examples

``` r
# \donttest{
# get the best story on Hacker News
best_story <- get_best_stories(max_items = 1)
best_story
#> [[1]]
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

# get top 20 best stories on Hacker News
best_20_stories <- get_best_stories(max_items = 20)
#> [working] (8 + 0) -> 6 -> 6 | ■■■■■■■■■■                        30%
#> [working] (0 + 0) -> 0 -> 20 | ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■  100%
best_20_stories
#> [[1]]
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
#> [[2]]
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
#> [[3]]
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
#> [[4]]
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
#> [[5]]
#> List of 9
#>  $ by         : chr "hasheddan"
#>  $ descendants: int 204
#>  $ id         : int 46106556
#>  $ kids       : int [1:40] 46107832 46107036 46107099 46114105 46107200 46111993 46107455 46121170 46107237 46107216 ...
#>  $ score      : int 546
#>  $ time       : POSIXct[1:1], format: "2025-12-01 12:22:35"
#>  $ title      : chr "Why xor eax, eax?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://xania.org/202512/01-xor-eax-eax"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[6]]
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
#> [[7]]
#> List of 9
#>  $ by         : chr "nutanc"
#>  $ descendants: int 351
#>  $ id         : int 46098992
#>  $ kids       : int [1:59] 46099207 46100706 46099602 46100559 46099327 46100813 46100582 46099668 46101109 46100560 ...
#>  $ score      : int 428
#>  $ time       : POSIXct[1:1], format: "2025-11-30 18:17:13"
#>  $ title      : chr "Don't push AI down our throats"
#>  $ type       : chr "story"
#>  $ url        : chr "https://gpt3experiments.substack.com/p/dont-push-ai-down-our-throats"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[8]]
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
#> [[9]]
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
#> [[10]]
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
#> [[11]]
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
#> [[12]]
#> List of 9
#>  $ by         : chr "herbertl"
#>  $ descendants: int 223
#>  $ id         : int 46117112
#>  $ kids       : int [1:29] 46118773 46122215 46117509 46117301 46121626 46117443 46122092 46119712 46118203 46119362 ...
#>  $ score      : int 368
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:23:10"
#>  $ title      : chr "What will enter the public domain in 2026?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://publicdomainreview.org/features/entering-the-public-domain/2026/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[13]]
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
#> [[14]]
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
#> [[15]]
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
#> [[16]]
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
#> [[17]]
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
#> [[18]]
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
#> [[19]]
#> List of 9
#>  $ by         : chr "spagoop"
#>  $ descendants: int 168
#>  $ id         : int 46112906
#>  $ kids       : int [1:53] 46113419 46115143 46121689 46113590 46115156 46113443 46116024 46114830 46113261 46116330 ...
#>  $ score      : int 330
#>  $ time       : POSIXct[1:1], format: "2025-12-01 20:40:58"
#>  $ title      : chr "How to Attend Meetings"
#>  $ type       : chr "story"
#>  $ url        : chr "https://docs.google.com/presentation/d/1l7s1aAsNPlNhSye8OsMqmH6pMR32OYGGdLT6VKyFaQE/edit#slide=id.p"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[20]]
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

# get all best stories on Hacker News
best_stories <- get_best_stories()
best_stories
#> [[1]]
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
#> [[2]]
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
#> [[3]]
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
#> [[4]]
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
#> [[5]]
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
#> [[6]]
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
#> [[7]]
#> List of 9
#>  $ by         : chr "nutanc"
#>  $ descendants: int 351
#>  $ id         : int 46098992
#>  $ kids       : int [1:59] 46099207 46100706 46099602 46100559 46099327 46100813 46100582 46099668 46101109 46100560 ...
#>  $ score      : int 428
#>  $ time       : POSIXct[1:1], format: "2025-11-30 18:17:13"
#>  $ title      : chr "Don't push AI down our throats"
#>  $ type       : chr "story"
#>  $ url        : chr "https://gpt3experiments.substack.com/p/dont-push-ai-down-our-throats"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[8]]
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
#> [[9]]
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
#> [[10]]
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
#> [[11]]
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
#> [[12]]
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
#> [[13]]
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
#> [[14]]
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
#> [[15]]
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
#> [[16]]
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
#> [[17]]
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
#> [[18]]
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
#> [[19]]
#> List of 9
#>  $ by         : chr "spagoop"
#>  $ descendants: int 168
#>  $ id         : int 46112906
#>  $ kids       : int [1:53] 46113419 46115143 46121689 46113590 46115156 46113443 46116024 46114830 46113261 46116330 ...
#>  $ score      : int 330
#>  $ time       : POSIXct[1:1], format: "2025-12-01 20:40:58"
#>  $ title      : chr "How to Attend Meetings"
#>  $ type       : chr "story"
#>  $ url        : chr "https://docs.google.com/presentation/d/1l7s1aAsNPlNhSye8OsMqmH6pMR32OYGGdLT6VKyFaQE/edit#slide=id.p"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[20]]
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
#> [[21]]
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
#> [[22]]
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
#> [[23]]
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
#> [[24]]
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
#> [[25]]
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
#> [[26]]
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
#> [[27]]
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
#> [[28]]
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
#> [[29]]
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
#> [[30]]
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
#> [[31]]
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
#> [[32]]
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
#> [[33]]
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
#> [[34]]
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
#> [[35]]
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
#> [[36]]
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
#> [[37]]
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
#> [[38]]
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
#> [[39]]
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
#> [[40]]
#> List of 9
#>  $ by         : chr "7777777phil"
#>  $ descendants: int 8
#>  $ id         : int 46114144
#>  $ kids       : int [1:13] 46116618 46117511 46120299 46115065 46114861 46114685 46116407 46114647 46115366 46115311 ...
#>  $ score      : int 193
#>  $ time       : POSIXct[1:1], format: "2025-12-01 22:22:56"
#>  $ title      : chr "Apple AI chief John Giannandrea is retiring in spring 2026"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.macrumors.com/2025/12/01/apple-ai-chief-retiring-after-siri-failure/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[41]]
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
#> [[42]]
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
#> [[43]]
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
#> [[44]]
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
#> [[45]]
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
#> [[46]]
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
#> [[47]]
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
#> [[48]]
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
#> [[49]]
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
#> [[50]]
#> List of 9
#>  $ by         : chr "intelkishan"
#>  $ descendants: int 1
#>  $ id         : int 46117280
#>  $ kids       : int [1:3] 46118422 46117682 46117537
#>  $ score      : int 151
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:47:11"
#>  $ title      : chr "Beej's Guide to Learning Computer Science"
#>  $ type       : chr "story"
#>  $ url        : chr "https://beej.us/guide/bglcs/html/split/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[51]]
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
#> [[52]]
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
#> [[53]]
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
#> [[54]]
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
#> [[55]]
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
#> [[56]]
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
#> [[57]]
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
#> [[58]]
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
#> [[59]]
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
#> [[60]]
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
#> [[61]]
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
#> [[62]]
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
#> [[63]]
#> List of 9
#>  $ by         : chr "surprisetalk"
#>  $ descendants: int 152
#>  $ id         : int 46101949
#>  $ kids       : int [1:25] 46102536 46102810 46102466 46102866 46103004 46102903 46102792 46102706 46102926 46102811 ...
#>  $ score      : int 128
#>  $ time       : POSIXct[1:1], format: "2025-12-01 00:22:31"
#>  $ title      : chr "Grokipedia is the antithesis of Wikipedia"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.404media.co/grokipedia-is-the-antithesis-of-everything-that-makes-wikipedia-good-useful-and-human/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[64]]
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
#> [[65]]
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
#> [[66]]
#> List of 10
#>  $ by         : chr "mmarian"
#>  $ descendants: int 243
#>  $ id         : int 46103603
#>  $ kids       : int [1:29] 46103689 46103634 46103761 46103839 46119160 46103835 46103888 46103872 46103698 46108602 ...
#>  $ score      : int 125
#>  $ text       : chr "<a href=\"https:&#x2F;&#x2F;archive.is&#x2F;UwqzL\" rel=\"nofollow\">https:&#x2F;&#x2F;archive.is&#x2F;UwqzL</a>"
#>  $ time       : POSIXct[1:1], format: "2025-12-01 04:52:29"
#>  $ title      : chr "'A full-blown crisis': Americans brace for a surge in healthcare costs"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.ft.com/content/beec76df-8e6d-4238-bae2-e51683b62aa4"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[67]]
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
#> [[68]]
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
#> [[69]]
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
#> [[70]]
#> List of 9
#>  $ by         : chr "bookofjoe"
#>  $ descendants: int 179
#>  $ id         : int 46097102
#>  $ kids       : int [1:13] 46097629 46097106 46097384 46098517 46097631 46097392 46097909 46097752 46097457 46097349 ...
#>  $ score      : int 113
#>  $ time       : POSIXct[1:1], format: "2025-11-30 14:52:06"
#>  $ title      : chr "The Undermining of the CDC"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.newyorker.com/magazine/2025/12/08/the-undermining-of-the-cdc"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[71]]
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
#> [[72]]
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
#> [[73]]
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
#> [[74]]
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
#> [[75]]
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
#> [[76]]
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
#> [[77]]
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
#> [[78]]
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
#> [[79]]
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
#> [[80]]
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
#> [[81]]
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
#> [[82]]
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
#> [[83]]
#> List of 9
#>  $ by         : chr "dvrp"
#>  $ descendants: int 14
#>  $ id         : int 46100637
#>  $ kids       : int [1:7] 46101679 46101498 46101539 46101507 46102024 46101701 46101453
#>  $ score      : int 76
#>  $ time       : POSIXct[1:1], format: "2025-11-30 21:30:51"
#>  $ title      : chr "Ty – A fast Python type checker, written in Rust"
#>  $ type       : chr "story"
#>  $ url        : chr "https://docs.astral.sh/ty/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[84]]
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
#> [[85]]
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
#> [[86]]
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
#> [[87]]
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
#> [[88]]
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
#> [[89]]
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
#> [[90]]
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
#> [[91]]
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
#> [[92]]
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
#> [[93]]
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
#> [[94]]
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
#> [[95]]
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
#> [[96]]
#> List of 9
#>  $ by         : chr "doener"
#>  $ descendants: int 97
#>  $ id         : int 46105897
#>  $ kids       : int [1:12] 46105957 46107269 46106445 46106062 46106081 46106399 46105968 46106704 46106047 46106780 ...
#>  $ score      : int 58
#>  $ time       : POSIXct[1:1], format: "2025-12-01 10:51:37"
#>  $ title      : chr "Xlibre is a fork of the Xorg Xserver with lots of code cleanups"
#>  $ type       : chr "story"
#>  $ url        : chr "https://x11libre.net/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[97]]
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
#> [[98]]
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
#> [[99]]
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
#> [[100]]
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
#> [[101]]
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
#> [[102]]
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
#> [[103]]
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
#> [[104]]
#> List of 9
#>  $ by         : chr "jay_kyburz"
#>  $ descendants: int 11
#>  $ id         : int 46103811
#>  $ kids       : int [1:3] 46104074 46103977 46104135
#>  $ score      : int 44
#>  $ time       : POSIXct[1:1], format: "2025-12-01 05:29:00"
#>  $ title      : chr "Google Antigravity Deletes D Drive"
#>  $ type       : chr "story"
#>  $ url        : chr "https://mastodon.gamedev.place/@bastardsheep@aus.social/115641546248437052"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[105]]
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
#> [[106]]
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
#> [[107]]
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
#> [[108]]
#> List of 9
#>  $ by         : chr "clanky"
#>  $ descendants: int 78
#>  $ id         : int 46100244
#>  $ kids       : int [1:11] 46101029 46101591 46103216 46103583 46101191 46100569 46100816 46101226 46101477 46101612 ...
#>  $ score      : int 41
#>  $ time       : POSIXct[1:1], format: "2025-11-30 20:45:41"
#>  $ title      : chr "White House gives Maduro ultimatum as U.S. moves toward land operations"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.miamiherald.com/news/nation-world/world/americas/venezuela/article313261442.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[109]]
#> List of 9
#>  $ by         : chr "bookofjoe"
#>  $ descendants: int 48
#>  $ id         : int 46098990
#>  $ kids       : int [1:10] 46099800 46102450 46099515 46100009 46099360 46102000 46099813 46099181 46099868 46099322
#>  $ score      : int 41
#>  $ time       : POSIXct[1:1], format: "2025-11-30 18:17:09"
#>  $ title      : chr "X's move to show users' location is a great step toward online transparency"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.washingtonpost.com/opinions/2025/11/25/elon-musk-x-location-democracy/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[110]]
#> List of 9
#>  $ by         : chr "geox"
#>  $ descendants: int 61
#>  $ id         : int 46115731
#>  $ kids       : int [1:7] 46119595 46118283 46115951 46116893 46115857 46116083 46116115
#>  $ score      : int 40
#>  $ time       : POSIXct[1:1], format: "2025-12-02 00:36:23"
#>  $ title      : chr "US air travelers without REAL IDs will be charged a $45 fee"
#>  $ type       : chr "story"
#>  $ url        : chr "https://apnews.com/article/real-id-fee-airport-security-travel-tsa-fe8c7ed55cf3dacafa10d50cc2112eb7"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[111]]
#> List of 9
#>  $ by         : chr "mnky9800n"
#>  $ descendants: int 81
#>  $ id         : int 46097609
#>  $ kids       : int [1:15] 46098125 46097883 46097610 46098075 46098216 46097917 46098394 46098604 46098526 46098013 ...
#>  $ score      : int 37
#>  $ time       : POSIXct[1:1], format: "2025-11-30 15:51:03"
#>  $ title      : chr "Atlas Shrugged (2024)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://david-jasso.com/2024/04/11/atlas-shrugged/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[112]]
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
#> [[113]]
#> List of 8
#>  $ by         : chr "delitrem"
#>  $ descendants: int 0
#>  $ id         : int 46119889
#>  $ score      : int 36
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:49:59"
#>  $ title      : chr "GNU Guile 3.0.11"
#>  $ type       : chr "story"
#>  $ url        : chr "https://lists.gnu.org/archive/html/info-gnu/2025-12/msg00002.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[114]]
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
#> [[115]]
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
#> [[116]]
#> List of 8
#>  $ by         : chr "todsacerdoti"
#>  $ descendants: int 0
#>  $ id         : int 46115157
#>  $ score      : int 35
#>  $ time       : POSIXct[1:1], format: "2025-12-01 23:40:09"
#>  $ title      : chr "Complex end-to-end tests using Guix G-expressions"
#>  $ type       : chr "story"
#>  $ url        : chr "https://systemreboot.net/post/complex-end-to-end-tests-using-guix-g-expressions.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[117]]
#> List of 9
#>  $ by         : chr "ingve"
#>  $ descendants: int 1
#>  $ id         : int 46099171
#>  $ kids       : int 46110327
#>  $ score      : int 35
#>  $ time       : POSIXct[1:1], format: "2025-11-30 18:41:16"
#>  $ title      : chr "Building the Perfect Linux PC with Linus Torvalds [video]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.youtube.com/watch?v=mfv0V1SxbNA"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[118]]
#> List of 8
#>  $ by         : chr "lioeters"
#>  $ descendants: int 0
#>  $ id         : int 46120000
#>  $ score      : int 34
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:04:50"
#>  $ title      : chr "Emacspeak – A Speech Odyssey"
#>  $ type       : chr "story"
#>  $ url        : chr "https://emacspeak.blogspot.com/2024/07/emacspeak-speech-odyssey.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[119]]
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
#> [[120]]
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
#> [[121]]
#> List of 9
#>  $ by         : chr "shaicoleman"
#>  $ descendants: int 18
#>  $ id         : int 46098436
#>  $ kids       : int [1:7] 46099099 46098495 46099027 46098943 46100874 46099498 46099217
#>  $ score      : int 33
#>  $ time       : POSIXct[1:1], format: "2025-11-30 17:10:32"
#>  $ title      : chr "Keep these Stupid American Trucks out of Europe [video]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://youtu.be/--832LV9a3I"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[122]]
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
#> [[123]]
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
#> [[124]]
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
#> [[125]]
#> List of 9
#>  $ by         : chr "doener"
#>  $ descendants: int 41
#>  $ id         : int 46105798
#>  $ kids       : int [1:10] 46108583 46106110 46107156 46110118 46106023 46108175 46112731 46108065 46109200 46106389
#>  $ score      : int 32
#>  $ time       : POSIXct[1:1], format: "2025-12-01 10:35:57"
#>  $ title      : chr "KDE Plasma 6.8 Set to Drop X11 Support Completely"
#>  $ type       : chr "story"
#>  $ url        : chr "https://itsfoss.com/news/kde-plasma-to-drop-x11-support/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[126]]
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
#> [[127]]
#> List of 10
#>  $ by         : chr "mikece"
#>  $ descendants: int 17
#>  $ id         : int 46106596
#>  $ kids       : int [1:8] 46107151 46108317 46114332 46107572 46107338 46108531 46107209 46106614
#>  $ score      : int 30
#>  $ text       : chr "<a href=\"https:&#x2F;&#x2F;archive.ph&#x2F;O7rEl\" rel=\"nofollow\">https:&#x2F;&#x2F;archive.ph&#x2F;O7rEl</a>"
#>  $ time       : POSIXct[1:1], format: "2025-12-01 12:26:30"
#>  $ title      : chr "Ruby is not a serious programming language"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.wired.com/story/ruby-is-not-a-serious-programming-language/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[128]]
#> List of 9
#>  $ by         : chr "mapehe"
#>  $ descendants: int 84
#>  $ id         : int 46104511
#>  $ kids       : int [1:22] 46104855 46104957 46120473 46104939 46104875 46106454 46105096 46105911 46104776 46104889 ...
#>  $ score      : int 30
#>  $ time       : POSIXct[1:1], format: "2025-12-01 07:26:47"
#>  $ title      : chr "Do the thinking models think?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://bytesauna.com/post/consciousness"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[129]]
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
#> [[130]]
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
#> [[131]]
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
#> [[132]]
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
#> [[133]]
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
#> [[134]]
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
#> [[135]]
#> List of 9
#>  $ by         : chr "ga_to"
#>  $ descendants: int 52
#>  $ id         : int 46100566
#>  $ kids       : int [1:13] 46101796 46101169 46101195 46101409 46102261 46101136 46101083 46102044 46101609 46101572 ...
#>  $ score      : int 26
#>  $ time       : POSIXct[1:1], format: "2025-11-30 21:24:22"
#>  $ title      : chr "Stackoverflow Outage"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.stackstatus.net/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[136]]
#> List of 9
#>  $ by         : chr "Brajeshwar"
#>  $ descendants: int 2
#>  $ id         : int 46108202
#>  $ kids       : int [1:2] 46121330 46112172
#>  $ score      : int 25
#>  $ time       : POSIXct[1:1], format: "2025-12-01 14:57:11"
#>  $ title      : chr "India orders smartphone makers to preload state-owned cyber safety app"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.reuters.com/sustainability/boards-policy-regulation/india-orders-mobile-phones-preloaded-with-gover"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[137]]
#> List of 9
#>  $ by         : chr "ingve"
#>  $ descendants: int 20
#>  $ id         : int 46105896
#>  $ kids       : int [1:16] 46106626 46106689 46106778 46106569 46106648 46106732 46107322 46110344 46106684 46107129 ...
#>  $ score      : int 25
#>  $ time       : POSIXct[1:1], format: "2025-12-01 10:51:16"
#>  $ title      : chr "Why Is ChatGPT for Mac So Good?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://allenpike.com/2025/why-is-chatgpt-so-good-claude"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[138]]
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
#> [[139]]
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
#> [[140]]
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
#> [[141]]
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
#> [[142]]
#> List of 9
#>  $ by         : chr "keepamovin"
#>  $ descendants: int 75
#>  $ id         : int 46111119
#>  $ kids       : int [1:27] 46121003 46112220 46112164 46111443 46111741 46112676 46111836 46111867 46114151 46115593 ...
#>  $ score      : int 24
#>  $ text       : chr "So there&#x27;s nuance here. Let&#x27;s define &quot;Aliens&quot; as &quot;non human sentiences&quot;. Personal"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 18:35:00"
#>  $ title      : chr "Ask HN: Do you believe aliens are visiting Earth?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[143]]
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
#> [[144]]
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
#> [[145]]
#> List of 10
#>  $ by         : chr "hoakiet98"
#>  $ descendants: int 3
#>  $ id         : int 46109015
#>  $ kids       : int [1:2] 46109246 46109071
#>  $ score      : int 22
#>  $ text       : chr "Hi HN,\nWe’re Kiet, Avi, and Satya. We built an open-source desktop app that helps you run a lot of CLI coding "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-01 16:06:41"
#>  $ title      : chr "Show HN: Superset – Run 10 parallel coding agents on your machine"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/superset-sh/superset"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[146]]
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
#> [[147]]
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
#> [[148]]
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
#> [[149]]
#> List of 9
#>  $ by         : chr "duxup"
#>  $ descendants: int 3
#>  $ id         : int 46103403
#>  $ kids       : int [1:4] 46103408 46110372 46103808 46103413
#>  $ score      : int 21
#>  $ time       : POSIXct[1:1], format: "2025-12-01 04:14:10"
#>  $ title      : chr "The Ex-President Whom Trump Plans to Pardon Flooded America with Cocaine"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.nytimes.com/2025/11/29/nyregion/honduras-hernandez-drug-trafficking.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[150]]
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
#> [[151]]
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
#> [[152]]
#> List of 8
#>  $ by         : chr "b16m"
#>  $ descendants: int 0
#>  $ id         : int 46106283
#>  $ score      : int 20
#>  $ time       : POSIXct[1:1], format: "2025-12-01 11:52:29"
#>  $ title      : chr "DeepSeek-v3.2-Speciale"
#>  $ type       : chr "story"
#>  $ url        : chr "https://huggingface.co/deepseek-ai/DeepSeek-V3.2-Speciale"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[153]]
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
#> [[154]]
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
#> [[155]]
#> List of 9
#>  $ by         : chr "stopbulying"
#>  $ descendants: int 7
#>  $ id         : int 46121300
#>  $ kids       : int [1:3] 46121655 46121717 46121629
#>  $ score      : int 19
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:08:01"
#>  $ title      : chr "First time since 1988, the U.S. is not officially commemorating World AIDS Day"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.npr.org/sections/goats-and-soda/2025/12/01/g-s1-99925/world-aids-day-trump"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[156]]
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
#> [[157]]
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
#> [[158]]
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
#> [[159]]
#> List of 9
#>  $ by         : chr "mhb"
#>  $ descendants: int 4
#>  $ id         : int 46107290
#>  $ kids       : int [1:5] 46108804 46113219 46108448 46109590 46109240
#>  $ score      : int 18
#>  $ time       : POSIXct[1:1], format: "2025-12-01 13:42:11"
#>  $ title      : chr "IDF to receive 'Iron Beam' laser interceptors at the end of the month"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.timesofisrael.com/idf-to-receive-iron-beam-laser-interceptors-at-the-end-of-the-month/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[160]]
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
#> [[161]]
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
#> [[162]]
#> List of 9
#>  $ by         : chr "alsetmusic"
#>  $ descendants: int 1
#>  $ id         : int 46110337
#>  $ kids       : int 46110979
#>  $ score      : int 17
#>  $ time       : POSIXct[1:1], format: "2025-12-01 17:38:39"
#>  $ title      : chr "India is ordering Apple and other phone makers to preinstall a state-owned app"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.theverge.com/news/834998/india-sanchar-saathi-app-order-apple-android"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[163]]
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
#> [[164]]
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
#> [[165]]
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
#> [[166]]
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
#> [[167]]
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
#> [[168]]
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
#> [[169]]
#> List of 9
#>  $ by         : chr "JumpCrisscross"
#>  $ descendants: int 3
#>  $ id         : int 46101135
#>  $ kids       : int 46101303
#>  $ score      : int 16
#>  $ time       : POSIXct[1:1], format: "2025-11-30 22:37:32"
#>  $ title      : chr "Liberal towns backtrack on license plate trackers amid concerns about privacy"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.politico.com/news/2025/11/30/license-plate-trackers-pushback-00670550"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[170]]
#> List of 8
#>  $ by         : chr "tiernano"
#>  $ descendants: int 0
#>  $ id         : int 46100080
#>  $ score      : int 16
#>  $ time       : POSIXct[1:1], format: "2025-11-30 20:26:24"
#>  $ title      : chr "Building the Perfect Linux PC with Linus Torvalds"
#>  $ type       : chr "story"
#>  $ url        : chr "https://youtu.be/mfv0V1SxbNA?si=ASyHL7YiMtdOCVen"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[171]]
#> List of 9
#>  $ by         : chr "donohoe"
#>  $ descendants: int 3
#>  $ id         : int 46097126
#>  $ kids       : int [1:2] 46097597 46100485
#>  $ score      : int 16
#>  $ time       : POSIXct[1:1], format: "2025-11-30 14:54:48"
#>  $ title      : chr "Zillow Removes Climate Risk Scores from Home Listings"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.nytimes.com/2025/11/30/climate/zillow-climate-risk-scores-homes.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[172]]
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
#> [[173]]
#> List of 9
#>  $ by         : chr "JumpCrisscross"
#>  $ descendants: int 13
#>  $ id         : int 46116852
#>  $ kids       : int [1:4] 46117317 46117207 46117072 46117282
#>  $ score      : int 15
#>  $ time       : POSIXct[1:1], format: "2025-12-02 02:54:09"
#>  $ title      : chr "Pete Hegseth Needs to Go–Now"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.theatlantic.com/ideas/2025/12/pete-hegseth-pentagon-department-defense/685098/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[174]]
#> List of 9
#>  $ by         : chr "jaramy"
#>  $ descendants: int 23
#>  $ id         : int 46108892
#>  $ kids       : int [1:5] 46109418 46109767 46109400 46111315 46108896
#>  $ score      : int 15
#>  $ time       : POSIXct[1:1], format: "2025-12-01 15:57:18"
#>  $ title      : chr "Show HN: I built a 1.8MB native app with self-built UI, vision and AI libraries"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/Okery/Aivition"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[175]]
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
#> [[176]]
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
#> [[177]]
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
#> [[178]]
#> List of 9
#>  $ by         : chr "ryandrake"
#>  $ descendants: int 1
#>  $ id         : int 46101541
#>  $ kids       : int 46101730
#>  $ score      : int 15
#>  $ time       : POSIXct[1:1], format: "2025-11-30 23:28:01"
#>  $ title      : chr "Fortnite fans are saying \"no to AI slop\""
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.eurogamer.net/fortnite-fans-are-saying-no-to-ai-slop-after-spotting-what-they-believe-are-ai-genera"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[179]]
#> List of 8
#>  $ by         : chr "geerlingguy"
#>  $ descendants: int 0
#>  $ id         : int 46100707
#>  $ score      : int 15
#>  $ time       : POSIXct[1:1], format: "2025-11-30 21:40:03"
#>  $ title      : chr "Building the Perfect Linux PC with Linus Torvalds"
#>  $ type       : chr "story"
#>  $ url        : chr "https://youtu.be/mfv0V1SxbNA"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[180]]
#> List of 9
#>  $ by         : chr "ashishgupta2209"
#>  $ descendants: int 23
#>  $ id         : int 46097992
#>  $ kids       : int [1:13] 46098173 46098021 46098189 46098039 46098221 46099505 46100203 46098176 46098192 46098310 ...
#>  $ score      : int 15
#>  $ time       : POSIXct[1:1], format: "2025-11-30 16:28:41"
#>  $ title      : chr "Google CEO says ‘vibe coding’ made software development ‘so much more enjoyable’"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.google.com/url?q=https://indianexpress.com/article/technology/tech-news-technology/google-ceo-sunda"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[181]]
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
#> [[182]]
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
#> [[183]]
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
#> [[184]]
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
#> [[185]]
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
#> [[186]]
#> List of 8
#>  $ by         : chr "avinassh"
#>  $ descendants: int 0
#>  $ id         : int 46107946
#>  $ score      : int 14
#>  $ time       : POSIXct[1:1], format: "2025-12-01 14:38:57"
#>  $ title      : chr "Fermyon Joins Akamai"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.fermyon.com/blog/fermyon-joins-akamai"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[187]]
#> List of 9
#>  $ by         : chr "dgathogo"
#>  $ descendants: int 2
#>  $ id         : int 46106761
#>  $ kids       : int 46108629
#>  $ score      : int 14
#>  $ time       : POSIXct[1:1], format: "2025-12-01 12:43:35"
#>  $ title      : chr "India orders Apple to pre-install an undeletable state security app on iPhones"
#>  $ type       : chr "story"
#>  $ url        : chr "https://9to5mac.com/2025/12/01/india-orders-apple-to-pre-instal-an-undeletable-state-security-app-on-iphones/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[188]]
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
#> [[189]]
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
#> [[190]]
#> List of 9
#>  $ by         : chr "bandamo"
#>  $ descendants: int 11
#>  $ id         : int 46106189
#>  $ kids       : int [1:7] 46106636 46106284 46107483 46108890 46106416 46106233 46107350
#>  $ score      : int 14
#>  $ time       : POSIXct[1:1], format: "2025-12-01 11:37:55"
#>  $ title      : chr "Has the AI Bubble Popped Yet?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://hastheaibubblepoppedyet.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[191]]
#> List of 8
#>  $ by         : chr "hebelehubele"
#>  $ descendants: int 0
#>  $ id         : int 46105937
#>  $ score      : int 14
#>  $ time       : POSIXct[1:1], format: "2025-12-01 10:57:52"
#>  $ title      : chr "Not Just Gaza. From West Bank to Syria and Lebanon, Israel's Onslaught Continues"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.theguardian.com/commentisfree/2025/dec/01/gaza-west-bank-syria-lebanon-israel-ceasefire"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[192]]
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
#> [[193]]
#> List of 9
#>  $ by         : chr "handfuloflight"
#>  $ descendants: int 2
#>  $ id         : int 46102734
#>  $ kids       : int 46104013
#>  $ score      : int 14
#>  $ time       : POSIXct[1:1], format: "2025-12-01 02:15:45"
#>  $ title      : chr "15 Years Ago, UFO Sightings Rocked a Small Texas Town. The Mystery Remains"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.vice.com/en/article/netflix-encounters-messengers-stephenville/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[194]]
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
#> [[195]]
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
#> [[196]]
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
#> [[197]]
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
#> [[198]]
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
#> [[199]]
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
#> [[200]]
#> List of 9
#>  $ by         : chr "devonnull"
#>  $ descendants: int 1
#>  $ id         : int 46104045
#>  $ kids       : int 46111133
#>  $ score      : int 13
#>  $ time       : POSIXct[1:1], format: "2025-12-01 06:05:11"
#>  $ title      : chr "The AI bubble isn't new – Karl Marx explained it nearly 150 years ago"
#>  $ type       : chr "story"
#>  $ url        : chr "https://theconversation.com/the-ai-bubble-isnt-new-karl-marx-explained-the-mechanisms-behind-it-nearly-150-years-ago-270663"
#>  - attr(*, "class")= chr "hn_item"
#> 
# }
```
