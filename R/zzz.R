.onLoad <- function(libname, pkgname) {
  # ensure namespaces are loaded
  if (!requireNamespace("ggplot2", quietly = TRUE) ||
      !requireNamespace("S7", quietly = TRUE)) return()

  gg_ns <- asNamespace("ggplot2")
  update_ggplot <- get("update_ggplot", envir = gg_ns)
  class_ggplot  <- get("class_ggplot",  envir = gg_ns)

  S7::method(
    update_ggplot,
    list(S7::new_S3_class("chris_note"), class_ggplot)
  ) <- function(object, plot, ...) {
    .chris_note_update(object, plot)

 use_chris_geom_defaults()

  }
}


.onLoad <- function(libname, pkgname) {

  packageStartupMessage("chrisplot:")
  packageStartupMessage("Masking ggplot2 geoms to default lineend = 'round'.")
  packageStartupMessage("Updating geom defaults")

}


