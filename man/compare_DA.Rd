% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DA-comparing.R
\name{compare_DA}
\alias{compare_DA}
\title{Comparing the results of differential analysis methods by Empirical power
and False Discovery Rate}
\usage{
compare_DA(
  ps,
  group,
  taxa_rank = "none",
  methods,
  args = list(),
  n_rep = 20,
  effect_size = 5,
  k = NULL,
  relative = TRUE,
  BPPARAM = BiocParallel::SnowParam(progressbar = TRUE)
)
}
\arguments{
\item{ps, group, taxa_rank}{main arguments of all differential analysis
methods. \code{ps}: a \code{\link[phyloseq:phyloseq-class]{phyloseq::phyloseq}} object; \code{group}, character,
the variable to set the group, must be one of the var of the sample
metadata; \code{taxa_rank}: character, taxonomic rank, please not that \strong{since
the abundance table is spiked in the lowest level, only
\code{taxa_rank = "none"} is allowed}.}

\item{methods}{character vector, differential analysis methods to be
compared, available methods are "aldex", "ancom", "ancombc", "deseq2",
"edger", "lefse", "limma_voom", "metagenomeseq", "simple_stat".}

\item{args}{named list, which used to set the extra arguments of the
differential analysis methods, so the names must be contained in \code{methods}.
For more see details below.}

\item{n_rep}{integer, number of times to run the differential analyses.}

\item{effect_size}{numeric, the effect size for the spike-ins. Default 5.}

\item{k}{numeric vector of length 3, number of features to spike in each
tertile (lower, mid, upper), e.g. \code{k=c(5,10,15)} means 5 features spiked
in low abundance tertile, 10 features spiked in mid abundance tertile and
15 features spiked in high abundance tertile. Default \code{NULL}, which will
spike 2 percent of the total amount of features in each tertile (a total
of 6 percent), but minimum c(5,5,5).}

\item{relative}{logical, whether rescale the total number of individuals
observed for each sample to the original level after spike-in. Default
\code{TRUE}.}

\item{BPPARAM}{\code{\link[BiocParallel:BiocParallelParam-class]{BiocParallel::BiocParallelParam}} instance defining the
parallel back-end.}
}
\value{
an \code{compareDA} object, which contains a two-length list of:
\itemize{
\item \code{metrics}: \code{data.frame}, FPR, AUC and spike detection rate for each run.
\item \code{mm}: differential analysis results.
}
}
\description{
Calculating power, false discovery rates, false positive rates and auc (
area under the receiver operating characteristic (ROC) curve)
for various DA methods.
}
\details{
To make this function support for different arguments for a certain DA method
\code{args} allows list of list of list e.g. \code{args = list(lefse = list(list(norm = "CPM"), list(norm = "TSS")))}, which specify to compare the different norm
arguments for lefse analysis.

For \code{taxa_rank}, only \code{taxa_rank = "none"} is supported, if this argument is
not "none", it will be forced to "none" internally.
}
