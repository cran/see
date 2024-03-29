% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/theme_lucid.R
\name{theme_lucid}
\alias{theme_lucid}
\title{Lucid theme}
\usage{
theme_lucid(
  base_size = 11,
  base_family = "",
  plot.title.size = 12,
  plot.title.face = "plain",
  plot.title.space = 15,
  plot.title.position = "plot",
  legend.position = "right",
  axis.title.space = 10,
  legend.title.size = 11,
  legend.text.size = 10,
  axis.title.size = 11,
  axis.title.face = "plain",
  axis.text.size = 10,
  axis.text.angle = NULL,
  tags.size = 11,
  tags.face = "plain"
)
}
\arguments{
\item{base_size}{base font size, given in pts.}

\item{base_family}{base font family}

\item{plot.title.size}{Title size in pts. Can be "none".}

\item{plot.title.face}{Title font face ("plain", "italic", "bold", "bold.italic").}

\item{plot.title.space}{Title spacing.}

\item{plot.title.position}{Alignment of the plot title/subtitle and caption.
The setting for plot.title.position applies to both the title and the
subtitle. A value of "panel" (the default) means that titles and/or caption
are aligned to the plot panels. A value of "plot" means that titles and/or
caption are aligned to the entire plot (minus any space for margins and
plot tag).}

\item{legend.position}{the default position of legends ("none", "left",
"right", "bottom", "top", "inside")}

\item{axis.title.space}{Axis title spacing.}

\item{legend.title.size}{Legend elements text size in pts.}

\item{legend.text.size}{Legend elements text size in pts. Can be "none".}

\item{axis.title.size}{Axis title text size in pts.}

\item{axis.title.face}{Axis font face ("plain", "italic", "bold", "bold.italic").}

\item{axis.text.size}{Axis text size in pts.}

\item{axis.text.angle}{Rotate  the x axis labels.}

\item{tags.size}{Tags text size in pts.}

\item{tags.face}{Tags font face ("plain", "italic", "bold", "bold.italic").}
}
\description{
A light, clear theme for ggplot.
}
\examples{
library(ggplot2)
library(see)

ggplot(iris, aes(x = Sepal.Width, y = Sepal.Length)) +
  geom_point(color = "white") +
  theme_lucid()
}
