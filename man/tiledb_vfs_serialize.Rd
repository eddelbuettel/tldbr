% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/VFS.R
\name{tiledb_vfs_serialize}
\alias{tiledb_vfs_serialize}
\title{Serialize an R Object to a VFS-accessible URI}
\usage{
tiledb_vfs_serialize(obj, uri, vfs = tiledb_get_vfs())
}
\arguments{
\item{obj}{An R object which will be passed to \code{serialize()}}

\item{uri}{Character variable with a URI describing a file path to an RDS file}

\item{vfs}{A TileDB VFS object; default is to use a cached value.}
}
\value{
The uri is returned invisibly
}
\description{
Serialize an R Object to a VFS-accessible URI
}
