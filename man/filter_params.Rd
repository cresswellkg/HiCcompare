% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filter_params.R
\name{filter_params}
\alias{filter_params}
\title{Determine the A quantile cutoff to be used}
\usage{
filter_params(hic.table, SD = 2, numChanges = 300, FC = 3, alpha = 0.05,
  Plot = FALSE)
}
\arguments{
\item{hic.table}{A hic.table object}

\item{SD}{The standard deviation of the fuzzing used to produce a Hi-C
matrix from your data with few true differences.}

\item{numChanges}{The number of changes to add into the Hi-C matrix created.
This should be proportional to the resolution of the data. High resolution
data should use more changes i.e. 1MB resolution - 300 changes, 100KB resolution -
1000 changes, etc.}

\item{FC}{The fold change of the changes added to the Hi-C matrix.}

\item{alpha}{The alpha level for hypothesis testing.}

\item{Plot}{logical, should MD plots for the normalization
and difference detection be plotted?}
}
\value{
A plot of the Mathews Correlation Coefficient (MCC), 
    true positive rate (TPR), and false positive rate (FPR)
    over the A minimum
    value filtered.
}
\description{
Determine the A quantile cutoff to be used
}
\details{
This function will take your data and produce an additional
    Hi-C matrix using the IF1 vector. Random normal noise will be added
    to the vector to create a "fuzzed" matrix with few true differences.
    Then the specified number of true changes will be added at the specified
    fold change level to the matrices. The HiCcompare procedure is run on the
    data and a plot of the MCC, TPR, and FPR based on
    the A minimum value filtered out will be produced. This is to aid you
    in determining what value you should use when analyzing your data with
    the hic_compare() function.
}
\examples{
data('HMEC.chr22')
data('NHEK.chr22')
hic.table <- create.hic.table(HMEC.chr22, NHEK.chr22, chr = 'chr22')
filter_params(hic.table)
}
