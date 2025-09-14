#' Set theme + defaults for the current session
#' @param caption default caption text (or NULL to skip)
#' @param set_geom_defaults Whether to use use_chris_geom_defaults or not
#' @export
use_chris <- function(caption = "caprosser.com", set_geom_defaults = TRUE) {
  if (!is.null(caption)) options(chris.caption = caption)
  ggplot2::theme_set(theme_chris())
  if (set_geom_defaults) use_chris_geom_defaults()
  invisible(TRUE)
}
