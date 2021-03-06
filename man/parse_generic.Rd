% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parse_generic.R
\name{parse_generic}
\alias{parse_generic}
\title{Generic parsing function}
\usage{
parse_generic(api_answer, ...)
}
\arguments{
\item{api_answer}{[\code{httr::response()}]\cr{}
The API answer}

\item{...}{Other options passed to parsing functions}
}
\value{
either results from \code{\link[=parse_journal]{parse_journal()}} or \code{\link[=parse_publisher]{parse_publisher()}}
}
\description{
Generic parsing function
}
