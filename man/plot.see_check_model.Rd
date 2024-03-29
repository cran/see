% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.check_model.R
\name{plot.see_check_model}
\alias{plot.see_check_model}
\title{Plot method for checking model assumptions}
\usage{
\method{plot}{see_check_model}(
  x,
  style = theme_lucid,
  colors = NULL,
  type = c("density", "discrete_dots", "discrete_interval", "discrete_both"),
  n_columns = 2,
  ...
)
}
\arguments{
\item{x}{An object.}

\item{style}{A ggplot2-theme.}

\item{colors}{Character vector of length two, indicating the colors (in
hex-format) for points and line.}

\item{type}{Plot type for the posterior predictive checks plot. Can be \code{"density"}
(default), \code{"discrete_dots"}, \code{"discrete_interval"} or \code{"discrete_both"} (the
\verb{discrete_*} options are appropriate for models with discrete - binary, integer
or ordinal etc. - outcomes).}

\item{n_columns}{Number of columns to align plots.}

\item{...}{Arguments passed to or from other methods.}
}
\value{
A ggplot2-object.
}
\description{
The \code{plot()} method for the \code{performance::check_model()} function.
Diagnostic plots for regression models.
}
\examples{
\dontshow{if (require("patchwork")) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
library(performance)

model <- lm(qsec ~ drat + wt, data = mtcars)
plot(check_model(model))
\dontshow{\}) # examplesIf}
}
\seealso{
See also the vignette about \href{https://easystats.github.io/performance/articles/check_model.html}{\code{check_model()}}.
}
