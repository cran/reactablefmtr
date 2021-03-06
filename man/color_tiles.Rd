% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/color_tiles.R
\name{color_tiles}
\alias{color_tiles}
\title{Add color tiles to cells in a column}
\usage{
color_tiles(
  data,
  colors = c("#67a9cf", "#f8fcf8", "#ef8a62"),
  color_ref = NULL,
  opacity = 1,
  number_fmt = NULL,
  text_color = "black",
  show_text = TRUE,
  brighten_text = TRUE,
  brighten_text_color = "white",
  bold_text = FALSE,
  span = FALSE
)
}
\arguments{
\item{data}{Dataset containing at least one numeric column.}

\item{colors}{A vector of colors to color the cells.
Colors should be given in order from low values to high values.
Default colors provided are blue-white-orange: c("#67a9cf", "#f8fcf8", "#ef8a62").
Can use R's built-in colors or other color packages.}

\item{color_ref}{Optionally assign colors to from another column
by providing the name of the column containing the colors in quotes.
Only one color can be provided per row.
Default is NULL.}

\item{opacity}{A value between 0 and 1 that adjusts the opacity in colors.
A value of 0 is fully transparent, a value of 1 is fully opaque.
Default is 1.}

\item{number_fmt}{Optionally format numbers using formats from the scales package.
Default is set to NULL.}

\item{text_color}{Assigns text color to values.
Default is black.}

\item{show_text}{Logical: show text or hide text.
Default is TRUE.}

\item{brighten_text}{Logical: automatically assign color to text based on background color of cell.
Text within dark-colored backgrounds will turn white, text within light-colored backgrounds will be black.
Default is TRUE.}

\item{brighten_text_color}{Assigns text color to values if values are within a dark-colored backgrounds.
Default is white.}

\item{bold_text}{Logical: bold text.
Default is FALSE.}

\item{span}{Optionally apply colors to values across multiple columns instead of by each column.
To apply across all columns set to TRUE.
If applying to a set of columns, can provide either column names or column positions.
Default is set to FALSE.}
}
\value{
a function that applies conditional color tiles
    to a column of numeric values.
}
\description{
The `color_tiles()` function conditionally colors the background of each cell similarly to color_scales().
    The difference is that color_tiles() uses round colored tiles around values instead of the entire background of the cell.
    Another difference is color_tiles() allows number formatting with number_fmt whereas color_scales() does not.
    The colors can be provided within a vector in `colors` or via another column in the dataset by referencing the column by name with `color_ref`.
    The opacity of the colors provided can be adjusted by providing a value between 0 and 1 in `opacity`.
    `text_color` can be used to change the color of the values.
    If values are displayed within a dark-colored background, `brighten_text` will display the values in white text so they are more visible.
    The color of `brighten_text_color` can be changed to a color other than white if desired.
    If the user wants to assign colors row-wise instead of column-wise, set `span` equal to TRUE to apply across all columns.
    Or can provide the names of the columns by either column name or column position number to apply to only a subset of the columns.
    `color_tiles()` needs to placed within the cell argument in reactable::colDef.
}
\examples{
data <- iris[10:29, ]

## By default, the colors_tiles() function uses a blue-white-orange three-color pattern
reactable(data,
 columns = list(
 Petal.Length = colDef(cell = color_tiles(data))))

## If only two colors are desired,
## you can specify them with colors = 'c(color1, color2)';
reactable(data,
 columns = list(
 Petal.Length = colDef(cell = color_tiles(data,
 colors = c("red", "green")))))

## Use span to apply colors to values in relation to the entire dataset
reactable(data,
defaultColDef = colDef(cell = color_tiles(data, span = TRUE)))

## Use number_fmt to format numbers using the scales package
car_prices <- MASS::Cars93[20:49, c("Make", "Price")]

reactable(car_prices,
defaultColDef = colDef(cell = color_tiles(car_prices,
number_fmt = scales::dollar)))

## Use span to apply colors to values in relation to the entire dataset
reactable(data,
defaultColDef = colDef(cell = color_tiles(data, span = TRUE)))

## Span can take column names
reactable(data,
defaultColDef = colDef(cell = color_tiles(data, span = c("Sepal.Length", "Sepal.Width"))))

## Or it can also take column positions instead
reactable(data,
defaultColDef = colDef(cell = color_tiles(data, span = 1:2)))

}
