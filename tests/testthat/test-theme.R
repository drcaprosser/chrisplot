test_that("theme_chris returns a theme", {
  th <- theme_chris()
  expect_s3_class(th, "theme")
})
