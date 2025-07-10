#' Display a named color palette
#'
#' @importFrom graphics barplot mtext par text
#' @importFrom grDevices col2rgb
#' @param name The name of the palette (e.g., "primary", "blacks").
#' @export
show_palette <- function(name = "primary") {
  pal <- get_palette(name)  # assumes you've renamed get_vincent_palette() to get_palette()
  n <- length(pal)

  # Build combined label: name + hex
  labels <- if (!is.null(names(pal))) {
    paste0(names(pal), "\n", pal)
  } else {
    pal
  }

  op <- par(mar = c(0, 0, 2, 0))
  barplot(
    height = rep(1, n),
    col = pal,
    names.arg = rep("", n),
    border = "white",
    space = 0,
    axes = FALSE
  )
  mtext(paste("Palette:", name), side = 3, line = 1, cex = 1.2)

  # Centered labels inside bars, with automatic contrast
  text(
    x = seq(0.5, by = 1, length.out = n),
    y = 0.5,
    labels = labels,
    cex = 0.8,
    col = ifelse(colMeans(col2rgb(pal)) > 150, "black", "white")
  )
  par(op)
}
