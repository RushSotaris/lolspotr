library(testthat)
library(lolspotr)

test_that("Error check for level (up)", {
  expect_error(lethCalc(15, 19))
})

test_that("Error check for level (down)", {
  expect_error(lethCalc(15, 0))
})

test_that("Error check for invalid lethality value", {
  expect_error(lethCalc(-.2,1))
})
