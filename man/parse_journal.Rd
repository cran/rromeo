% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parse_journal.R
\name{parse_journal}
\alias{parse_journal}
\title{Parse API answer}
\usage{
parse_journal(xml_source, outcome, hits, type = c("find", "name"), key = NULL)
}
\arguments{
\item{type}{[\code{character(1)} in \code{c("find", "name")}]\cr{}
If \code{type = "find"} returns only \code{title} and \code{issn} columns if
\code{type = "name"} returns full data.frame as specified in Returns
sections.}

\item{key}{[\code{character(1)}]\cr{}
a character string containing the API key or \code{NULL}
(see Details section on how to specify it)}
}
\value{
Returns a data.frame with the following columns:
\itemize{
\item \code{title}         [\code{character(1)}]\cr{}
the name of the journal
\item \code{provided_issn} [\code{character(1)}]\cr{}
the ISSN you provided in your query (might differ from the
ISSN returned by the API)
\item \code{issn}          [\code{character(1)}]\cr{}
the ISSN of the journal
\item \code{romeocolour}   [\code{character(1)}]\cr{}
the SHERPA/RoMEO colour of the journal
\item \code{preprint}      [\code{character(1)}]\cr{}
is the preprint (not reviewed) archivable?
\item \code{postprint}     [\code{character(1)}]\cr{}
is the postprint (reviewed but not formatted) archivable?
\item \code{pdf}           [\code{character(1)}]\cr{}
is the publisher's version (reviewed and formatted)
\item \code{pre_embargo}   [\code{character(1)}]\cr{}
if applicable the embargo period before the author(s) can
archive the preprint
\item \code{post_embargo}  [\code{character(1)}]\cr{}
if applicable the embargo period before the author(s) can
archive the postprint
\item \code{pdf_embargo}   [\code{character(1)}]\cr{}
if applicable the embargo period before the author(s) can
archive the publisher's version
}
}
\description{
Returns data.frame from parsed xml API answer.
}
\keyword{internal}
