\name{Affyhgu133aExprtab}
\alias{Affyhgu133aExprtab}
\docType{data}
\title{
Reference table for Affyhgu133a gene expression compendium
}
\description{
Contains the sample name, sample id, sample type, and experiment id for each sample in the Affymetrix Human hgu133a Array (GPL96) gene expression compendium.
}
\usage{data(Affyhgu133aExprtab)}
\format{
  A data frame with 13182 observations on the following 4 variables.
  \describe{
    \item{\code{SampleName}}{a character vector}
    \item{\code{SampleID}}{a character vector}
    \item{\code{ExperimentID}}{a character vector}
    \item{\code{SampleType}}{a character vector}
  }
}
\details{
The sample name is a .CEL.gz file name for the downloaded source file. SampleID is a GSM ID that NCBI GEO uses to as a sample identifier. ExperimentID is a GEO ID that NCBI GEO uses to identify an experiment. SampleType denotes the cell type or tissue and whether the sample is given a specific treatment or in a specific condition. 
}
\source{
www.ncbi.nlm.nih.gov/geo/
}
\references{
McCall M.N., Bolstad B.M., and Irizarry R.A. (2010) Frozen robust multiarray analysis (fRMA). Biostatistics 11, 242-253.

Barrett T., et al. (2007) NCBI GEO: mining tens of millions of expression profiles - database and tools update. Nucl. Acids Res. 35, D760-D765.
}
\examples{
## Load the reference table
data(Affyhgu133aExprtab)
str(Affyhgu133aExprtab)
}
\keyword{datasets, Affyhgu133aExprtab}
