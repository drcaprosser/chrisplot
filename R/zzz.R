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
  }

  use_chris_geom_defaults()

}


.onAttach <- function(libname, pkgname) {

  packageStartupMessage("chrisplot:")
  packageStartupMessage("Masking ggplot2 geoms to default lineend = 'round'.")
  packageStartupMessage("Updating geom defaults")

  # Soft dependency: only try if available; otherwise tell the user plainly.
  if (!requireNamespace("sysfonts", quietly = TRUE) ||
      !requireNamespace("showtext", quietly = TRUE)) {
    packageStartupMessage(
      "chrisplot: install 'sysfonts' and 'showtext' to enable Source Sans 3 in plots.\n",
      "  install.packages(c('sysfonts','showtext'))"
    )
    return(invisible())
  }
  # Strict: error if fonts missing
  tryCatch(
    register_source_sans(),
    error = function(e) stop("chrisplot: ", conditionMessage(e), call. = FALSE)
  )

}


