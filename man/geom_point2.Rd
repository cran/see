% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geom_point2.R
\name{geom_point2}
\alias{geom_point2}
\alias{geom_jitter2}
\alias{geom_pointrange2}
\alias{geom_count2}
\alias{geom_count_borderless}
\alias{geom_point_borderless}
\alias{geom_jitter_borderless}
\alias{geom_pointrange_borderless}
\title{Better looking points}
\usage{
geom_point2(..., stroke = 0, shape = 16)

geom_jitter2(..., size = 2, stroke = 0, shape = 16)

geom_pointrange2(..., stroke = 0)

geom_count2(..., stroke = 0)

geom_count_borderless(..., stroke = 0)

geom_point_borderless(...)

geom_jitter_borderless(...)

geom_pointrange_borderless(...)
}
\arguments{
\item{...}{Other arguments to be passed to
\code{\link[ggplot2:geom_point]{ggplot2::geom_point()}},
\code{\link[ggplot2:geom_jitter]{ggplot2::geom_jitter()}},
\code{\link[ggplot2:geom_linerange]{ggplot2::geom_pointrange()}}, or
\code{\link[ggplot2:geom_count]{ggplot2::geom_count()}}.}

\item{stroke}{Stroke thickness.}

\item{shape}{Shape of points.}

\item{size}{Size of points.}
}
\description{
Somewhat nicer points (especially in case of transparency) without outline
strokes (borders, contours) by default.
}
\note{
The color aesthetics for \code{geom_point_borderless()} is \code{"fill"}, not
\code{"color"}. See 'Examples'.
}
\examples{
\dontshow{if (requireNamespace("patchwork", quietly = TRUE)) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
library(ggplot2)
library(see)

normal <- ggplot(iris, aes(x = Petal.Width, y = Sepal.Length)) +
  geom_point(size = 8, alpha = 0.3) +
  theme_modern()

new <- ggplot(iris, aes(x = Petal.Width, y = Sepal.Length)) +
  geom_point2(size = 8, alpha = 0.3) +
  theme_modern()

plots(normal, new, n_columns = 2)

ggplot(iris, aes(x = Petal.Width, y = Sepal.Length, fill = Species)) +
  geom_point_borderless(size = 4) +
  theme_modern()

theme_set(theme_abyss())
ggplot(iris, aes(x = Petal.Width, y = Sepal.Length, fill = Species)) +
  geom_point_borderless(size = 4)
\dontshow{\}) # examplesIf}
}
