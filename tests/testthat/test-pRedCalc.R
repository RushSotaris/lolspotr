library(testthat)
library(lolspotr)

test_that("Error check for Black Cleaver stacks works", {
  expect_error(pRedCalc(.2,7))
})

test_that("Error check for champion ability value works", {
  expect_error(pRedCalc(1,4))
})

test_that("Error check for negative value", {
  expect_error(pRedCalc(-.2,-1))
})
