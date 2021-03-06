context("utils")

test_that("accessor works", {
  tw <- tw_accessors()
  tw$initialize(data = list(a = 2, b = 3, c = 4))
  expect_equal(tw$get("a"), 2)
  expect_equal(tw$get("b"), 3)
  expect_equal(tw$get("c"), 4)
  expect_equal(tw$get("d"), NULL)
  tw$set(d = 5)
  expect_equal(tw$get("a"), 2)
  expect_equal(tw$get("b"), 3)
  expect_equal(tw$get("c"), 4)
  expect_equal(tw$get("d"), 5)
  tw$clear()
  expect_equal(tw$get(), list())
  expect_equal(tw$get("a"), NULL)
})

test_that("get_num_hits works", {
  #TODO
})

test_that("check_defined works", {
  testenv <- new.env()
  assign("x", 5, envir = testenv)
  expect_silent(check_defined("x", testenv))
  expect_error(check_defined("y", testenv))
})

test_that("remove_comments works", {
  cases <- c("# c\n4", "#c\n4", "4\n#c", "4\n\n#c", "#c\n4\n# c\n")
  for (case in cases) {
    no_comments_stripped = stringr::str_trim(remove_comments(case))
    expect_equal(no_comments_stripped, "4")
  }
  cases2 <- c("#", "#\n")
  for (case in cases2) {
    expect_equal(remove_comments("#"), "")  
  }
})