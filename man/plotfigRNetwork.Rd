% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FigR.R
\name{plotfigRNetwork}
\alias{plotfigRNetwork}
\title{Plot FigR Network}
\usage{
plotfigRNetwork(
  figR.d,
  score.cut = 1,
  DORCs = NULL,
  TFs = NULL,
  weight.edges = FALSE
)
}
\arguments{
\item{figR.d}{data.frame of results returned by \code{\link[FigR]{runFigRGRN}})}

\item{score.cut}{numeric specifying the absolute regulation score to threshold TF-DORC connections on. Default is 1}

\item{DORCs}{character specifying valid DORC gene symbols to subset heatmap to. Default is NULL (no subsetting)}

\item{TFs}{character specifying valid TF gene symbols to subset heatmap to. Default is NULL (no subsetting)}

\item{weight.edge}{boolean specifying whether or not to weight edges by FigR regulation score. Default is FALSE}
}
\value{
a network plot of the resulting filtered TF-DORC associations
}
\description{
Network visualization of TF-DORC associations based on the regulation scores inferred by FigR
}
\author{
Vinay Kartha
}
