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

#' Get item coresponding to given id and preprocess it's content
#'
#' @param id id of the item that should be retrieved
#'
#' @return list containing API respone
#'
.get_item <- function(id) {
  items <- get_item_by_id(id)
  class(items) <- 'hackerlist'
  items$time <- as.POSIXct(items$time, origin="1970-01-01")
  items
}

#' Print values for "hackerlist" type objects
#'
#' @param x "hackerlist" type list
#' @param ... further arguments passed to or from other methods
#'
#' @export
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

#' Retrieves the item corresponding to the specified id
#'
#' @export
#'
#' @param id id of the item that should be retrieved
#'
#' @return item correspoing to the specified id
#'
get_item_by_id <- function(id) {
  request_url <- create_request_url(.base_url(), c("item", id))
  .send_request(request_url)
}


#' Get user corresponding to the specified username
#'
#' @export
#'
#' @param username of the user that should be retrieved
#'
#' @return user corresponding to the specified username
#'
get_user_by_username <- function(username) {
  request_url <- create_request_url(.base_url(), c("user", username))
  .send_request(request_url)
}

#' Get the current largest item id
#'
#' @export
#'
#' @return current largest item id
get_max_item_id <- function() {
  request_url <- create_request_url(.base_url(), c("maxitem"))
  .send_request(request_url)
}

#' Get ids of top stories
#'
#' @export
#'
#' @return list of top stories ids
get_top_stories_ids <- function() {
  request_url <- create_request_url(.base_url(), c("topstories"))
  .send_request(request_url)
}

#' Get top stories
#' @param max_items Maximum number of items to retrive. If max_items = NULL, returns all available
#'
#' @export
#'
#' @return List of top stories
get_top_stories <- function(max_items = NULL) {
  ids_list <- get_top_stories_ids()
  if (!is.null(max_items))
  {
    ids_list <- ids_list[1:min(max_items, length(ids_list))]
  }
  lapply(ids_list, .get_item)
}

#' Get new stories
#'
#' @export
#'
#' @return list of new stories ids
get_new_stories_ids <- function() {
  request_url <- create_request_url(.base_url(), c("newstories"))
  .send_request(request_url)
}

#' Get new stories
#' @param max_items Maximum number of items to retrive. If max_items = NULL, returns all available
#'
#' @export
#'
#' @return list of new stories
get_new_stories <- function(max_items = NULL) {
  ids_list <- get_new_stories_ids()
  if (!is.null(max_items))
  {
    ids_list <- ids_list[1:min(max_items, length(ids_list))]
  }
  lapply(ids_list, .get_item)
}

#' Get best stories
#'
#' @export
#'
#' @return list of best stories ids
get_best_stories_ids <- function() {
  request_url <- create_request_url(.base_url(), c("beststories"))
  .send_request(request_url)
}

#' Get best stories
#' @param max_items Maximum number of items to retrive. If max_items = NULL, returns all available
#' @export
#'
#' @return list of best stories
get_best_stories <- function(max_items = NULL) {
  ids_list <- get_best_stories_ids()
  if (!is.null(max_items))
  {
    ids_list <- ids_list[1:min(max_items, length(ids_list))]
  }
  lapply(ids_list, .get_item)
}

#' Get latest ask HN stories
#'
#' @export
#'
#' @return list of latest ask HN stories ids
get_latest_ask_stories_ids <- function() {
  request_url <- create_request_url(.base_url(), c("askstories"))
  .send_request(request_url)
}

#' Get latest ask HN stories
#'
#' @export
#'
#' @return list of latest ask HN stories ids
get_latest_ask_stories <- function() {
  ids_list <- get_latest_ask_stories_ids()
  lapply(ids_list, .get_item)
}

#' Get latest show HN stories
#'
#' @export
#'
#' @return list of latest show HN stories ids
get_latest_show_stories_ids <- function() {
  request_url <- create_request_url(.base_url(), c("showstories"))
  .send_request(request_url)
}

#' Get latest show HN stories
#'
#' @export
#'
#' @return list of latest show HN stories
get_latest_show_stories <- function() {
  ids_list <- get_latest_show_stories_ids()
  lapply(ids_list, .get_item)
}

#' Get latest job stories
#'
#' @export
#'
#' @return list of latest job stories ids
get_latest_job_stories_ids <- function() {
  request_url <- create_request_url(.base_url(), c("jobstories"))
  .send_request(request_url)
}

#' Get latest job stories
#'
#' @export
#'
#' @return list of latest job stories
get_latest_job_stories <- function() {
  ids_list <- get_latest_job_stories_ids()
  lapply(ids_list, .get_item)
}


#' Get changed items and profiles
#'
#' @export
#'
#' @return list of changed item ids and list of changed profile usernames
get_updates <- function() {
  request_url <- create_request_url(.base_url(), c("updates"))
  .send_request(request_url)
}


