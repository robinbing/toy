context('test fit stats function')

test_that("test fit stats give the fitting status", {
  expect_equal(fitStats(c(1,2,3), c(1.1,1.9,2.7)), list(mape = 0.083, rmse = 0.191, mae = 0.167))
})
