% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check-library-function.R
\name{check_library}
\alias{check_library}
\title{Check whether the library function was called correctly}
\usage{
check_library(state, package, not_called_msg = NULL, incorrect_msg = NULL)
}
\arguments{
\item{state}{state to start from}

\item{package}{package name for which the library()
function should've been called}

\item{not_called_msg}{optional feedback message in case the library
function wasn't called a single time}

\item{incorrect_msg}{optional feedback message in case the library
function wasn't called for the specified package.}
}
\description{
Convenience function to test in a very hacky way whether 
the library function was called correctly in its most simple form.
There is support for the different ways to call the library function
}
\examples{
\dontrun{
# example solution
library(ggvis)

# sct to test whether ggvis was loaded
ex() \%>\% check_library("ggvis")
}

}
