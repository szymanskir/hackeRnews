
<!-- README.md is generated from README.Rmd. Please edit that file -->

# hackeRnews <img src="man/figures/logo.png" align="right" width="120" />

<!-- badges: start -->

[![Travis build
status](https://travis-ci.com/szymanskir/hackeRnews.svg?branch=master)](https://travis-ci.com/szymanskir/hackeRnews)
[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/szymanskir/hackeRnews?branch=master&svg=true)](https://ci.appveyor.com/project/szymanskir/hackeRnews)
[![Codecov test
coverage](https://codecov.io/gh/szymanskir/hackeRnews/branch/master/graph/badge.svg)](https://codecov.io/gh/szymanskir/hackeRnews?branch=master)
<!-- badges: end -->

The hackeRnews package is an R wrapper for the Hacker News API. Project
for Advanced R classes at the Warsaw University of Technology.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("szymanskir/hackeRnews")
```

## Examples

### Word cloud

Get recent words used in job story titles to build awesome word cloud.
See what words are used the most frequently\!

``` r
library(hackeRnews)
library(tidyverse)
library(tidytext)
library(dplyr)
library(ggwordcloud)

job_stories <- hackeRnews::get_latest_job_stories()

# get titles, normalize used words, remove non alphabet characters
title_words <- unlist(
  lapply(job_stories, FUN=function(job_story) { job_story$title }) %>% 
  str_replace_all('[^A-Z|a-z]', ' ') %>% 
  str_to_upper() %>% 
  str_replace_all('\\s\\s*', ' ') %>% 
  str_split(' ')
)

# remove stop words
data('stop_words')
df <- data.frame(word=title_words, stringsAsFactors=FALSE) %>% 
  filter(!str_to_lower(word) %in% stop_words$word) %>% 
  count(word)


ggplot(df, aes(label=word, size=n)) + 
  geom_text_wordcloud() + 
  scale_size_area(max_size = 10)
```

![](man/figures/README-unnamed-chunk-2-1.png)<!-- -->

### Best stories (based on score)

``` r
library(hackeRnews)
library(stringi)
library(ggplot2)

best_stories <- hackeRnews::get_best_stories(max_items=10)
df <- data.frame(
  title=unlist(lapply(best_stories, FUN=function(best_story) { str_wrap(best_story$title, 42) })),
  score=unlist(lapply(best_stories, FUN=function(best_story) { best_story$score })),
  stringsAsFactors=FALSE
)

df$title = factor(df$title, levels=df$title[order(df$score)])

ggplot(df, aes(x = title, y = score, label=score)) +
  geom_col() +
  geom_label() +
  coord_flip() +
  xlab('Story title') +
  ylab('Score')
```

<img src="man/figures/README-unnamed-chunk-3-1.png" width="100%" />
