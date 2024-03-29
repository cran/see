% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geom_violindot.R
\name{geom_violindot}
\alias{geom_violindot}
\title{Half-violin Half-dot plot}
\usage{
geom_violindot(
  mapping = NULL,
  data = NULL,
  trim = TRUE,
  scale = c("area", "count", "width"),
  show.legend = NA,
  inherit.aes = TRUE,
  dots_size = 0.7,
  dots_color = NULL,
  dots_fill = NULL,
  binwidth = 0.05,
  position_dots = ggplot2::position_nudge(x = -0.025, y = 0),
  ...,
  size_dots = dots_size,
  color_dots = dots_color,
  fill_dots = dots_fill
)
}
\arguments{
\item{mapping}{Set of aesthetic mappings created by \code{\link[ggplot2:aes]{aes()}}. If specified and
\code{inherit.aes = TRUE} (the default), it is combined with the default mapping
at the top level of the plot. You must supply \code{mapping} if there is no plot
mapping.}

\item{data}{The data to be displayed in this layer. There are three
options:

If \code{NULL}, the default, the data is inherited from the plot
data as specified in the call to \code{\link[ggplot2:ggplot]{ggplot()}}.

A \code{data.frame}, or other object, will override the plot
data. All objects will be fortified to produce a data frame. See
\code{\link[ggplot2:fortify]{fortify()}} for which variables will be created.

A \code{function} will be called with a single argument,
the plot data. The return value must be a \code{data.frame}, and
will be used as the layer data. A \code{function} can be created
from a \code{formula} (e.g. \code{~ head(.x, 10)}).}

\item{trim}{If \code{TRUE} (default), trim the tails of the violins
to the range of the data. If \code{FALSE}, don't trim the tails.}

\item{scale}{if "area" (default), all violins have the same area (before trimming
the tails). If "count", areas are scaled proportionally to the number of
observations. If "width", all violins have the same maximum width.}

\item{show.legend}{logical. Should this layer be included in the legends?
\code{NA}, the default, includes if any aesthetics are mapped.
\code{FALSE} never includes, and \code{TRUE} always includes.
It can also be a named logical vector to finely select the aesthetics to
display.}

\item{inherit.aes}{If \code{FALSE}, overrides the default aesthetics,
rather than combining with them. This is most useful for helper functions
that define both data and aesthetics and shouldn't inherit behaviour from
the default plot specification, e.g. \code{\link[ggplot2:borders]{borders()}}.}

\item{binwidth}{When \code{method} is "dotdensity", this specifies maximum bin
width. When \code{method} is "histodot", this specifies bin width.
Defaults to 1/30 of the range of the data}

\item{position_dots}{Position adjustment for dots, either as a string, or the
result of a call to a position adjustment function.}

\item{...}{Other arguments passed on to \code{\link[ggplot2:layer]{layer()}}. These are
often aesthetics, used to set an aesthetic to a fixed value, like
\code{colour = "red"} or \code{size = 3}. They may also be parameters
to the paired geom/stat.}

\item{size_dots, dots_size}{Size adjustment for dots.}

\item{color_dots, dots_color}{Color adjustment for dots.}

\item{fill_dots, dots_fill}{Fill adjustment for dots.}
}
\description{
Create a half-violin half-dot plot, useful for visualising the distribution
and the sample size at the same time.
}
\examples{
library(ggplot2)
library(see)

ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_violindot() +
  theme_modern()

}
