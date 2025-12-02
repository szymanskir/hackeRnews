# Hacker News latest job stories

Retrieves latest job stories using Hacker News API

## Usage

``` r
get_latest_job_stories(max_items = NULL)
```

## Arguments

- max_items:

  Maximum number of items to retrieve. If max_items = NULL, returns all
  available

## Value

list of latest job stories

## Examples

``` r
# \donttest{
# get the latest job story on Hacker News
latest_job_story <- get_latest_job_stories(max_items = 1)
latest_job_story
#> [[1]]
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

# get 10 latest job stories on Hacker News
latest_10_job_stories <- get_latest_job_stories(max_items = 10)
latest_10_job_stories
#> [[1]]
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
#> [[2]]
#> List of 7
#>  $ by   : chr "sarah74"
#>  $ id   : int 46098336
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-30 17:01:24"
#>  $ title: chr "RetailReady (YC W24) Is Hiring Associate Product Manager"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.ycombinator.com/companies/retailready/jobs/KPKDu3D-associate-product-manager"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[3]]
#> List of 7
#>  $ by   : chr "grmmph"
#>  $ id   : int 46094478
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-30 07:00:40"
#>  $ title: chr "Jiga (YC W21) Is Hiring Product Designer"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.ycombinator.com/companies/jiga/jobs/Cco7vyK-product-designer-remote-europe"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[4]]
#> List of 7
#>  $ by   : chr "philipeller"
#>  $ id   : int 46089008
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-29 17:00:23"
#>  $ title: chr "AccessOwl (YC S22) Is Hiring a Technical Account Manager (IAM)"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.ycombinator.com/companies/accessowl/jobs/dGC3pcO-technical-account-manager-identity-access-management"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[5]]
#> List of 7
#>  $ by   : chr "beyondd"
#>  $ id   : int 46059620
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-26 17:03:21"
#>  $ title: chr "Optery (YC W22) Hiring CISO, Release Manager, Tech Lead (Node), Full Stack Eng"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.optery.com/careers/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[6]]
#> List of 7
#>  $ by   : chr "atarus"
#>  $ id   : int 46056583
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-26 12:01:24"
#>  $ title: chr "Cekura (YC F24) Is Hiring"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.ycombinator.com/companies/cekura-ai/jobs/0ZGLW69-forward-deployed-engineer-us"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[7]]
#> List of 7
#>  $ by   : chr "robot_jackie"
#>  $ id   : int 46036222
#>  $ score: int 1
#>  $ text : chr "Corvus Robotics is scaling the largest autonomous logistics data capture fleet ever built. If you&#x27;re aller"| __truncated__
#>  $ time : POSIXct[1:1], format: "2025-11-24 17:00:33"
#>  $ title: chr "Corvus Robotics (YC S18): Hiring Head of Mfg/Ops, Next Door to YC Mountain View"
#>  $ type : chr "job"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[8]]
#> List of 7
#>  $ by   : chr "ashlleymo"
#>  $ id   : int 46028046
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-23 22:36:07"
#>  $ title: chr "Liva AI (YC S25) Is Hiring"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.ycombinator.com/companies/liva-ai/jobs/fYP8QP8-growth-intern"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[9]]
#> List of 7
#>  $ by   : chr "dhorthy"
#>  $ id   : int 46025055
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-23 17:01:04"
#>  $ title: chr "HumanLayer (YC F24) Is Hiring Founding Engineers"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.ycombinator.com/companies/humanlayer/jobs/oBCZzc7-founding-product-engineer"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[10]]
#> List of 7
#>  $ by   : chr "Equiet"
#>  $ id   : int 46022892
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-23 12:03:06"
#>  $ title: chr "Deepnote (YC S19) is hiring engineers to build a better Jupyter notebook"
#>  $ type : chr "job"
#>  $ url  : chr "https://deepnote.com/join-us"
#>  - attr(*, "class")= chr "hn_item"
#> 

# get all latest job stories on Hacker News
latest_job_stories <- get_latest_job_stories()
latest_job_stories
#> [[1]]
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
#> [[2]]
#> List of 7
#>  $ by   : chr "sarah74"
#>  $ id   : int 46098336
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-30 17:01:24"
#>  $ title: chr "RetailReady (YC W24) Is Hiring Associate Product Manager"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.ycombinator.com/companies/retailready/jobs/KPKDu3D-associate-product-manager"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[3]]
#> List of 7
#>  $ by   : chr "grmmph"
#>  $ id   : int 46094478
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-30 07:00:40"
#>  $ title: chr "Jiga (YC W21) Is Hiring Product Designer"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.ycombinator.com/companies/jiga/jobs/Cco7vyK-product-designer-remote-europe"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[4]]
#> List of 7
#>  $ by   : chr "philipeller"
#>  $ id   : int 46089008
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-29 17:00:23"
#>  $ title: chr "AccessOwl (YC S22) Is Hiring a Technical Account Manager (IAM)"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.ycombinator.com/companies/accessowl/jobs/dGC3pcO-technical-account-manager-identity-access-management"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[5]]
#> List of 7
#>  $ by   : chr "beyondd"
#>  $ id   : int 46059620
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-26 17:03:21"
#>  $ title: chr "Optery (YC W22) Hiring CISO, Release Manager, Tech Lead (Node), Full Stack Eng"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.optery.com/careers/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[6]]
#> List of 7
#>  $ by   : chr "atarus"
#>  $ id   : int 46056583
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-26 12:01:24"
#>  $ title: chr "Cekura (YC F24) Is Hiring"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.ycombinator.com/companies/cekura-ai/jobs/0ZGLW69-forward-deployed-engineer-us"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[7]]
#> List of 7
#>  $ by   : chr "robot_jackie"
#>  $ id   : int 46036222
#>  $ score: int 1
#>  $ text : chr "Corvus Robotics is scaling the largest autonomous logistics data capture fleet ever built. If you&#x27;re aller"| __truncated__
#>  $ time : POSIXct[1:1], format: "2025-11-24 17:00:33"
#>  $ title: chr "Corvus Robotics (YC S18): Hiring Head of Mfg/Ops, Next Door to YC Mountain View"
#>  $ type : chr "job"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[8]]
#> List of 7
#>  $ by   : chr "ashlleymo"
#>  $ id   : int 46028046
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-23 22:36:07"
#>  $ title: chr "Liva AI (YC S25) Is Hiring"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.ycombinator.com/companies/liva-ai/jobs/fYP8QP8-growth-intern"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[9]]
#> List of 7
#>  $ by   : chr "dhorthy"
#>  $ id   : int 46025055
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-23 17:01:04"
#>  $ title: chr "HumanLayer (YC F24) Is Hiring Founding Engineers"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.ycombinator.com/companies/humanlayer/jobs/oBCZzc7-founding-product-engineer"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[10]]
#> List of 7
#>  $ by   : chr "Equiet"
#>  $ id   : int 46022892
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-23 12:03:06"
#>  $ title: chr "Deepnote (YC S19) is hiring engineers to build a better Jupyter notebook"
#>  $ type : chr "job"
#>  $ url  : chr "https://deepnote.com/join-us"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[11]]
#> List of 7
#>  $ by   : chr "jacobwg"
#>  $ id   : int 46016799
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-22 18:05:47"
#>  $ title: chr "Depot (YC W23) Is Hiring a Staff Infrastructure Engineer"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.ycombinator.com/companies/depot/jobs/O2iB56E-staff-infrastructure-engineer"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[12]]
#> List of 7
#>  $ by   : chr "vigneshrajmohan"
#>  $ id   : int 46006250
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-21 17:00:00"
#>  $ title: chr "Pivot Robotics (YC W24) Is Hiring for an Industrial Automation Hardware Engineer"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.ycombinator.com/companies/pivot-robotics/jobs/7xG9Dc6-mechanical-engineer-controls"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[13]]
#> List of 7
#>  $ by   : chr "timshell"
#>  $ id   : int 46003686
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-21 12:00:02"
#>  $ title: chr "Roundtable (YC S23) Is Hiring Two Sales Development Representatives (SDRs)"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.ycombinator.com/companies/roundtable/jobs/irJTEsg-sales-development-representative"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[14]]
#> List of 7
#>  $ by   : chr "rooppal"
#>  $ id   : int 45972390
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-18 21:29:37"
#>  $ title: chr "Bild AI (YC W25) is hiring – Make housing affordable"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.ycombinator.com/companies/bild-ai/jobs/m2ilR5L-founding-engineer-applied-ai"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[15]]
#> List of 7
#>  $ by   : chr "clemo_ra"
#>  $ id   : int 45962178
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-18 07:00:50"
#>  $ title: chr "Langfuse (YC W23) Hiring OSS Support Engineers in Berlin and SF"
#>  $ type : chr "job"
#>  $ url  : chr "https://jobs.ashbyhq.com/langfuse/5ff18d4d-9066-4c67-8ecc-ffc0e295fee6"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[16]]
#> List of 7
#>  $ by   : chr "macklinkachorn"
#>  $ id   : int 45938785
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-15 17:00:38"
#>  $ title: chr "Trellis AI (YC W24) Is Hiring: Streamline access to life-saving therapies"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.ycombinator.com/companies/trellis-ai/jobs/f4GWvH0-forward-deployed-engineer-full-time"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[17]]
#> List of 7
#>  $ by   : chr "davidbuniat"
#>  $ id   : int 45936837
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-15 12:01:10"
#>  $ title: chr "Activeloop (YC S18) Is Hiring MTS (Back End) and AI Search Engineer"
#>  $ type : chr "job"
#>  $ url  : chr "https://careers.activeloop.ai/"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[18]]
#> List of 7
#>  $ by   : chr "caydenpiercehax"
#>  $ id   : int 45932131
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-14 21:00:25"
#>  $ title: chr "Mentra (YC W25) Is Hiring: Head of Growth to Make Smart Glasses Mainstream"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.ycombinator.com/companies/mentra/jobs/2YbQCRw-make-smart-glasses-mainstream-head-of-growth"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[19]]
#> List of 7
#>  $ by   : chr "sarah74"
#>  $ id   : int 45928822
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-14 17:00:19"
#>  $ title: chr "RetailReady (YC W24) Is Hiring"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.ycombinator.com/companies/retailready/jobs/kGHAith-support-engineer"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[20]]
#> List of 7
#>  $ by   : chr "dsacellarius"
#>  $ id   : int 45920468
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-13 21:00:27"
#>  $ title: chr "Piramidal (YC W24) Hiring: Front End Engineer"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.ycombinator.com/companies/piramidal/jobs/i9yNX5s-front-end-engineer-user-interface"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[21]]
#> List of 7
#>  $ by   : chr "hellovai"
#>  $ id   : int 45917282
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-13 17:00:44"
#>  $ title: chr "BAML is hiring compilers/rust engineers (YC W23)"
#>  $ type : chr "job"
#>  $ url  : chr "https://github.com/BoundaryML/baml/tree/canary/jobs"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[22]]
#> List of 7
#>  $ by   : chr "sebselassie"
#>  $ id   : int 45912744
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-13 09:30:53"
#>  $ title: chr "Telli (Voice AI – YC F24) is hiring engineers in Berlin"
#>  $ type : chr "job"
#>  $ url  : chr "https://hi.telli.com/eng"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[23]]
#> List of 7
#>  $ by   : chr "OBrien_1107"
#>  $ id   : int 45910625
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-13 04:26:56"
#>  $ title: chr "CollectWise (YC F24) Is Hiring"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.ycombinator.com/companies/collectwise/jobs/tv3ufcc-forward-deployed-engineer"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[24]]
#> List of 7
#>  $ by   : chr "themanmaran"
#>  $ id   : int 45906604
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-12 21:00:43"
#>  $ title: chr "OmniAI (YC W24) Is Hiring Forward Deployed Engineers"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.ycombinator.com/companies/omniai/jobs/fuTMf2w-forward-deployed-engineer"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[25]]
#> List of 7
#>  $ by   : chr "Gabriel_h"
#>  $ id   : int 45892773
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-11 21:00:35"
#>  $ title: chr "Meticulous (YC S21) is hiring to redefine software dev"
#>  $ type : chr "job"
#>  $ url  : chr "https://jobs.ashbyhq.com/meticulous/3197ae3d-bb26-4750-9ed7-b830f640515e"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[26]]
#> List of 7
#>  $ by   : chr "adchurch"
#>  $ id   : int 45889783
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-11 17:00:23"
#>  $ title: chr "Weave (YC W25) is hiring a founding ML engineer"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.ycombinator.com/companies/weave-3/jobs/ZPyeXzM-founding-ml-engineer"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[27]]
#> List of 7
#>  $ by   : chr "augustschen"
#>  $ id   : int 45886350
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-11 12:00:42"
#>  $ title: chr "Hazel (YC W24) Is Hiring Full Stack Engineers"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.ycombinator.com/companies/hazel-2/jobs/fCdGOZw-full-stack-engineer"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[28]]
#> List of 7
#>  $ by   : chr "atarus"
#>  $ id   : int 45856069
#>  $ score: int 1
#>  $ text : chr "Cekura is growing fast, and we’re now building our Customer Success vertical from the ground up. If you love ow"| __truncated__
#>  $ time : POSIXct[1:1], format: "2025-11-08 12:00:50"
#>  $ title: chr "Cekura (YC F24) Is Hiring"
#>  $ type : chr "job"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[29]]
#> List of 7
#>  $ by   : chr "williamzeng0"
#>  $ id   : int 45845568
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-07 12:00:40"
#>  $ title: chr "Sweep (YC S23) is hiring to build autocomplete for JetBrains"
#>  $ type : chr "job"
#>  $ url  : chr "https://www.ycombinator.com/companies/sweep/jobs/8dUn406-founding-engineer-intern"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[30]]
#> List of 7
#>  $ by   : chr "ea016"
#>  $ id   : int 45844151
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-07 07:00:02"
#>  $ title: chr "Photoroom (YC S20) Is Hiring a Senior AI Front End Engineer in Paris"
#>  $ type : chr "job"
#>  $ url  : chr "https://jobs.ashbyhq.com/photoroom/7644fc7d-7840-406d-a1b1-b9d2d7ffa9b8"
#>  - attr(*, "class")= chr "hn_item"
#> 
#> [[31]]
#> List of 7
#>  $ by   : chr "joshwget"
#>  $ id   : int 45840612
#>  $ score: int 1
#>  $ time : POSIXct[1:1], format: "2025-11-06 21:23:46"
#>  $ title: chr "Hightouch (YC S19) Is Hiring"
#>  $ type : chr "job"
#>  $ url  : chr "https://job-boards.greenhouse.io/hightouch/jobs/5542602004"
#>  - attr(*, "class")= chr "hn_item"
#> 
# }
```
