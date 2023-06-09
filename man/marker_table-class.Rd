% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllClasses.R
\docType{class}
\name{marker_table-class}
\alias{marker_table-class}
\title{The S4 class for storing microbiome marker information}
\description{
This Class is inherit from \code{data.frame}. Rows represent the microbiome
markers and variables represents feature of the marker.
}
\section{Fields}{

\describe{
\item{\code{names,row.names}}{a character vector, inherited from the input
data.frame}

\item{\code{.data}}{a list, each element corresponding the each column of the
input data.frame}

\item{\code{.S3Class}}{character, the S3 class \code{marker_table} inherited from:
"\code{data.frame}"}
}}

\author{
Yang Cao
}
