#' @title Print for "hn_item" type objects
#'
#' @param x "hn_item" type list
#'
#' @param ... further arguments passed to or from other methods
#'
#' @export
#'
#' @examples
#'
#' hacker_news <- get_top_stories(max_items = 5)
#' print(hacker_news)

print.hn_item <- function(x, ...) {
  utils::str(x)
}

#' Creates an object representing Hacker News item
#'
#' @param item list returned by Hacker News API
#'
#' @return object represanting a hn_item
#'
create_hn_item <- function(item) {
  if (is.null(item)) {
    return(NULL)
  }

  if (is.numeric(item$time)) {
    item$time <- as.POSIXct(item$time, origin = "1970-01-01")
  }

  hn_item <- structure(
    item,
    class = "hn_item"
  )
  validate_hn_item(hn_item)
  hn_item
}

#' Checks whether the given object is of the class
#' hn_item
#'
#' @param x object to test if it is of the class hn_item
#'
#' @return TRUE if the object is of the class hn_item
#'
is_hn_item <- function(x) {
  inherits(x, "hn_item")
}

validate_hn_item <- function(item) {
  assert(exists("id", where = item), "Object's id is required")
  assert(is_hn_item(item), "Object must be of the class hn_item")
}
