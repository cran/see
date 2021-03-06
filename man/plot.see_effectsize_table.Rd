% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.effectsize_table.R
\name{plot.see_effectsize_table}
\alias{plot.see_effectsize_table}
\title{Plot method for effect size tables}
\usage{
\method{plot}{see_effectsize_table}(x, ...)
}
\arguments{
\item{x}{An object.}

\item{...}{Arguments passed to or from other methods.}
}
\value{
A ggplot2-object.
}
\description{
The \code{plot()} method for the \code{effectsize::effectsize()} function.
}
\examples{
library(effectsize)
m <- aov(mpg ~ factor(am) * factor(cyl), data = mtcars)
result <- eta_squared(m)
plot(result)
}
