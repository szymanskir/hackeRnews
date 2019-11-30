#' Creates an object representing a response from the
#' Hacker News API
#'
#' @param response response object
#'
#' @return object representing a response from the
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
#' @param x object to test if it is of the class hn_api_response
#'
#' @return TRUE if the object is of the class hn_api_response
#'
is_hn_api_response <- function(x) {
  inherits(x, "hn_api_response")
}

#' Retrieves the response content
#'
#' @param x hn_api_response object to retrieve content from
#'
#' @return content of the given hn_api_response object
#'
get_content <- function(x) {
  assert(is_hn_api_response(x))
  x$content
}


#' Checks if the given response is not empty and that
#' it did not return an error http code.
#'
#' @param hn_api_response hn_api_response object to be checked
#'
#'
validate_hn_api_response <- function(hn_api_response) {
  assert(!httr::http_error(hn_api_response$response),
         sprintf("The request resulted with an error [%s]\n%s\n<%s>",
                 hn_api_response$response$status_code,
                 hn_api_response$content,
                 hn_api_response$path))
  if (is.null(hn_api_response$content)) {
    warning(
       sprintf("The content of the response is empty!\n<%s>", hn_api_response$path)
    )
  }
}


#' @export
print.hn_api_response <- function(x, ...) {
  cat(sprintf("---HN API RESPONSE [%s][%s]---", x$path, x$response$status_code))
  utils::str(x$content)
}
