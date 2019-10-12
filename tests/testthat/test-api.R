context("Check if api functions are working correctly")

httptest::with_mock_api({
  test_that("Retrieve by id function is working correctly", {
    result <- get_item_by_id(8863)
    expected <- list(
      by = "dhouston",
      descendants = 71,
      id = 8863,
      kids = c(9224, 8876),
      score = 104,
      time = 1175714200,
      title = "My YC app: Dropbox - Throw away your USB drive",
      type = "story",
      url = "http://www.getdropbox.com/u/2/screencast.html"
    )

    expect_equal(result, expected)
  })
})
