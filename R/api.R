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
