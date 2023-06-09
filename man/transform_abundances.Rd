% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transform.R
\name{transform_abundances}
\alias{transform_abundances}
\title{Transform the taxa abundances in \code{otu_table} sample by sample}
\usage{
transform_abundances(object, transform = c("identity", "log10", "log10p"))
}
\arguments{
\item{object}{\code{\linkS4class{otu_table}}, \code{\linkS4class{phyloseq}}, or
\code{\linkS4class{microbiomeMarker}}.}

\item{transform}{transformation to apply, the options inclulde:
\itemize{
\item "identity", return the original data without any transformation.
\item "log10", the transformation is \code{log10(object)}, and if the data contains
zeros the transformation is \code{log10(1 + object)}.
\item "log10p", the transformation is \code{log10(1 + object)}.
}}
}
\value{
A object matches the class of argument \code{object} with the transformed
\code{otu_table}.
}
\description{
Transform the taxa abundances in \code{otu_table} sample by sample, which means
the counts of each sample will be transformed individually.
}
\examples{
data(oxygen)
x1 <- transform_abundances(oxygen)
head(otu_table(x1), 10)
x2 <- transform_abundances(oxygen, "log10")
head(otu_table(x2), 10)
x3 <- transform_abundances(oxygen, "log10p")
head(otu_table(x3), 10)
}
\seealso{
\code{\link[=abundances]{abundances()}}
}
