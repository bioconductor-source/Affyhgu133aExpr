\name{Affyhgu133aExpr}
\alias{Affyhgu133aExpr}
\docType{data}
\title{
Data of human gene expression profiles from the Affymetrix Human hgu133a Array (GPL96).
}
\description{
The data set contains 13182 human profiles on 12704 genes downloaded from NCBI GEO. Gene expression data were preprocessed and normalized consistently using fRMA. The biological context of each sample was recorded and manually verified based on the sample description in GEO. Expression profiles of the 12704 genes are stored as vectors of length 13182 in separate .rda files (with xz compression).
}
\details{

This data package contains 12704 .rda files with xz compression. Each .rda file contains the gene expression vector of length 13182 for the gene ID represented by its file name, and the vector consists of 13182 samples measurements from NCBI GEO obtained using the GPL96 platform. After the data is processed and normalized consistently with frma, all probesets that corresponds to the same gene are averaged, such that each gene uniquely matches to one row in the database. The biological context of each sample was also recorded and manually verified based on the sample description in GEO. The sample name, sample id, sample type, and experiment id for each sample in the gene expression compendium are also included in this data package.

}
\source{
www.ncbi.nlm.nih.gov/geo/
}
\references{
McCall M.N., Bolstad B.M., and Irizarry R.A. (2010) Frozen robust multiarray analysis (fRMA). Biostatistics 11, 242-253.

Barrett T., et al. (2007) NCBI GEO: mining tens of millions of expression profiles - database and tools update. Nuscl. Acids Res. 35, D760-D765.
}
\examples{

## GSCA will automatically read in the necessary gene expression data according to given input.
## Thus, normally users do not need to read in the data themselves.

## To manually read in gene expression data, for example Entrez GeneID 2:
geneid <- 2
path <- system.file("extdata",package="Affyhgu133aExpr")
load(paste0(path,"/",geneid,".rda"))
## The expression vector named "Expr" is read in

## To read in gene expression data of multiple Entrez GeneID:
## This function represents select() interface in most Bioconductor annotation packages
hgu133asearch <- function(geneid) {
exprdat <- matrix(0,nrow=length(geneid),ncol=13182)
path <- system.file("extdata",package="Affyhgu133aExpr")
for (i in 1:length(geneid)) {
      load(paste0(path,"/",geneid[i],".rda"))
      exprdat[i,] <- Expr
}
return(exprdat)
}
## Run the function on desired genes, for example Entrez GeneID 2,9,10,12
Exprgeneset <- hgu133asearch(c(2,9,10,12))
str(Exprgeneset)
## Which returns a matrix of 4 rows and 13182 columns containing the expression profiles of the 4 genes

## To check all Entrez GeneID included in the data package:
path <- system.file("extdata",package="Affyhgu133aExpr")
sub(".rda","",list.files(path))

## To check the reference table which contains
## sample name, sample id, sample type, and experiment id for each sample
data(Affyhgu133aExprtab)
str(Affyhgu133aExprtab)

## Add sample name to expression data
colnames(Exprgeneset) <- Affyhgu133aExprtab$SampleName

}
\keyword{datasets,GPL96,database,Affyhgu133aExpr}
