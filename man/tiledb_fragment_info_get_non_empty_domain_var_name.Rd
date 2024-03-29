% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FragmentInfo.R
\name{tiledb_fragment_info_get_non_empty_domain_var_name}
\alias{tiledb_fragment_info_get_non_empty_domain_var_name}
\title{Return a fragment info non-empty domain variable from name}
\usage{
tiledb_fragment_info_get_non_empty_domain_var_name(object, fid, dim_name)
}
\arguments{
\item{object}{A TileDB fragment info object}

\item{fid}{A fragment object index}

\item{dim_name}{A character variable with the dimension name}
}
\value{
A character vector with two elements
}
\description{
Return a fragment info non-empty domain variable from name
}
