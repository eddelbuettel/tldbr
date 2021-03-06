% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Query.R
\name{tiledb_query_alloc_buffer_ptr_char}
\alias{tiledb_query_alloc_buffer_ptr_char}
\title{Allocate a Query buffer for reading a character attribute}
\usage{
tiledb_query_alloc_buffer_ptr_char(sizeoffsets, sizedata)
}
\arguments{
\item{sizeoffsets}{An optional value of the size of the offsets vector}

\item{sizedata}{An optional value of the size of the data string}
}
\value{
An external pointer to the allocated buffer object
}
\description{
Allocate a Query buffer for reading a character attribute
}
