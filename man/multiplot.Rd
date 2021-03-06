% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers.R
\name{multiplot}
\alias{multiplot}
\title{plots multiple ggplot plots in a grid}
\usage{
multiplot(..., plotlist = NULL, cols = 1, layout = NULL)
}
\arguments{
\item{...}{list of ggplot2 objects to plot}

\item{plotlist}{A list of plots to add to}

\item{cols}{the number of columns in the resulting plot grid}

\item{layout}{custom layout design If the layout is something like
matrix(c(1,2,3,3), nrow=2, byrow=TRUE), then plot 1 will go in the upper
left, 2 will go in the upper right, and 3 will go all the way across the
bottom.}
}
\value{
plots the ggplots
}
\description{
Copied directly from: http://www.cookbook-r.com/Graphs/Multiple_graphs_on_one_page_(ggplot2)/
}

