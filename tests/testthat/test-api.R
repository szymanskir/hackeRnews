httptest2::with_mock_api({
  test_that("Retrieve by id function is working correctly", {
    result <- get_item_by_id(8863)
    expect_snapshot_value(result, style = "json2")
  })
})

httptest2::with_mock_api({
  test_that("Retrieve by username function is working correctly", {
    result <- get_user_by_username("tomek")
    expect_snapshot_value(result, style = "json2")
  })
})

httptest2::with_mock_api({
  test_that("Retrieve max item id function is working correctly", {
    result <- get_max_item_id()
    expected <- 21301342
    expect_equal(result, expected)
  })
})

httptest2::with_mock_api({
  test_that("Retrieve top stories id function is working correctly", {
    result <- get_top_stories_ids()
    expect_snapshot_value(result, style = "json2")
  })
})

httptest2::with_mock_api({
  test_that("Retrieve top stories function is working correctly", {
    result <- get_top_stories(2)
    expect_snapshot_value(result, style = "json2")
  })
})


httptest2::with_mock_api({
  test_that("Retrieve new stories id function is working correctly", {
    result <- get_new_stories_ids()
    expect_snapshot_value(result, style = "json2")
  })
})

httptest2::with_mock_api({
  test_that("Retrieve top stories function is working correctly", {
    result <- get_new_stories(2)
    expect_snapshot_value(result, style = "json2")
  })
})

httptest2::with_mock_api({
  test_that("Retrieve best stories ids function is working correctly", {
    result <- get_best_stories_ids()
    expect_snapshot_value(result, style = "json2")
  })
})

httptest2::with_mock_api({
  test_that("Retrieve best stories function is working correctly", {
    result <- get_best_stories(2)
    expect_snapshot_value(result, style = "json2")
  })
})

httptest2::with_mock_api({
  test_that("Retrieve latest ask stories function is working correctly", {
    result <- get_latest_ask_stories_ids()
    expect_snapshot_value(result, style = "json2")
  })
})

httptest2::with_mock_api({
  test_that("Retrieve latest ask stories function is working correctly", {
    result <- get_latest_ask_stories(1)[[1]]
    expect_snapshot_value(result, style = "json2")
  })
})

httptest2::with_mock_api({
  test_that("Retrieve latest show stories ids function is working correctly", {
    result <- get_latest_show_stories_ids()
    expect_snapshot_value(result, style = "json2")
  })
})

httptest2::with_mock_api({
  test_that("Retrieve latest show stories function is working correctly", {
    result <- get_latest_show_stories(2)[[2]]
    expect_snapshot_value(result, style = "json2")
  })
})

httptest2::with_mock_api({
  test_that("Retrieve latest job stories ids function is working correctly", {
    result <- get_latest_job_stories_ids()
    expect_snapshot_value(result, style = "json2")
  })
})

httptest2::with_mock_api({
  test_that("Retrieve latest job stories function is working correctly", {
    result <- get_latest_job_stories(1)[[1]]
    expect_snapshot_value(result, style = "json2")
  })
})

httptest2::with_mock_api({
  test_that("Retrieve updates function is working correctly", {
    result <- get_updates()
    expect_snapshot_value(result, style = "json2")
  })
})

httptest2::with_mock_api({
  test_that("Conversion of a comment to datarfame is working correctly", {
    comment <- get_item_by_id(21500829)
    result <- comment_to_dataframe_row(comment)
    expect_snapshot_value(result, style = "json2")
  })
})

httptest2::with_mock_api({
  test_that("Conversion of a deleted comment to datarfame is working correctly", {
    comment <- get_item_by_id(21501055)
    result <- comment_to_dataframe_row(comment)
    expect_snapshot_value(result, style = "json2")
  })
})

httptest2::with_mock_api({
  test_that("Retrieve comments function is working correctly", {
    story <- get_item_by_id(21500569)
    result <- get_comments(story)
    expect_snapshot_value(result, style = "json2")
  })
})

httptest2::with_mock_api({
  test_that("Empty responses are handled correctly when retrieving items", {
    expect_warning(
      object = items <- get_items_by_ids(c(8863, 9000, 21278790)),
      regexp = "The content of the response is empty!.*9000.json"
    )

    expect_length(items, 3)
    expect_equal(items[[2]], NA)
  })
})


httptest2::with_mock_api({
  test_that("Empty responses are handled correctly when retrieving comments", {
    expect_warning(
      object = result <- get_comments(get_item_by_id(1000)),
      regexp = "The content of the response is empty!.*3000.json"
    )

    expected <- tibble::as_tibble(
      do.call(
        rbind,
        list(
          comment_to_dataframe_row(get_item_by_id(2000))
        )
      )
    )
    expect_true(all.equal(result, expected))
  })
})
