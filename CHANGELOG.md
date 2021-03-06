# Changelog

All notable changes to the `testwhat` project will be documented in this file. This project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## 4.5.0 - test markdown exercises, the tidy way

### Added

- Several functions to verify the correctness of exercises of the type `MarkdownExercise`, such as `check_rmd()`, `check_yaml()`, `check_header()`, `check_chunk()` and `check_option()`. Together, they allow for a gradual 'zooming in' on particular parts of the markdown file submitted by the student and the markdown file contained in the solution.
- `disable_highlighting()`: when used in an `%>%`-based SCT chain, this disables highlighting for any checking functions that follow. If there is highlighting information for before the `disable_highlighting()` function, this will be used as a fallback.
- Handle for integrating `testwhat` as a grader into `learnr`.

### Changed

- Several improvements to documentation and vignettes overall.

### Removed

- Support for `allow_extra` argument in `test_yaml_header()` and `test_chunk_options()`, as they were used nowhere on the platform. These functions will soon be either removed or updated to depend on the new tidy markdown testing functions.

## 4.4.3

### Added

- `check_library()`: `check_` equivalent for `test_library_function()`. Documentation has been udpated accordingly
- `check_code()` now takes a `drop_comments` argument. It defaults to `FALSE`. If you set it to `TRUE`, comments will be stripped from the student submission before the pattern you specified (fixed or not) is sought.

### Changed

- `check_library()` (and by extension `test_library_function()`) now ignore `library()` and `require()` calls in comments.
