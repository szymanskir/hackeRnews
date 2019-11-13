#' Parses a json response
#'
#' @param response response object to parse
#'
#' @return parsed content of the given response
#'
parse_json <- function(response) {
  assert(httr::http_type(response) == "application/json",
         "The given response is not of type json")

  content <- httr::content(response, "text")
  jsonlite::fromJSON(content)
}

#' Converts numeric value into POSIXct datetime type
#'
#' @details Hacker News API supplies time as a Unix Time,
#' which origin date is "1970-01-01". This value has to be
#' passed to as.POSIXct function in order to get
#' proper time representation
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


#' Selects only limited number of ids
#'
#' @param ids_list list of ids to be trimmed
#'
#' @param max_items maximum number of ids to retrieve
#'
#' @return trimmed list of ids
#'
trim_ids_list <- function(ids_list, max_items) {
  ids_list[1:min(max_items, length(ids_list))]
}

#' return specified variable or default value if specified variable is null
#'
#' @param variable specified variable
#'
#' @param default default return value
#'
#' @return specified variable or default value
default_if_null <- function(variable, default) {
  ifelse(is.null(variable), default, variable)
}

#' Converts comment to a dataframe row
#'
#' @param comment comment to be converted to dataframe
#'
#' @return a dataframe containing a single entry with data from passed comment
#'
comment_to_dataframe_row <- function(comment) {
  data.frame(
    id = comment$id,
    deleted = default_if_null(comment$deleted, FALSE),
    by =  default_if_null(comment$by, NA),
    time = comment$time,
    text = default_if_null(comment$text, NA),
    dead = default_if_null(comment$dead, FALSE),
    parent = comment$parent,
    stringsAsFactors = FALSE
  )
}
