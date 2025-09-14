#' Add a default note to the plot caption
#' @param text Caption text
#' @param sep Separator
#' @param append Append to exising caption or not
#' @export
chris_note <- function(text = getOption("chris.caption", "caprosser.com"),
                       sep = " | ", append = TRUE) {
  structure(list(text = text, sep = sep, append = append), class = "chris_note")
}

# internal shared implementation
.chris_note_update <- function(object, plot) {
  cur <- if (is.null(plot$labels$caption)) "" else plot$labels$caption
  new <- if (nzchar(cur) && isTRUE(object$append)) {
    paste0(cur, object$sep, object$text)
  } else if (nzchar(cur)) {
    cur
  } else {
    object$text
  }
  plot + ggplot2::labs(caption = new)
}
