% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/api.R
\name{get_latest_job_stories}
\alias{get_latest_job_stories}
\title{Hacker News latest job stories}
\usage{
get_latest_job_stories(max_items = NULL)
}
\arguments{
\item{max_items}{Maximum number of items to retrieve.
If max_items = NULL, returns all available}
}
\value{
list of latest job stories
}
\description{
Retrieves latest job stories using Hacker News API
}
\examples{

\donttest{
# get the latest job story on Hacker News
latest_job_story <- get_latest_job_stories(max_items = 1)
latest_job_story

# get 10 latest job stories on Hacker News
latest_10_job_stories <- get_latest_job_stories(max_items = 10)
latest_10_job_stories

# get all latest job stories on Hacker News
latest_job_stories <- get_latest_job_stories()
latest_job_stories
}

}
