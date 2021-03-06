% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.check_outliers.R
\name{plot.see_check_outliers}
\alias{plot.see_check_outliers}
\title{Plot method for checking outliers}
\usage{
\method{plot}{see_check_outliers}(
  x,
  size_text = 3.5,
  size_line = 0.8,
  dot_alpha = 0.8,
  colors = c("#3aaf85", "#1b6ca8", "#cd201f"),
  rescale_distance = TRUE,
  type = c("dots", "bars"),
  ...
)
}
\arguments{
\item{x}{An object.}

\item{size_text}{Size of text labels.}

\item{size_line}{Size of line geoms.}

\item{dot_alpha}{ALpha level of the confidence bands and point-geoms.}

\item{colors}{Character vector of length two, indicating the colors (in
hex-format) for points and line.}

\item{rescale_distance}{Logical, if \code{TRUE}, distance values are rescaled
to a range from 0 to 1. This is mainly due to better catch the differences
between distance values.}

\item{type}{Character vector, indicating the type of plot.}

\item{...}{Arguments passed to or from other methods.}
}
\value{
A ggplot2-object.
}
\description{
The \code{plot()} method for the \code{performance::check_outliers()}
function.
}
\examples{
library(performance)
data(mtcars)
mt1 <- mtcars[, c(1, 3, 4)]
mt2 <- rbind(
  mt1,
  data.frame(mpg = c(37, 40), disp = c(300, 400), hp = c(110, 120))
)
model <- lm(disp ~ mpg + hp, data = mt2)
plot(check_outliers(model))
}
