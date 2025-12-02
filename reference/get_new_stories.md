# Hacker News newest stories

Retrieves newest stories using Hacker News API

## Usage

``` r
get_new_stories(max_items = NULL)
```

## Arguments

- max_items:

  Maximum number of items to retrieve. If max_items = NULL, returns all
  available

## Value

list of new stories

## Examples

``` r
# \donttest{
# get the newest story on Hacker News
newest_story <- get_new_stories(max_items = 1)
newest_story
#> [[1]]
#> List of 9
#>  $ by         : chr "CoregentisAI"
#>  $ descendants: int 0
#>  $ id         : int 46122211
#>  $ score      : int 1
#>  $ text       : chr "Hi HN,<p>The entire Multi-Agent ecosystem is built on sand: no lifecycle, no state model, no governance, no aud"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:32:25"
#>  $ title      : chr "Show HN: MPLP – Why Prompt Engineering Is over (Protocol Engineering Begins)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/Coregentis/MPLP-Protocol"
#>  - attr(*, "class")= chr "hn_item"
#> 

# get all new stories on Hacker News
new_stories <- get_new_stories()
#> [working] (336 + 0) -> 11 -> 153 | ■■■■■■■■■■                        31%
#> [working] (0 + 0) -> 0 -> 500 | ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■  100%
new_stories
#> [[1]]
#> List of 9
#>  $ by         : chr "CoregentisAI"
#>  $ descendants: int 0
#>  $ id         : int 46122211
#>  $ score      : int 1
#>  $ text       : chr "Hi HN,<p>The entire Multi-Agent ecosystem is built on sand: no lifecycle, no state model, no governance, no aud"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:32:25"
#>  $ title      : chr "Show HN: MPLP – Why Prompt Engineering Is over (Protocol Engineering Begins)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/Coregentis/MPLP-Protocol"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[2]]
#> List of 9
#>  $ by         : chr "bikenaga"
#>  $ descendants: int 0
#>  $ id         : int 46122189
#>  $ kids       : int [1:2] 46122193 46122190
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:30:47"
#>  $ title      : chr "Reduction of residence time of air in the Arctic since the 1980s"
#>  $ type       : chr "story"
#>  $ url        : chr "https://essopenarchive.org/doi/full/10.22541/essoar.176460481.13361088/v1"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[3]]
#> List of 8
#>  $ by         : chr "surprisetalk"
#>  $ descendants: int 0
#>  $ id         : int 46122175
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:29:28"
#>  $ title      : chr "How to get where you need to be when you don't know where you're going"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.ystrickler.com/how-to-get-where-you-need-to-be-when-you-dont-know-where-youre-going/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[4]]
#> List of 8
#>  $ by         : chr "surprisetalk"
#>  $ descendants: int 0
#>  $ id         : int 46122173
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:29:21"
#>  $ title      : chr "What's Possible in Brain Circuit Mapping in 5 Years [video]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.youtube.com/watch?v=Ss1twIeMrOY"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[5]]
#> List of 8
#>  $ by         : chr "surprisetalk"
#>  $ descendants: int 0
#>  $ id         : int 46122168
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:29:09"
#>  $ title      : chr "Detecting AV1-encoded videos with Python"
#>  $ type       : chr "story"
#>  $ url        : chr "https://alexwlchan.net/2025/detecting-av1-videos/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[6]]
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
#> [[7]]
#> List of 8
#>  $ by         : chr "surprisetalk"
#>  $ descendants: int 0
#>  $ id         : int 46122129
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:25:34"
#>  $ title      : chr "macOS Tahoe Adoption Rate"
#>  $ type       : chr "story"
#>  $ url        : chr "https://old.reddit.com/r/MacOS/comments/1pc3pds/macos_tahoe_adoption_rate/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[8]]
#> List of 8
#>  $ by         : chr "cjauvin"
#>  $ descendants: int 0
#>  $ id         : int 46122114
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:23:57"
#>  $ title      : chr "Some models of reality are bolder than others"
#>  $ type       : chr "story"
#>  $ url        : chr "https://cjauvin.github.io/posts/metaphysical-boldness/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[9]]
#> List of 9
#>  $ by         : chr "drdmitry"
#>  $ descendants: int 0
#>  $ id         : int 46122102
#>  $ score      : int 1
#>  $ text       : chr "Every developer knows this pain:<p>&quot;I just need to convert this XML to JSON...&quot;<p>-&gt; Write a scrip"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:22:29"
#>  $ title      : chr "Show HN: I Built an Agentic AI That Creates Hosted File Converters"
#>  $ type       : chr "story"
#>  $ url        : chr "https://conversiontools.io/ai-converter-studio"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[10]]
#> List of 8
#>  $ by         : chr "2bluesc"
#>  $ descendants: int 0
#>  $ id         : int 46122098
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:22:17"
#>  $ title      : chr "Canonical Announces Ubuntu Pro for WSL"
#>  $ type       : chr "story"
#>  $ url        : chr "https://canonical.com/blog/canonical-announces-ubuntu-pro-for-wsl"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[11]]
#> List of 9
#>  $ by         : chr "sr-white"
#>  $ descendants: int 0
#>  $ id         : int 46122085
#>  $ score      : int 2
#>  $ text       : chr "Hi HN! I built gopin to solve a gap in my dependency management workflow.<p>Renovate and Dependabot keep my CI "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:21:10"
#>  $ title      : chr "Show HN: Gopin – Automatically pin latest to specific versions in Go install"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/nnnkkk7/gopin"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[12]]
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
#> [[13]]
#> List of 8
#>  $ by         : chr "piljoong"
#>  $ descendants: int 0
#>  $ id         : int 46122056
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:19:00"
#>  $ title      : chr "Distributed ID Formats Are Architectural Commitments, Not Just Data Types"
#>  $ type       : chr "story"
#>  $ url        : chr "https://piljoong.dev/posts/distributed-id-generation-complicated/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[14]]
#> List of 8
#>  $ by         : chr "doener"
#>  $ descendants: int 0
#>  $ id         : int 46122050
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:18:16"
#>  $ title      : chr "VKD3D-Proton 3.0 Released: Big Update to Direct3D 12 on Vulkan"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.phoronix.com/news/VKD3D-Proton-3.0"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[15]]
#> List of 8
#>  $ by         : chr "mfolaron"
#>  $ descendants: int 0
#>  $ id         : int 46122045
#>  $ score      : int 3
#>  $ text       : chr "Hi HN,<p>We&#x27;re launching CoChat, which extends OpenWebUI with group chat, model switching, and side-by-sid"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:18:06"
#>  $ title      : chr "Show HN: CoChat – Group chats with multi-model AI, built on OpenWebUI"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[16]]
#> List of 9
#>  $ by         : chr "MartyD"
#>  $ descendants: int 0
#>  $ id         : int 46122036
#>  $ score      : int 1
#>  $ text       : chr "I built CoThou after seeing search and AI answer engines give completely incorrect information about my company"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:17:04"
#>  $ title      : chr "Show HN: CoThou – Control what AI search engines say about your business"
#>  $ type       : chr "story"
#>  $ url        : chr "https://cothou.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[17]]
#> List of 8
#>  $ by         : chr "LorenDB"
#>  $ descendants: int 0
#>  $ id         : int 46122023
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:14:58"
#>  $ title      : chr "Kitten Space Agency"
#>  $ type       : chr "story"
#>  $ url        : chr "https://ahwoo.com/store/KPbAA1Au/kitten-space-agency"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[18]]
#> List of 9
#>  $ by         : chr "calstad"
#>  $ descendants: int 1
#>  $ id         : int 46122011
#>  $ kids       : int 46122182
#>  $ score      : int 7
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:13:40"
#>  $ title      : chr "OpenAI Declares 'Code Red' as Google Threatens AI Lead"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.wsj.com/tech/ai/openais-altman-declares-code-red-to-improve-chatgpt-as-google-threatens-ai-lead-7faf5ea6"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[19]]
#> List of 8
#>  $ by         : chr "mooreds"
#>  $ descendants: int 0
#>  $ id         : int 46122010
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:13:38"
#>  $ title      : chr "NYC's Premiere Analog Photobooth Gallery and Museum"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.autophoto.org/museum"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[20]]
#> List of 8
#>  $ by         : chr "gmays"
#>  $ descendants: int 0
#>  $ id         : int 46122009
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:13:34"
#>  $ title      : chr "Project Iceberg – Coordinating the Human-AI Future"
#>  $ type       : chr "story"
#>  $ url        : chr "https://iceberg.mit.edu/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[21]]
#> List of 8
#>  $ by         : chr "speckx"
#>  $ descendants: int 0
#>  $ id         : int 46122005
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:13:10"
#>  $ title      : chr "Why Healthcare Is in a Death Spiral: Follow the Money"
#>  $ type       : chr "story"
#>  $ url        : chr "http://charleshughsmith.blogspot.com/2025/12/why-healthcare-is-in-death-spiral.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[22]]
#> List of 9
#>  $ by         : chr "etiam"
#>  $ descendants: int 1
#>  $ id         : int 46121994
#>  $ kids       : int 46122199
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:11:54"
#>  $ title      : chr "China's 'dirt cheap' hypersonic missiles could upend global defence markets"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.scmp.com/news/china/science/article/3334933/chinas-dirt-cheap-hypersonic-missiles-could-upend-globa"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[23]]
#> List of 8
#>  $ by         : chr "zkid18"
#>  $ descendants: int 0
#>  $ id         : int 46121967
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:09:19"
#>  $ title      : chr "What I'm doing in GTM as B2B SaaS founder as of Dec 25"
#>  $ type       : chr "story"
#>  $ url        : chr "https://nonamevc.substack.com/p/what-im-doing-in-gtm-as-b2b-saas"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[24]]
#> List of 9
#>  $ by         : chr "dan_h"
#>  $ descendants: int 0
#>  $ id         : int 46121965
#>  $ score      : int 3
#>  $ text       : chr "I&#x27;m happy to announce that Jester News is finally available as a companion app to <a href=\"https:&#x2F;&#"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:09:09"
#>  $ title      : chr "Show HN: Jester News - An RSS/Atom Companion App"
#>  $ type       : chr "story"
#>  $ url        : chr "https://jesterengine.com/pages/app"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[25]]
#> List of 8
#>  $ by         : chr "andsoitis"
#>  $ descendants: int 0
#>  $ id         : int 46121956
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:08:21"
#>  $ title      : chr "What is evented IO and why does it scale?"
#>  $ type       : chr "story"
#>  $ url        : chr "http://ksat.me/what-is-evented-io-and-why-it-scales"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[26]]
#> List of 9
#>  $ by         : chr "nallana"
#>  $ descendants: int 0
#>  $ id         : int 46121951
#>  $ score      : int 4
#>  $ text       : chr "Hi, I’m Nabeel. In August I released RunMat as an open-source runtime for MATLAB code that was already much fas"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:07:49"
#>  $ title      : chr "Show HN: RunMat – runtime with auto CPU/GPU routing for dense math"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/runmat-org/runmat"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[27]]
#> List of 8
#>  $ by         : chr "keepamovin"
#>  $ descendants: int 0
#>  $ id         : int 46121927
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:05:02"
#>  $ title      : chr "Dionysiaca by Nonnus"
#>  $ type       : chr "story"
#>  $ url        : chr "https://topostext.org/work/529"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[28]]
#> List of 8
#>  $ by         : chr "andsoitis"
#>  $ descendants: int 0
#>  $ id         : int 46121922
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:04:30"
#>  $ title      : chr "'Function Coloring'"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.tedinski.com/2018/11/13/function-coloring.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[29]]
#> List of 9
#>  $ by         : chr "speckx"
#>  $ descendants: int 1
#>  $ id         : int 46121914
#>  $ kids       : int 46122236
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:03:35"
#>  $ title      : chr "The myth of the $140k poverty line"
#>  $ type       : chr "story"
#>  $ url        : chr "https://marginalrevolution.com/marginalrevolution/2025/12/the-myth-of-the-140000-poverty-line.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[30]]
#> List of 8
#>  $ by         : chr "nocodebcn"
#>  $ descendants: int 0
#>  $ id         : int 46121898
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:02:37"
#>  $ title      : chr "Show HN: Max MRR Calculator – Find Your Startup's Growth Ceiling"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.failory.com/tools/max-mrr"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[31]]
#> List of 8
#>  $ by         : chr "Jacques2Marais"
#>  $ descendants: int 0
#>  $ id         : int 46121896
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:02:31"
#>  $ title      : chr "Show HN: TinyTune – fine-tune open-source AI on your own data with no code"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.tinytune.xyz/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[32]]
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
#> [[33]]
#> List of 8
#>  $ by         : chr "bikenaga"
#>  $ descendants: int 0
#>  $ id         : int 46121885
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:01:39"
#>  $ title      : chr "Sunset Section 230 and Unleash the First Amendment"
#>  $ type       : chr "story"
#>  $ url        : chr "https://cacm.acm.org/opinion/sunset-section-230-and-unleash-the-first-amendment/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[34]]
#> List of 8
#>  $ by         : chr "wslh"
#>  $ descendants: int 0
#>  $ id         : int 46121875
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 15:00:38"
#>  $ title      : chr "Gemini Great Grandmother"
#>  $ type       : chr "story"
#>  $ url        : chr "https://avc.xyz/gemini-great-grandmother"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[35]]
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
#> [[36]]
#> List of 8
#>  $ by         : chr "odewahn"
#>  $ descendants: int 0
#>  $ id         : int 46121864
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:59:57"
#>  $ title      : chr "What MCP and Claude Skills Teach Us About Open Source for AI"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.oreilly.com/radar/what-mcp-and-claude-skills-teach-us-about-open-source-for-ai/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[37]]
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
#> [[38]]
#> List of 9
#>  $ by         : chr "thelastgallon"
#>  $ descendants: int 1
#>  $ id         : int 46121850
#>  $ kids       : int 46121905
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:58:27"
#>  $ title      : chr "Michael and Susan Dell to Put $250 in 25M Children's Accounts"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.nytimes.com/2025/12/02/business/dell-children-trump-accounts.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[39]]
#> List of 8
#>  $ by         : chr "khiqinsta"
#>  $ descendants: int 0
#>  $ id         : int 46121849
#>  $ score      : int 2
#>  $ text       : chr "Someone told me that you can use some of old Motorola phones to make stingray they can broadcast and receive at"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:58:23"
#>  $ title      : chr "Can you make stingray without full duplex SDR?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[40]]
#> List of 9
#>  $ by         : chr "wildkyo"
#>  $ descendants: int 0
#>  $ id         : int 46121835
#>  $ kids       : int 46121836
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:57:50"
#>  $ title      : chr "Daily JavaScript and Python Coding Challenges in the Browser – AdventJS 2025"
#>  $ type       : chr "story"
#>  $ url        : chr "https://adventjs.dev/en"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[41]]
#> List of 8
#>  $ by         : chr "speckx"
#>  $ descendants: int 0
#>  $ id         : int 46121833
#>  $ score      : int 9
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:57:44"
#>  $ title      : chr "AI Is Destroying the University and Learning Itself"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.currentaffairs.org/news/ai-is-destroying-the-university-and-learning-itself"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[42]]
#> List of 8
#>  $ by         : chr "andsoitis"
#>  $ descendants: int 0
#>  $ id         : int 46121825
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:56:47"
#>  $ title      : chr "Zig's new approach to asynchronous I/O"
#>  $ type       : chr "story"
#>  $ url        : chr "https://zig.show/episodes/41/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[43]]
#> List of 9
#>  $ by         : chr "yesitcan"
#>  $ descendants: int 2
#>  $ id         : int 46121822
#>  $ kids       : int [1:2] 46122176 46121880
#>  $ score      : int 2
#>  $ text       : chr "I want to control what ingredients I consume but I don’t want to spend 1-2 hours&#x2F;day on cooking. Have you "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:56:33"
#>  $ title      : chr "Ask HN: Have You Automated Cooking?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[44]]
#> List of 9
#>  $ by         : chr "harijoe"
#>  $ descendants: int 1
#>  $ id         : int 46121805
#>  $ kids       : int 46121888
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:55:12"
#>  $ title      : chr "MCP vs. ChatGPT Apps: A Detailed Comparison"
#>  $ type       : chr "story"
#>  $ url        : chr "https://alpic.ai/blog/mcp-apps-how-it-works-and-how-it-compares-to-chatgpt-apps"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[45]]
#> List of 10
#>  $ by         : chr "mvijaykarthik"
#>  $ descendants: int 1
#>  $ id         : int 46121800
#>  $ kids       : int 46121873
#>  $ score      : int 6
#>  $ text       : chr "Frequent memory allocations can be costly in Go. Go&#x27;s sync.Pool helps with object reuse but isn&#x27;t typ"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:54:53"
#>  $ title      : chr "Show HN: SafePool – Type-safe object pooling for Go"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/oodle-ai/safepool"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[46]]
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
#> [[47]]
#> List of 9
#>  $ by         : chr "networkcat"
#>  $ descendants: int 0
#>  $ id         : int 46121797
#>  $ score      : int 3
#>  $ text       : chr "OpenProxyDB automatically fetches IP addresses that have been blocked by Wikipedia for proxy-related reasons (V"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:54:37"
#>  $ title      : chr "Show HN: Turning Wikipedia's blocklists into a proxy detection database"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/NetworkCats/OpenProxyDB"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[48]]
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
#> [[49]]
#> List of 8
#>  $ by         : chr "quapster"
#>  $ descendants: int 0
#>  $ id         : int 46121773
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:52:34"
#>  $ title      : chr "DotInsights – December 2025"
#>  $ type       : chr "story"
#>  $ url        : chr "https://blog.jetbrains.com/dotnet/2025/12/02/dotinsights-december-2025/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[50]]
#> List of 9
#>  $ by         : chr "runningmike"
#>  $ descendants: int 1
#>  $ id         : int 46121770
#>  $ kids       : int 46121771
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:52:05"
#>  $ title      : chr "Launch-Day Diffusion: Tracking Hacker News Impact on GitHub Stars for AI Tools"
#>  $ type       : chr "story"
#>  $ url        : chr "https://arxiv.org/abs/2511.04453"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[51]]
#> List of 8
#>  $ by         : chr "janpio"
#>  $ descendants: int 0
#>  $ id         : int 46121751
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:50:18"
#>  $ title      : chr "Evolving GitHub Copilot's next edit suggestions through custom model training"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.blog/ai-and-ml/github-copilot/evolving-github-copilots-next-edit-suggestions-through-custom-model-training/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[52]]
#> List of 8
#>  $ by         : chr "gmays"
#>  $ descendants: int 0
#>  $ id         : int 46121737
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:48:30"
#>  $ title      : chr "Learn like an athlete, knowledge workers should train"
#>  $ type       : chr "story"
#>  $ url        : chr "https://marginalrevolution.com/marginalrevolution/2019/07/learn-like-an-athlete-knowledge-workers-should-train.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[53]]
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
#> [[54]]
#> List of 8
#>  $ by         : chr "modinfo"
#>  $ descendants: int 0
#>  $ id         : int 46121731
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:48:12"
#>  $ title      : chr "Rash: Declarative shell scripting using Rust native bindings inspired by Ansible"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/rash-sh/rash"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[55]]
#> List of 8
#>  $ by         : chr "janpio"
#>  $ descendants: int 0
#>  $ id         : int 46121711
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:45:59"
#>  $ title      : chr "Building a Toast Component"
#>  $ type       : chr "story"
#>  $ url        : chr "https://emilkowal.ski/ui/building-a-toast-component"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[56]]
#> List of 9
#>  $ by         : chr "lafalce"
#>  $ descendants: int 1
#>  $ id         : int 46121708
#>  $ kids       : int 46121709
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:45:50"
#>  $ title      : chr "My Contribution to Toon"
#>  $ type       : chr "story"
#>  $ url        : chr "https://mateolafalce.github.io/2025/My%20Contribution%20to%20TOON/MyContributiontoTOON.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[57]]
#> List of 8
#>  $ by         : chr "tasubotadas"
#>  $ descendants: int 0
#>  $ id         : int 46121703
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:45:29"
#>  $ title      : chr "Advanced, Overlooked Python Typing"
#>  $ type       : chr "story"
#>  $ url        : chr "https://martynassubonis.substack.com/p/advanced-overlooked-python-typing"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[58]]
#> List of 8
#>  $ by         : chr "voxadam"
#>  $ descendants: int 0
#>  $ id         : int 46121697
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:45:04"
#>  $ title      : chr "Gates: Linux is no threat to Windows (1999)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.itprotoday.com/linux-os/gates-linux-is-no-threat-to-windows"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[59]]
#> List of 9
#>  $ by         : chr "tosh"
#>  $ descendants: int 1
#>  $ id         : int 46121695
#>  $ kids       : int 46122143
#>  $ score      : int 6
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:44:54"
#>  $ title      : chr "'The biggest decision yet': Jared Kaplan on allowing AI to train itself"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.theguardian.com/technology/ng-interactive/2025/dec/02/jared-kaplan-artificial-intelligence-train-itself"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[60]]
#> List of 8
#>  $ by         : chr "blakepelton"
#>  $ descendants: int 0
#>  $ id         : int 46121682
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:44:07"
#>  $ title      : chr "How to Copy Memory? Coordinated Asynchronous Copy as a First-Class OS Service"
#>  $ type       : chr "story"
#>  $ url        : chr "https://danglingpointers.substack.com/p/how-to-copy-memory-coordinated-asynchronous"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[61]]
#> List of 9
#>  $ by         : chr "vanschelven"
#>  $ descendants: int 1
#>  $ id         : int 46121662
#>  $ kids       : int 46121687
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:41:49"
#>  $ title      : chr "Highlight.io Sunsets Itself After LaunchDarkly Acquisition"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.highlight.io/blog/launchdarkly-migration"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[62]]
#> List of 7
#>  $ by         : chr "auspiv"
#>  $ descendants: int 0
#>  $ id         : int 46121653
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:40:50"
#>  $ title      : chr "Ask HN: Who's figured out using Claude Code via voice on mobile? e.g. on a walk"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[63]]
#> List of 8
#>  $ by         : chr "stopbulying"
#>  $ descendants: int 0
#>  $ id         : int 46121652
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:40:32"
#>  $ title      : chr "ICRC: A collection of codes of conduct issued by armed groups (2011) [pdf]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://international-review.icrc.org/sites/default/files/irrc-882-codes-conduct.pdf"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[64]]
#> List of 9
#>  $ by         : chr "matthewslotkin"
#>  $ descendants: int 3
#>  $ id         : int 46121644
#>  $ kids       : int [1:3] 46121795 46121774 46121790
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:39:43"
#>  $ title      : chr "Early modern humans experienced thoughts as commands from external \"gods\""
#>  $ type       : chr "story"
#>  $ url        : chr "https://en.wikipedia.org/wiki/Bicameral_mentality"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[65]]
#> List of 8
#>  $ by         : chr "dataflow"
#>  $ descendants: int 0
#>  $ id         : int 46121638
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:39:29"
#>  $ title      : chr "An honest question for New York's Nassau county conservatives: why cheer this? [video]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.youtube.com/watch?v=GltdOBxniBs"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[66]]
#> List of 8
#>  $ by         : chr "gmays"
#>  $ descendants: int 0
#>  $ id         : int 46121630
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:38:49"
#>  $ title      : chr "Making Sense of Memory in AI Agents"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.leoniemonigatti.com/blog/memory-in-ai-agents.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[67]]
#> List of 8
#>  $ by         : chr "andsoitis"
#>  $ descendants: int 0
#>  $ id         : int 46121619
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:37:55"
#>  $ title      : chr "What Is \"Open Recursion\"?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://journal.stuffwithstuff.com/2013/08/26/what-is-open-recursion/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[68]]
#> List of 9
#>  $ by         : chr "bewal416"
#>  $ descendants: int 1
#>  $ id         : int 46121609
#>  $ kids       : int 46121610
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:37:25"
#>  $ title      : chr "Feed the Platypus"
#>  $ type       : chr "story"
#>  $ url        : chr "https://feed-the-platypus.vercel.app/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[69]]
#> List of 8
#>  $ by         : chr "legi0n"
#>  $ descendants: int 0
#>  $ id         : int 46121600
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:36:38"
#>  $ title      : chr "Show HN: Hacker News Visualized"
#>  $ type       : chr "story"
#>  $ url        : chr "https://ecaterina.app/hackernews"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[70]]
#> List of 8
#>  $ by         : chr "andsoitis"
#>  $ descendants: int 0
#>  $ id         : int 46121596
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:36:33"
#>  $ title      : chr "Crafting \"Crafting Interpreters\""
#>  $ type       : chr "story"
#>  $ url        : chr "https://journal.stuffwithstuff.com/2020/04/05/crafting-crafting-interpreters/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[71]]
#> List of 8
#>  $ by         : chr "SchwKatze"
#>  $ descendants: int 0
#>  $ id         : int 46121590
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:35:57"
#>  $ title      : chr "The Power of Proximity to Coworkers [pdf]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://pallais.scholars.harvard.edu/sites/g/files/omnuum5926/files/2025-11/Power%20of%20Proximity%20to%20Cowor"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[72]]
#> List of 8
#>  $ by         : chr "bakigul"
#>  $ descendants: int 0
#>  $ id         : int 46121588
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:35:54"
#>  $ title      : chr "Microsoft just released a LangChain course for Java developers"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/microsoft/LangChain4j-for-Beginners"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[73]]
#> List of 8
#>  $ by         : chr "BlackPlot"
#>  $ descendants: int 0
#>  $ id         : int 46121581
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:34:46"
#>  $ title      : chr "Best Anonymous Payment Methods 2025"
#>  $ type       : chr "story"
#>  $ url        : chr "https://cloudexplorer.ai/anonymous-payment-methods/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[74]]
#> List of 9
#>  $ by         : chr "mojomark"
#>  $ descendants: int 1
#>  $ id         : int 46121569
#>  $ kids       : int 46121570
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:33:31"
#>  $ title      : chr "Pluribus an Unintentional Allegory for AI"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.polygon.com/pluribus-episode-3-chatgpt-ai-vince-gilligan/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[75]]
#> List of 8
#>  $ by         : chr "zufallsheld"
#>  $ descendants: int 0
#>  $ id         : int 46121564
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:33:13"
#>  $ title      : chr "Comparing the homepage-claims of popular Git hosting providers"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.zufallsheld.de/2025/12/02/comparing-homepage-claims-of-git-providers/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[76]]
#> List of 8
#>  $ by         : chr "andsoitis"
#>  $ descendants: int 0
#>  $ id         : int 46121563
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:33:04"
#>  $ title      : chr "Warner Bros Discovery gets mostly cash offer from Netflix"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.reuters.com/business/media-telecom/warner-bros-discovery-gets-mostly-cash-offer-netflix-source-says-2025-12-01/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[77]]
#> List of 9
#>  $ by         : chr "fortran77"
#>  $ descendants: int 1
#>  $ id         : int 46121559
#>  $ kids       : int 46121560
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:32:40"
#>  $ title      : chr "America's elite colleges have an extra-time-on-tests problem"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.theatlantic.com/magazine/2026/01/elite-university-student-accommodation/684946/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[78]]
#> List of 8
#>  $ by         : chr "greyface-"
#>  $ descendants: int 0
#>  $ id         : int 46121558
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:32:29"
#>  $ title      : chr "Has the TSA added immigration enforcement to \"Secure Flight\"?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://papersplease.org/wp/2025/12/02/has-the-tsa-added-immigration-enforcement-to-secure-flight/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[79]]
#> List of 8
#>  $ by         : chr "gbugniot"
#>  $ descendants: int 0
#>  $ id         : int 46121555
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:32:23"
#>  $ title      : chr "Study Finds AI Wildlife Videos Creates a Disconnect Between People and Animals"
#>  $ type       : chr "story"
#>  $ url        : chr "https://petapixel.com/2025/12/02/study-finds-ai-wildlife-videos-creates-a-disconnect-between-people-and-animals/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[80]]
#> List of 8
#>  $ by         : chr "layer8"
#>  $ descendants: int 0
#>  $ id         : int 46121554
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:32:22"
#>  $ title      : chr "A Comparative Study of Time on Mars with Lunar and Terrestrial Clocks"
#>  $ type       : chr "story"
#>  $ url        : chr "https://iopscience.iop.org/article/10.3847/1538-3881/ae0c16"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[81]]
#> List of 9
#>  $ by         : chr "mikecarlton"
#>  $ descendants: int 1
#>  $ id         : int 46121548
#>  $ kids       : int 46122141
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:32:02"
#>  $ title      : chr "AWS and Google Cloud collaborate to simplify multicloud networking"
#>  $ type       : chr "story"
#>  $ url        : chr "https://cloud.google.com/blog/products/networking/aws-and-google-cloud-collaborate-on-multicloud-networking"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[82]]
#> List of 8
#>  $ by         : chr "benbreen"
#>  $ descendants: int 0
#>  $ id         : int 46121547
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:32:00"
#>  $ title      : chr "Did the Giant Heads of Easter Island Once Walk?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.nytimes.com/2025/11/26/science/archaeology-easter-island-rapa-nui.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[83]]
#> List of 8
#>  $ by         : chr "localbuilder"
#>  $ descendants: int 0
#>  $ id         : int 46121546
#>  $ score      : int 1
#>  $ text       : chr "What engineering blogs or posts have you enjoyed recently? Been a few months since it was last asked on HN and "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:31:58"
#>  $ title      : chr "Ask HN: Favorite Engineering Blogs Currently?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[84]]
#> List of 10
#>  $ by         : chr "diode_sovereign"
#>  $ descendants: int 0
#>  $ id         : int 46121540
#>  $ kids       : int 46121541
#>  $ score      : int 1
#>  $ text       : chr "We built Diode Collab because even &quot;secure&quot; messaging apps still route everything through someone els"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:31:25"
#>  $ title      : chr "Show HN: Messaging and file sharing that stores nothing on servers"
#>  $ type       : chr "story"
#>  $ url        : chr "https://diode.io/products/collab-family/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[85]]
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
#> [[86]]
#> List of 9
#>  $ by         : chr "thibaultmthh"
#>  $ descendants: int 0
#>  $ id         : int 46121502
#>  $ score      : int 1
#>  $ text       : chr "I built this to bring virtual try-on to Shopify stores. The backend wraps Google&#x27;s new VTO model, so the &"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:27:19"
#>  $ title      : chr "Show HN: Genlook – Virtual try-on for Shopify stores"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.genlook.app/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[87]]
#> List of 8
#>  $ by         : chr "jwworth"
#>  $ descendants: int 0
#>  $ id         : int 46121500
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:27:08"
#>  $ title      : chr "Running Great Refinement Meetings"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.jakeworth.com/posts/running-great-refinement-meetings/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[88]]
#> List of 9
#>  $ by         : chr "clubers"
#>  $ descendants: int 0
#>  $ id         : int 46121493
#>  $ score      : int 2
#>  $ text       : chr "A simple interactive visualization of chromaticity and display gamuts using animated point clouds. It compares "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:26:37"
#>  $ title      : chr "Show HN: Interactive Chromaticity and 3D Color Gamut Visualization"
#>  $ type       : chr "story"
#>  $ url        : chr "https://agaura.github.io/chromaticity-clouds/main.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[89]]
#> List of 8
#>  $ by         : chr "bbayles"
#>  $ descendants: int 0
#>  $ id         : int 46121487
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:25:53"
#>  $ title      : chr "Every cheat site has the wrong code for Michelin Rally Masters"
#>  $ type       : chr "story"
#>  $ url        : chr "https://32bits.substack.com/p/under-the-microscope-michelin-rally"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[90]]
#> List of 8
#>  $ by         : chr "chollida1"
#>  $ descendants: int 0
#>  $ id         : int 46121485
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:25:49"
#>  $ title      : chr "Meta's Instagram orders employees back to the office 5 days a week"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.cnbc.com/2025/12/01/meta-instagram-rto-return-to-office.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[91]]
#> List of 9
#>  $ by         : chr "bozhou"
#>  $ descendants: int 1
#>  $ id         : int 46121463
#>  $ kids       : int [1:2] 46121490 46121464
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:23:56"
#>  $ title      : chr "Catch the liar in this addictive party word game"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.imposterwords.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[92]]
#> List of 8
#>  $ by         : chr "EPendragon"
#>  $ descendants: int 0
#>  $ id         : int 46121450
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:23:07"
#>  $ title      : chr "Neovim as Git Mergetool"
#>  $ type       : chr "story"
#>  $ url        : chr "https://smittie.de/posts/git-mergetool/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[93]]
#> List of 9
#>  $ by         : chr "leolula"
#>  $ descendants: int 1
#>  $ id         : int 46121438
#>  $ kids       : int 46121439
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:22:16"
#>  $ title      : chr "Better Solutions for Cloud-to-Cloud Transfers"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.ricedrive.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[94]]
#> List of 9
#>  $ by         : chr "sirinnes"
#>  $ descendants: int 0
#>  $ id         : int 46121434
#>  $ score      : int 1
#>  $ text       : chr "Hi HN,\nPiperead is a free web tool that uses AI to act as a personalized librarian. Instead of just genre tags"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:22:10"
#>  $ title      : chr "Show HN: Piperead – An AI librarian to find your next book"
#>  $ type       : chr "story"
#>  $ url        : chr "https://piperead.com"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[95]]
#> List of 8
#>  $ by         : chr "birdculture"
#>  $ descendants: int 0
#>  $ id         : int 46121425
#>  $ score      : int 11
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:21:25"
#>  $ title      : chr "Medley Interlisp for the Newcomer"
#>  $ type       : chr "story"
#>  $ url        : chr "https://primer.interlisp.org"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[96]]
#> List of 9
#>  $ by         : chr "mtlynch"
#>  $ descendants: int 3
#>  $ id         : int 46121411
#>  $ kids       : int 46121573
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:19:08"
#>  $ title      : chr "My First Impressions of MeshCore Off-Grid Messaging"
#>  $ type       : chr "story"
#>  $ url        : chr "https://mtlynch.io/first-impressions-of-meshcore/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[97]]
#> List of 9
#>  $ by         : chr "choult"
#>  $ descendants: int 1
#>  $ id         : int 46121407
#>  $ kids       : int 46121408
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:18:58"
#>  $ title      : chr "Saved by Stoppard"
#>  $ type       : chr "story"
#>  $ url        : chr "https://bsky.app/profile/harrywallop.co.uk/post/3m6ykow3vvs2o"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[98]]
#> List of 9
#>  $ by         : chr "ksec"
#>  $ descendants: int 1
#>  $ id         : int 46121406
#>  $ kids       : int 46121658
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:18:51"
#>  $ title      : chr "FreeBSD 15.0 Now Officially Available with Many Updates, Reproducible Builds"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.phoronix.com/news/FreeBSD-15.0-RELEASE"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[99]]
#> List of 8
#>  $ by         : chr "jonbaer"
#>  $ descendants: int 0
#>  $ id         : int 46121392
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:17:21"
#>  $ title      : chr "Scientists just found a way to tell if quantum computers are wrong"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.sciencedaily.com/releases/2025/11/251130205506.htm"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[100]]
#> List of 8
#>  $ by         : chr "mikece"
#>  $ descendants: int 0
#>  $ id         : int 46121383
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:16:48"
#>  $ title      : chr "Canonical Now Offering Ubuntu Pro for WSL"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.phoronix.com/news/Ubuntu-Pro-For-WSL"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[101]]
#> List of 9
#>  $ by         : chr "steerlabs"
#>  $ descendants: int 0
#>  $ id         : int 46121375
#>  $ score      : int 2
#>  $ text       : chr "Hey HN, I’m the author.<p>I built Steer because I was tired of the &#x27;Confident Idiot&#x27; problem—where ag"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:16:31"
#>  $ title      : chr "Show HN: Steer – Stop debugging agents, start teaching them (Open Source)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/imtt-dev/steer"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[102]]
#> List of 8
#>  $ by         : chr "modinfo"
#>  $ descendants: int 0
#>  $ id         : int 46121372
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:16:15"
#>  $ title      : chr "Passless – Virtual FIDO2 device and client FIDO 2 utility"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/pando85/passless"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[103]]
#> List of 8
#>  $ by         : chr "geox"
#>  $ descendants: int 0
#>  $ id         : int 46121367
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:15:45"
#>  $ title      : chr "A 3D Printed Cornea Restores Sight"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.rambamhcc.com/post/global-first-at-rambam-a-3d-printed-cornea-restores-sight"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[104]]
#> List of 9
#>  $ by         : chr "Erlend_Dugstad"
#>  $ descendants: int 1
#>  $ id         : int 46121362
#>  $ kids       : int 46121363
#>  $ score      : int 6
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:15:35"
#>  $ title      : chr "I built a womens safety navigation app after my girlfriend got harassed at night"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.street-wise.app/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[105]]
#> List of 8
#>  $ by         : chr "tosh"
#>  $ descendants: int 0
#>  $ id         : int 46121353
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:14:45"
#>  $ title      : chr "Synchronized Output"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/contour-terminal/vt-extensions/blob/master/synchronized-output.md"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[106]]
#> List of 9
#>  $ by         : chr "atlasunshrugged"
#>  $ descendants: int 1
#>  $ id         : int 46121342
#>  $ kids       : int [1:2] 46121355 46121587
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:13:15"
#>  $ title      : chr "New GOP Survey Analysis of Today's Republican Coalition"
#>  $ type       : chr "story"
#>  $ url        : chr "https://manhattan.institute/article/the-new-gop-survey-analysis-of-americans-overall-todays-republican-coalitio"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[107]]
#> List of 8
#>  $ by         : chr "speckx"
#>  $ descendants: int 0
#>  $ id         : int 46121334
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:12:23"
#>  $ title      : chr "Making RSS More Fun"
#>  $ type       : chr "story"
#>  $ url        : chr "https://matduggan.com/making-rss-more-fun/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[108]]
#> List of 9
#>  $ by         : chr "youchen_"
#>  $ descendants: int 1
#>  $ id         : int 46121328
#>  $ kids       : int 46121348
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:11:40"
#>  $ title      : chr "Show HN: Feedvote – Deep 2-way sync for Linear and Jira feedback ($149 LTD)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://feedvote.app"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[109]]
#> List of 8
#>  $ by         : chr "r721"
#>  $ descendants: int 0
#>  $ id         : int 46121310
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:08:54"
#>  $ title      : chr "Police detain former EU foreign policy chief F. Mogherini in anti-fraud probe"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.euronews.com/my-europe/2025/12/02/belgian-police-raid-european-external-action-service-in-anti-fraud-operation"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[110]]
#> List of 8
#>  $ by         : chr "pabo"
#>  $ descendants: int 0
#>  $ id         : int 46121305
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:08:20"
#>  $ title      : chr "Belgium's 'Little Einstein' Earns PhD in Quantum Physics at Age 15"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.sciencealert.com/belgiums-little-einstein-earns-phd-in-quantum-physics-at-age-15"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[111]]
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
#> [[112]]
#> List of 8
#>  $ by         : chr "stopbulying"
#>  $ descendants: int 0
#>  $ id         : int 46121288
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:06:50"
#>  $ title      : chr "Presidential HIV council warns proposed cuts could reverse decades of progress"
#>  $ type       : chr "story"
#>  $ url        : chr "https://abcnews.go.com/Politics/presidential-hiv-council-warns-proposed-cuts-reverse-decades/story?id=127898241"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[113]]
#> List of 8
#>  $ by         : chr "coloneltcb"
#>  $ descendants: int 0
#>  $ id         : int 46121285
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:06:42"
#>  $ title      : chr "We built a database of 290k English medieval soldiers"
#>  $ type       : chr "story"
#>  $ url        : chr "https://theconversation.com/we-built-a-database-of-290-000-english-medieval-soldiers-heres-what-it-reveals-270750"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[114]]
#> List of 8
#>  $ by         : chr "ibobev"
#>  $ descendants: int 0
#>  $ id         : int 46121262
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:03:47"
#>  $ title      : chr "Lighting Mannequin"
#>  $ type       : chr "story"
#>  $ url        : chr "https://real-mrbeam.github.io/2025/10/28/Lighting-Mannequin.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[115]]
#> List of 9
#>  $ by         : chr "k1low"
#>  $ descendants: int 0
#>  $ id         : int 46121257
#>  $ score      : int 2
#>  $ text       : chr "Hi HN, we built &quot;deck&quot; to solve our frustration with slide creation workflow.<p>Key features:<p>- Wri"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:03:14"
#>  $ title      : chr "Show HN: deck – Create Google Slides Presentations from Markdown"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/k1LoW/deck"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[116]]
#> List of 8
#>  $ by         : chr "devnews4430"
#>  $ descendants: int 0
#>  $ id         : int 46121255
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:03:02"
#>  $ title      : chr "Webflow just launched a generative app tool. Here's why it could re-shape"
#>  $ type       : chr "story"
#>  $ url        : chr "https://diginomica.com/webflow-just-launched-generative-app-tool-heres-why-it-could-re-shape-your-marketing-stack"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[117]]
#> List of 9
#>  $ by         : chr "lalithaar"
#>  $ descendants: int 3
#>  $ id         : int 46121253
#>  $ kids       : int [1:3] 46121426 46121309 46121313
#>  $ score      : int 1
#>  $ text       : chr "Most of us don’t work at companies that can afford dedicated accessibility teams or weeks of audits.\nWe still "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:02:54"
#>  $ title      : chr "How do we make web accessibility doable for devs with zero a11y budget?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[118]]
#> List of 8
#>  $ by         : chr "ibobev"
#>  $ descendants: int 0
#>  $ id         : int 46121251
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:02:44"
#>  $ title      : chr "Spectral rendering, part 3: Spectral vs. RGB"
#>  $ type       : chr "story"
#>  $ url        : chr "https://momentsingraphics.de/SpectralRendering3Results.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[119]]
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
#> [[120]]
#> List of 9
#>  $ by         : chr "josephcsible"
#>  $ descendants: int 1
#>  $ id         : int 46121241
#>  $ kids       : int 46121303
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 14:01:02"
#>  $ title      : chr "Google Starts Sharing All Your Text Messages with Your Employer"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.forbes.com/sites/zakdoffman/2025/12/02/google-starts-sharing-all-your-text-messages-with-your-employer/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[121]]
#> List of 9
#>  $ by         : chr "Josephmuchokim"
#>  $ descendants: int 0
#>  $ id         : int 46121230
#>  $ kids       : int 46121231
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:59:09"
#>  $ title      : chr "Founder"
#>  $ type       : chr "story"
#>  $ url        : chr "https://ndovesha.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[122]]
#> List of 9
#>  $ by         : chr "yuzong"
#>  $ descendants: int 2
#>  $ id         : int 46121229
#>  $ kids       : int 46121329
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:58:49"
#>  $ title      : chr "Show HN: A lightweight issue tracker for managing issues in your Git repository"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/Allra-Fintech/git-issue"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[123]]
#> List of 8
#>  $ by         : chr "frizlab"
#>  $ descendants: int 0
#>  $ id         : int 46121204
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:55:03"
#>  $ title      : chr "Apple owes its greatest strength in AI to Giannandrea"
#>  $ type       : chr "story"
#>  $ url        : chr "https://appleinsider.com/articles/25/12/02/apple-owes-its-greatest-strength-in-ai-to-giannandrea"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[124]]
#> List of 9
#>  $ by         : chr "drbt"
#>  $ descendants: int 1
#>  $ id         : int 46121199
#>  $ kids       : int 46121200
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:54:40"
#>  $ title      : chr "Generative models shouldn't search for trajectories"
#>  $ type       : chr "story"
#>  $ url        : chr "https://medium.com/@js110182/generative-models-should-not-have-to-discover-the-manifold-that-the-data-already-s"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[125]]
#> List of 8
#>  $ by         : chr "robtherobber"
#>  $ descendants: int 0
#>  $ id         : int 46121197
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:54:04"
#>  $ title      : chr "Intimate Advertising, the Next Frontier in AI Manipulation"
#>  $ type       : chr "story"
#>  $ url        : chr "https://jacobin.com/2025/11/intimate-advertising-ai-manipulation-data"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[126]]
#> List of 8
#>  $ by         : chr "amalinovic"
#>  $ descendants: int 0
#>  $ id         : int 46121195
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:54:02"
#>  $ title      : chr "Visualizing Target Relabeling Rules in Prometheus 3.8.0"
#>  $ type       : chr "story"
#>  $ url        : chr "https://prometheus.io/blog/2025/12/02/visualizing-target-relabeling-rules-in-the-prometheus-ui/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[127]]
#> List of 9
#>  $ by         : chr "RYJOX"
#>  $ descendants: int 2
#>  $ id         : int 46121191
#>  $ kids       : int [1:4] 46121192 46121202 46121206 46121622
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:53:57"
#>  $ title      : chr "We built a 1KB/node graph system with 0(1) lookup and semantic recall"
#>  $ type       : chr "story"
#>  $ url        : chr "https://synrix-lattice-edge.lovable.app"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[128]]
#> List of 9
#>  $ by         : chr "daylit"
#>  $ descendants: int 3
#>  $ id         : int 46121190
#>  $ kids       : int [1:3] 46122212 46121986 46121913
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:53:40"
#>  $ title      : chr "Launch: AI Agents for Accounts Receivable (Click-Thru Demo)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://demo.daylit.com/demo/cminedi2shhp2b7b4g5icpgxs"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[129]]
#> List of 8
#>  $ by         : chr "yumyumsuppe"
#>  $ descendants: int 0
#>  $ id         : int 46121175
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:51:28"
#>  $ title      : chr "Build Your Own Train Departure Display"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/elias-greve/mc-train-departure"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[130]]
#> List of 9
#>  $ by         : chr "mondainx"
#>  $ descendants: int 1
#>  $ id         : int 46121154
#>  $ kids       : int 46121155
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:49:16"
#>  $ title      : chr "How to Set Up a Free RTMP Server?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.red5.net/blog/online-rtmp-server-free/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[131]]
#> List of 9
#>  $ by         : chr "cranium"
#>  $ descendants: int 1
#>  $ id         : int 46121148
#>  $ kids       : int 46121454
#>  $ score      : int 2
#>  $ text       : chr "I strongly believe that markets are a bit irrational about AI <i>stuff</i> right now. I don&#x27;t know when th"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:48:34"
#>  $ title      : chr "Ask HN: How to hedge against an AI downturn?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[132]]
#> List of 9
#>  $ by         : chr "vinxu"
#>  $ descendants: int 0
#>  $ id         : int 46121133
#>  $ kids       : int [1:2] 46121168 46121146
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:46:45"
#>  $ title      : chr "Show HN: CastReader – Visual AI reader with relationship maps for novels"
#>  $ type       : chr "story"
#>  $ url        : chr "https://castreader.ai/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[133]]
#> List of 8
#>  $ by         : chr "costco"
#>  $ descendants: int 0
#>  $ id         : int 46121105
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:42:43"
#>  $ title      : chr "A deep dive into QEMU: The Tiny Code Generator (TCG), part 1"
#>  $ type       : chr "story"
#>  $ url        : chr "https://airbus-seclab.github.io/qemu_blog/tcg_p1.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[134]]
#> List of 8
#>  $ by         : chr "speckx"
#>  $ descendants: int 0
#>  $ id         : int 46121098
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:42:02"
#>  $ title      : chr "How SQLite Is Powering the New Generation of Serverless Back Ends"
#>  $ type       : chr "story"
#>  $ url        : chr "https://thinhdanggroup.github.io/sqlite-serverless-backend/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[135]]
#> List of 9
#>  $ by         : chr "baranul"
#>  $ descendants: int 0
#>  $ id         : int 46121095
#>  $ kids       : int 46121176
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:41:43"
#>  $ title      : chr "I Tried Switching to Linux for 157 Days by Basically Homeless [video]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.youtube.com/watch?v=vvBFbgyERaI"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[136]]
#> List of 9
#>  $ by         : chr "mistersquid"
#>  $ descendants: int 1
#>  $ id         : int 46121091
#>  $ kids       : int 46121289
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:41:01"
#>  $ title      : chr "Michael and Susan Dell to Put $250 in 25M Children's Accounts"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.nytimes.com/2025/12/02/opinion/rural-aesthetics-american-politics.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[137]]
#> List of 8
#>  $ by         : chr "jhack"
#>  $ descendants: int 0
#>  $ id         : int 46121083
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:40:22"
#>  $ title      : chr "The Unseen Revolution: How Artificial Intelligence Is Redefining Cancer Care"
#>  $ type       : chr "story"
#>  $ url        : chr "https://ai.nejm.org/doi/full/10.1056/AI-S2501208"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[138]]
#> List of 8
#>  $ by         : chr "alokksrivas"
#>  $ descendants: int 0
#>  $ id         : int 46121076
#>  $ score      : int 1
#>  $ text       : chr "A few days ago we open-sourced GraphLite, an embedded graph database written in Rust that implements the new IS"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:39:39"
#>  $ title      : chr "GraphLite: An open-source embedded graph DB with full ISO GQL support (Rust)"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[139]]
#> List of 9
#>  $ by         : chr "gdcbe"
#>  $ descendants: int 0
#>  $ id         : int 46121062
#>  $ score      : int 1
#>  $ text       : chr "We sit down with Rust developer Martin Algesten for a deep dive into WebRTC and the Sans IO approach to protoco"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:37:25"
#>  $ title      : chr "Show HN: Netstack.fm Podcast Ep16: WebRTC and Sans IO with Martin Algesten"
#>  $ type       : chr "story"
#>  $ url        : chr "https://netstack.fm/#episode-16"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[140]]
#> List of 9
#>  $ by         : chr "mikece"
#>  $ descendants: int 1
#>  $ id         : int 46121061
#>  $ kids       : int 46121129
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:37:24"
#>  $ title      : chr "An independent effort says AI is the secret to topple 2-party power in Congress"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.npr.org/2025/12/01/g-s1-98267/ai-independent-candidates-congress-two-party-control"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[141]]
#> List of 9
#>  $ by         : chr "paxiscivlab"
#>  $ descendants: int 3
#>  $ id         : int 46121058
#>  $ kids       : int [1:2] 46121059 46121109
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:37:01"
#>  $ title      : chr "P-Civilization Theory: Capital × Praise as a dual-axis framework"
#>  $ type       : chr "story"
#>  $ url        : chr "https://paxiscivlab.substack.com/p/p-civilization-theory"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[142]]
#> List of 9
#>  $ by         : chr "judahmeek"
#>  $ descendants: int 0
#>  $ id         : int 46121051
#>  $ score      : int 1
#>  $ text       : chr "First, I&#x27;d like to thank METR.org[0] for recently agreeing to fund my work on this project.<p>That little "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:36:12"
#>  $ title      : chr "Show HN: Significance-Hypothesis-Based-ARC-AGI-2-puzzle-solver"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/Judahmeek/Significance-Hypothesis-Based-ARC-AGI-2-puzzle-solver"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[143]]
#> List of 8
#>  $ by         : chr "ibobev"
#>  $ descendants: int 0
#>  $ id         : int 46121016
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:32:16"
#>  $ title      : chr "Demystifying Vulkan Ray Tracing [video]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.youtube.com/watch?v=CGR1gu2KW2s"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[144]]
#> List of 9
#>  $ by         : chr "joaoqalves"
#>  $ descendants: int 0
#>  $ id         : int 46121013
#>  $ kids       : int 46121065
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:32:00"
#>  $ title      : chr "When software becomes fast food"
#>  $ type       : chr "story"
#>  $ url        : chr "https://world.hey.com/joaoqalves/when-software-becomes-fast-food-23147c9b"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[145]]
#> List of 9
#>  $ by         : chr "tacoooooooo"
#>  $ descendants: int 1
#>  $ id         : int 46121001
#>  $ kids       : int 46121012
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:30:48"
#>  $ title      : chr "Show HN: Generate a 1M-document RAG eval dataset from a single prompt"
#>  $ type       : chr "story"
#>  $ url        : chr "https://alexjacobs08.github.io/datasetFactory/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[146]]
#> List of 9
#>  $ by         : chr "rcanand2025"
#>  $ descendants: int 1
#>  $ id         : int 46120991
#>  $ kids       : int 46120996
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:30:01"
#>  $ title      : chr "Show HN: Ahai – Find your ideas scattered across files - local, private"
#>  $ type       : chr "story"
#>  $ url        : chr "https://rcanand.gumroad.com/l/ahai_v1_0_0"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[147]]
#> List of 9
#>  $ by         : chr "KolmogorovComp"
#>  $ descendants: int 1
#>  $ id         : int 46120989
#>  $ kids       : int 46121273
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:29:51"
#>  $ title      : chr "Sex, aggression, and humour: responses to unicycling (2007)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://pmc.ncbi.nlm.nih.gov/articles/PMC2151169/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[148]]
#> List of 9
#>  $ by         : chr "nycdatasci"
#>  $ descendants: int 3
#>  $ id         : int 46120966
#>  $ kids       : int [1:3] 46122185 46121031 46121143
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:26:36"
#>  $ title      : chr "OpenAI's Sam Altman declares 'code red' after rivals make advances"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.ft.com/content/7a42396f-487a-47b0-8121-8d8f2112fa53"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[149]]
#> List of 8
#>  $ by         : chr "terryds"
#>  $ descendants: int 0
#>  $ id         : int 46120958
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:25:52"
#>  $ title      : chr "The Music Theory Behind Mariah Carey's \"All I Want for Christmas Is You\""
#>  $ type       : chr "story"
#>  $ url        : chr "https://stereogum.com/2208354/mariah-carey-all-i-want-for-christmas-is-you-music-theory/columns"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[150]]
#> List of 8
#>  $ by         : chr "speckx"
#>  $ descendants: int 0
#>  $ id         : int 46120957
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:25:43"
#>  $ title      : chr "A Minimal CSS Starter"
#>  $ type       : chr "story"
#>  $ url        : chr "https://meiert.com/blog/a-minimal-css-starter/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[151]]
#> List of 9
#>  $ by         : chr "rishsriv"
#>  $ descendants: int 0
#>  $ id         : int 46120954
#>  $ score      : int 2
#>  $ text       : chr "Hi HN! We&#x27;re FactIQ - an AI driven data explorer for the US economy.<p>Live Demo: <a href=\"https:&#x2F;&#"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:25:16"
#>  $ title      : chr "Show HN: FactIQ – A Data Explorer for the US Economy"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.factiq.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[152]]
#> List of 8
#>  $ by         : chr "doener"
#>  $ descendants: int 0
#>  $ id         : int 46120946
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:24:13"
#>  $ title      : chr "Vkd3d-proton is a fork of VKD3D"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/HansKristian-Work/vkd3d-proton"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[153]]
#> List of 8
#>  $ by         : chr "pretext"
#>  $ descendants: int 0
#>  $ id         : int 46120937
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:23:15"
#>  $ title      : chr "Stanford Agentic Reviewer: Get detailed AI feedback on your research paper free!"
#>  $ type       : chr "story"
#>  $ url        : chr "https://paperreview.ai"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[154]]
#> List of 9
#>  $ by         : chr "peter_d_sherman"
#>  $ descendants: int 1
#>  $ id         : int 46120934
#>  $ kids       : int 46120940
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:22:39"
#>  $ title      : chr "Microservices"
#>  $ type       : chr "story"
#>  $ url        : chr "https://en.wikipedia.org/wiki/Microservices"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[155]]
#> List of 8
#>  $ by         : chr "apwheele"
#>  $ descendants: int 0
#>  $ id         : int 46120933
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:22:34"
#>  $ title      : chr "Text as a \"Market for Lemons\""
#>  $ type       : chr "story"
#>  $ url        : chr "https://win-vector.com/2025/12/01/text-as-a-market-for-lemons/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[156]]
#> List of 9
#>  $ by         : chr "fleahunter"
#>  $ descendants: int 1
#>  $ id         : int 46120925
#>  $ kids       : int 46121068
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:21:15"
#>  $ title      : chr "The Download: AI's impact on the economy, and DeepSeek strikes again"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.technologyreview.com/2025/12/02/1128647/the-download-ais-impact-on-the-economy-and-deepseek-strikes-again/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[157]]
#> List of 8
#>  $ by         : chr "pretext"
#>  $ descendants: int 0
#>  $ id         : int 46120903
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:18:21"
#>  $ title      : chr "AlphaFold shows why science may be AI's killer app"
#>  $ type       : chr "story"
#>  $ url        : chr "https://fortune.com/2025/11/28/google-deepmind-alphafold-science-ai-killer-app/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[158]]
#> List of 8
#>  $ by         : chr "mikece"
#>  $ descendants: int 0
#>  $ id         : int 46120902
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:17:52"
#>  $ title      : chr "Speeding up C++ functions with a thread_local cache"
#>  $ type       : chr "story"
#>  $ url        : chr "https://lemire.me/blog/2025/10/19/speeding-up-c-functions-with-a-thread_local-cache/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[159]]
#> List of 8
#>  $ by         : chr "_____k"
#>  $ descendants: int 0
#>  $ id         : int 46120892
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:16:27"
#>  $ title      : chr "South Korea police say 120k home cameras hacked for 'sexploitation' footage"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bbc.com/news/articles/cj01q6p7ndlo"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[160]]
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
#> [[161]]
#> List of 8
#>  $ by         : chr "johlo"
#>  $ descendants: int 0
#>  $ id         : int 46120867
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:13:45"
#>  $ title      : chr "Why Authorization is more important"
#>  $ type       : chr "story"
#>  $ url        : chr "https://oscarevertsson.com/posts/why-authorization-is-more-important-than-ever/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[162]]
#> List of 8
#>  $ by         : chr "Velocifyer"
#>  $ descendants: int 0
#>  $ id         : int 46120864
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:13:42"
#>  $ title      : chr "State of the Terminal"
#>  $ type       : chr "story"
#>  $ url        : chr "https://gpanders.com/blog/state-of-the-terminal/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[163]]
#> List of 8
#>  $ by         : chr "throw0101c"
#>  $ descendants: int 0
#>  $ id         : int 46120863
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:13:36"
#>  $ title      : chr "FreeBSD 15.0-Release Release Notes"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.freebsd.org/releases/15.0R/relnotes/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[164]]
#> List of 8
#>  $ by         : chr "ibobev"
#>  $ descendants: int 0
#>  $ id         : int 46120857
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:12:51"
#>  $ title      : chr "AMD GI-1.2 with multibounce indirect real-time rendering"
#>  $ type       : chr "story"
#>  $ url        : chr "https://gpuopen.com/learn/gi-1-2-multibounce-indirect-rendering/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[165]]
#> List of 8
#>  $ by         : chr "geox"
#>  $ descendants: int 0
#>  $ id         : int 46120856
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:12:50"
#>  $ title      : chr "Thousands of U.S. trucking schools could lose accreditation under DOT crackdown"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.npr.org/2025/12/01/nx-s1-5627474/cdl-trucking-schools-dot-crackdown"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[166]]
#> List of 9
#>  $ by         : chr "throw0101c"
#>  $ descendants: int 1
#>  $ id         : int 46120854
#>  $ kids       : int 46120860
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:12:30"
#>  $ title      : chr "FreeBSD 15.0-Release Announcement"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.freebsd.org/releases/15.0R/announce/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[167]]
#> List of 8
#>  $ by         : chr "ibobev"
#>  $ descendants: int 0
#>  $ id         : int 46120853
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:12:24"
#>  $ title      : chr "Spatial hashing for raytraced ambient occlusion"
#>  $ type       : chr "story"
#>  $ url        : chr "https://interplayoflight.wordpress.com/2025/11/23/spatial-hashing-for-raytraced-ambient-occlusion/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[168]]
#> List of 8
#>  $ by         : chr "serin-ai"
#>  $ descendants: int 0
#>  $ id         : int 46120834
#>  $ score      : int 1
#>  $ text       : chr "Is a pretty good tool. But sometimes I feel is a little to complicate to use it. What are the best ways to impr"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:10:06"
#>  $ title      : chr "Just found out about Typeform that I didn't know"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[169]]
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
#> [[170]]
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
#> [[171]]
#> List of 10
#>  $ by         : chr "2dogsanerd"
#>  $ descendants: int 1
#>  $ id         : int 46120828
#>  $ kids       : int 46121420
#>  $ score      : int 1
#>  $ text       : chr "A simple tool to compare how different PDF parsers handle your documents.<p>Shows naive parsing (pypdf) vs layo"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:09:22"
#>  $ title      : chr "Show HN: Side-by-side PDF parser comparison for RAG pipelines"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/2dogsandanerd/rag_pdf_audit"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[172]]
#> List of 9
#>  $ by         : chr "causalzap"
#>  $ descendants: int 0
#>  $ id         : int 46120798
#>  $ kids       : int 46120799
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:04:50"
#>  $ title      : chr "Sort the Court – A Free King Simulator Where You Rule with Yes or No"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.sort-the-court.com"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[173]]
#> List of 9
#>  $ by         : chr "vpmadd52huq"
#>  $ descendants: int 0
#>  $ id         : int 46120787
#>  $ score      : int 1
#>  $ text       : chr "Howdy HN! I spend a lot of time roaming around the Pyrenees and wanted an interesting way to learn the names of"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:03:40"
#>  $ title      : chr "Show HN: Quest - A GeoGuessr-inspired game for finding mountain peaks"
#>  $ type       : chr "story"
#>  $ url        : chr "https://quest.topokit.dev/new"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[174]]
#> List of 8
#>  $ by         : chr "ibobev"
#>  $ descendants: int 0
#>  $ id         : int 46120782
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:03:07"
#>  $ title      : chr "Shader Execution Reordering Benchmarked"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.evolvebenchmark.com/blog-posts/shader-execution-reordering-benchmarked"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[175]]
#> List of 9
#>  $ by         : chr "kreco"
#>  $ descendants: int 1
#>  $ id         : int 46120776
#>  $ kids       : int 46121024
#>  $ score      : int 2
#>  $ text       : chr "In every placed I worked, binary files within git were an issue. Sometimes we used git lfs, but it&#x27;s defin"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 13:01:45"
#>  $ title      : chr "Ask HN: Binary files in Git repository, what is you workaround"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[176]]
#> List of 8
#>  $ by         : chr "rfdearborn"
#>  $ descendants: int 0
#>  $ id         : int 46120765
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:59:57"
#>  $ title      : chr "LLMs Need Better Executive Function"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.robdearborn.com/2025/12/01/llms-need-better-executive-function/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[177]]
#> List of 8
#>  $ by         : chr "dcminter"
#>  $ descendants: int 0
#>  $ id         : int 46120764
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:59:55"
#>  $ title      : chr "The Absent Silence (2010)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.ursulakleguin.com/blog/3-the-absent-silence"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[178]]
#> List of 8
#>  $ by         : chr "birdculture"
#>  $ descendants: int 0
#>  $ id         : int 46120763
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:59:37"
#>  $ title      : chr "Punycode: My New Favorite Algorithm"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.iankduncan.com/engineering/2025-12-01-punycode/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[179]]
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
#> [[180]]
#> List of 9
#>  $ by         : chr "gintokinx"
#>  $ descendants: int 1
#>  $ id         : int 46120759
#>  $ kids       : int 46121784
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:58:50"
#>  $ title      : chr "Tool for Lazy Web Devs"
#>  $ type       : chr "story"
#>  $ url        : chr "https://filelite.app"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[181]]
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
#> [[182]]
#> List of 8
#>  $ by         : chr "defrost"
#>  $ descendants: int 0
#>  $ id         : int 46120733
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:55:34"
#>  $ title      : chr "Whatever legitimate places AI has, inside an OS ain't one"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.theregister.com/2025/12/02/agentic_os_opinion/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[183]]
#> List of 8
#>  $ by         : chr "rundef"
#>  $ descendants: int 0
#>  $ id         : int 46120732
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:55:31"
#>  $ title      : chr "Latency Profiling in Python: From Code Bottlenecks to Observability"
#>  $ type       : chr "story"
#>  $ url        : chr "https://quant.engineering/latency-profiling-in-python.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[184]]
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
#> [[185]]
#> List of 8
#>  $ by         : chr "n1b0m"
#>  $ descendants: int 0
#>  $ id         : int 46120710
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:52:29"
#>  $ title      : chr "From Gears of War to Uno: the 15 most important Xbox 360 games"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.theguardian.com/games/2025/dec/02/the-15-most-important-xbox-360-games"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[186]]
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
#> [[187]]
#> List of 9
#>  $ by         : chr "lixin_wei"
#>  $ descendants: int 0
#>  $ id         : int 46120703
#>  $ score      : int 2
#>  $ text       : chr "Hi everyone, I built a new actor framework based on `std::execution`.<p>This framework turns your C++ class int"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:51:40"
#>  $ title      : chr "Show HN: ex_actor – New C++ Actor Framework Based on `std:execution`"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/ex-actor/ex-actor"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[188]]
#> List of 9
#>  $ by         : chr "Protostome"
#>  $ descendants: int 1
#>  $ id         : int 46120688
#>  $ kids       : int 46120720
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:49:40"
#>  $ title      : chr "Moonshot Space raises $12M to launch payloads to lower atmosphere at 8km/s"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.calcalistech.com/ctechnews/article/bklyq7jwzx"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[189]]
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
#> [[190]]
#> List of 8
#>  $ by         : chr "arbesman"
#>  $ descendants: int 0
#>  $ id         : int 46120647
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:42:07"
#>  $ title      : chr "Interview with Susan Kare (2000)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://web.stanford.edu/dept/SUL/sites/mac/primary/interviews/kare/index.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[191]]
#> List of 8
#>  $ by         : chr "fanf2"
#>  $ descendants: int 0
#>  $ id         : int 46120646
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:42:04"
#>  $ title      : chr "Compressing callstacks: a bitpacked DAG powered by a keyless hashmap"
#>  $ type       : chr "story"
#>  $ url        : chr "https://superluminal.eu/compressing-callstacks/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[192]]
#> List of 9
#>  $ by         : chr "sahilz79"
#>  $ descendants: int 1
#>  $ id         : int 46120634
#>  $ kids       : int 46120635
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:41:03"
#>  $ title      : chr "The Quadrillion-Dollar Economy:Getting to $1Q | $10Q without AGI"
#>  $ type       : chr "story"
#>  $ url        : chr "https://substack.com/inbox/post/180339447"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[193]]
#> List of 9
#>  $ by         : chr "waerhert"
#>  $ descendants: int 1
#>  $ id         : int 46120629
#>  $ kids       : int 46120681
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:40:55"
#>  $ title      : chr "Optical guitar pickup for nylon strings using fork light barriers"
#>  $ type       : chr "story"
#>  $ url        : chr "https://codeberg.org/Luno/KlimperLux"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[194]]
#> List of 9
#>  $ by         : chr "AwkwardPanda"
#>  $ descendants: int 3
#>  $ id         : int 46120625
#>  $ kids       : int [1:3] 46120880 46120645 46120627
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:40:33"
#>  $ title      : chr "Show HN: OnlyRecipe 2.0 – I added the features HN requested – 4 years later"
#>  $ type       : chr "story"
#>  $ url        : chr "https://onlyrecipeapp.com/recipe-details?canonicalUrl=https://www.budgetbytes.com/chorizo-sweet-potato-chili/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[195]]
#> List of 8
#>  $ by         : chr "billyp-rva"
#>  $ descendants: int 0
#>  $ id         : int 46120624
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:40:28"
#>  $ title      : chr "Visualizing recursive merge sort, recursively"
#>  $ type       : chr "story"
#>  $ url        : chr "https://app.ilograph.com/demo.ilograph.Merge%2520Sort/Merge%2520Sort%2520Main"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[196]]
#> List of 8
#>  $ by         : chr "n1b0m"
#>  $ descendants: int 0
#>  $ id         : int 46120618
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:39:25"
#>  $ title      : chr "The fading of Japan's Shōwa era in pictures"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.theguardian.com/world/gallery/2025/dec/02/fading-japan-showa-era-in-pictures"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[197]]
#> List of 9
#>  $ by         : chr "zyh888"
#>  $ descendants: int 1
#>  $ id         : int 46120615
#>  $ kids       : int 46120749
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:38:56"
#>  $ title      : chr "VLLM-Omni: A framework for efficient model inference with Omni-modality models"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/vllm-project/vllm-omni"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[198]]
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
#> [[199]]
#> List of 8
#>  $ by         : chr "ibobev"
#>  $ descendants: int 0
#>  $ id         : int 46120607
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:38:13"
#>  $ title      : chr "Boosting Ray Tracing Performance with Shader Execution Reordering"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.khronos.org/blog/boosting-ray-tracing-performance-with-shader-execution-reordering-introducing-vk-e"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[200]]
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
#> [[201]]
#> List of 8
#>  $ by         : chr "ibobev"
#>  $ descendants: int 0
#>  $ id         : int 46120595
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:36:37"
#>  $ title      : chr "Feynman vs. Computer"
#>  $ type       : chr "story"
#>  $ url        : chr "https://entropicthoughts.com/feynman-vs-computer"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[202]]
#> List of 8
#>  $ by         : chr "giuliomagnifico"
#>  $ descendants: int 0
#>  $ id         : int 46120593
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:36:34"
#>  $ title      : chr "Memes reveal threats to graduate-student mental health"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.nature.com/articles/d41586-025-03924-6"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[203]]
#> List of 8
#>  $ by         : chr "ibobev"
#>  $ descendants: int 0
#>  $ id         : int 46120592
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:36:11"
#>  $ title      : chr "XBerry Pi Review – ZX Spectrum Next in Pi Form Factor"
#>  $ type       : chr "story"
#>  $ url        : chr "https://retrogamecoders.com/xberry-pi-review/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[204]]
#> List of 8
#>  $ by         : chr "pseudolus"
#>  $ descendants: int 0
#>  $ id         : int 46120560
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:30:38"
#>  $ title      : chr "Researchers discover sentence structure can bypass AI safety rules"
#>  $ type       : chr "story"
#>  $ url        : chr "https://arstechnica.com/ai/2025/12/syntax-hacking-researchers-discover-sentence-structure-can-bypass-ai-safety-rules/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[205]]
#> List of 9
#>  $ by         : chr "donohoe"
#>  $ descendants: int 2
#>  $ id         : int 46120556
#>  $ kids       : int 46120602
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:30:04"
#>  $ title      : chr "TSA Imposes $45 Fee for Travelers Without Real ID Starting February 2026"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.nytimes.com/2025/12/01/travel/real-id-fee-tsa.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[206]]
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
#> [[207]]
#> List of 8
#>  $ by         : chr "ingve"
#>  $ descendants: int 0
#>  $ id         : int 46120540
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:26:26"
#>  $ title      : chr "Constant-time support for LLVM to protect cryptographic code"
#>  $ type       : chr "story"
#>  $ url        : chr "https://blog.trailofbits.com/2025/12/02/introducing-constant-time-support-for-llvm-to-protect-cryptographic-code/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[208]]
#> List of 8
#>  $ by         : chr "giuliomagnifico"
#>  $ descendants: int 0
#>  $ id         : int 46120538
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:25:44"
#>  $ title      : chr "Vanguard Will Now Allow Crypto ETFs on Its Platform"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bloomberg.com/news/articles/2025-12-01/vanguard-relents-on-crypto-etfs-will-allow-them-on-its-platform"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[209]]
#> List of 8
#>  $ by         : chr "koolba"
#>  $ descendants: int 0
#>  $ id         : int 46120529
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:24:15"
#>  $ title      : chr "Administration Wants to Exclude 'Pornographic Activity' from 'No Tax on Tips'"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.nytimes.com/2025/12/01/us/politics/no-tax-on-tips-irs-exclusions.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[210]]
#> List of 8
#>  $ by         : chr "ipnon"
#>  $ descendants: int 0
#>  $ id         : int 46120523
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:22:46"
#>  $ title      : chr "Flame Graphs"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.brendangregg.com/flamegraphs.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[211]]
#> List of 9
#>  $ by         : chr "adriencloud"
#>  $ descendants: int 0
#>  $ id         : int 46120519
#>  $ score      : int 5
#>  $ text       : chr "For the last 6+ months I’ve been building Nexroo, an automation platform focused on solving what I call the “la"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:21:39"
#>  $ title      : chr "Show HN: Nexroo – From automation workflows to real products"
#>  $ type       : chr "story"
#>  $ url        : chr "https://nexroo.ai/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[212]]
#> List of 9
#>  $ by         : chr "BerislavLopac"
#>  $ descendants: int 3
#>  $ id         : int 46120511
#>  $ kids       : int 46120711
#>  $ score      : int 9
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:19:57"
#>  $ title      : chr "Doge Isn't Dead. Here's What Its Operatives Are Doing Now"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.wired.com/story/what-is-doge-doing-now/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[213]]
#> List of 8
#>  $ by         : chr "articsputnik"
#>  $ descendants: int 0
#>  $ id         : int 46120507
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:19:35"
#>  $ title      : chr "Vim Motion for Writers (Inspired by Paul Graham)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.ssp.sh/brain/vim-motions-for-writers/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[214]]
#> List of 8
#>  $ by         : chr "Luc"
#>  $ descendants: int 0
#>  $ id         : int 46120491
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:17:07"
#>  $ title      : chr "A theoretical upper limit for offshore wind energy extraction"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.cell.com/cell-reports-sustainability/fulltext/S2949-7906(25)00269-1"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[215]]
#> List of 8
#>  $ by         : chr "computersuck"
#>  $ descendants: int 0
#>  $ id         : int 46120486
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:16:07"
#>  $ title      : chr "The Harvest Will Come"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.joanwestenberg.com/p/the-harvest-will-come"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[216]]
#> List of 9
#>  $ by         : chr "pattle"
#>  $ descendants: int 0
#>  $ id         : int 46120475
#>  $ score      : int 1
#>  $ text       : chr "I&#x27;ve spent about a year building this game which is inspired by the BBC show &quot;Race across the World&q"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:13:50"
#>  $ title      : chr "Show HN: Race from one side of the world to the other"
#>  $ type       : chr "story"
#>  $ url        : chr "https://geo-racers.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[217]]
#> List of 9
#>  $ by         : chr "crovia"
#>  $ descendants: int 1
#>  $ id         : int 46120471
#>  $ kids       : int 46120472
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:12:33"
#>  $ title      : chr "Crovia Trust – Open-source offline engine for verifiable AI data royalties"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/croviatrust/crovia-core"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[218]]
#> List of 8
#>  $ by         : chr "71bw"
#>  $ descendants: int 0
#>  $ id         : int 46120464
#>  $ score      : int 8
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:11:33"
#>  $ title      : chr "Lepton – a name for Valve compatibility layer for running Android games on Linux"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.pcguide.com/news/valve-compatibility-layer-for-running-android-games-on-linux-gets-official-name-in"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[219]]
#> List of 9
#>  $ by         : chr "tdi"
#>  $ descendants: int 0
#>  $ id         : int 46120440
#>  $ score      : int 1
#>  $ text       : chr "I created this tiny app because I liked OrbStack menubar feature that reminded me to switch off container runti"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:06:14"
#>  $ title      : chr "Show HN: Colimabar – A Colima macOS Menubar"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/tdi/colimabar"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[220]]
#> List of 8
#>  $ by         : chr "simonpure"
#>  $ descendants: int 0
#>  $ id         : int 46120431
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:05:17"
#>  $ title      : chr "A private ambient listener for homes and offices"
#>  $ type       : chr "story"
#>  $ url        : chr "https://evanking.io/posts/summarizer/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[221]]
#> List of 9
#>  $ by         : chr "beboppoooo"
#>  $ descendants: int 1
#>  $ id         : int 46120424
#>  $ kids       : int 46120718
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:03:48"
#>  $ title      : chr "Tree planting search engine Ecosia launches AI search"
#>  $ type       : chr "story"
#>  $ url        : chr "https://blog.ecosia.org/ecosia-ai/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[222]]
#> List of 9
#>  $ by         : chr "teemingdev"
#>  $ descendants: int 0
#>  $ id         : int 46120422
#>  $ score      : int 8
#>  $ text       : chr "Hi HN,<p>I built smollaunch.com, a lightweight launch platform for developers who want to share projects withou"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:03:25"
#>  $ title      : chr "Show HN: Launchpad for developers to ship and showcase their projects"
#>  $ type       : chr "story"
#>  $ url        : chr "https://smollaunch.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[223]]
#> List of 8
#>  $ by         : chr "lioeters"
#>  $ descendants: int 0
#>  $ id         : int 46120417
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:01:43"
#>  $ title      : chr "University of Michigan Press – eBook Collection (Open Access)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.fulcrum.org/michigan?locale=en&user_access=oa"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[224]]
#> List of 8
#>  $ by         : chr "mathgenius"
#>  $ descendants: int 0
#>  $ id         : int 46120412
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 12:00:40"
#>  $ title      : chr "High schoolers excel at Oxford quantum course using pictorial mathematics"
#>  $ type       : chr "story"
#>  $ url        : chr "https://arxiv.org/abs/2512.00141"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[225]]
#> List of 8
#>  $ by         : chr "pseudolus"
#>  $ descendants: int 0
#>  $ id         : int 46120400
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:59:21"
#>  $ title      : chr "Why We Keep Making the Same Software Mistakes"
#>  $ type       : chr "story"
#>  $ url        : chr "https://spectrum.ieee.org/avoidable-software-failures-cost-trillions"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[226]]
#> List of 8
#>  $ by         : chr "rbanffy"
#>  $ descendants: int 0
#>  $ id         : int 46120392
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:58:12"
#>  $ title      : chr "New digital state of matter could help build stable quantum computers"
#>  $ type       : chr "story"
#>  $ url        : chr "https://phys.org/news/2025-12-digital-state-stable-quantum.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[227]]
#> List of 8
#>  $ by         : chr "JumpCrisscross"
#>  $ descendants: int 0
#>  $ id         : int 46120388
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:57:43"
#>  $ title      : chr "OpenAI Completed Its Conversion. A New Ballot Initiative Seeks to Reverse It"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.wsj.com/tech/ai/openai-completed-its-conversion-a-new-ballot-initiative-seeks-to-reverse-it-ab04c339"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[228]]
#> List of 8
#>  $ by         : chr "thunderbong"
#>  $ descendants: int 0
#>  $ id         : int 46120378
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:57:00"
#>  $ title      : chr "Poetry of Joseph Stalin"
#>  $ type       : chr "story"
#>  $ url        : chr "https://en.wikipedia.org/wiki/Poetry_of_Joseph_Stalin"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[229]]
#> List of 8
#>  $ by         : chr "pseudolus"
#>  $ descendants: int 0
#>  $ id         : int 46120371
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:56:12"
#>  $ title      : chr "Hole in Antarctic ozone layer shrinks to smallest since 2019, scientists say"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.theguardian.com/environment/2025/dec/01/hole-in-ozone-layer-antarctica-smallest-since-2019-scientis"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[230]]
#> List of 9
#>  $ by         : chr "vymukkat"
#>  $ descendants: int 0
#>  $ id         : int 46120351
#>  $ kids       : int 46120352
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:53:43"
#>  $ title      : chr "Repair Shop Management Software"
#>  $ type       : chr "story"
#>  $ url        : chr "https://motara.tech/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[231]]
#> List of 9
#>  $ by         : chr "razor_blog"
#>  $ descendants: int 0
#>  $ id         : int 46120344
#>  $ kids       : int 46120345
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:53:17"
#>  $ title      : chr "We Never Left the Dark Ages"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.razor.blog/2025/12/we-never-left-dark-ages.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[232]]
#> List of 9
#>  $ by         : chr "halfdaft"
#>  $ descendants: int 1
#>  $ id         : int 46120320
#>  $ kids       : int 46120321
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:49:42"
#>  $ title      : chr "Show HN: Townlands of Ireland – customised map posters"
#>  $ type       : chr "story"
#>  $ url        : chr "https://townlandsofireland.com"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[233]]
#> List of 9
#>  $ by         : chr "Saline9515"
#>  $ descendants: int 2
#>  $ id         : int 46120305
#>  $ kids       : int [1:2] 46121631 46120342
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:47:21"
#>  $ title      : chr "Europe's Green Energy Rush Slashed Emissions–and Crippled the Economy"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.wsj.com/business/energy-oil/europes-green-energy-rush-slashed-emissionsand-crippled-the-economy-e65a1a07"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[234]]
#> List of 8
#>  $ by         : chr "nDot_io"
#>  $ descendants: int 0
#>  $ id         : int 46120302
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:47:08"
#>  $ title      : chr "Multi-threaded LLM agent with async \"subconscious\" loop and pgvector memory"
#>  $ type       : chr "story"
#>  $ url        : chr "https://ivanhonis.github.io/ai_home/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[235]]
#> List of 8
#>  $ by         : chr "gslin"
#>  $ descendants: int 0
#>  $ id         : int 46120298
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:46:06"
#>  $ title      : chr "Operation 404: 3k Pirate Domains Blocked, Usdoj and Usdoc Get to Watch"
#>  $ type       : chr "story"
#>  $ url        : chr "https://torrentfreak.com/operation-404-3000-pirate-domains-blocked-usdoj-usdoc-get-to-watch-251202/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[236]]
#> List of 8
#>  $ by         : chr "ndhandala"
#>  $ descendants: int 0
#>  $ id         : int 46120275
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:42:48"
#>  $ title      : chr "Show HN: OneUptime – open-source Observability Platform"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/OneUptime/oneuptime"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[237]]
#> List of 8
#>  $ by         : chr "tosh"
#>  $ descendants: int 0
#>  $ id         : int 46120253
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:40:18"
#>  $ title      : chr "Lost in Translation: Ted Woolsey (2007)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.playeronepodcast.com/2007/02/11/episode-16-021207-lost-in-translation/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[238]]
#> List of 8
#>  $ by         : chr "thunderbong"
#>  $ descendants: int 0
#>  $ id         : int 46120249
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:39:36"
#>  $ title      : chr "Tripod Fish – NOAA Ocean Exploration"
#>  $ type       : chr "story"
#>  $ url        : chr "https://oceanexplorer.noaa.gov/multimedia/okeanos-explorations-ex1903-dailyupdates-june29-media-tripod-fish-2/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[239]]
#> List of 9
#>  $ by         : chr "pcthrowaway"
#>  $ descendants: int 3
#>  $ id         : int 46120241
#>  $ kids       : int [1:2] 46120242 46120276
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:38:48"
#>  $ title      : chr "Google Earth imagery reveals spoiler for yet-to-air episode of TV show Pluribus"
#>  $ type       : chr "story"
#>  $ url        : chr "https://old.reddit.com/r/pluribustv/comments/1pc2ltn/updated_google_earth_imagery_may_contain_some/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[240]]
#> List of 9
#>  $ by         : chr "DuffJohnson"
#>  $ descendants: int 1
#>  $ id         : int 46120222
#>  $ kids       : int 46122093
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:35:59"
#>  $ title      : chr "Google Searches for \"PDF\" in 2024"
#>  $ type       : chr "story"
#>  $ url        : chr "https://pdfa.org/google-searches-for-pdf-in-2024/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[241]]
#> List of 8
#>  $ by         : chr "protmaks"
#>  $ descendants: int 0
#>  $ id         : int 46120220
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:35:34"
#>  $ title      : chr "How to Monitor Databricks Jobs: API-Based Dashboard"
#>  $ type       : chr "story"
#>  $ url        : chr "https://medium.com/@protmaks/how-to-monitor-databricks-jobs-api-based-dashboard-71fed69b1146"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[242]]
#> List of 9
#>  $ by         : chr "bellamoon544"
#>  $ descendants: int 1
#>  $ id         : int 46120203
#>  $ kids       : int 46120204
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:33:37"
#>  $ title      : chr "Fivani"
#>  $ type       : chr "story"
#>  $ url        : chr "https://app.fivani.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[243]]
#> List of 9
#>  $ by         : chr "miniruntimeb"
#>  $ descendants: int 0
#>  $ id         : int 46120200
#>  $ kids       : int 46120201
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:33:18"
#>  $ title      : chr "Programming Language Market"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.maximizemarketresearch.com/market-report/global-programming-language-market/77679/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[244]]
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
#> [[245]]
#> List of 9
#>  $ by         : chr "SilentCoderHere"
#>  $ descendants: int 0
#>  $ id         : int 46120164
#>  $ score      : int 2
#>  $ text       : chr "I built this app for my own use, but I see that it can help others, so I uploaded it to GitHub.<p>You can switc"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:28:24"
#>  $ title      : chr "Show HN: AI Hub – One app for all AIs"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/SilentCoderHere/AI-hub"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[246]]
#> List of 9
#>  $ by         : chr "isaacfrond"
#>  $ descendants: int 1
#>  $ id         : int 46120151
#>  $ kids       : int 46120416
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:26:01"
#>  $ title      : chr "Supreme Court weighs fight between music industry, ISPs"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.npr.org/2025/12/01/nx-s1-5626213/supreme-court-music-industry-internet-providers"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[247]]
#> List of 9
#>  $ by         : chr "robtherobber"
#>  $ descendants: int 1
#>  $ id         : int 46120136
#>  $ kids       : int 46120176
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:23:23"
#>  $ title      : chr "Parliament must buy European IT, lawmakers tell Metsola"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.euractiv.com/news/parliament-must-buy-european-it-lawmakers-tell-metsola/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[248]]
#> List of 8
#>  $ by         : chr "TechTechTech"
#>  $ descendants: int 0
#>  $ id         : int 46120129
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:22:20"
#>  $ title      : chr "Galaxy Z TriFold"
#>  $ type       : chr "story"
#>  $ url        : chr "https://news.samsung.com/global/introducing-galaxy-z-trifold-the-shape-of-whats-next-in-mobile-innovation"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[249]]
#> List of 8
#>  $ by         : chr "JumpCrisscross"
#>  $ descendants: int 0
#>  $ id         : int 46120119
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:20:30"
#>  $ title      : chr "AI's Great Infrastructure Boom: Bullwhip or Building the Future?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://gadallon.substack.com/p/ais-great-infrastructure-boom-bullwhip"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[250]]
#> List of 9
#>  $ by         : chr "leo1200"
#>  $ descendants: int 1
#>  $ id         : int 46120090
#>  $ kids       : int 46120091
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:15:59"
#>  $ title      : chr "Run Your Own Astrophysical Fluid Sims in Colab"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/leo1200/astronomix"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[251]]
#> List of 9
#>  $ by         : chr "jacobgor502"
#>  $ descendants: int 0
#>  $ id         : int 46120087
#>  $ kids       : int 46120088
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:15:45"
#>  $ title      : chr "AI Virtual Staging Software – RoomXAI"
#>  $ type       : chr "story"
#>  $ url        : chr "https://roomxai.com"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[252]]
#> List of 8
#>  $ by         : chr "Twixes"
#>  $ descendants: int 0
#>  $ id         : int 46120063
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:12:18"
#>  $ title      : chr "Learnings from 1 Year of Agents"
#>  $ type       : chr "story"
#>  $ url        : chr "https://posthog.com/blog/8-learnings-from-1-year-of-agents-posthog-ai"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[253]]
#> List of 9
#>  $ by         : chr "AI_kid1412"
#>  $ descendants: int 1
#>  $ id         : int 46120035
#>  $ kids       : int 46120147
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:09:07"
#>  $ title      : chr "Best Nano Banana Prompt – Free AI Image Generation Prompts Library"
#>  $ type       : chr "story"
#>  $ url        : chr "https://bestnanobananaprompt.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[254]]
#> List of 8
#>  $ by         : chr "throwawayffffas"
#>  $ descendants: int 0
#>  $ id         : int 46120032
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:08:45"
#>  $ title      : chr "Twelve more prisoners released in error, with two still missing"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bbc.co.uk/news/articles/c8e9py8g2yyo"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[255]]
#> List of 8
#>  $ by         : chr "rhazn"
#>  $ descendants: int 0
#>  $ id         : int 46120031
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:08:42"
#>  $ title      : chr "Use animated sprites and animations with Excalibur and LDtk level editor"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.heltweg.org/posts/how-to-use-animated-sprites-and-animations-with-the-ldtk-level-editor/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[256]]
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
#> [[257]]
#> List of 9
#>  $ by         : chr "fg4"
#>  $ descendants: int 1
#>  $ id         : int 46120009
#>  $ kids       : int 46120010
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:05:53"
#>  $ title      : chr "Creative Communication Award 2025 announces winners across 22 design categories"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.c2award.com/winners/c2a/2025/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[258]]
#> List of 8
#>  $ by         : chr "navs"
#>  $ descendants: int 0
#>  $ id         : int 46120003
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:05:20"
#>  $ title      : chr "Snowflake and Databricks Lost the Plot"
#>  $ type       : chr "story"
#>  $ url        : chr "https://datatrenches.boyanbalevengineering.com"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[259]]
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
#> [[260]]
#> List of 9
#>  $ by         : chr "andresrl"
#>  $ descendants: int 0
#>  $ id         : int 46119995
#>  $ kids       : int 46120007
#>  $ score      : int 4
#>  $ text       : chr "Hi HN,<p>I run a small web engineering boutique and I was struggling with a high volume of unqualified leads (m"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:04:23"
#>  $ title      : chr "Show HN: I replaced my portfolio's hero with a Terminal to filter non-tech leads"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[261]]
#> List of 9
#>  $ by         : chr "Sparkenstein"
#>  $ descendants: int 1
#>  $ id         : int 46119986
#>  $ kids       : int 46121100
#>  $ score      : int 6
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:03:45"
#>  $ title      : chr "I know what you download"
#>  $ type       : chr "story"
#>  $ url        : chr "https://iknowwhatyoudownload.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[262]]
#> List of 9
#>  $ by         : chr "thm"
#>  $ descendants: int 1
#>  $ id         : int 46119976
#>  $ kids       : int 46120012
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 11:02:21"
#>  $ title      : chr "Amazon Offers Test of 'Ultrafast' Delivery in Two US Cities"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bloomberg.com/news/articles/2025-12-01/amazon-offers-test-of-ultrafast-delivery-in-two-us-cities"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[263]]
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
#> [[264]]
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
#> [[265]]
#> List of 10
#>  $ by         : chr "pr_khar"
#>  $ descendants: int 4
#>  $ id         : int 46119903
#>  $ kids       : int [1:4] 46121509 46119987 46119930 46119935
#>  $ score      : int 4
#>  $ text       : chr "Hey HN,<p>I’ve been working on Quash, a mobile-first QA tool where you can write test flows in plain English an"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:51:22"
#>  $ title      : chr "Show HN: Quash – A mobile-use agent for Android QA"
#>  $ type       : chr "story"
#>  $ url        : chr "https://quashbugs.com"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[266]]
#> List of 8
#>  $ by         : chr "austinjp"
#>  $ descendants: int 0
#>  $ id         : int 46119892
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:50:06"
#>  $ title      : chr "Gelephu Mindfulness City"
#>  $ type       : chr "story"
#>  $ url        : chr "https://en.wikipedia.org/wiki/Gelephu_Mindfulness_City"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[267]]
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
#> [[268]]
#> List of 8
#>  $ by         : chr "JumpCrisscross"
#>  $ descendants: int 0
#>  $ id         : int 46119863
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:47:09"
#>  $ title      : chr "Silicon Valley Builds Amazon and Gmail Copycats to Train A.I. Agents"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.nytimes.com/2025/12/02/technology/silicon-valley-builds-amazon-and-gmail-copycats-to-train-ai-agents.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[269]]
#> List of 9
#>  $ by         : chr "lionkor"
#>  $ descendants: int 1
#>  $ id         : int 46119858
#>  $ kids       : int 46119861
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:46:20"
#>  $ title      : chr "The Fastest Physics Yet [Video]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.youtube.com/watch?v=tjtwSq3u6Dg"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[270]]
#> List of 9
#>  $ by         : chr "mukulmunjal"
#>  $ descendants: int 3
#>  $ id         : int 46119842
#>  $ kids       : int [1:2] 46119843 46119979
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:44:50"
#>  $ title      : chr "We just shipped portfolio-level screening in InterviewFlowAI"
#>  $ type       : chr "story"
#>  $ url        : chr "https://interviewflowai.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[271]]
#> List of 9
#>  $ by         : chr "henrikhorluck"
#>  $ descendants: int 1
#>  $ id         : int 46119837
#>  $ kids       : int 46119882
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:43:22"
#>  $ title      : chr "Go proposal: Type-safe error checking"
#>  $ type       : chr "story"
#>  $ url        : chr "https://antonz.org/accepted/errors-astype/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[272]]
#> List of 8
#>  $ by         : chr "victorbuilds"
#>  $ descendants: int 0
#>  $ id         : int 46119825
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:40:58"
#>  $ title      : chr "TIC-80: Free open-source fantasy console for making tiny games"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/nesbox/TIC-80"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[273]]
#> List of 8
#>  $ by         : chr "debarshri"
#>  $ descendants: int 0
#>  $ id         : int 46119818
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:40:04"
#>  $ title      : chr "India tells smartphone makers to put state-run cyber safety app on new devices"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bbc.com/news/articles/cedxyvx74p4o"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[274]]
#> List of 9
#>  $ by         : chr "tosh"
#>  $ descendants: int 2
#>  $ id         : int 46119812
#>  $ kids       : int [1:2] 46120659 46119827
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:39:01"
#>  $ title      : chr "Disco – Self-hosted PaaS for teams outgrowing Render and Heroku"
#>  $ type       : chr "story"
#>  $ url        : chr "https://disco.cloud/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[275]]
#> List of 9
#>  $ by         : chr "lopezb"
#>  $ descendants: int 3
#>  $ id         : int 46119797
#>  $ kids       : int [1:2] 46119997 46120145
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:36:13"
#>  $ title      : chr "My Complicated Relationship with Side Projects"
#>  $ type       : chr "story"
#>  $ url        : chr "https://lopezb.com/articles/my-complicated-relationship-with-side-projects"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[276]]
#> List of 9
#>  $ by         : chr "victorbuilds"
#>  $ descendants: int 7
#>  $ id         : int 46119792
#>  $ kids       : int [1:4] 46119883 46119808 46120266 46119886
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:35:29"
#>  $ title      : chr "But why is AI bad?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://daymare.net/blogs/but-why-is-ai-bad/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[277]]
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
#> [[278]]
#> List of 9
#>  $ by         : chr "hvpandya"
#>  $ descendants: int 1
#>  $ id         : int 46119786
#>  $ kids       : int 46119788
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:34:25"
#>  $ title      : chr "Exposure for Designers"
#>  $ type       : chr "story"
#>  $ url        : chr "https://hvpandya.com/exposure"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[279]]
#> List of 9
#>  $ by         : chr "hvpandya"
#>  $ descendants: int 1
#>  $ id         : int 46119778
#>  $ kids       : int 46119779
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:33:33"
#>  $ title      : chr "Systems, Stables and Stars"
#>  $ type       : chr "story"
#>  $ url        : chr "https://hvpandya.com/systems-stables-stars"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[280]]
#> List of 8
#>  $ by         : chr "wslh"
#>  $ descendants: int 0
#>  $ id         : int 46119763
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:30:51"
#>  $ title      : chr "CD4T cells acquire Eomesodermin to modulate cellular senescence and aging"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.nature.com/articles/s43587-025-00953-8"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[281]]
#> List of 9
#>  $ by         : chr "ashishgupta2209"
#>  $ descendants: int 1
#>  $ id         : int 46119762
#>  $ kids       : int 46122072
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:30:46"
#>  $ title      : chr "Anacondas Have Been the Same Size for over 12 Million Years, Fossils Reveal"
#>  $ type       : chr "story"
#>  $ url        : chr "https://scienceclock.com/fossils-reveal-anacondas-have-been-the-same-size-for-over-12-million-years/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[282]]
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
#> [[283]]
#> List of 8
#>  $ by         : chr "vinni2"
#>  $ descendants: int 0
#>  $ id         : int 46119734
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:26:31"
#>  $ title      : chr "India orders phone makers to preload devices with state-owned cyber safety app"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.theguardian.com/technology/2025/dec/01/india-phone-sanchar-saathi-app-cybersecurity"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[284]]
#> List of 8
#>  $ by         : chr "gokhan"
#>  $ descendants: int 0
#>  $ id         : int 46119731
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:25:40"
#>  $ title      : chr "Deformable Object Manipulation"
#>  $ type       : chr "story"
#>  $ url        : chr "https://twitter.com/yusufma555/status/1995710878621331719"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[285]]
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
#> [[286]]
#> List of 8
#>  $ by         : chr "lingonland"
#>  $ descendants: int 0
#>  $ id         : int 46119697
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:20:08"
#>  $ title      : chr "Show HN: I made a yule themed secret Santa system for my family"
#>  $ type       : chr "story"
#>  $ url        : chr "https://yule.lingon.land/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[287]]
#> List of 8
#>  $ by         : chr "giuliomagnifico"
#>  $ descendants: int 0
#>  $ id         : int 46119695
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:19:45"
#>  $ title      : chr "Ukraine developing independent AI system with Google open technology"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.reuters.com/business/media-telecom/ukraine-developing-independent-ai-system-with-google-open-techno"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[288]]
#> List of 8
#>  $ by         : chr "breve"
#>  $ descendants: int 0
#>  $ id         : int 46119675
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:17:25"
#>  $ title      : chr "I have high levels of forever chemicals in my blood – what can I do about it?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bbc.com/news/articles/ce8z8pv1e0ko"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[289]]
#> List of 8
#>  $ by         : chr "rogermungo"
#>  $ descendants: int 0
#>  $ id         : int 46119667
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:16:14"
#>  $ title      : chr "Complete AD&D 2nd edition compendium"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.completecompendium.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[290]]
#> List of 9
#>  $ by         : chr "control-h"
#>  $ descendants: int 1
#>  $ id         : int 46119655
#>  $ kids       : int 46119972
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:14:26"
#>  $ title      : chr "Show HN: SemVer for Books"
#>  $ type       : chr "story"
#>  $ url        : chr "https://bookver.org"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[291]]
#> List of 9
#>  $ by         : chr "qinggeng"
#>  $ descendants: int 0
#>  $ id         : int 46119654
#>  $ score      : int 1
#>  $ text       : chr "Hello HN,<p>I built this tool after seeing a Reddit thread where a historical documentary creator described the"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:14:02"
#>  $ title      : chr "Show HN: I built a bulk image generator after seeing a YouTuber's struggle"
#>  $ type       : chr "story"
#>  $ url        : chr "https://aibulkimagegenerator.com"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[292]]
#> List of 8
#>  $ by         : chr "acoyfellow"
#>  $ descendants: int 0
#>  $ id         : int 46119641
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:12:29"
#>  $ title      : chr "Implementing Patterns with the Cloudflare Agents SDK"
#>  $ type       : chr "story"
#>  $ url        : chr "https://coey.dev/agents-patterns"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[293]]
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
#> [[294]]
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
#> [[295]]
#> List of 8
#>  $ by         : chr "dwilkie"
#>  $ descendants: int 0
#>  $ id         : int 46119594
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:05:25"
#>  $ title      : chr "OpenEWS: Open-Source Early Warning System"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/open-ews/open-ews"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[296]]
#> List of 8
#>  $ by         : chr "KR_compchem"
#>  $ descendants: int 0
#>  $ id         : int 46119588
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:04:25"
#>  $ title      : chr "From Muck to Mauve: the creation of modern dyes from coal tar"
#>  $ type       : chr "story"
#>  $ url        : chr "https://keiran-rowell.github.io/dyes/2025-11-05-aniline-and-the-german-chemical-industry/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[297]]
#> List of 9
#>  $ by         : chr "captn3m0"
#>  $ descendants: int 1
#>  $ id         : int 46119585
#>  $ kids       : int 46119606
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:03:51"
#>  $ title      : chr "IFF's Statement against mandatory installation of \"Sanchar Saathi\""
#>  $ type       : chr "story"
#>  $ url        : chr "https://internetfreedom.in/iffs-statement-against-dots-direction-for-the-mandatory-installation-of-sanchar-saat"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[298]]
#> List of 8
#>  $ by         : chr "dwilkie"
#>  $ descendants: int 0
#>  $ id         : int 46119584
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:03:29"
#>  $ title      : chr "Somleng SMS Gateway Android App: Twilio-Compatible SMS Made Easy"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/somleng/sms-gateway-app"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[299]]
#> List of 8
#>  $ by         : chr "funny_aiadsa"
#>  $ descendants: int 0
#>  $ id         : int 46119567
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 10:00:59"
#>  $ title      : chr "Found an Interesting Application on Peerlist"
#>  $ type       : chr "story"
#>  $ url        : chr "https://peerlist.io/transmonkey/project/vgenie-ai"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[300]]
#> List of 8
#>  $ by         : chr "tosh"
#>  $ descendants: int 0
#>  $ id         : int 46119555
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:59:12"
#>  $ title      : chr "Trap Street"
#>  $ type       : chr "story"
#>  $ url        : chr "https://en.wikipedia.org/wiki/Trap_street"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[301]]
#> List of 9
#>  $ by         : chr "lizbo"
#>  $ descendants: int 0
#>  $ id         : int 46119530
#>  $ kids       : int 46119531
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:55:03"
#>  $ title      : chr "Transcribe Video to Text: Free Video to Text Converter"
#>  $ type       : chr "story"
#>  $ url        : chr "https://taptranscribe.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[302]]
#> List of 8
#>  $ by         : chr "benjamindev"
#>  $ descendants: int 0
#>  $ id         : int 46119527
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:54:52"
#>  $ title      : chr "IPCola: A Tangled Mess"
#>  $ type       : chr "story"
#>  $ url        : chr "https://synthient.com/blog/ipcola-a-tangled-mess"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[303]]
#> List of 9
#>  $ by         : chr "block_hacks"
#>  $ descendants: int 1
#>  $ id         : int 46119517
#>  $ kids       : int [1:2] 46119518 46120124
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:53:36"
#>  $ title      : chr "Hackers Use Npmscan.com to Hack Web Apps (Next.js, Nuxt.js, React, Bun)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://audits.blockhacks.io/audit/how-hackers-use-npmscan-com"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[304]]
#> List of 8
#>  $ by         : chr "DarkVeil"
#>  $ descendants: int 0
#>  $ id         : int 46119516
#>  $ score      : int 1
#>  $ text       : chr "Private, silent, and sealed:\n Hide size, entry &amp; liquidation levels\n Use leverage without public targets\"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:53:29"
#>  $ title      : chr "The Dark Veil Perps DEX Closed Beta Goes Live"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[305]]
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
#> [[306]]
#> List of 8
#>  $ by         : chr "gdotdesign"
#>  $ descendants: int 0
#>  $ id         : int 46119489
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:49:53"
#>  $ title      : chr "Mint Programming Langauge – 0.28.0 Released"
#>  $ type       : chr "story"
#>  $ url        : chr "https://mint-lang.com/news/quality-of-life-improvements"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[307]]
#> List of 8
#>  $ by         : chr "lormayna"
#>  $ descendants: int 0
#>  $ id         : int 46119476
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:47:52"
#>  $ title      : chr "Fermyon Joins Akamai"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.fermyon.com/blog/fermyon-joins-akamai"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[308]]
#> List of 9
#>  $ by         : chr "_jogicodes_"
#>  $ descendants: int 0
#>  $ id         : int 46119451
#>  $ score      : int 2
#>  $ text       : chr "Whenever I start a new iOS app, I am wondering which versions to support.<p>To fix this once and for all, I bui"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:44:47"
#>  $ title      : chr "Show HN: I made a free tool to check iOS version market share"
#>  $ type       : chr "story"
#>  $ url        : chr "https://ioscompatibility.com"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[309]]
#> List of 8
#>  $ by         : chr "fanf2"
#>  $ descendants: int 0
#>  $ id         : int 46119438
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:42:04"
#>  $ title      : chr "Who Invented Vector Clocks?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://decomposition.al/blog/2023/04/08/who-invented-vector-clocks/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[310]]
#> List of 8
#>  $ by         : chr "robtherobber"
#>  $ descendants: int 0
#>  $ id         : int 46119421
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:39:55"
#>  $ title      : chr "Olson's portrait of SOE bravery in WW2 undone by incompetence at the top (2017)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.afr.com/life-and-luxury/arts-and-culture/olsons-portrait-of-soe-bravery-in-ww2-undone-by-incompeten"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[311]]
#> List of 9
#>  $ by         : chr "mgh2"
#>  $ descendants: int 1
#>  $ id         : int 46119416
#>  $ kids       : int 46120960
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:39:07"
#>  $ title      : chr "Netflix Offers Mostly Cash for Warner Brothers"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bloomberg.com/news/articles/2025-12-01/warner-bros-gets-mostly-cash-netflix-offer-in-new-round-of-bids"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[312]]
#> List of 8
#>  $ by         : chr "amalinovic"
#>  $ descendants: int 0
#>  $ id         : int 46119399
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:36:32"
#>  $ title      : chr "Goatmire Elixir 2025 – Elixir Programming Language Forum"
#>  $ type       : chr "story"
#>  $ url        : chr "https://elixirforum.com/t/goatmire-elixir-2025-videos/73509"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[313]]
#> List of 8
#>  $ by         : chr "sundarurfriend"
#>  $ descendants: int 0
#>  $ id         : int 46119394
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:35:17"
#>  $ title      : chr "Scientists Built a Working Computer Memory Out of Shiitake Mushrooms"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.sciencealert.com/scientists-built-a-working-computer-memory-out-of-shiitake-mushrooms"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[314]]
#> List of 8
#>  $ by         : chr "allenz_cheung"
#>  $ descendants: int 0
#>  $ id         : int 46119386
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:34:34"
#>  $ title      : chr "Double Threat: How AI Code Review Eradicates SQL Injection and Hardcoded Secrets"
#>  $ type       : chr "story"
#>  $ url        : chr "https://codeprot.com/articles/code-security.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[315]]
#> List of 9
#>  $ by         : chr "appsoftware"
#>  $ descendants: int 1
#>  $ id         : int 46119337
#>  $ kids       : int 46119338
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:29:06"
#>  $ title      : chr "Visualize 4B Years: The Trillions of Generations: LUCA to Modern Human"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.g9n.com/tools/learning/evolution-visualisation"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[316]]
#> List of 8
#>  $ by         : chr "Antibabelic"
#>  $ descendants: int 0
#>  $ id         : int 46119326
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:27:30"
#>  $ title      : chr "North American Computational Linguistics Open Competition"
#>  $ type       : chr "story"
#>  $ url        : chr "https://naclo.org/practice.php"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[317]]
#> List of 8
#>  $ by         : chr "naveensky"
#>  $ descendants: int 0
#>  $ id         : int 46119310
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:25:33"
#>  $ title      : chr "AI Headshot Generators Are Killing the $500 Photoshoot – Here's Why That Matters"
#>  $ type       : chr "story"
#>  $ url        : chr "https://medium.com/@naveensky/ai-headshot-generators-are-killing-the-500-photoshoot-heres-why-that-matters-779d063d065e"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[318]]
#> List of 8
#>  $ by         : chr "johntiror"
#>  $ descendants: int 0
#>  $ id         : int 46119297
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:22:54"
#>  $ title      : chr "Is Nano Banana Pro Overhyped?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://twitter.com/GiaconeStefano/status/1995785300694471077"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[319]]
#> List of 8
#>  $ by         : chr "beeburrt"
#>  $ descendants: int 0
#>  $ id         : int 46119281
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:20:22"
#>  $ title      : chr "Examining the security posture of an Anti-Crime Ecosystem [pdf]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/GainSec/anti-crime-ecosystem-research/blob/main/whitepaper/GainSec_Whitepaper_AntiCrimeEcosystem.pdf"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[320]]
#> List of 8
#>  $ by         : chr "n1b0m"
#>  $ descendants: int 0
#>  $ id         : int 46119277
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:19:48"
#>  $ title      : chr "Age of the 'scam state': how an illicit industry took root in south-East Asia"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.theguardian.com/technology/2025/dec/02/scam-state-multi-billion-dollar-industry-south-east-asia"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[321]]
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
#> [[322]]
#> List of 9
#>  $ by         : chr "protomolecool"
#>  $ descendants: int 1
#>  $ id         : int 46119273
#>  $ kids       : int 46119274
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:19:34"
#>  $ title      : chr "Invisible XML"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.xml.com/articles/2025/12/02/invisible-xml-update/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[323]]
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
#> [[324]]
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
#> [[325]]
#> List of 8
#>  $ by         : chr "lyn03"
#>  $ descendants: int 0
#>  $ id         : int 46119229
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:13:45"
#>  $ title      : chr "After years building software, AI forced me to rethink a few assumptions"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.indiehackers.com/post/after-years-building-software-ai-forced-me-to-rethink-a-few-assumptions-K18o09FZrkMtY0qAro5U"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[326]]
#> List of 9
#>  $ by         : chr "sundarurfriend"
#>  $ descendants: int 1
#>  $ id         : int 46119216
#>  $ kids       : int 46119223
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:12:01"
#>  $ title      : chr "Nvidia announces new open AI models and tools for autonomous driving research"
#>  $ type       : chr "story"
#>  $ url        : chr "https://techcrunch.com/2025/12/01/nvidia-announces-new-open-ai-models-and-tools-for-autonomous-driving-research/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[327]]
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
#> [[328]]
#> List of 8
#>  $ by         : chr "tosh"
#>  $ descendants: int 0
#>  $ id         : int 46119204
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:10:17"
#>  $ title      : chr "Samsung Launches Galaxy Z TriFold Smartphone with 10-Inch Display"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.macrumors.com/2025/12/01/samsung-galaxy-z-trifold-debut/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[329]]
#> List of 8
#>  $ by         : chr "doener"
#>  $ descendants: int 0
#>  $ id         : int 46119195
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:09:10"
#>  $ title      : chr "DataGuard responds as German parliament passes NIS2"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.dataguard.com/press/nis2-in-germany"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[330]]
#> List of 8
#>  $ by         : chr "robtherobber"
#>  $ descendants: int 0
#>  $ id         : int 46119191
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:08:50"
#>  $ title      : chr "London Mayor urged to ban ads promoting cars and flights"
#>  $ type       : chr "story"
#>  $ url        : chr "https://walthamforestecho.co.uk/2025/11/25/mayor-urged-to-ban-ads-promoting-cars-and-flights/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[331]]
#> List of 9
#>  $ by         : chr "niklauslee"
#>  $ descendants: int 4
#>  $ id         : int 46119155
#>  $ kids       : int 46119173
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:02:31"
#>  $ title      : chr "Show HN: Nakso – An Excalidraw Alternative for Desktop"
#>  $ type       : chr "story"
#>  $ url        : chr "https://nakso.app"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[332]]
#> List of 9
#>  $ by         : chr "guerrilla"
#>  $ descendants: int 1
#>  $ id         : int 46119151
#>  $ kids       : int 46119157
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:02:15"
#>  $ title      : chr "Would you rent B300 (Blackwell Ultra) GPUs in Mongolia at –$5/HR?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://old.reddit.com/r/LocalLLaMA/comments/1pbzw8f/would_you_rent_b300_blackwell_ultra_gpus_in/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[333]]
#> List of 9
#>  $ by         : chr "touge"
#>  $ descendants: int 0
#>  $ id         : int 46119142
#>  $ score      : int 1
#>  $ text       : chr "Hello HN,<p>I built a CLI tool in Go to recover corrupted SQLite databases, implementing the &quot;Corrupt Reco"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:01:36"
#>  $ title      : chr "Show HN: SQLite-repair-go – Recover corrupt SQLite DBs when standard tools fail"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/Tougee/sqlite-repair-go"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[334]]
#> List of 9
#>  $ by         : chr "Saltyfishh"
#>  $ descendants: int 2
#>  $ id         : int 46119134
#>  $ kids       : int [1:2] 46119135 46119218
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:00:34"
#>  $ title      : chr "$0 1-Year SSL Certificates (Certum Root)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.servbay.com/store"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[335]]
#> List of 8
#>  $ by         : chr "intelkishan"
#>  $ descendants: int 0
#>  $ id         : int 46119131
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 09:00:18"
#>  $ title      : chr "Stanford AI Club: Jeff Dean on Important AI Trends [video]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.youtube.com/watch?v=AnTw_t21ayE"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[336]]
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
#> [[337]]
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
#> [[338]]
#> List of 8
#>  $ by         : chr "light001"
#>  $ descendants: int 0
#>  $ id         : int 46119068
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:49:08"
#>  $ title      : chr "Show HN: Spin the Yes or No Wheel – Get Your Free and Instant Decision"
#>  $ type       : chr "story"
#>  $ url        : chr "https://yesornot.net"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[339]]
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
#> [[340]]
#> List of 9
#>  $ by         : chr "doener"
#>  $ descendants: int 1
#>  $ id         : int 46119052
#>  $ kids       : int 46119251
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:46:00"
#>  $ title      : chr "Sovereign Tech Agency: Programs Director (All Genders)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.sovereign.tech/jobs/programs-director"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[341]]
#> List of 8
#>  $ by         : chr "samclemens"
#>  $ descendants: int 0
#>  $ id         : int 46119051
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:45:42"
#>  $ title      : chr "A Tale of Two College Towns"
#>  $ type       : chr "story"
#>  $ url        : chr "https://hedgehogreview.com/issues/place-and-revolution/articles/a-tale-of-two-college-towns"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[342]]
#> List of 8
#>  $ by         : chr "gurukasi2006"
#>  $ descendants: int 0
#>  $ id         : int 46119047
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:44:34"
#>  $ title      : chr "Show HN: Quantica v0.1.1 for Classical and Quantum Programming"
#>  $ type       : chr "story"
#>  $ url        : chr "https://quantica-foundation.github.io/quantica-lang/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[343]]
#> List of 9
#>  $ by         : chr "ddiinn"
#>  $ descendants: int 1
#>  $ id         : int 46119042
#>  $ kids       : int 46119043
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:44:15"
#>  $ title      : chr "Raptor: Autonomous Offensive/Defensive Research Framework Based on Claude Code"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/gadievron/raptor"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[344]]
#> List of 8
#>  $ by         : chr "latexr"
#>  $ descendants: int 0
#>  $ id         : int 46119025
#>  $ score      : int 6
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:41:43"
#>  $ title      : chr "UK digital ID plan gets a price tag at last – £1.8B"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.theregister.com/2025/11/28/digital_id_cost/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[345]]
#> List of 10
#>  $ by         : chr "lu794377"
#>  $ descendants: int 1
#>  $ id         : int 46119021
#>  $ kids       : int 46119392
#>  $ score      : int 1
#>  $ text       : chr "Hi HN,<p>We’ve been building Kling O1, a unified multimodal video model that handles nearly every major video-g"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:41:12"
#>  $ title      : chr "Show HN: Kling O1–Unified Multimodal Video Model for Consistent Video Generation"
#>  $ type       : chr "story"
#>  $ url        : chr "http://klingo1ai.net/?i=d1d5k"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[346]]
#> List of 8
#>  $ by         : chr "zerosizedweasle"
#>  $ descendants: int 0
#>  $ id         : int 46119020
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:41:03"
#>  $ title      : chr "UK pension funds dump US equities on fears of AI bubble"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.ft.com/content/9d90d557-48e5-4f4b-a927-88071cef8ea9"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[347]]
#> List of 9
#>  $ by         : chr "intlayer_org"
#>  $ descendants: int 1
#>  $ id         : int 46119007
#>  $ kids       : int 46119008
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:37:48"
#>  $ title      : chr "Compiler-based internationalization: we promise magic, what's the impact?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://intlayer.org/blog/compiler-vs-declarative-i18n"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[348]]
#> List of 9
#>  $ by         : chr "curlii"
#>  $ descendants: int 6
#>  $ id         : int 46119002
#>  $ kids       : int [1:2] 46119250 46119003
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:36:59"
#>  $ title      : chr "AI Release Tracker"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.aireleasetracker.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[349]]
#> List of 8
#>  $ by         : chr "latexr"
#>  $ descendants: int 0
#>  $ id         : int 46118994
#>  $ score      : int 7
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:35:45"
#>  $ title      : chr "New EU regulator is contractually prohibited from hurting Meta's feelings"
#>  $ type       : chr "story"
#>  $ url        : chr "https://pluralistic.net/2025/12/01/erin-go-blagged/#big-tech-omerta"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[350]]
#> List of 8
#>  $ by         : chr "lermontov"
#>  $ descendants: int 0
#>  $ id         : int 46118986
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:33:52"
#>  $ title      : chr "Compassionate Curmudgeon: Why we must root ourselves in the real world"
#>  $ type       : chr "story"
#>  $ url        : chr "https://theamericanscholar.org/compassionate-curmudgeon/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[351]]
#> List of 8
#>  $ by         : chr "nickcotter"
#>  $ descendants: int 0
#>  $ id         : int 46118974
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:30:34"
#>  $ title      : chr "Trump: Pro-Crypto or Pro-Crime?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://paulkrugman.substack.com/p/trump-pro-crypto-or-pro-crime"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[352]]
#> List of 9
#>  $ by         : chr "sjdeak"
#>  $ descendants: int 1
#>  $ id         : int 46118964
#>  $ kids       : int 46118965
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:29:39"
#>  $ title      : chr "Craftfood.recipes – Roblox Craft Food recipes and codes guide"
#>  $ type       : chr "story"
#>  $ url        : chr "https://craftfood.recipes"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[353]]
#> List of 9
#>  $ by         : chr "ashishgupta2209"
#>  $ descendants: int 1
#>  $ id         : int 46118944
#>  $ kids       : int 46122078
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:26:36"
#>  $ title      : chr "New research reveals the hidden organism behind Lake Erie's toxic blooms"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.sciencedaily.com/releases/2025/11/251130205503.htm"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[354]]
#> List of 8
#>  $ by         : chr "latexr"
#>  $ descendants: int 0
#>  $ id         : int 46118941
#>  $ score      : int 6
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:26:13"
#>  $ title      : chr "OpenAI just made another circular deal"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.theverge.com/news/835453/openai-ownership-thrive-holdings"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[355]]
#> List of 8
#>  $ by         : chr "Aelune_GoDev"
#>  $ descendants: int 0
#>  $ id         : int 46118940
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:25:58"
#>  $ title      : chr "Show HN: Multi langugage parser for local code comprenhension"
#>  $ type       : chr "story"
#>  $ url        : chr "https://substack.com/inbox/post/180441795"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[356]]
#> List of 8
#>  $ by         : chr "jimexp69"
#>  $ descendants: int 0
#>  $ id         : int 46118935
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:25:24"
#>  $ title      : chr "Flock Uses Overseas Gig Workers to Build Its Surveillance AI"
#>  $ type       : chr "story"
#>  $ url        : chr "https://yro.slashdot.org/story/25/12/01/2249209/flock-uses-overseas-gig-workers-to-build-its-surveillance-ai"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[357]]
#> List of 8
#>  $ by         : chr "bolshchikov"
#>  $ descendants: int 0
#>  $ id         : int 46118923
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:23:12"
#>  $ title      : chr "Scoring Matrix for HR interviews to assess candidate's mindset"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bolshchikov.com/p/scoring-matrix-for-mindset-assessment"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[358]]
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
#> [[359]]
#> List of 8
#>  $ by         : chr "defrost"
#>  $ descendants: int 0
#>  $ id         : int 46118882
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:14:26"
#>  $ title      : chr "Devastating toxic spill tests whether African countries will stand up to China"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bbc.com/news/articles/cj6nly288j4o"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[360]]
#> List of 8
#>  $ by         : chr "satvikpendem"
#>  $ descendants: int 0
#>  $ id         : int 46118876
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:13:08"
#>  $ title      : chr "Transformers v5.0 by HuggingFace"
#>  $ type       : chr "story"
#>  $ url        : chr "https://huggingface.co/blog/transformers-v5"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[361]]
#> List of 9
#>  $ by         : chr "loklok5"
#>  $ descendants: int 0
#>  $ id         : int 46118869
#>  $ score      : int 1
#>  $ text       : chr "Hi HN,<p>I built a minimal AI image editor on top of Nano Banana Pro.\nHighlights:<p>- 2K → 4K generation\n- Be"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:11:19"
#>  $ title      : chr "Show HN: An AI image editor using Nano Banana Pro (finally renders text correct)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://lovenanobananapro.com"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[362]]
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
#> [[363]]
#> List of 8
#>  $ by         : chr "nakabonne"
#>  $ descendants: int 0
#>  $ id         : int 46118852
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:09:39"
#>  $ title      : chr "Cagent: AI Team on Your Machine"
#>  $ type       : chr "story"
#>  $ url        : chr "https://creators.spotify.com/pod/profile/nakabonne/episodes/cagent-AI-Team-on-Your-Machine-e3bolvg"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[364]]
#> List of 9
#>  $ by         : chr "L1nefeed"
#>  $ descendants: int 1
#>  $ id         : int 46118820
#>  $ kids       : int 46118823
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 08:03:48"
#>  $ title      : chr "Stop Generating, Start Validating: Why Analysis Is the Real Bottleneck"
#>  $ type       : chr "story"
#>  $ url        : chr "https://app.brainhurricane.ai/blog/stop-generating-start-validating"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[365]]
#> List of 8
#>  $ by         : chr "miniruntimeb"
#>  $ descendants: int 0
#>  $ id         : int 46118784
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 07:56:26"
#>  $ title      : chr "Supreme Court to hear lawsuit that could force Americans offline"
#>  $ type       : chr "story"
#>  $ url        : chr "https://americanbazaaronline.com/2025/12/01/supreme-court-to-hear-lawsuit-that-could-force-millions-of-american"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[366]]
#> List of 8
#>  $ by         : chr "nsoonhui"
#>  $ descendants: int 0
#>  $ id         : int 46118769
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 07:53:09"
#>  $ title      : chr "Why AI Safety Won't Make America Lose the Race with China"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.astralcodexten.com/p/why-ai-safety-wont-make-america-lose"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[367]]
#> List of 8
#>  $ by         : chr "losgehts"
#>  $ descendants: int 0
#>  $ id         : int 46118768
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 07:52:59"
#>  $ title      : chr "Now streaming: Collabora's XDC 2025 presentations"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.collabora.com/news-and-blog/blog/2025/12/02/now-streaming-collabora-xdc-2025-presentation/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[368]]
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
#> [[369]]
#> List of 8
#>  $ by         : chr "lioeters"
#>  $ descendants: int 0
#>  $ id         : int 46118731
#>  $ score      : int 6
#>  $ time       : POSIXct[1:1], format: "2025-12-02 07:48:46"
#>  $ title      : chr "Command Line Programs for the Blind"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.eklhad.net/philosophy.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[370]]
#> List of 9
#>  $ by         : chr "ryan_seq"
#>  $ descendants: int 0
#>  $ id         : int 46118729
#>  $ score      : int 1
#>  $ text       : chr "I built dataframe-expectations to solve a problem I kept running into: how to validate pandas and PySpark DataF"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 07:48:25"
#>  $ title      : chr "Show HN: Dataframe-Expectations – Validation for Pandas and PySpark DataFrames"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/getyourguide/dataframe-expectations"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[371]]
#> List of 8
#>  $ by         : chr "danieltanfh95"
#>  $ descendants: int 0
#>  $ id         : int 46118724
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 07:47:31"
#>  $ title      : chr "Why Conventional Price Theory Fails"
#>  $ type       : chr "story"
#>  $ url        : chr "https://danieltan.weblog.lol/2025/12/appendix-a-price-as-productive-capacity-signal"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[372]]
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
#> [[373]]
#> List of 8
#>  $ by         : chr "gmays"
#>  $ descendants: int 0
#>  $ id         : int 46118706
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 07:43:43"
#>  $ title      : chr "Natural Deception with RL"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.rajan.sh/emergent-deception"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[374]]
#> List of 8
#>  $ by         : chr "rbanffy"
#>  $ descendants: int 0
#>  $ id         : int 46118702
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 07:42:49"
#>  $ title      : chr "3D necroprinting: Leveraging biotic material as the nozzle for 3D printing"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.science.org/doi/10.1126/sciadv.adw9953"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[375]]
#> List of 8
#>  $ by         : chr "doppp"
#>  $ descendants: int 0
#>  $ id         : int 46118685
#>  $ score      : int 7
#>  $ time       : POSIXct[1:1], format: "2025-12-02 07:40:38"
#>  $ title      : chr "DeepSeek-v3.2"
#>  $ type       : chr "story"
#>  $ url        : chr "https://simonwillison.net/2025/Dec/1/deepseek-v32/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[376]]
#> List of 8
#>  $ by         : chr "rbanffy"
#>  $ descendants: int 0
#>  $ id         : int 46118677
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 07:39:13"
#>  $ title      : chr "Ilya Sutskever Just Told Us the Scaling Era Is Over"
#>  $ type       : chr "story"
#>  $ url        : chr "https://canartuc.medium.com/ilya-sutskever-just-told-us-the-scaling-era-is-over-3f7891e8016f"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[377]]
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
#> [[378]]
#> List of 8
#>  $ by         : chr "JPLeRouzic"
#>  $ descendants: int 0
#>  $ id         : int 46118589
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 07:26:44"
#>  $ title      : chr "The Rest Is Silence: Empirically Equivalent Hypotheses about the Universe"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.centauri-dreams.org/2025/12/01/the-rest-is-silence-empirically-equivalent-hypotheses-about-the-universe/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[379]]
#> List of 8
#>  $ by         : chr "the-mitr"
#>  $ descendants: int 0
#>  $ id         : int 46118567
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 07:23:50"
#>  $ title      : chr "The danger of Biorender (& the death of scientific illustration)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://twitter.com/NickDesnoyer/status/1995474245648843184"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[380]]
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
#> [[381]]
#> List of 8
#>  $ by         : chr "petethomas"
#>  $ descendants: int 0
#>  $ id         : int 46118542
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 07:21:20"
#>  $ title      : chr "The New German War Machine"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.theatlantic.com/magazine/2026/01/german-militarism-european-security/684951/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[382]]
#> List of 8
#>  $ by         : chr "doener"
#>  $ descendants: int 0
#>  $ id         : int 46118539
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 07:20:45"
#>  $ title      : chr "Ghost is a powerful app for professional publishers"
#>  $ type       : chr "story"
#>  $ url        : chr "https://ghost.org"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[383]]
#> List of 8
#>  $ by         : chr "mnky9800n"
#>  $ descendants: int 0
#>  $ id         : int 46118501
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 07:13:02"
#>  $ title      : chr "Spy Basket"
#>  $ type       : chr "story"
#>  $ url        : chr "https://en.wikipedia.org/wiki/Spy_basket"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[384]]
#> List of 8
#>  $ by         : chr "I_like_tomato"
#>  $ descendants: int 0
#>  $ id         : int 46118500
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 07:12:59"
#>  $ title      : chr "Vim animation for Advent of Code day 1"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.ppppp.dev/vim-animation-for-advent-of-code-day-1/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[385]]
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
#> [[386]]
#> List of 9
#>  $ by         : chr "emmasuntech"
#>  $ descendants: int 1
#>  $ id         : int 46118447
#>  $ kids       : int 46118736
#>  $ score      : int 4
#>  $ text       : chr "Last winter, I was asked to design permanent architectural lighting for a 100-meter-long pedestrian pathway in "| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 07:04:31"
#>  $ title      : chr "Constant-Current Design for a 100M Outdoor LED Run"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[387]]
#> List of 9
#>  $ by         : chr "immutableRef"
#>  $ descendants: int 0
#>  $ id         : int 46118433
#>  $ kids       : int 46118484
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 07:01:05"
#>  $ title      : chr "Galaxy Z Trifold – unboxing and first look"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.youtube.com/watch?v=CfcQDvoFPJQ"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[388]]
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
#> [[389]]
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
#> [[390]]
#> List of 8
#>  $ by         : chr "petethomas"
#>  $ descendants: int 0
#>  $ id         : int 46118415
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:58:17"
#>  $ title      : chr "Social Security wants about 15M fewer visits in its field offices"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.nextgov.com/digital-government/2025/12/social-security-wants-about-15-million-fewer-visits-its-fiel"| __truncated__
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[391]]
#> List of 8
#>  $ by         : chr "keepamovin"
#>  $ descendants: int 0
#>  $ id         : int 46118414
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:58:10"
#>  $ title      : chr "A Different Conversation with Nikhil Kamath – People by WTF [video]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.youtube.com/watch?v=Rni7Fz7208c"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[392]]
#> List of 8
#>  $ by         : chr "mzl"
#>  $ descendants: int 0
#>  $ id         : int 46118400
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:55:58"
#>  $ title      : chr "Intelligence per Watt: Measuring Intelligence Efficiency of Local AI"
#>  $ type       : chr "story"
#>  $ url        : chr "https://arxiv.org/abs/2511.07885"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[393]]
#> List of 8
#>  $ by         : chr "AnneWodell"
#>  $ descendants: int 0
#>  $ id         : int 46118397
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:55:46"
#>  $ title      : chr "Building a Real-Time Crypto Pump-and-Dump Detector with SQL"
#>  $ type       : chr "story"
#>  $ url        : chr "https://risingwave.com/blog/build-real-time-crypto-pump-dump-detector-sql/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[394]]
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
#> [[395]]
#> List of 8
#>  $ by         : chr "benbreen"
#>  $ descendants: int 0
#>  $ id         : int 46118386
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:54:19"
#>  $ title      : chr "Tom Stoppard's Ordinary Magic"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.commonreader.co.uk/p/tom-stoppards-ordinary-magic"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[396]]
#> List of 8
#>  $ by         : chr "Kerrick"
#>  $ descendants: int 0
#>  $ id         : int 46118376
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:53:18"
#>  $ title      : chr "Responsive Letter Spacing"
#>  $ type       : chr "story"
#>  $ url        : chr "https://cloudfour.com/thinks/responsive-letter-spacing/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[397]]
#> List of 9
#>  $ by         : chr "achow"
#>  $ descendants: int 1
#>  $ id         : int 46118374
#>  $ kids       : int 46121044
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:53:12"
#>  $ title      : chr "Coders Love This AI Startup (Cursor). Can It Last?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.wsj.com/tech/ai/millions-of-coders-love-this-ai-startup-can-it-last-45b72441"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[398]]
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
#> [[399]]
#> List of 8
#>  $ by         : chr "pykello"
#>  $ descendants: int 0
#>  $ id         : int 46118358
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:50:17"
#>  $ title      : chr "An Interactive Guide to the Fourier Transform"
#>  $ type       : chr "story"
#>  $ url        : chr "https://betterexplained.com/articles/an-interactive-guide-to-the-fourier-transform/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[400]]
#> List of 9
#>  $ by         : chr "zzzeek"
#>  $ descendants: int 1
#>  $ id         : int 46118347
#>  $ kids       : int 46118885
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:48:44"
#>  $ title      : chr "Retracted: Safety Eval and Risk Assessment of the Herbicide Roundup for Humans"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.sciencedirect.com/science/article/pii/S0273230099913715"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[401]]
#> List of 9
#>  $ by         : chr "levmiseri"
#>  $ descendants: int 0
#>  $ id         : int 46118341
#>  $ score      : int 1
#>  $ text       : chr "Hello HN!<p>I&#x27;m excited to share the &#x27;v1&#x27; of a new web-based markdown editor!\nThere is plenty o"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:46:42"
#>  $ title      : chr "Show HN: Kraa – web-based markdown editor"
#>  $ type       : chr "story"
#>  $ url        : chr "https://kraa.io/about"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[402]]
#> List of 8
#>  $ by         : chr "thunderbong"
#>  $ descendants: int 0
#>  $ id         : int 46118320
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:43:15"
#>  $ title      : chr "The Gruen Effect"
#>  $ type       : chr "story"
#>  $ url        : chr "https://99percentinvisible.org/episode/the-gruen-effect/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[403]]
#> List of 8
#>  $ by         : chr "PaulHoule"
#>  $ descendants: int 0
#>  $ id         : int 46118260
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:29:23"
#>  $ title      : chr "Public goods provision, public finance preferences, and distributional effects"
#>  $ type       : chr "story"
#>  $ url        : chr "https://link.springer.com/article/10.1007/s42973-025-00228-2"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[404]]
#> List of 8
#>  $ by         : chr "pramodbiligiri"
#>  $ descendants: int 0
#>  $ id         : int 46118258
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:28:54"
#>  $ title      : chr "Working with Q – Coding Agent Protocol"
#>  $ type       : chr "story"
#>  $ url        : chr "https://gist.github.com/ctoth/d8e629209ff1d9748185b9830fa4e79f"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[405]]
#> List of 9
#>  $ by         : chr "gmays"
#>  $ descendants: int 1
#>  $ id         : int 46118252
#>  $ kids       : int 46118333
#>  $ score      : int 7
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:27:45"
#>  $ title      : chr "Building an AI-Native Engineering Team"
#>  $ type       : chr "story"
#>  $ url        : chr "https://developers.openai.com/codex/guides/build-ai-native-engineering-team/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[406]]
#> List of 8
#>  $ by         : chr "walterbell"
#>  $ descendants: int 0
#>  $ id         : int 46118251
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:27:19"
#>  $ title      : chr "AI Adds a New Dimension to DEVONthink 4"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.macstories.net/reviews/ai-adds-a-new-dimension-to-devonthink-4/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[407]]
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
#> [[408]]
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
#> [[409]]
#> List of 8
#>  $ by         : chr "petethomas"
#>  $ descendants: int 0
#>  $ id         : int 46118223
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:24:17"
#>  $ title      : chr "ECB refuses to provide backstop for €140B Ukraine loan"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.ft.com/content/616c79ee-34de-425a-865e-e94ba10be788"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[410]]
#> List of 9
#>  $ by         : chr "nrbnlulu"
#>  $ descendants: int 1
#>  $ id         : int 46118205
#>  $ kids       : int 46118206
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:22:05"
#>  $ title      : chr "Flutter Winit-Wgpu Shell"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/flutter/flutter/issues/179324"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[411]]
#> List of 9
#>  $ by         : chr "tambourine_man"
#>  $ descendants: int 6
#>  $ id         : int 46118195
#>  $ kids       : int [1:3] 46118214 46118305 46119787
#>  $ score      : int 10
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:19:28"
#>  $ title      : chr "Beej's Guide to C Programming"
#>  $ type       : chr "story"
#>  $ url        : chr "https://beej.us/guide/bgc/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[412]]
#> List of 8
#>  $ by         : chr "melvinodsa"
#>  $ descendants: int 0
#>  $ id         : int 46118194
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:19:26"
#>  $ title      : chr "Let Us Deep Dive into the Search Problem"
#>  $ type       : chr "story"
#>  $ url        : chr "https://anvitra.ai/blog/the-search-problem/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[413]]
#> List of 8
#>  $ by         : chr "james2doyle"
#>  $ descendants: int 0
#>  $ id         : int 46118172
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:15:10"
#>  $ title      : chr "A custom Blender-to-Godot addon that makes level and gameplay creation easy"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/papercraftgames/folded-paper-engine"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[414]]
#> List of 8
#>  $ by         : chr "PStarH"
#>  $ descendants: int 0
#>  $ id         : int 46118162
#>  $ score      : int 1
#>  $ text       : chr "OP here. I built VisiLens because I love VisiData&#x27;s speed but struggle to remember its CLI shortcuts. I wa"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:13:09"
#>  $ title      : chr "Show HN: VisiLens – Local-First and Fast Web GUI for VisiData"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[415]]
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
#> [[416]]
#> List of 9
#>  $ by         : chr "meghagulati"
#>  $ descendants: int 0
#>  $ id         : int 46118134
#>  $ kids       : int 46118135
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:06:54"
#>  $ title      : chr "TikTok ramen spot?YouTube rooftop bar? TravelTreasure saves your scroll as a map"
#>  $ type       : chr "story"
#>  $ url        : chr "https://traveltreasure.app/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[417]]
#> List of 9
#>  $ by         : chr "csantanapr"
#>  $ descendants: int 0
#>  $ id         : int 46118106
#>  $ kids       : int 46118107
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:02:49"
#>  $ title      : chr "Amazon EKS Capabilities: Managed Argo CD, ACK, and KRO"
#>  $ type       : chr "story"
#>  $ url        : chr "https://aws.amazon.com/blogs/aws/announcing-amazon-eks-capabilities-for-workload-orchestration-and-cloud-resource-management/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[418]]
#> List of 8
#>  $ by         : chr "adityadeshlahre"
#>  $ descendants: int 0
#>  $ id         : int 46118105
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 06:02:44"
#>  $ title      : chr "How Is My Idea?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://adityadeshlahre.github.io/posts/hire-someone/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[419]]
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
#> [[420]]
#> List of 8
#>  $ by         : chr "babelfish"
#>  $ descendants: int 0
#>  $ id         : int 46118077
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 05:57:06"
#>  $ title      : chr "Meta Superintelligence Labs: Scaling Agent Learning via Experience Synthesis"
#>  $ type       : chr "story"
#>  $ url        : chr "https://arxiv.org/abs/2511.03773"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[421]]
#> List of 8
#>  $ by         : chr "RebelPotato"
#>  $ descendants: int 0
#>  $ id         : int 46118073
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 05:56:25"
#>  $ title      : chr "The Silent (R)evolution of SAT"
#>  $ type       : chr "story"
#>  $ url        : chr "https://cacm.acm.org/research/the-silent-revolution-of-sat/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[422]]
#> List of 8
#>  $ by         : chr "bestinterest"
#>  $ descendants: int 0
#>  $ id         : int 46118012
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 05:42:42"
#>  $ title      : chr "The Complexity of Simplicity [video]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.youtube.com/watch?v=Cum5uN2634o"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[423]]
#> List of 8
#>  $ by         : chr "quapster"
#>  $ descendants: int 0
#>  $ id         : int 46118009
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 05:42:06"
#>  $ title      : chr "Abstraction, but for Robots"
#>  $ type       : chr "story"
#>  $ url        : chr "https://stackoverflow.blog/2025/12/02/abstraction-but-for-robots/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[424]]
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
#> [[425]]
#> List of 8
#>  $ by         : chr "plun9"
#>  $ descendants: int 0
#>  $ id         : int 46117989
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 05:40:17"
#>  $ title      : chr "New FDA-approved glasses can slow nearsightedness in kids"
#>  $ type       : chr "story"
#>  $ url        : chr "https://abcnews.go.com/US/wireStory/new-fda-approved-glasses-slow-nearsightedness-kids-127991874"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[426]]
#> List of 10
#>  $ by         : chr "xsonerx"
#>  $ descendants: int 2
#>  $ id         : int 46117980
#>  $ kids       : int [1:2] 46118550 46118562
#>  $ score      : int 2
#>  $ text       : chr "I built a mobile app that scans barcodes or photos of food in your pantry and uses GPT-4 to suggest recipes bas"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 05:38:37"
#>  $ title      : chr "Show HN: Eatelligence – Scan pantry items, get AI recipe suggestions"
#>  $ type       : chr "story"
#>  $ url        : chr "https://apps.apple.com/us/app/eatelligence/id6755645485"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[427]]
#> List of 7
#>  $ by         : chr "leetcodewhore"
#>  $ descendants: int 0
#>  $ id         : int 46117974
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 05:37:58"
#>  $ title      : chr "Ask HN: Did I do a 5 year BS to become an algo whore?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[428]]
#> List of 9
#>  $ by         : chr "tomstig"
#>  $ descendants: int 1
#>  $ id         : int 46117969
#>  $ kids       : int 46117970
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 05:37:17"
#>  $ title      : chr "Show HN: Imposter Game Oneline"
#>  $ type       : chr "story"
#>  $ url        : chr "https://impostergame.win/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[429]]
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
#> [[430]]
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
#> [[431]]
#> List of 8
#>  $ by         : chr "gmays"
#>  $ descendants: int 0
#>  $ id         : int 46117901
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 05:27:19"
#>  $ title      : chr "High School Dropout to OpenAI Researcher [video]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.youtube.com/watch?v=vq5WhoPCWQ8"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[432]]
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
#> [[433]]
#> List of 9
#>  $ by         : chr "adam_ftt"
#>  $ descendants: int 1
#>  $ id         : int 46117880
#>  $ kids       : int 46117881
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 05:23:23"
#>  $ title      : chr "OWASP LLM Top 10 2026: Predicted New Threats"
#>  $ type       : chr "story"
#>  $ url        : chr "https://scanmyllm.com/owasp-llm-top-10-2026"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[434]]
#> List of 9
#>  $ by         : chr "PaulHoule"
#>  $ descendants: int 1
#>  $ id         : int 46117863
#>  $ kids       : int 46118744
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 05:20:58"
#>  $ title      : chr "Byte-Level Tokenizers Unavoidably Enable LLMs to Generate Ill-Formed UTF-8"
#>  $ type       : chr "story"
#>  $ url        : chr "https://arxiv.org/abs/2511.05578"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[435]]
#> List of 9
#>  $ by         : chr "wrayjustin"
#>  $ descendants: int 1
#>  $ id         : int 46117855
#>  $ kids       : int 46118311
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 05:20:01"
#>  $ title      : chr "Draft: Challenge for Persistent DNS TXT Record Validation"
#>  $ type       : chr "story"
#>  $ url        : chr "https://datatracker.ietf.org/doc/html/draft-sheurich-acme-dns-persist-01"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[436]]
#> List of 8
#>  $ by         : chr "sumo86"
#>  $ descendants: int 0
#>  $ id         : int 46117850
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 05:19:29"
#>  $ title      : chr "Show HN: Personal AI Assistant"
#>  $ type       : chr "story"
#>  $ url        : chr "https://chat.gmujtaba.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[437]]
#> List of 9
#>  $ by         : chr "zekrioca"
#>  $ descendants: int 2
#>  $ id         : int 46117846
#>  $ kids       : int [1:2] 46118032 46118085
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 05:18:47"
#>  $ title      : chr "Energy Department Renames NREL 'National Lab of the Rockies'"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.nrel.gov/news/detail/press/2025/news-release-energy-department-renames-nrel-%27national-lab-of-the-rockies%27"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[438]]
#> List of 8
#>  $ by         : chr "jllyhill"
#>  $ descendants: int 0
#>  $ id         : int 46117842
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 05:17:53"
#>  $ title      : chr "Responsible Bot Operation"
#>  $ type       : chr "story"
#>  $ url        : chr "https://cryptography.dog/blog/responsible-bot-operation/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[439]]
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
#> [[440]]
#> List of 8
#>  $ by         : chr "fleahunter"
#>  $ descendants: int 0
#>  $ id         : int 46117783
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 05:06:15"
#>  $ title      : chr "It's No Dodo, but This Newly Discovered Bird Could Share the Same Fate"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.nytimes.com/2025/12/02/science/birds-dodo-slaty-masked-tinamou.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[441]]
#> List of 9
#>  $ by         : chr "CarterDixon"
#>  $ descendants: int 1
#>  $ id         : int 46117776
#>  $ kids       : int 46117777
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 05:05:04"
#>  $ title      : chr "Pushlog.ai – Summaries of GitHub push notifications"
#>  $ type       : chr "story"
#>  $ url        : chr "https://pushlog.ai/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[442]]
#> List of 8
#>  $ by         : chr "titirx"
#>  $ descendants: int 5
#>  $ id         : int 46117767
#>  $ kids       : int [1:3] 46118577 46117806 46117820
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 05:03:22"
#>  $ title      : chr "Ask HN: I have a job offer in Google MTV from Bangalore. Should I take it?"
#>  $ type       : chr "story"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[443]]
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
#> [[444]]
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
#> [[445]]
#> List of 9
#>  $ by         : chr "parkkichoel"
#>  $ descendants: int 0
#>  $ id         : int 46117740
#>  $ kids       : int 46117753
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 04:58:58"
#>  $ title      : chr "Show HN: PKC Mark – open-source local benchmark for LLMs and Diffusers"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/PKC0412/pkc-mark-benchmark"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[446]]
#> List of 9
#>  $ by         : chr "zdkaster"
#>  $ descendants: int 1
#>  $ id         : int 46117686
#>  $ kids       : int 46118089
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 04:51:40"
#>  $ title      : chr "Slack Engineering – Advancing Our Chef Infrastructure"
#>  $ type       : chr "story"
#>  $ url        : chr "https://slack.engineering/advancing-our-chef-infrastructure-safety-without-disruption/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[447]]
#> List of 9
#>  $ by         : chr "anduril22"
#>  $ descendants: int 0
#>  $ id         : int 46117676
#>  $ score      : int 1
#>  $ text       : chr "I love having multiple git repos in a directory, all of which relate to one project (microservices, etc.). I di"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 04:49:22"
#>  $ title      : chr "Show HN: Multi-Repo Tool"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/njoshi22/repoflow"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[448]]
#> List of 8
#>  $ by         : chr "handfuloflight"
#>  $ descendants: int 0
#>  $ id         : int 46117661
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 04:46:40"
#>  $ title      : chr "United States vs. Paramount Pictures, Inc"
#>  $ type       : chr "story"
#>  $ url        : chr "https://en.wikipedia.org/wiki/United_States_v._Paramount_Pictures,_Inc."
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[449]]
#> List of 9
#>  $ by         : chr "d_e_solomon"
#>  $ descendants: int 1
#>  $ id         : int 46117648
#>  $ kids       : int 46117649
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 04:45:32"
#>  $ title      : chr "Why Most Business Coverage Misses the Actual Drivers of Outcomes"
#>  $ type       : chr "story"
#>  $ url        : chr "https://capitalfolly.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[450]]
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
#> [[451]]
#> List of 9
#>  $ by         : chr "Helithumper"
#>  $ descendants: int 1
#>  $ id         : int 46117628
#>  $ kids       : int 46117835
#>  $ score      : int 5
#>  $ time       : POSIXct[1:1], format: "2025-12-02 04:43:12"
#>  $ title      : chr "Introducing Galaxy Z TriFold"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.samsungmobilepress.com/press-releases/introducing-galaxy-z-trifold-the-shape-of-whats-next-in-mobile-innovation"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[452]]
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
#> [[453]]
#> List of 9
#>  $ by         : chr "hg30"
#>  $ descendants: int 1
#>  $ id         : int 46117515
#>  $ kids       : int 46117516
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 04:23:53"
#>  $ title      : chr "Mark Wiens Food Map of the World"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.wiensmap.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[454]]
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
#> [[455]]
#> List of 8
#>  $ by         : chr "azhenley"
#>  $ descendants: int 0
#>  $ id         : int 46117460
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 04:12:39"
#>  $ title      : chr "December Coding Diary"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.sheeeeeeeep.art/december-adventure-2025.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[456]]
#> List of 8
#>  $ by         : chr "thm"
#>  $ descendants: int 0
#>  $ id         : int 46117432
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 04:08:18"
#>  $ title      : chr "AWS and Google Cloud Collaborate on Multicloud Networking"
#>  $ type       : chr "story"
#>  $ url        : chr "https://cloud.google.com/blog/products/networking/aws-and-google-cloud-collaborate-on-multicloud-networking/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[457]]
#> List of 8
#>  $ by         : chr "andsoitis"
#>  $ descendants: int 0
#>  $ id         : int 46117426
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 04:07:14"
#>  $ title      : chr "Palantir's Karp on govt surveillance, AI and the Dem party – The Axios Show [video]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.youtube.com/watch?v=o1ZFfK8hL5M"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[458]]
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
#> [[459]]
#> List of 8
#>  $ by         : chr "wseqyrku"
#>  $ descendants: int 0
#>  $ id         : int 46117405
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 04:03:49"
#>  $ title      : chr "List of Mathematical Theories"
#>  $ type       : chr "story"
#>  $ url        : chr "https://en.wikipedia.org/wiki/List_of_mathematical_theories"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[460]]
#> List of 8
#>  $ by         : chr "diavarlyani"
#>  $ descendants: int 0
#>  $ id         : int 46117400
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 04:02:56"
#>  $ title      : chr "The $27B Leak No One Wants to Admit"
#>  $ type       : chr "story"
#>  $ url        : chr "https://medium.com/@diahvarlyani/the-27-billion-leak-no-one-wants-to-admit-f5f996c5ade1"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[461]]
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
#> [[462]]
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
#> [[463]]
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
#> [[464]]
#> List of 8
#>  $ by         : chr "DaveZale"
#>  $ descendants: int 0
#>  $ id         : int 46117279
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:46:58"
#>  $ title      : chr "Move over brainrot, this year it's rage bait"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.helsinkitimes.fi/world-int/28265-oxford-names-rage-bait-2025-word-of-the-year.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[465]]
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
#> [[466]]
#> List of 8
#>  $ by         : chr "andsoitis"
#>  $ descendants: int 0
#>  $ id         : int 46117271
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:46:05"
#>  $ title      : chr "Exomind"
#>  $ type       : chr "story"
#>  $ url        : chr "https://bodybybtl.com/solutions/exomind/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[467]]
#> List of 8
#>  $ by         : chr "lihaoyi"
#>  $ descendants: int 0
#>  $ id         : int 46117247
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:42:11"
#>  $ title      : chr "Engineering a Better Java Build Tool Experience [video]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.youtube.com/watch?v=-DTYm1qhQ6U"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[468]]
#> List of 8
#>  $ by         : chr "PaulHoule"
#>  $ descendants: int 0
#>  $ id         : int 46117224
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:38:24"
#>  $ title      : chr "America has the tools to heal division: we need to relearn them"
#>  $ type       : chr "story"
#>  $ url        : chr "https://bigthink.com/the-well/how-america-can-heal-division/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[469]]
#> List of 8
#>  $ by         : chr "PessimalDecimal"
#>  $ descendants: int 0
#>  $ id         : int 46117221
#>  $ score      : int 8
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:38:03"
#>  $ title      : chr "The Hater's Guide to Nvidia"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.wheresyoured.at/the-haters-guide-to-nvidia/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[470]]
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
#> [[471]]
#> List of 8
#>  $ by         : chr "cgoodmac"
#>  $ descendants: int 0
#>  $ id         : int 46117210
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:36:21"
#>  $ title      : chr "From Silicon Valley to Hollywood, why California's job market is taking a hit"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.latimes.com/business/story/2025-11-26/from-silicon-valley-to-hollywood-california-job-market-is-taking-hit"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[472]]
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
#> [[473]]
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
#> [[474]]
#> List of 8
#>  $ by         : chr "mergesort"
#>  $ descendants: int 0
#>  $ id         : int 46117182
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:31:58"
#>  $ title      : chr "Scribblenauts for Software"
#>  $ type       : chr "story"
#>  $ url        : chr "https://build.ms/2025/12/1/scribblenauts-for-software/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[475]]
#> List of 8
#>  $ by         : chr "bbzjk7"
#>  $ descendants: int 0
#>  $ id         : int 46117157
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:28:36"
#>  $ title      : chr "Three Levels of Running LLMs from Laptop to Cluster-Scale Distributed Inference"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bentoml.com/blog/running-local-llms-with-ollama-3-levels-from-local-to-distributed-inference"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[476]]
#> List of 9
#>  $ by         : chr "doobie12"
#>  $ descendants: int 1
#>  $ id         : int 46117145
#>  $ kids       : int 46117669
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:26:54"
#>  $ title      : chr "Hytale System Requirements: Can Your PC Run Hytale?"
#>  $ type       : chr "story"
#>  $ url        : chr "https://hytaletop100.com/blog/hytale-system-requirements-can-your-pc-run-hytale"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[477]]
#> List of 8
#>  $ by         : chr "SerCe"
#>  $ descendants: int 0
#>  $ id         : int 46117142
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:26:26"
#>  $ title      : chr "Z-Image: An Efficient Image Generation Foundation Model [pdf]"
#>  $ type       : chr "story"
#>  $ url        : chr "https://arxiv.org/abs/2511.22699"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[478]]
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
#> [[479]]
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
#> [[480]]
#> List of 9
#>  $ by         : chr "openjny"
#>  $ descendants: int 0
#>  $ id         : int 46117080
#>  $ score      : int 1
#>  $ text       : chr "Hi HN,<p>I built dotgh, a CLI tool for managing AI coding assistant configuration files as reusable templates.<"| __truncated__
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:19:42"
#>  $ title      : chr "Show HN: Dotgh – CLI to manage AI-assistant config templates"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/openjny/dotgh"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[481]]
#> List of 8
#>  $ by         : chr "DustinEchoes"
#>  $ descendants: int 0
#>  $ id         : int 46117031
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:14:43"
#>  $ title      : chr "Airwallex Faces China Backdoor Allegations from Prominent VC"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.forbes.com/sites/boazsobrado/2025/12/01/airwallex-faces-china-backdoor-allegations-from-prominent-vc/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[482]]
#> List of 8
#>  $ by         : chr "Luki1234"
#>  $ descendants: int 0
#>  $ id         : int 46117019
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:13:29"
#>  $ title      : chr "Water Cycle Diagram – Interactive 4 Stages Animation – Free Learning Tool"
#>  $ type       : chr "story"
#>  $ url        : chr "https://senvnv.com/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[483]]
#> List of 9
#>  $ by         : chr "petethomas"
#>  $ descendants: int 1
#>  $ id         : int 46117017
#>  $ kids       : int 46117314
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:13:23"
#>  $ title      : chr "Leaf blowers are the latest thing dividing Americans"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.economist.com/united-states/2025/12/01/leaf-blowers-are-the-latest-thing-dividing-americans"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[484]]
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
#> [[485]]
#> List of 8
#>  $ by         : chr "ashishgupta2209"
#>  $ descendants: int 0
#>  $ id         : int 46116971
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:07:57"
#>  $ title      : chr "Samsung Debuts Its First Trifold Months Ahead of Folding iPhone"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.bloomberg.com/news/articles/2025-12-02/samsung-debuts-2-450-galaxy-z-trifold-months-ahead-of-foldable-iphone"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[486]]
#> List of 8
#>  $ by         : chr "Brajeshwar"
#>  $ descendants: int 0
#>  $ id         : int 46116943
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:04:19"
#>  $ title      : chr "Things I Learned in 2025"
#>  $ type       : chr "story"
#>  $ url        : chr "https://medium.com/@tomwhitwell/52-things-i-learned-in-2025-edeca7e3fdd8"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[487]]
#> List of 9
#>  $ by         : chr "wezteoh"
#>  $ descendants: int 1
#>  $ id         : int 46116917
#>  $ kids       : int 46116918
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 03:01:38"
#>  $ title      : chr "Coherent Multi-Agent Trajectory Forecasting in Team Sports with CausalTraj"
#>  $ type       : chr "story"
#>  $ url        : chr "https://causaltraj.github.io"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[488]]
#> List of 8
#>  $ by         : chr "modinfo"
#>  $ descendants: int 0
#>  $ id         : int 46116878
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 02:57:05"
#>  $ title      : chr "SurrealDB – A scalable, distributed, document-graph db, for the realtime web"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/surrealdb/surrealdb"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[489]]
#> List of 9
#>  $ by         : chr "nettalk83"
#>  $ descendants: int 1
#>  $ id         : int 46116869
#>  $ kids       : int 46116870
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 02:55:47"
#>  $ title      : chr "Ontology-Based Meta-System Architecture (Experimental)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://ontomesh.org/OntoMesh-Architecture.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[490]]
#> List of 9
#>  $ by         : chr "krrishd"
#>  $ descendants: int 1
#>  $ id         : int 46116861
#>  $ kids       : int 46117612
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 02:55:00"
#>  $ title      : chr "\"Airwallex, a Chinese backdoor into American data from AI labs and defense\""
#>  $ type       : chr "story"
#>  $ url        : chr "https://twitter.com/rabois/status/1995532262998417834"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[491]]
#> List of 9
#>  $ by         : chr "gamechangr"
#>  $ descendants: int 1
#>  $ id         : int 46116853
#>  $ kids       : int 46117009
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 02:54:09"
#>  $ title      : chr "How to Sound Like an Expert in Any AI Bubble Debate"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.derekthompson.org/?sort=community"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[492]]
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
#> [[493]]
#> List of 8
#>  $ by         : chr "modinfo"
#>  $ descendants: int 0
#>  $ id         : int 46116848
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 02:53:55"
#>  $ title      : chr "Egui: An easy-to-use GUI in pure Rust"
#>  $ type       : chr "story"
#>  $ url        : chr "https://github.com/emilk/egui"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[494]]
#> List of 8
#>  $ by         : chr "zackb"
#>  $ descendants: int 0
#>  $ id         : int 46116826
#>  $ score      : int 4
#>  $ time       : POSIXct[1:1], format: "2025-12-02 02:50:42"
#>  $ title      : chr "Returning to Linux"
#>  $ type       : chr "story"
#>  $ url        : chr "https://zackbartel.com/blog/2025/02/return-to-linux/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[495]]
#> List of 8
#>  $ by         : chr "silexia"
#>  $ descendants: int 0
#>  $ id         : int 46116820
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 02:49:48"
#>  $ title      : chr "DIY Pig Feeder – Easy and Fast Build. Heavy duty plywood hog creep feeder"
#>  $ type       : chr "story"
#>  $ url        : chr "https://joelx.com/diy-pig-feeder-easy-and-fast-build-heavy-duty-plywood-hog-creep-feeder-keeps-out-rain-and-pests/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[496]]
#> List of 8
#>  $ by         : chr "MDWolinski"
#>  $ descendants: int 0
#>  $ id         : int 46116805
#>  $ score      : int 1
#>  $ time       : POSIXct[1:1], format: "2025-12-02 02:48:14"
#>  $ title      : chr "Cutting Emissions, the Roundabout Way, in New Hampshire"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.nytimes.com/2025/10/21/climate/roundabout-auto-emissions-new-hampshire.html"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[497]]
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
#> [[498]]
#> List of 8
#>  $ by         : chr "walterbell"
#>  $ descendants: int 0
#>  $ id         : int 46116790
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 02:46:19"
#>  $ title      : chr "Same Book, Different You"
#>  $ type       : chr "story"
#>  $ url        : chr "https://www.howardgray.net/same-book-different-you/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[499]]
#> List of 8
#>  $ by         : chr "jmount"
#>  $ descendants: int 0
#>  $ id         : int 46116788
#>  $ score      : int 3
#>  $ time       : POSIXct[1:1], format: "2025-12-02 02:46:18"
#>  $ title      : chr "Text as a \"Market for Lemons\""
#>  $ type       : chr "story"
#>  $ url        : chr "https://win-vector.com/2025/12/01/text-as-a-market-for-lemons/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[500]]
#> List of 8
#>  $ by         : chr "the-mitr"
#>  $ descendants: int 0
#>  $ id         : int 46116781
#>  $ score      : int 2
#>  $ time       : POSIXct[1:1], format: "2025-12-02 02:45:30"
#>  $ title      : chr "The Pleasure of Finding Things Out – Feynman Interview by BBC (1983)"
#>  $ type       : chr "story"
#>  $ url        : chr "https://archive.org/details/ThePleasureOfFindingThingsOut_201809"
#>  - attr(*, "class")= chr "hn_item"
#> 
# }
```
