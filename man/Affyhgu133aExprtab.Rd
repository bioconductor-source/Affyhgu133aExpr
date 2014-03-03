\name{Affyhgu133aExprtab}
\alias{Affyhgu133aExprtab}
\docType{data}
\title{
Reference table for Affyhgu133aExpr gene expression compendium
}
\description{
Contains the sample id, sample type, and experiment id for each sample in the Affymetrix Human hgu133a Array (GPL96) gene expression compendium.
}
\usage{data(Affyhgu133aExprtab)}
\format{
  A data frame with 11778 observations on the following 3 variables.
  \describe{
    \item{\code{SampleID}}{a character vector}
    \item{\code{ExperimentID}}{a character vector}
    \item{\code{SampleType}}{a character vector}
  }
}
\details{
SampleID is a GSM ID that NCBI GEO uses to as a sample identifier. ExperimentID is a GEO ID that NCBI GEO uses to identify an experiment. SampleType denotes the cell type or tissue and whether the sample is given a specific treatment or in a specific condition. 
}
\source{
www.ncbi.nlm.nih.gov/geo/
}
\references{
McCall M.N., Bolstad B.M., and Irizarry R.A. (2010) Frozen robust multiarray analysis (fRMA). Biostatistics 11, 242-253.

McCall, M. N., Uppal, K., Jaffee, H. A., Zilliox, M. J., & Irizarry, R. A. (2011). The Gene Expression Barcode: leveraging public data repositories to begin cataloging the human and murine transcriptomes. Nucleic acids research, 39(suppl 1), D1011-D1015.

Barrett T., et al. (2007) NCBI GEO: mining tens of millions of expression profiles - database and tools update. Nucl. Acids Res. 35, D760-D765.
}
\examples{
## Load the reference table
data(Affyhgu133aExprtab)
str(Affyhgu133aExprtab)
}
\keyword{datasets, Affyhgu133aExprtab}

