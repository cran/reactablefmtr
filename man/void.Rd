% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/themes.R
\name{void}
\alias{void}
\title{Theme void}
\usage{
void(
  font_family = "Verdana",
  font_size = 14,
  font_color = "#222222",
  header_font_family = "Verdana",
  header_font_size = 15,
  header_font_color = "transparent",
  cell_padding = 6
)
}
\arguments{
\item{font_family}{Font family for the text within the table.
Default is Verdana.}

\item{font_size}{Numeric value representing the size of the font within the table (in px).
Default is 14.}

\item{font_color}{Color of the font for the text within the table.
Default is #222222.}

\item{header_font_family}{Font family for the header text.
Default is Verdana.}

\item{header_font_size}{Numeric value representing the size of the font within the table (in px).
Default is 15.}

\item{header_font_color}{Color of the font for the header text.
Default is transparent}

\item{cell_padding}{Numeric value representing the padding size between cells (in px).
Default is 6.}
}
\value{
an object of class theme that is applied to a reactable table.
}
\description{
A table style completely void of borders and headers
}
\examples{
data <- iris[10:29, ]

## Standard void theme
reactable(data,
          theme = void())

## Cerulean theme with additional options applied
reactable(data,
          theme = void(font_size = 12, font_color = "grey", cell_padding = 3))

}
