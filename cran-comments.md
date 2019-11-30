## Resubmission
This is a resubmission. In this version I have:
* Added a web reference for the used API in the Description
* Fixed the title and description of the package, so all package names,
  software names and API names are written in single quotes.
* Kept examples wrapped in \donttest. All of the exported package
  functions make calls to an external web API. The servers hosting
  this API might have network errors which would result in failures
  on CRAN machines. The idea was also to avoid creating artificial
  traffic which might impact the API.

## Test environments
* local ubuntu 18.04 install, R 3.6.1
* ubuntu 14.04 (on travis-ci), R-oldrel, R-release
* osx (on travis-ci), R-oldrel, R-release
* win-builder (devel and release)
* AppVeyor, R-oldrel, R-release


## R CMD check results

0 errors | 0 warnings | 1 note

* This is a new submission.
