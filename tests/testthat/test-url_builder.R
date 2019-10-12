context("Checking if url builder functions are working correctly")

test_that("Path is added properly to the url", {
  result <- add_path("www.baseurl.com", "mypath")
  expected <- "www.baseurl.com/mypath"
  expect_equal(result, expected)
})


test_that("Json extensions is added properly to the url", {
  result <- add_json_extension("www.baseurl.com/mypath")
  expected <- "www.baseurl.com/mypath.json"
  expect_equal(result, expected)
})

test_that("Request urls are created properly", {
  result <- create_request_url("www.baseurl.com",
                               c("mypart1", "mypart2", "mypart3"))
  expected <- "www.baseurl.com/mypart1/mypart2/mypart3.json"
  expect_equal(result, expected)
})
