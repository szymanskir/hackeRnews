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

#' Checks whether max_items is correctly defined. If not throws an error
#'
#' @param max_items maximum number of ids to retrieve
#
assert_max_items <- function(max_items) {
  if (!is.null(max_items)) {
    assert(is.numeric(max_items), "max_items must be a numeric type")
    assert(max_items > 0,
           "max_items must be greater than 0")
  }
}

#' Checks whether ids are correctly defined. If not throws an error
#'
#' @param ids maximum number of ids to retrieve
#
assert_ids <- function(ids) {
  assert(all(is.numeric(ids)), "every id must be a numeric type")
  assert(all(ids > 0),
         "every id must be greater than 0")
}
