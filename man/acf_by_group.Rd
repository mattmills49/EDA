% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/acf_by_group.R
\name{acf_by_group}
\alias{acf_by_group}
\title{Calculate Auto Correlations by Group}
\usage{
acf_by_group(.data, .group_var, .value_var, ..., .ci = c("none",
  "white_noise", "ma"), .cl = 0.95)
}
\arguments{
\item{.data}{the data frame the data is contained in}

\item{.group_var}{the unquoted variable to be used as the grouping variable}

\item{.value_var}{the name of the time series value to use}

\item{...}{extra parameters to pass to the \code{acf} function (see \code{?stats::acf})}

\item{.ci}{the type of confidence interval to use, defaults to \code{none}}

\item{.cl}{confidence level for the confidence intervals, defaults to .95}
}
\value{
a data frame with the acf values by group and lag
}
\description{
\code{acf_by_group} takes a data frame with a grouping column and returns a
data frame with the autocorrelation values for each group.
}
\details{
Each row in the resulting data frame will refer to a group-lag
auto-correlation value.

\code{white_noise} will return confidence intervals for the series
assuming the autocorrelations come from a white noise distribution. \code{ma} 
will apply the correction needed if the autocorrelations have some moving
average correlation.
}
\examples{
pres_ratings <- data.frame(approval = as.numeric(presidents), pre_1965 = c(rep(1, 60), rep(0, 60)))
ratings_acf <- acf_by_group(pres_ratings[!is.na(pres_ratings$approval), ], pre_1965, approval)
## pass params to acf
ratings2_acf <- acf_by_group(pres_ratings, pre_1965, approval, na.action = na.pass)
}

