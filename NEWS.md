# hackeRnews 0.2.1

* Provided direct imports in NAMESPACE.
* Deleted documentation for unexported functions.
* `get_comments` now returns a `data.frame` when `tibble` is not installed. At the same time `tibble` is now in Suggests instead of Imports (#29)

# hackeRnews 0.2.0

* Added validation to the `get_comments` function 
* Performance improvements of the `get_comments` function -- removal of recursive calls

# hackeRnews 0.1.0

* Added a `NEWS.md` file to track changes to the package.
