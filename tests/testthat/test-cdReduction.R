library(testthat)
library(lolspotr)

test_that("Error check for invalid haste (<0)", {
  expect_error(cdReduction(-1))
})

test_that("Error check for invalid haste (>500)", {
  expect_error(cdReduction(150,150,100,50,75))
})
