% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DORCs.R
\name{runGenePeakcorr}
\alias{runGenePeakcorr}
\title{Gene-Peak correlations used for calling domains of regulatory chromatin (DORCs)}
\usage{
runGenePeakcorr(
  ATAC.se,
  RNAmat,
  genome,
  geneList = NULL,
  windowPadSize = 50000,
  normalizeATACmat = TRUE,
  nCores = 4,
  keepPosCorOnly = TRUE,
  keepMultiMappingPeaks = FALSE,
  n_bg = 100,
  p.cut = NULL
)
}
\arguments{
\item{ATAC.se}{SummarizedExperiment object of the scATAC-seq reads in peak counts.}

\item{RNAmat}{Matrix object of the normalized scRNA-seq counts. For example, this will be the normalized count data housed within the `@assays$RNA@data` field if processed using Seurat. Must have same number of cells (i.e. matched) with the scATAC-seq data}

\item{genome}{character specifying the reference genome build to use. Must be one of "hg19", "hg38" or "mm10", with no default}

\item{normalizeATACmat}{boolean indicating whether or not to normalize the counts present in the ATAC.se object prior to computing correlations. Default is TRUE (i.e. assumes peak counts in ATAC.se are raw)}

\item{nCores}{numeric indicating the number of cores to use if parallelizing tasks}

\item{keepPosCorOnly}{boolean indicating whether to only filter for positively correlated gene-peak associations (and hence assumes performing a right-tailed Z-test with permuted correlations). Default is TRUE (only keep positively correlated associations)}

\item{keepMultiMappingPeaks}{boolean indicating whether or not to keep peaks mapping to more than 1 gene. Default is FALSE (i.e. force 1-1 mapping for peak-gene, keeping peak with higher correlation if mapping to more than one gene)}

\item{n_bg}{numeric indicating the number of background correlations to compute per gene-peak pair. Default is 100 (increasing this can significantly increase run time)}

\item{p.cut}{numeric indicating p-value cut-off to apply to gene-peak correlations. Default is NULL (i.e. don't apply any filtering of results). Good option is to set to 0.05}

\item{TSSwindow}{numeric specifying the window size (in base pairs) to pad around either side of each TSS, to fetch overlapping peaks. Default is 50 kb (so 100 kb window is drawn arund each TSS)}
}
\value{
a data.frame of correlations for each gene-peak overlap pair, with the observed correlation level and significance p-value based on background correlations per pair
}
\description{
Function to compute correlation between RNA expression and peak accessibility for peaks falling within a window around each gene, across single cells, using background peak correlations for significance testing
}
\author{
Vinay Kartha
}
