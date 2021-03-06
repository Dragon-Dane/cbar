% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cbar.R
\docType{package}
\name{cbar}
\alias{cbar}
\alias{cbar-package}
\title{\code{cbar} package}
\usage{
cbar(.data, ref_period, mea_period, apply_standardized = T,
  interval = 0.95, seed = NULL, ...)
}
\arguments{
\item{.data}{data table with datetime, y, and predictors}

\item{ref_period}{performance reference period}

\item{mea_period}{performance measurement period}

\item{apply_standardized}{whether it will standardized data or not}

\item{interval}{credible interval. 0.95 by default.}

\item{...}{params for \code{bsts_model}}
}
\description{
cbar: Contextual Bayesian Anomaly Detection in R

This function generates \code{cbar} object to detect contextual anomaly and
to abstract analysis output.
}
\details{
See the README on
\href{https://github.com/zedoul/cbar}{Github}

For the input \code{.data}, note that you should use \code{datetime} for the
first column name. Also, you should use \code{numeric} type for other
columns.
}
\examples{
library(cbar)

.data <- mtcars
rownames(.data) <- NULL
datetime <- seq(from = Sys.time(), length.out = nrow(.data), by = "mins")
.data <- cbind(datetime = datetime, .data)

ref_session <- 1:16
mea_session <- 17:nrow(.data)

obj <- cbar(.data, ref_session, mea_session)
}
