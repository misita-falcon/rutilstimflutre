% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spatial.R
\name{correctSpatialHeterogeneity}
\alias{correctSpatialHeterogeneity}
\title{Correct spatial heterogeneity}
\usage{
correctSpatialHeterogeneity(dat, response, fix.eff = NULL, nb.folds = 5,
  verbose = 1)
}
\arguments{
\item{dat}{data frame with, at least, columns named "geno", "control" (TRUE/FALSE), "rank", "location", "year" and <response>}

\item{response}{column name of dat corresponding to the response for which spatial heterogeneity will be corrected}

\item{fix.eff}{if not NULL, vector of column names of data corresponding to fixed effects to control for in the kriging (e.g. "block")}

\item{nb.folds}{number of folds for the cross-validation}

\item{verbose}{verbosity level (0/1/2)}
}
\value{
data frame as dat but with an additional column named <response>.csh
}
\description{
Use kriging to correct spatial heterogeneity in a plant field trial.
This will be done per year.
}
\author{
Timothee Flutre
}
