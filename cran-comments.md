## Resubmission
This is a resubmission. In this version I have:
* Added a web reference for the used API in the Description
* Fixed the title and description of the package, so all package names,
  software names and API names are written in single quotes.
* Unwrapped \donttest for examples that perform a small amount of
  API calls. In some cases e.g. the `get_comments` function there are
  multiple API calls performed. Those are still wrapped in \donttest
  in order to not exceed 5 sec and to not create artificial traffic
  which could impact the used API.

## Test environments
* local ubuntu 18.04 install, R 3.6.1
* ubuntu 14.04 (on travis-ci), R-oldrel, R-release
* osx (on travis-ci), R-oldrel, R-release
* win-builder (devel and release)
* AppVeyor, R-oldrel, R-release


## R CMD check results

0 errors | 0 warnings | 1 note

* This is a new submission.
