% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quantgen.R
\name{lodLinkage}
\alias{lodLinkage}
\title{Test for linkage}
\usage{
lodLinkage(rec.frac, nb.nonrec, nb.rec)
}
\arguments{
\item{rec.frac}{vector of recombination fraction(s); if above 0.5, will use 1 - rec.frac; will be recycled to match nb.nonrec and nb.rec}

\item{nb.nonrec}{vector of number(s) of non-recombinant offsprings; will be recycled to match rec.frac}

\item{nb.rec}{vector of number(s) of recombinant offsprings; will be recycled to match rec.frac}
}
\value{
vector of LOD score(s)
}
\description{
Computes the LOD score(s) given recombination fraction(s) as well as number of non-recombinants and recombinants, testing for "ref.frac = 0".
}
\examples{
\dontrun{## from "Genetic map construction with R/qtl" by Karl Broman (2012)
## page 10: http://www.rqtl.org/tutorials/geneticmaps.pdf
n <- 300
nb.rec <- 27 + 27
nb.nonrec <- 300 - nb.rec
(est.rec.frac <- nb.rec / n) # estimator for a backcross; 0.18
lodLinkage(est.rec.frac, nb.nonrec, nb.rec) # ~28.9

## show how input rec.frac is recycled
lodLinkage(seq(0, 0.5, 0.05), nb.nonrec, nb.rec)
plot(lodLinkage(seq(0, 0.5, 0.05), nb.nonrec, nb.rec), type="b",
     xlab="recombination fraction", ylab="LOD score", las=1)

## show how inputs nb.nonrec and nb.rec are recycled
lodLinkage(est.rec.frac, n - 60, 60)
lodLinkage(est.rec.frac, c(n - 54, n - 60), c(54, 60))
}
}
\author{
Timothee Flutre
}
