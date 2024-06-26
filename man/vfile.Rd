% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/VFile.R
\name{vfile}
\alias{vfile}
\title{Create a custom file connection}
\usage{
vfile(description, open = "", verbosity = 1)
}
\arguments{
\item{description}{path to a filename; contrary to \code{rconnection} a connection
object is not supported.}

\item{open}{character string. A description of how to open the connection if
it is to be opened upon creation e.g. "rb". Default "" (empty string) means
to not open the connection on creation - user must still call \code{open()}.
Note: If an "open" string is provided, the user must still call \code{close()}
otherwise the contents of the file aren't completely flushed until the
connection is garbage collected.}

\item{verbosity}{integer value 0, 1, or 2. Default: 1.
Set to \code{0} for no debugging messages.
Set \code{verbosity = 2} for all debugging messages.}
}
\description{
Create a custom file connection
}
\details{
This \code{vfile()} connection works like the \code{file()} connection in R itself.

This connection works with both ASCII and binary data, e.g. using
\code{readLines()} and \code{readBin()}.
}
\examples{
\dontrun{
tmp <- tempfile()
dat <- as.raw(1:255)
writeBin(dat, vfile(tmp))
readBin(vfile(tmp),  raw(), 1000)
}
}
