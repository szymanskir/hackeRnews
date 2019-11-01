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

# test_story <- get_item_by_id(21415879)

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

