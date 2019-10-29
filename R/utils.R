#' Parses a json response
#'
#' @param response reponse object to parse
#'
#' @return parsed content of the given response
#'
parse_json <- function(response) {
  assert(httr::http_type(response) == "application/json",
         "The given response is not of type json")

  content <- httr::content(response, "text")
  jsonlite::fromJSON(content)
}

#' Asserts a given expression and throws an error
#' if it returns FALSE
#'
#' @param expression R expression to be evaluated
#'
#' @param error message to be displayed when the
#' expression is not fulfilled
#'
assert <- function(expression, error) {
  if (!expression) {
    stop(error, call. = FALSE)
  }
}

#' Converts numeric value into POSIXct datetime type
#'
#' @details Hacker News API supplies time as a Unix Time,
#' which origin date is "1970-01-01", which has to be
#' passed to as.POSIXct function
#'
#' @param x numeric value to be converted
#'
#' @return time object of class POSIXct
#'
#' @seealso \code{\link[base]{as.POSIXct}}
#' @seealso \url{https://github.com/HackerNews/API}
#' @seealso \url{https://en.wikipedia.org/wiki/Unix_time}
#'
to_datetime_origin <- function(x) {
  as.POSIXct(x, origin = "1970-01-01")
}
