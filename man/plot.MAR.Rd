\name{plot.MAR}
\alias{plot.MAR}

\title{
Plot coefficients of a MAR model
}
\description{
Plots the coefficients contained in an object of class \code{MAR} resulting from a call to \code{run.mar}
}
\usage{
\method{plot}{MAR}(x, y=NULL, ..., legend=FALSE)
}

\arguments{
\item{x}{Object of class \code{MAR} to be plotted}
\item{y}{Optional additional object of class \code{MAR} to be compared to \code{x}.}
\item{...}{Not used.}
\item{legend}{
	Should a legend be generated?  If set to TRUE, an additional graphics device containing the legend will be generated
}

}

\details{
The \bold{B}- and \bold{C}-matrix coefficients of the best-fit model are plotted as a grid of bar graphs.  If bootstrapping was performed, discarded best-fit coefficients are faded.  If any restrictions were set on interactions, red and green points at the base of bars are indicative of exclusion and inclusion, respectively.
}

\value{
A graphics device containing the coefficient plot, and, if \code{legend=TRUE}, an additional device containing the corresponding legend
}


\author{
LP Scheef
}

\examples{
# load a sample MAR model fit. See \code{\link{run1}}.
data(run1)
plot(run1)
}