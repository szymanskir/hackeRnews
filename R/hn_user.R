
#' @title Print for "hn_user" type objects
#'
#' @param x "hn_user" type list
#'
#' @param ... further arguments passed to or from other methods
#'
#' @export
#'

print.hn_user <- function(x, ...) {
  utils::str(x)
}


#' Creates an object representing Hacker News user
#'
#' @param user list returned by Hacker News API
#' via get_user_by_username function
#'
#' @return object representing a hn_user
#'
create_hn_user <- function(user) {
  user$created <- to_datetime_origin(user$created)

  hn_user <- structure(
    user,
    class = "hn_user"
  )
  validate_hn_user(hn_user)
  hn_user
}

#' Checks whether the given object is of the class
#' hn_user
#'
#' @param x object to test if it is of the class hn_user
#'
#' @return TRUE if the object is of the class hn_user
#'
is_hn_user <- function(x) {
  inherits(x, "hn_user")
}


#' Checks whether the given object is correctly defined
#' hn_user class
#'
#' @param hn_user object of the class hn_user
#'
validate_hn_user <- function(hn_user) {
  assert(is_hn_user(hn_user), "Object must be of the class hn_user")
}
