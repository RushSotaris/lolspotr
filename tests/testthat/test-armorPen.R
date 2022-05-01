library(testthat)
library(lolspotr)

test_that("Error check for invalid flat armor reduction value (< 0)", {
  expect_error(armorPen(-1,.4,.35,20))
})

test_that("Error check for invalid lethality value (< 0)", {
  expect_error(armorPen(25,.4,.35,-.1))
})

test_that("Error check for percent reduction value (< 0)", {
  expect_error(armorPen(10,-.1,.35,20))
})

test_that("Error check for percent reduction value (> 1)", {
  expect_error(armorPen(10,1.1,.35,20))
})

test_that("Error check for percent penetration value (< 0)", {
  expect_error(armorPen(10,.25,-.01,20))
})

test_that("Error check for percent penetration value (> 1)", {
  expect_error(armorPen(10,.5,1.0001,20))
})
