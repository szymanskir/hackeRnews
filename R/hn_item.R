#' @title Print for "hn_item" type objects
#'
#' @param x "hn_item" type list
#'
#' @param ... further arguments passed to or from other methods
#'
#' @export
#'

print.hn_item <- function(x, ...) {
  utils::str(x)
}

#' Creates an object representing Hacker News item
#'
#' @param item list returned by Hacker News API
#'
#' @return object representing a hn_item
#'
create_hn_item <- function(item) {
  item$time <- to_datetime_origin(item$time)
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

#' Checks whether the given object is correctly defined
#' hn_item class
#'
#' @param hn_item object of the class hn_item
#'
validate_hn_item <- function(hn_item) {
  assert(exists("id", where = hn_item), "Object's id is required")
  assert(is_hn_item(hn_item), "Object must be of the class hn_item")
}
