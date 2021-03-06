% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/distribution.R
\name{distribution}
\alias{distribution}
\title{distribution}
\usage{
distribution(species_list, fields = NULL, server = getOption("FISHBASE_API",
  FISHBASE_API), limit = 500)
}
\arguments{
\item{species_list}{A vector of scientific names (each element as "genus species"). If empty, the table will be loaded up to the limit. This makes it possible to load an entire table without knowledge of the species in the table, thus avoiding uneccesary API calls.}

\item{fields}{a character vector specifying which fields (columns) should be returned. By default,
all available columns recognized by the parser are returned. This option can be used to limit the amount
of data transfered over the network if only certain columns are needed.}

\item{server}{base URL to the FishBase API (by default). For SeaLifeBase, use http://fishbase.ropensci.org/sealifebase}

\item{limit}{The maximum number of matches from a single API call (e.g. per species). Function
will warn if this needs to be increased, otherwise can be left as is.}
}
\description{
return a table of species locations as reported in FishBASE.org FAO location data
}
\details{
currently this is ~ FAO areas table (minus "note" field)
e.g. http://www.fishbase.us/Country/FaoAreaList.php?ID=5537
}
\examples{
\dontrun{
distribution(species_list(Genus='Labroides'))
}
}

