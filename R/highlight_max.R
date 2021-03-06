#' Highlights the maximum value in a column
#'
#' The `highlight_max()` function assigns a font color and/or background color to the maximum value in a column.
#'     It should be placed within the style argument in reactable::colDef.
#'
#' @param data Dataset containing at least one numeric column.
#'
#' @param font_color color to assign to maximum value in a column.
#'     Default color is green.
#'
#' @param highlighter color to assign the background of a cell containing maximum value in a column.
#'
#' @return a function that applies a color
#'     to the maximum value in a column of numeric values.
#'
#' @import reactable
#'
#' @examples
#' data <- MASS::road[11:17, ]
#'
#' ## By default, the maximum value is bold with a green font color
#' reactable(data,
#' defaultColDef = colDef(
#'     style = highlight_max(data)))
#'
#' ## Assign a different font color
#' reactable(data,
#' defaultColDef = colDef(
#'     style = highlight_max(data,
#'     font_color = "red")))
#'
#' ## Highlight the background of the cell for the maximum value in each column
#' reactable(data,
#' defaultColDef = colDef(
#'     style = highlight_max(data,
#'     highlighter = "yellow")))
#'
#' @export


highlight_max <- function(data, font_color = "green", highlighter = NULL) {

  style <- function(value, index, name) {

    if (!is.numeric(value)) {

      return(value)

    } else if (!is.na(value) && value == max(data[[name]], na.rm = TRUE)) {

      list(fontWeight = "bold", color = font_color, background = highlighter)
    }
  }
}
