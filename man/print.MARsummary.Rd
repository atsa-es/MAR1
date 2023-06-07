\name{print.MARsummary}
\alias{print.MARsummary}

\title{
Print the summary of a MAR model
}
\description{
Formats and prints the result of applying \code{summary} to a \code{MAR} object.
}
\usage{
\method{print}{MARsummary}(x,...)
}

\arguments{

\item{x}{
	Object of class \code{MARsummary}
}

\item{...}{
	Further arguments passed to or from other methods
}

}

\author{
LP Scheef
}

\seealso{
\code{\link{summary.MAR}}
}

\value{
Prints a summary of a MAR object.
}

\examples{
# load a sample MAR model fit. See \code{\link{run1}}.
data(run1)
summary(run1)
}
