% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scale_color_flat.R
\name{palette_flat}
\alias{palette_flat}
\title{Flat UI color palette}
\usage{
palette_flat(palette = "contrast", reverse = FALSE, ...)
}
\arguments{
\item{palette}{Character name of palette. Depending on the color scale, can be \code{"full"}, \code{"ice"}, \code{"rainbow"}, \code{"complement"}, \code{"contrast"} or \code{"light"} (for dark themes).}

\item{reverse}{Boolean indicating whether the palette should be reversed.}

\item{...}{Additional arguments to pass to \code{\link[=colorRampPalette]{colorRampPalette()}}.}
}
\description{
The palette based on Flat UI colors (https://www.materialui.co/flatuicolors).
}
\details{
This function is usually not called directly, but from within
  \code{\link[=scale_color_flat]{scale_color_flat()}}.
}
