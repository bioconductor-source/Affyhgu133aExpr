\name{Affyhgu133aExpr}
\alias{Affyhgu133aExpr}
\docType{data}
\title{
Data of human gene expression profiles from the Affymetrix Human hgu133a Array (GPL96).
}
\description{
The data set contains 11778 human profiles on 12495 genes downloaded from NCBI GEO. Gene expression data were preprocessed and normalized consistently using fRMA. Gene expression values are further standardized using gene expression barcode approach. The biological context of each sample was recorded and manually verified based on the sample description in GEO. The gene expression value matrix is stored in hdf5 format using rhdf5 package.
}
\details{

This data package contains expression values of 12495 genes and 11778 samples measurements 11778 samples measurements from NCBI GEO obtained using the GPL96 platform. Gene expression data were preprocessed and normalized consistently using fRMA. Gene expression values were further standardized using gene expression barcode approach. Probeset with the largest coefficient of variaction from all probesets that corresponds to the same gene is retained, so that each gene uniquely matches to one row in the database. The biological context of each sample was also recorded and manually verified based on the sample description in GEO.
To enhance the reading speed of the dataset, the gene expression value matrix is stored in a hdf5 format using rhdf5 package. The rows of the matrix represents samples and the columns of the matrix represent genes. Notice that all values are 1000 times the actual value so that the values can be stored as integers to minimize file size and reading time. The package is specifically designed to be manipulated by GSCA package so users are not expected to read the expression values by themselves.
The sample id, sample type, and experiment id for each sample in the gene expression compendium are also included in this data package.

}
\source{
www.ncbi.nlm.nih.gov/geo/
}
\references{
McCall M.N., Bolstad B.M., and Irizarry R.A. (2010) Frozen robust multiarray analysis (fRMA). Biostatistics 11, 242-253.

McCall, M. N., Uppal, K., Jaffee, H. A., Zilliox, M. J., & Irizarry, R. A. (2011). The Gene Expression Barcode: leveraging public data repositories to begin cataloging the human and murine transcriptomes. Nucleic acids research, 39(suppl 1), D1011-D1015.

Barrett T., et al. (2007) NCBI GEO: mining tens of millions of expression profiles - database and tools update. Nuscl. Acids Res. 35, D760-D765.
}

\keyword{datasets,GPL96,database,Affyhgu133aExpr}

