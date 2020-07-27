% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.estimate_contrasts.R
\name{plot.see_estimate_contrasts}
\alias{plot.see_estimate_contrasts}
\title{Plot method for estimating contrasts}
\usage{
\method{plot}{see_estimate_contrasts}(x, data = NULL, ...)
}
\arguments{
\item{x}{An object.}

\item{data}{The original data used to create this object. Can be a
statistical model or such.}

\item{...}{Arguments passed to or from other methods.}
}
\value{
A ggplot2-object.
}
\description{
The \code{plot()} method for the \code{modelbased::estimate_contrasts()} function.
}
\examples{
\donttest{
if (require("modelbased") && require("rstanarm")) {
  model <- stan_glm(Sepal.Width ~ Species, data = iris, refresh = 0)
  contrasts <- estimate_contrasts(model)
  means <- estimate_means(model)
  plot(contrasts, means)
}
}
}