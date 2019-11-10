#' Creates a request url based on the given base url and
#' passed paths. The json extensions is added automatically.
#'
#' @param url base url of the request
#'
#' @param paths vector of paths that should be added to the url
#'
#' @return request url with added paths and the json extension
#'
create_request_url <- function(url, paths) {
  for (path in paths) {
    url <- add_path(url, path)
  }

  add_json_extension(url)
}
#' Adds the given path to the given url
#'
#' @param url base url to which the path should be added
#'
#' @param path path that should be added to the url
#'
#' @return url with the given path added
#'
add_path <- function(url, path) {
  paste0(url, "/", path)
}


#' Adds the json extension to the given url
#'
#' @param url base url to which the json extension should be added
#'
#' @return url with the json extension added
#'
add_json_extension <- function(url) {
  paste0(url, ".json")
}
