test_that("`plot.see_easycormatrix()` works", {
  library(correlation)
  result <- correlation(mtcars[, -c(8:9)])
  s <- summary(result)
  expect_s3_class(plot(s), "gg")
})
