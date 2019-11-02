
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

![](man/figures/README-unnamed-chunk-3-1.png)<!-- -->

### Sentiment analysis on two best stories

``` r
library(hackeRnews)
library(tidyverse, dplyr)
library(tidytext, dplyr)

best_stories <- hackeRnews::get_best_stories(2)

# get comments
get_comments_contents <- function(item){
  if( is.null(item$kids)){
    c(item$text)
  } else {
    kids <- hackeRnews::get_items_by_ids(item$kids)
    c(
      item$text,
      lapply(kids, get_comments_contents)
    )
  }
}

comments_by_story <- lapply(best_stories,
                   function(story){
                     unlist(get_comments_contents(story))
                   }
)

# normalize used words, remove non alphabet characters
words_by_story <- lapply(comments_by_story,
                        function(comments){
                            unlist(
                            comments %>%
                              str_replace_all('[^A-Z|a-z]', ' ') %>%
                              str_to_lower() %>%
                              str_replace_all('\\s\\s*', ' ') %>%
                              str_split(' ')
                          )
                        }
)

# remove stop words and empty strings
data('stop_words')
dataframes <- lapply(1:length(words_by_story), function(story_id){
  data.frame(word=words_by_story[[story_id]], stringsAsFactors=FALSE, story_id=story_id) %>%
    filter(!word %in% stop_words$word & word != "")
  }
)

df <- bind_rows(dataframes)

# get sentiment for every story
library(textdata)
sentiment <- get_sentiments("afinn")

df %>%
  inner_join(sentiment, by='word') %>%
  ggplot(aes(x=value, fill=as.factor(story_id))) +
    geom_density(alpha=0.5) +
    scale_x_continuous(breaks=c(-5, 0, 5),
                       labels=c("Negative", "Neutral", "Positive"),
                       limits=c(-5,5)) +
    theme_minimal() +
    theme(axis.title.x=element_blank(),
          axis.title.y=element_blank(),
          axis.text.y=element_blank(),
          axis.ticks.y=element_blank(),
          plot.title=element_text(hjust=0.5)) +
    labs(fill='Story') +
    ggtitle('Sentiment for 2 chosen stories')
```

![](man/figures/README-unnamed-chunk-4-1.png)<!-- -->
