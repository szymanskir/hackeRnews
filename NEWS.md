# hackeRnews (development version)

# hackeRnews 0.2.2

* Update vignettes to not evaluate code chunks that make API requests.

# hackeRnews 0.2.1

* Provided direct imports in NAMESPACE.
* Deleted documentation for unexported functions.
* `get_comments` now returns a `data.frame` when `tibble` is not installed. At the same time `tibble` is now in Suggests instead of Imports (#29)
* `get_items_by_ids` now uses `httr2::req_perform_parallel` instead of `future.apply` to perform multiple asynchronous requests, so now there is no need to use `future::plan` before running functions that perform multiple requests such as `get_best_stories()`, `get_comments`, `get_latest_ask_stories`, `get_latest_job_stories`, `get_latest_show_stories`, `get_top_stories`, `get_new_stories`, 

# hackeRnews 0.2.0

* Added validation to the `get_comments` function 
* Performance improvements of the `get_comments` function -- removal of recursive calls

# hackeRnews 0.1.0

* Added a `NEWS.md` file to track changes to the package.
