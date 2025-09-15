#' A plain version of theme_chris
#'
#' Just calls [theme_chris()] with plain defaults (white bg, black text, grey grid).
#'
#' @inheritParams theme_chris
#' @param ... Forwarded to [theme_chris()] (e.g., `title_family`, `base_size`, etc.)
#' @export
theme_academic <- function(
    base_family = "Inter",
    base_size   = 11,
    ...,
    bg_panel    = "white",
    bg_plot     = "white",
    text_col    = "black",
    grid_col    = "grey70",
    strip_bg    = NA,
    strip_col   = NA,
    box_col     = "grey30"
) {
  theme_chris(
    base_family = base_family,
    base_size   = base_size,
    ...,
    bg_panel    = bg_panel,
    bg_plot     = bg_plot,
    text_col    = text_col,
    grid_col    = grid_col,
    strip_bg    = strip_bg,
    strip_col   = strip_col,
    box_col     = box_col
  )
}
