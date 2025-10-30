#' Register Source Sans 3 for plotting (strict)
#'
#' Called automatically on package load; errors if fonts are missing.
#' You can also call it manually to re-register after clearing devices.
#' @export
register_source_sans <- function() {
  if (!requireNamespace("sysfonts", quietly = TRUE) ||
      !requireNamespace("showtext", quietly = TRUE)) {
    stop("Please install 'sysfonts' and 'showtext' for chrisplot: ",
         "install.packages(c('sysfonts','showtext'))", call. = FALSE)
  }

  font_dir <- system.file("fonts", package = "chrisplot")
  if (!nzchar(font_dir)) {
    stop("No packaged fonts found. Expected inst/fonts/ in chrisplot.", call. = FALSE)
  }

  files <- c("SourceSans3-Regular.ttf",
             "SourceSans3-Bold.ttf",
             "SourceSans3-Italic.ttf",
             "SourceSans3-BoldItalic.ttf")
  miss <- files[!file.exists(file.path(font_dir, files))]
  if (length(miss)) {
    stop("Missing font files in ", font_dir, ":\n  - ",
         paste(miss, collapse = "\n  - "),
         "\nAdd TTFs to inst/fonts/ and reinstall chrisplot.", call. = FALSE)
  }

  sysfonts::font_add(
    family    = "Source Sans 3",
    regular    = file.path(font_dir, "SourceSans3-Regular.ttf"),
    bold       = file.path(font_dir, "SourceSans3-Bold.ttf"),
    italic     = file.path(font_dir, "SourceSans3-Italic.ttf"),
    bolditalic = file.path(font_dir, "SourceSans3-BoldItalic.ttf")
  )
  showtext::showtext_auto()
  invisible("Source Sans 3")
}
