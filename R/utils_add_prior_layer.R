#' @importFrom ggridges geom_ridgeline
#' @importFrom stats median mad
#' @importFrom bayestestR simulate_prior estimate_density
.add_prior_layer_ridgeline <- function(model, parameter = NULL, show_intercept = FALSE, priors_alpha = .5, fill_color = NULL) {
  dat <- tryCatch(
    {
      priors <- bayestestR::simulate_prior(model)
      dens <- bayestestR::estimate_density(priors)

      # remove parameters
      if (!is.null(parameter)) {
        dens <- dens[dens$Parameter == parameter, ]
      }

      # limit xrange, to avoid overly wide plots
      x_range <- stats::median(dens$x) + 7 * stats::mad(dens$x) * c(-1, 1)

      remove <- which(dens$x <= x_range[1] | dens$x >= x_range[2])
      if (length(remove)) dens <- dens[-remove, ]

      # remove intercept from output, if requested
      .remove_intercept(dens, column = "Parameter", show_intercept)
    },
    error = function(e) { NULL }
  )

  if (!is.null(dat)) {
    if (!is.null(fill_color)) {
      ggridges::geom_ridgeline(
        data = dat,
        mapping = aes(
          x = .data$x,
          y = as.factor(.data$Parameter),
          height = .data$y,
          group = as.factor(.data$Parameter),
        ),
        fill = fill_color,
        alpha = priors_alpha
      )
    } else {
      ggridges::geom_ridgeline(
        data = dat,
        mapping = aes(
          x = .data$x,
          y = as.factor(.data$Parameter),
          height = .data$y,
          group = as.factor(.data$Parameter),
          fill = "Priors"
        ),
        alpha = priors_alpha
      )
    }
  }
}





#' @importFrom ggridges geom_ridgeline_gradient
#' @importFrom stats median mad
#' @importFrom bayestestR simulate_prior estimate_density
.add_prior_layer_ribbon <- function(model, parameter = NULL, show_intercept = FALSE, priors_alpha = .5, fill_color = NULL) {
  dat <- tryCatch(
    {
      priors <- bayestestR::simulate_prior(model)
      dens <- bayestestR::estimate_density(priors)

      # remove parameters
      if (!is.null(parameter)) {
        dens <- dens[dens$Parameter == parameter, ]
      }

      # limit xrange, to avoid overly wide plots
      x_range <- stats::median(dens$x) + 7 * stats::mad(dens$x) * c(-1, 1)

      remove <- which(dens$x <= x_range[1] | dens$x >= x_range[2])
      if (length(remove)) dens <- dens[-remove, ]

      # remove intercept from output, if requested
      .remove_intercept(dens, column = "Parameter", show_intercept)
    },
    error = function(e) { NULL }
  )

  if (!is.null(dat)) {
    if (!is.null(fill_color)) {
      geom_ribbon(
        data = dat,
        mapping = aes(
          x = .data$x,
          ymin = 0,
          ymax = .data$y,
          group = as.factor(.data$Parameter),
        ),
        fill = fill_color,
        alpha = priors_alpha
      )
    } else {
      geom_ribbon(
        data = dat,
        mapping = aes(
          x = .data$x,
          ymin = 0,
          ymax = .data$y,
          group = as.factor(.data$Parameter),
          fill = "Prior"
        ),
        alpha = priors_alpha
      )
    }
  }
}