#' Update geom defaults to nicer defaults
#' Use `reset_geom_defaults()` to reset
#'
#' @export
use_chris_geom_defaults <- function() {
  ggplot2::update_geom_defaults("point", list(size = 2))
  ggplot2::update_geom_defaults("line",  list(linewidth = 0.7, lineend = "round"))
  ggplot2::update_geom_defaults("col",   list(linewidth = 0))
  ggplot2::update_geom_defaults("bar",   list(linewidth = 0))
  ggplot2::update_geom_defaults("errorbar",   list(width = 0))
  ggplot2::update_geom_defaults("ribbon",   list(linewidth = 0, alpha = .25))
  ggplot2::update_geom_defaults("area",   list(linewidth = 0, alpha = 1))
  ggplot2::update_geom_defaults("vline",   list(linewidth = 0.5, colour = "grey50", linetype = "22"))
  ggplot2::update_geom_defaults("hline",   list(linewidth = 0.5, colour = "grey50", linetype = "22"))

  invisible(TRUE)
}

