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
  validate_hn_api_response(hn_api_response)
  get_content(hn_api_response)
}


#' @title Get Hacker News by Id
#'
#' @description Retrieves the item
#' corresponding to specified id using Hacker News API
#'
#' @param id id of the item that should be retrieved
#'
#' @export
#'
#' @return item corresponding to the specified id
#'
#' @examples
#' \donttest{
#' h_id <- get_max_item_id()
#' hacker_article <- get_item_by_id(h_id)
#' }
#'
get_item_by_id <- function(id) {
  assert_ids(id)
  request_url <- create_request_url(.base_url(), c("item", id))
  item <- .send_request(request_url)
  create_hn_item(item)
}

#' @title Get Hacker News by ids
#'
#' @description Retrieves items
#' corresponding to specified list of ids using Hacker News API
#'
#' @details Parallel api requests can be enabled by running
#' \code{future::plan(future::multiprocess)}
#'
#' @param ids list of ids
#'
#' @export
#'
#' @return list of hn_item objects
#'
#' @examples
#' \donttest{
#' get_item_by_ids(c(1,2,3))
#' }
#'
get_items_by_ids <- function(ids) {
  assert_ids(ids)
  future.apply::future_lapply(ids, get_item_by_id)
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
#' \donttest{
#' get_user_by_username("steveddaniels")
#' }
get_user_by_username <- function(username) {
  assert(is.character(username), "username must be a character type object")
  request_url <- create_request_url(.base_url(), c("user", username))
  user <- .send_request(request_url)
  create_hn_user(user)
}

#' @title Hacker News item largest id
#'
#' @description Retrieves largest item id available via Hacker News API
#'
#' @export
#'
#' @return current largest item id
#'
#' @examples
#' \donttest{
#' get_max_item_id()
#' }
#'
get_max_item_id <- function() {
  request_url <- create_request_url(.base_url(), c("maxitem"))
  .send_request(request_url)
}

#' @title Hacker News top stories ids
#'
#' @description Retrieves top stories ids using Hacker News API
#'
#' @export
#'
#' @return list of top stories ids
#'
#' @examples
#' \donttest{
#' top_stories_ids <- get_top_stories_ids()
#' }
#'
get_top_stories_ids <- function() {
  request_url <- create_request_url(.base_url(), c("topstories"))
  .send_request(request_url)
}

#' @title Hacker News top stories
#'
#' @description Retrieves top stories using Hacker News API
#'
#' @inherit get_items_by_ids details
#'
#' @param max_items Maximum number of items to retrieve.
#' If max_items = NULL, returns all available stories
#'
#' @export
#'
#' @return List of top stories
#'
#' @examples
#' \donttest{
#' top_stories <- get_top_stories()
#' top_5_stories <- get_top_stories(5)
#' }
get_top_stories <- function(max_items = NULL) {
  assert_max_items(max_items)
  ids_list <- get_top_stories_ids()
  ids_list <- trim_ids_list(ids_list, max_items)
  get_items_by_ids(ids_list)
}

#' @title Hacker News newest stories ids
#'
#' @description Retrieves newest stories ids using Hacker News API
#'
#' @export
#'
#' @return list of new stories ids
#'
#' @examples
#' \donttest{
#' new_stories_ids <- get_new_stories_ids()
#' }
#'
get_new_stories_ids <- function() {
  request_url <- create_request_url(.base_url(), c("newstories"))
  .send_request(request_url)
}

#' @title Hacker News newest stories
#'
#' @description Retrieves newest stories ids using Hacker News API
#'
#' @inherit get_items_by_ids details
#'
#' @param max_items Maximum number of items to retrieve.
#' If max_items = NULL, returns all available
#'
#' @export
#'
#' @return list of new stories
#'
#' @examples
#' \donttest{
#' new_stories <- get_new_stories()
#' new_5_stories <- get_new_stories(5)
#' }
get_new_stories <- function(max_items = NULL) {
  assert_max_items(max_items)
  ids_list <- get_new_stories_ids()
  ids_list <- trim_ids_list(ids_list, max_items)
  get_items_by_ids(ids_list)
}

#' @title Hacker News best stories ids
#'
#' @description Retrieves best stories ids using Hacker News API
#'
#' @export
#'
#' @return list of best stories ids
#'
#' @examples
#' \donttest{
#' best_stories_ids <- get_best_stories_ids()
#' }
#'
get_best_stories_ids <- function() {
  request_url <- create_request_url(.base_url(), c("beststories"))
  .send_request(request_url)
}

#' @title Hacker News best stories
#'
#' @description Retrieves best stories using Hacker News API
#'
#' @inherit get_items_by_ids details
#'
#' @param max_items Maximum number of items to retrieve.
#' If max_items = NULL, returns all available
#'
#' @export
#'
#' @return list of best stories
#'
#' @examples
#' \donttest{
#' best_stories <- get_best_stories()
#' best_5_stories <- get_best_stories(5)
#' }
get_best_stories <- function(max_items = NULL) {
  assert_max_items(max_items)
  ids_list <- get_best_stories_ids()
  ids_list <- trim_ids_list(ids_list, max_items)
  get_items_by_ids(ids_list)
}

#' @title Hacker News latest ask stories ids
#'
#' @description Retrieves latest ask stories ids using Hacker News API
#'
#' @export
#'
#' @return list of latest ask Hacker News stories ids
#'
#' @examples
#' \donttest{
#' ask_stories_ids <- get_latest_ask_stories_ids()
#' }
#'
get_latest_ask_stories_ids <- function() {
  request_url <- create_request_url(.base_url(), c("askstories"))
  .send_request(request_url)
}

#' @title Hacker News latest ask stories
#'
#' @description Retrieves latest ask stories using Hacker News API
#'
#' @inherit get_items_by_ids details
#'
#' @param max_items Maximum number of items to retrieve.
#' If max_items = NULL, returns all available
#'
#' @export
#'
#' @return list of latest ask HN stories ids
#'
#' @examples
#' \donttest{
#' ask_stories <- get_latest_ask_stories()
#' }

get_latest_ask_stories <- function(max_items = NULL) {
  assert_max_items(max_items)
  ids_list <- get_latest_ask_stories_ids()
  ids_list <- trim_ids_list(ids_list, max_items)
  get_items_by_ids(ids_list)
}

#' @title Hacker News latest show stories ids
#'
#' @description Retrieves latest show stories ids using Hacker News API
#'
#' @export
#'
#' @return list of latest show Hacker News stories ids
#'
#' @examples
#' \donttest{
#' show_stories_ids <- get_latest_show_stories_ids()
#' }

get_latest_show_stories_ids <- function() {
  request_url <- create_request_url(.base_url(), c("showstories"))
  .send_request(request_url)
}

#' @title Hacker News latest show stories
#'
#' @description Retrieves latest show stories using Hacker News API
#'
#' @inherit get_items_by_ids details
#'
#' @param max_items Maximum number of items to retrieve.
#' If max_items = NULL, returns all available
#'
#' @export
#'
#' @return list of latest show HN stories
#'
#' @examples
#' \donttest{
#' show_stories <- get_latest_show_stories()
#' }

get_latest_show_stories <- function(max_items = NULL) {
  assert_max_items(max_items)
  ids_list <- get_latest_show_stories_ids()
  ids_list <- trim_ids_list(ids_list, max_items)
  get_items_by_ids(ids_list)
}

#' @title Hacker News latest job stories ids
#'
#' @description Retrieves latest job stories ids using Hacker News API
#'
#' @export
#'
#' @return list of latest job stories ids
#'
#' @examples
#' \donttest{
#' job_stories_ids <- get_latest_job_stories_ids()
#' }
#'
get_latest_job_stories_ids <- function() {
  request_url <- create_request_url(.base_url(), c("jobstories"))
  .send_request(request_url)
}

#' @title Hacker News latest job stories
#'
#' @description Retrieves latest job stories using Hacker News API
#'
#' @inherit get_items_by_ids details
#'
#' @param max_items Maximum number of items to retrieve.
#' If max_items = NULL, returns all available
#'
#' @export
#'
#' @return list of latest job stories
#'
#' @examples
#' \donttest{
#' job_stories <- get_latest_job_stories()
#' }
#'
get_latest_job_stories <- function(max_items = NULL) {
  assert_max_items(max_items)
  ids_list <- get_latest_job_stories_ids()
  ids_list <- trim_ids_list(ids_list, max_items)
  get_items_by_ids(ids_list)
}


#' @title Hacker News updated profiles
#'
#' @description Retrieves changed item ids and changed profile usernames
#' using Hacker News API
#'
#' @export
#'
#' @return list of changed item ids and list of changed profile usernames
#'
#' @examples
#' \donttest{
#' hacker_updates <- get_updates()
#' }
#'
get_updates <- function() {
  request_url <- create_request_url(.base_url(), c("updates"))
  .send_request(request_url)
}
