% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BatchedQuery.R
\name{completedBatched}
\alias{completedBatched}
\title{Check \sQuote{batched} query for completion}
\usage{
completedBatched(obj)
}
\arguments{
\item{obj}{A list object as returned by \code{createBatched}}
}
\value{
A logical value to indicated if the query completed
}
\description{
Batched queries return an initial result set even when it is incomplete. Where
the normal retrieval process will loop in place to complete a (potentially large)
result set, this function will return a result (which may be part of a larger
result set) allowing the user to assemble all part.
}
