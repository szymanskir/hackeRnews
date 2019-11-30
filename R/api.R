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
#' @details The API in some cases returns a null response.
#' When this situation occurs it is assumed that the item
#' does not exist and NA is returned.
#'
#' @param id id of the item that should be retrieved
#'
#' @export
#'
#' @return item corresponding to the specified id
#'
#' @examples
#' # retrieve the id of the latest Hacker News item
#' last_item_id <- get_max_item_id()
#' last_item_id
#'
#' # retrieve the latest Hacker News item
#' last_hn_item <- get_item_by_id(last_item_id)
#' last_hn_item
#'
get_item_by_id <- function(id) {
  assert_ids(id)
  request_url <- create_request_url(.base_url(), c("item", id))
  item <- .send_request(request_url)

  if (is.null(item)) {
    NA
  } else {
    create_hn_item(item)
  }
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
#' # retrieve the first two items on Hacker News
#' items <- get_items_by_ids(c(1,2))
#' items
#'
#'
#' @seealso
#' https://github.com/HenrikBengtsson/future
#' https://github.com/HenrikBengtsson/future.apply
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
#' # Retrieve information about the jl user
#' get_user_by_username("jl")
#'
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
#' # retrieve the id of the latest item
#' get_max_item_id()
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
#'
#' # retrieve the ids of current top stories on Hacker News
#' top_stories_ids <- get_top_stories_ids()
#' top_stories_ids
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
#' # get the top story on Hacker News
#' top_story <- get_top_stories(max_items = 1)
#' top_story
#'
#' \donttest{
#' # get all top stories on Hacker News
#' top_stories <- get_top_stories()
#' top_stories
#' }
#'
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
#' # get ids of new stories on Hacker News
#' new_stories_ids <- get_new_stories_ids()
#' new_stories_ids
#'
get_new_stories_ids <- function() {
  request_url <- create_request_url(.base_url(), c("newstories"))
  .send_request(request_url)
}

#' @title Hacker News newest stories
#'
#' @description Retrieves newest stories using Hacker News API
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
#' # get the newest story on Hacker News
#' newest_story <- get_new_stories(max_items = 1)
#' newest_story
#'
#' \donttest{
#' # get all new stories on Hacker News
#' new_stories <- get_new_stories()
#' new_stories
#' }
#'
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
#' # get the ids of best stories on Hacker News
#' best_stories_ids <- get_best_stories_ids()
#' best_stories_ids
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
#' # get the best story on Hacker News
#' best_story <- get_best_stories(max_items = 1)
#' best_story
#'
#' \donttest{
#' # get top 20 best stories on Hacker News
#' best_20_stories <- get_best_stories(max_items = 20)
#' best_20_stories
#'
#' # get all best stories on Hacker News
#' best_stories <- get_best_stories()
#' best_stories
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
#' # get ids of latest ask stories
#' ask_stories_ids <- get_latest_ask_stories_ids()
#' ask_stories_ids
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
#' # get the lastest ask story on Hacker News
#' latest_ask_story <- get_latest_ask_stories(max_items = 1)
#' latest_ask_story
#'
#' \donttest{
#' # get 10 latest ask stories on Hacker News
#' latest_10_ask_stories <- get_latest_ask_stories(max_items = 10)
#' latest_10_ask_stories
#'
#' # get all latest ask stories on Hacker News
#' latest_ask_stories <- get_latest_ask_stories()
#' latest_ask_stories
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
#' # get ids of latest show stories on Hacker News
#' show_stories_ids <- get_latest_show_stories_ids()
#' show_stories_ids
#'

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
#' # get the latest show story on Hacker News
#' latest_show_story <- get_latest_show_stories(max_items = 1)
#' latest_show_story
#'
#' \donttest{
#' # get 10 latest show stories on Hacker News
#' latest_10_show_stories <- get_latest_show_stories(max_items = 10)
#' latest_10_show_stories
#'
#' # get all latest show stories on Hacker News
#' latest_show_stories <- get_latest_show_stories()
#' latest_show_stories
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
#' # get ids of latest job stories
#' latest_job_stories_ids <- get_latest_job_stories_ids()
#' latest_job_stories_ids
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
#' # get the latest job story on Hacker News
#' latest_job_story <- get_latest_job_stories(max_items = 1)
#' latest_job_story
#'
#' \donttest{
#' # get 10 latest job stories on Hacker News
#' latest_10_job_stories <- get_latest_job_stories(max_items = 10)
#' latest_10_job_stories
#'
#' # get all latest job stories on Hacker News
#' latest_job_stories <- get_latest_job_stories()
#' latest_job_stories
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
#' # get ids/usernames of updated items/profiles
#' hn_updates <- get_updates()
#' hn_updates
#'
get_updates <- function() {
  request_url <- create_request_url(.base_url(), c("updates"))
  .send_request(request_url)
}


#' @title Hacker News nested comments
#'
#' @description Retrieves all comments under an item
#' using Hacker News API
#'
#' @param item item whose children (comments) will be retrieved
#'
#' @export
#'
#' @return dataframe of all comments under an item
#'
#' @examples
#' \donttest{
#' story <- get_item_by_id(21499889)
#' comments <- get_comments(story)
#' comments
#' }
#'
get_comments <- function(item) {
  if (!is.null(item$kids)) {
    kids <- hackeRnews::get_items_by_ids(item$kids)
    kids <- kids[!is.na(kids)]
    df <- do.call(
      rbind,
      lapply(kids, get_comments_with_root)
    )

    tibble::as.tibble(df)
  }
}


#' @title Hacker News nested comments with root comment
#'
#' @description Returns specified item and all comments under it. Comments are retrieved
#' using the Hacker News API
#'
#' @param item item whose children (comments) will be retrieved
#'
#' @return dataframe containing specified item and all comments under that item
#'
get_comments_with_root <- function(item) {
  if (is.null(item$kids)) {
    comment_to_dataframe_row(item)
  } else {
    kids <- hackeRnews::get_items_by_ids(item$kids)
    kids <- kids[!is.na(kids)]
    kids_df <- do.call(
      rbind,
      lapply(kids, get_comments_with_root),
    )
    rbind(comment_to_dataframe_row(item), kids_df)
  }
}
