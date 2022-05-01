library(testthat)
library(lolspotr)

test_that("Error check for invalid ratio or attack speed modifier inputs.", {
  expect_error(aSpeed(0,.3))
})

test_that("Error check for exceeding attack speed limit (2.5)", {
  expect_error(aSpeed(.650,4,.5))
})
