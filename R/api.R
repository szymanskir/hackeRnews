#' Returns the base url of the Hacker News API
#'
.base_url <- function() {
  "https://hacker-news.firebaseio.com/v0"
}

#' Sends a request to the specified url and retrieves it's content.
#'
#' @param request_url url to be used
#'
#' @return parsed content of the response object
#'
.send_request <- function(request_url) {
  response <- httr::GET(url = request_url)
  hn_api_response <- create_hn_api_response(response)
  get_content(hn_api_response)
}


#' @title Print for "hackerlist" type objects
#'
#' @param x "hackerlist" type list
#'
#' @param ... further arguments passed to or from other methods
#'
#' @export
#'
#' @examples
#'
#' hacker_news <- get_top_stories(max_items = 5)
#' print(hacker_news)

print.hackerlist <- function(x, ...) {
  cat('Title:', x$title, '\n')
  cat('ID:', x$id, '\n')
  cat('Author:', x$by, '\n')
  cat('Descendants:', x$descendants, '\n')
  cat('Kids: ')
  if(length(x$kids) > 5)
    cat(utils::head(x$kids),'... \n')
  else
    cat(x$kids, '\n')
  cat('Score:', x$score,'\n')
  cat('Date:', as.character(x$time),'\n')
  cat('Type:', x$type,'\n')
  cat('URL:', x$url,'\n')
}

#' @title Print for "hackeruser" type objects
#'
#' @param x "hackerlist" type list
#'
#' @param ... further arguments passed to or from other methods
#'
#' @export
#'
#' @examples
#'
#' hacker_user <- get_user_by_username('steveddaniels')
#' print(hacker_user)

print.hackeruser <- function(x, ...) {
  cat('ID:', x$id, '\n')
  cat('Created:', as.character(x$created), '\n')
  cat('Karma:', x$karma,'\n')
  cat('Submitted: ')
  if(length(x$submitted) > 5)
    cat(utils::head(x$submitted),'... \n')
  else
    cat(x$submitted, '\n')
}


#' @title Get Hacker News by Id
#'
#' @description Retrieves the item corresponding to specified id using Hacker News API
#'
#' @param id id of the item that should be retrieved
#'
#' @export
#'
#' @return item correspoing to the specified id
#'
#' @examples
#'
#' h_id <- get_max_item_id()
#' hacker_article <- get_item_by_id(h_id)
#'
get_item_by_id <- function(id) {
  request_url <- create_request_url(.base_url(), c("item", id))
  item <- .send_request(request_url)
  class(item) <- 'hackerlist'
  item$time <- as.POSIXct(item$time, origin="1970-01-01")
  item
}


#' @title Get Hacker News user
#'
#' @description Get user corresponding to the specified username
#'
#' @param username of the user that should be retrieved
#'
#' @export
#'
#' @return user corresponding to the specified username
#'
#' @examples
#' user <- get_user_by_username("steveddaniels")
#' print(user)
get_user_by_username <- function(username) {
  request_url <- create_request_url(.base_url(), c("user", username))
  user <- .send_request(request_url)
  class(user) <- 'hackeruser'
  user$created <- as.POSIXct(user$created, origin="1970-01-01")
  user
}


#' @title Hacker News item largest id
#'
#' @description Retrives largest item id available via Hacker News API
#'
#' @export
#'
#' @return current largest item id
#'
#' @examples
#' h_id <- get_max_item_id()
#'
get_max_item_id <- function() {
  request_url <- create_request_url(.base_url(), c("maxitem"))
  .send_request(request_url)
}

#' @title Hacker News top stories ids
#'
#' @description Retrives top stories ids using Hacker News API
#'
#' @export
#'
#' @return list of top stories ids
#'
#' @examples
#' top_stories_ids <- get_top_stories_ids()
#'
get_top_stories_ids <- function() {
  request_url <- create_request_url(.base_url(), c("topstories"))
  .send_request(request_url)
}

#' @title Hacker News top stories
#'
#' @description Retrives top stories using Hacker News API
#'
#' @param max_items Maximum number of items to retrive. If max_items = NULL, returns all available stories
#'
#' @export
#'
#' @return List of top stories
#'
#' @examples
#' \dontrun{
#' top_stories <- get_top_stories()
#' top_5_stories <- get_top_stories(5)
#' }
get_top_stories <- function(max_items = NULL) {
  ids_list <- get_top_stories_ids()
  if (!is.null(max_items))
  {
    ids_list <- ids_list[1:min(max_items, length(ids_list))]
  }
  lapply(ids_list, get_item_by_id)
}

#' @title Hacker News newest stories ids
#'
#' @description Retrives newest stories ids using Hacker News API
#'
#' @export
#'
#' @return list of new stories ids
#'
#' @examples
#' new_stories_ids <- get_new_stories_ids()
#'
get_new_stories_ids <- function() {
  request_url <- create_request_url(.base_url(), c("newstories"))
  .send_request(request_url)
}

#' @title Hacker News newest stories
#'
#' @description Retrives newest stories ids using Hacker News API
#'
#' @param max_items Maximum number of items to retrive. If max_items = NULL, returns all available
#'
#' @export
#'
#' @return list of new stories
#'
#' @examples
#' \dontrun{
#' new_stories <- get_new_stories()
#' new_5_stories <- get_new_stories(5)
#' }
get_new_stories <- function(max_items = NULL) {
  ids_list <- get_new_stories_ids()
  if (!is.null(max_items))
  {
    ids_list <- ids_list[1:min(max_items, length(ids_list))]
  }
  lapply(ids_list, get_item_by_id)
}

#' @title Hacker News best stories ids
#'
#' @description Retrives best stories ids using Hacker News API
#'
#' @export
#'
#' @return list of best stories ids
#'
#' @examples
#' best_stories_ids <- get_best_stories_ids()
#'
get_best_stories_ids <- function() {
  request_url <- create_request_url(.base_url(), c("beststories"))
  .send_request(request_url)
}

#' @title Hacker News best stories
#'
#' @description Retrives best stories using Hacker News API
#'
#' @param max_items Maximum number of items to retrive. If max_items = NULL, returns all available
#'
#' @export
#'
#' @return list of best stories
#'
#' @examples
#' \dontrun{
#' best_stories <- get_best_stories()
#' best_5_stories <- get_best_stories(5)
#' }
get_best_stories <- function(max_items = NULL) {
  ids_list <- get_best_stories_ids()
  if (!is.null(max_items))
  {
    ids_list <- ids_list[1:min(max_items, length(ids_list))]
  }
  lapply(ids_list, get_item_by_id)
}

#' @title Hacker News latest ask stories ids
#'
#' @description Retrives latest ask stories ids using Hacker News API
#'
#' @export
#'
#' @return list of latest ask Hacker News stories ids
#'
#' @examples
#' ask_stories_ids <- get_latest_ask_stories_ids()
#'
get_latest_ask_stories_ids <- function() {
  request_url <- create_request_url(.base_url(), c("askstories"))
  .send_request(request_url)
}

#' @title Hacker News latest ask stories
#'
#' @description Retrives latest ask stories using Hacker News API
#'
#' @export
#'
#' @return list of latest ask HN stories ids
#'
#' @examples
#' ask_stories <- get_latest_ask_stories()

get_latest_ask_stories <- function() {
  ids_list <- get_latest_ask_stories_ids()
  lapply(ids_list, get_item_by_id)
}

#' @title Hacker News latest show stories ids
#'
#' @description Retrives latest show stories ids using Hacker News API
#'
#' @export
#'
#' @return list of latest show HN stories ids
#'
#' @examples
#' show_stories_ids <- get_latest_show_stories_ids()

get_latest_show_stories_ids <- function() {
  request_url <- create_request_url(.base_url(), c("showstories"))
  .send_request(request_url)
}

#' @title Hacker News latest show stories
#'
#' @description Retrives latest show stories using Hacker News API
#'
#' @export
#'
#' @return list of latest show HN stories
#'
#' @examples
#' show_stories <- get_latest_show_stories()

get_latest_show_stories <- function() {
  ids_list <- get_latest_show_stories_ids()
  lapply(ids_list, get_item_by_id)
}

#' @title Hacker News latest job stories ids
#'
#' @description Retrives latest job stories ids using Hacker News API
#'
#' @export
#'
#' @return list of latest job stories ids
#'
#' @examples
#' job_stories_ids <- get_latest_job_stories_ids()
#'
get_latest_job_stories_ids <- function() {
  request_url <- create_request_url(.base_url(), c("jobstories"))
  .send_request(request_url)
}

#' @title Hacker News latest job stories
#'
#' @description Retrives latest job stories using Hacker News API
#'
#' @export
#'
#' @return list of latest job stories
#'
#' @examples
#' job_stories <- get_latest_job_stories()
#'
get_latest_job_stories <- function() {
  ids_list <- get_latest_job_stories_ids()
  lapply(ids_list, get_item_by_id)
}


#' @title Hacker News updated profiles
#'
#' @description Retrives changed item ids and changed profile usernames using Hacker News API
#'
#' @export
#'
#' @return list of changed item ids and list of changed profile usernames
#' @examples
#' hacker_updates <- get_updates()
#' print(hacker_updates)
#'
get_updates <- function() {
  request_url <- create_request_url(.base_url(), c("updates"))
  .send_request(request_url)
}


