#' Creates an object representing a response from the
#' Hacker News API
#'
#' @param response response object
#'
#' @return object represanting a response from the
#' Hacker News API
#'
create_hn_api_response <- function(response) {
  parsed_content <- parse_json(response)

  structure(
    list(
      content = parsed_content,
      path = response$url,
      response = response
    ),
    class = "hn_api_response"
  )
}

#' Checks whether the given object is of the class
#' hn_api_response.
#'
#' @param x objet to test if it is of the class hn_api_response
#'
#' @return TRUE if the object is of the class hn_api_response
#'
is_hn_api_response <- function(x) {
  inherits(x, "hn_api_response")
}

#' @export
print.hn_api_response <- function(x, ...) {
  cat(sprintf("---HN API RESPONSE [%s][%s]---", x$path, x$response$status_code))
  utils::str(x$content)
}
