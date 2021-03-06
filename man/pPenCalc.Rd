% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pPenCalc.R
\name{pPenCalc}
\alias{pPenCalc}
\title{Percent Penetration (Armor)}
\usage{
pPenCalc(pPen1, ...)
}
\arguments{
\item{pPen1}{First source of percent penetration.}

\item{...}{Further sources of percent penetration.}
}
\value{
A ratio, which multiplied by total armor value would return theoretically decreased armor value for purposes of damage calculation.
}
\description{
Calculates percent armor penetration through multiplicative stacking.
}
\examples{
pPenCalc(.25,.12,.5)
}
