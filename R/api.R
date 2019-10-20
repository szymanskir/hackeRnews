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

#' Retrieves the item corresponding to the specified id
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
#' @return current largest item id
get_max_item_id <- function() {
  request_url <- create_request_url(.base_url(), c("maxitem"))
  .send_request(request_url)
}

#' Get top stories
#'
#' @return list of top stories ids
get_top_stories <- function() {
  request_url <- create_request_url(.base_url(), c("topstories"))
  .send_request(request_url)
}

#' Get new stories
#'
#' @return list of new stories ids
get_new_stories <- function() {
  request_url <- create_request_url(.base_url(), c("newstories"))
  .send_request(request_url)
}

#' Get best stories
#'
#' @return list of best stories ids
get_best_stories <- function() {
  request_url <- create_request_url(.base_url(), c("beststories"))
  .send_request(request_url)
}

#' Get latest ask HN stories
#'
#' @return list of latest ask HN stories ids
get_latest_ask_stories <- function() {
  request_url <- create_request_url(.base_url(), c("askstories"))
  .send_request(request_url)
}

#' Get latest show HN stories
#'
#' @return list of latest show HN stories ids
get_latest_show_stories <- function() {
  request_url <- create_request_url(.base_url(), c("showstories"))
  .send_request(request_url)
}

#' Get latest job stories
#'
#' @return list of latest job stories ids
get_latest_job_stories <- function() {
  request_url <- create_request_url(.base_url(), c("jobstories"))
  .send_request(request_url)
}


#' Get changed items and profiles
#'
#' @return list of changed item ids and list of changed profile usernames
get_updates <- function() {
  request_url <- create_request_url(.base_url(), c("updates"))
  .send_request(request_url)
}
