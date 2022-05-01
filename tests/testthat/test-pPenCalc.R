library(testthat)
library(lolspotr)

test_that("Error check for valid percent penetration", {
  expect_error(pPenCalc(1.1,0))
})


