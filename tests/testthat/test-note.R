test_that("chris_note appends caption", {
  p <- ggplot2::ggplot(mtcars, ggplot2::aes(wt, mpg)) + ggplot2::geom_point()
  p2 <- p + chris_note()
  expect_match(p2$labels$caption, "caprosser.com")
})
