% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/table_elements.R
\name{add_title}
\alias{add_title}
\title{Add a title above a reactable table}
\usage{
add_title(
  table = NULL,
  title = NULL,
  align = "left",
  font_color = "#000",
  font_family = "-apple-system,BlinkMacSystemFont,Helvetica,Arial,sans-serif",
  font_size = 32,
  font_style = "normal",
  font_weight = "bold",
  text_decoration = NULL,
  background_color = "#FFFFFF",
  margin = 2
)
}
\arguments{
\item{table}{A reactable table.}

\item{title}{A string to be displayed as the title.}

\item{align}{The alignment of the table.
Options are "left", "right", "center".
Default is "left".}

\item{font_color}{Color of the title text.
Default is #000.}

\item{font_family}{Font family of the title.
Default is -apple-system, BlinkMacSystemFont, Helvetica, Arial, sans-serif.}

\item{font_size}{Numeric value representing the size of the font of the title (in px).
Default is 32.}

\item{font_style}{Style of the title font.
Options are "normal" or "italic".
Default is "normal".}

\item{font_weight}{The font weight of the title.
Options are "bold" or "normal".
Default is "bold".}

\item{text_decoration}{Optionally add an underline, overline, or line-through title.
Options are "underline", "overline", "underline overline", or "line-through".
Default is NULL.}

\item{background_color}{Color of the title background.
Default is #FFFFFF.}

\item{margin}{Numeric value representing the four-sided margin around the title (in px).
Default is 2.}
}
\value{
a function that adds a title above a reactable table.
}
\description{
Use `add_title()` to place a title above a {reactable} or {reactablefmtr} table.
     The title can be aligned to the left, right, or center with the align option.
     The text properties of the title, such as the font size, font family, and font style can be customized.
     The background color of the title can also be adjusted as well as the margin around the title.
}
\examples{
\dontrun{
## Create the reactable table and then pipe in the title
table <- reactable(iris[10:29, ])

table \%>\%
  add_title("This is a title")

## Use options to adjust the style and position of the title
table \%>\%
  add_title("This is a title", align = "center", font_color = "red")
}
}
