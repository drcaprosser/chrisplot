#' Custom ggplot theme
#'
#' My pretty ggplot theme, based on `theme_bw()`, with theme-level palettes (ggplot2 >= 4.0.0)
#'
#' @param base_family base font family
#' @param base_size text size
#' @param bg_panel panel background colour
#' @param bg_plot plot background colour
#' @param text_col text colour
#' @param grid_col gridlines colour
#' @param strip_bg facet strip background colour
#' @param strip_col facet strip outline colour
#' @param box_col plot border colour
#' @export
theme_chris <- function(
    base_family = "Source Sans 3",
    base_size   = 11,
    bg_panel    = "#f8fafc",
    bg_plot     = "#f8fafc",
    text_col    = "#0F172A",
    grid_col    = "#d4e0ec",
    strip_bg    = "#d4e0ec",
    strip_col   = "#d4e0ec",
    box_col     = "#d4e0ec"
){
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +

    ggplot2::theme(
      # backgrounds and grids
      plot.background   = ggplot2::element_rect(fill = bg_plot,  colour = NA),
      panel.background  = ggplot2::element_rect(fill = bg_panel, colour = NA),
      panel.spacing     = grid::unit(1.0, "lines"),
      panel.border      = ggplot2::element_rect(colour = box_col, fill = NA, linewidth = .5),
      panel.grid.major.x= ggplot2::element_line(colour = grid_col, linewidth = 0.2, linetype = "solid"),
      panel.grid.major.y= ggplot2::element_line(colour = grid_col, linewidth = 0.2, linetype = "solid"),                                  # ⟵
      panel.grid.minor  = ggplot2::element_blank(),
      # text
      text             = ggplot2::element_text(colour = text_col),
      plot.title       = ggplot2::element_text(face = "bold", size = ggplot2::rel(1.25)),
      plot.subtitle    = ggplot2::element_text(margin = ggplot2::margin(b = (base_size / 2) * 0.6), face = "italic"),
      plot.caption     = ggplot2::element_text(colour = scales::alpha(text_col, 0.7), size = ggplot2::rel(0.9), hjust = 1),
      plot.caption.position = "plot",
      # axes
      axis.title       = ggplot2::element_text(),
      axis.text        = ggplot2::element_text(),
      axis.ticks = ggplot2::element_line(colour = box_col, linewidth = 0.2, lineend = "round"),
      # legend
      legend.position  = "bottom",
      legend.title     = ggplot2::element_text(face = "bold"),
      legend.key       = ggplot2::element_rect(fill = bg_panel, colour = NA),
      legend.background = ggplot2::element_rect(fill = bg_panel, colour = NA),
      # strips
      strip.background = ggplot2::element_rect(fill = strip_bg, colour = strip_col),
      strip.text       = ggplot2::element_text(face = "bold", size = ggplot2::rel(1)),
      # colours
      palette.colour.discrete = chris_palette,
      palette.fill.discrete = chris_palette,
      palette.colour.continuous = c(chris_palette[1], chris_palette[3], chris_palette[4]),
      palette.fill.continuous = c(chris_palette[1], chris_palette[3], chris_palette[4]),
    )
}




