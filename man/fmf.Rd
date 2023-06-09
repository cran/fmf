% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fmf.R
\name{fmf}
\alias{fmf}
\alias{fmf.formula}
\alias{fmf.default}
\title{Fast Class Noise Detector with Multi-Factor-Based Learning}
\usage{
fmf(x, ...)

\method{fmf}{formula}(formula, data, ...)

\method{fmf}{default}(
  x,
  knn = 5,
  classColumn = 1,
  boxplot_range = 1,
  iForest = TRUE,
  threads = 1,
  ...
)
}
\arguments{
\item{...}{optional parameters to be passed to other methods.}

\item{formula}{a formula describing the classification variable and the attributes to be used.}

\item{data, x}{data frame containing the tranining dataset to be filtered.}

\item{knn}{total number of nearest neighbors to be used.The default is 5.}

\item{classColumn}{positive integer indicating the column which contains the
(factor of) classes. By default, a dataframe built from 'data' using the variables indicated in 'formula' and The first column is the response variable, thus no need to define the classColumn.}

\item{boxplot_range}{range of box and whisker diagram. The dafault is 1.}

\item{iForest}{compute iForest score or not. The dafault is TRUE.}

\item{threads}{the number of cores to be used in parallel.}
}
\value{
an object of class \code{filter}, which is a list with four components:
\itemize{
   \item \code{cleanData} is a data frame containing the filtered dataset.
   \item \code{remIdx} is a vector of integers indicating the indexes for
   removed instances (i.e. their row number with respect to the original data frame).
   \item \code{noise_score} is a vector of values indicating the optential of being a noise.
   \item \code{call} contains the original call to the filter.
}
}
\description{
This function computes the noise score for each observation
}
\examples{

data(iris)
out = fmf(Species~.,iris)

}
\author{
Wanwan Zheng
}
\keyword{export}
