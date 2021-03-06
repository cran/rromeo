context("rr_publisher_continent")

test_that("rr_publisher_continent() works", {
  expect_error(rr_publisher_continent("a"),
               regexp = paste0("Some continents are not valid, see ",
                               "?rr_publisher_continent to get the list of ",
                               "valid continents"),
               fixed = TRUE)

  skip_on_cran()
  # When Publisher is not found
  use_cassette("rr_publisher_continent_notfound", {
    expect_error(rr_publisher_continent("Antarctica"),
                 "No publisher was found. Maybe try another query? ;)",
                 fixed = TRUE)
  })

  # Regular Query
  use_cassette("rr_publisher_continent", {
    res <- rr_publisher_continent("Australasia")

    expect_is(res, "data.frame")

    expect_named(res, c("romeoid", "publisher", "alias", "romeocolour",
                        "preprint", "postprint", "pdf"))

    expect_is(res$romeoid,     "numeric")
    expect_is(res$publisher,   "character")
    expect_is(res$alias,       "character")
    expect_is(res$romeocolour, "character")
    expect_is(res$preprint,    "character")
    expect_is(res$postprint,   "character")
    expect_is(res$pdf,         "character")

    expect_equal(dim(res), c(58, 7))
    expect_equal(res$romeoid[[1]], 1514)
  }, preserve_exact_body_bytes = TRUE)
})
