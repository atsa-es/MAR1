\name{hist.MARtop}
\alias{hist.MARtop}

\title{
Plot histogram of AIC values of top MAR models
}
\description{
Plots a histogram of the AIC values of the best-fit models contained in the \code{$top.bestfit} component of an object of class \code{MAR}
}
\usage{
\method{hist}{MARtop}(x, ...)
}

\arguments{

\item{x}{
	The \code{$top.bestfit} component of an object of class \code{MAR}
}

\item{...}{
	Further arguments passed to or from other methods
}

}

\details{
The AIC values of the top best-fit models are plotted as a frequency histogram.  A blue asterisk indicates the AIC value of the selected best-fit model.
}

\value{
A graphics device containing the histogram of top best-fit model AIC values
}


\author{
LP Scheef
}

\seealso{
\code{\link{plot.MARtop}}
}

\examples{
data(L4.mar)
myvar <- c(0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2)
myres <- matrix(0.5,
  nrow = length(which(myvar == 1)),
  ncol = length(which(myvar != 0))
) 
small <- L4.mar[1:20,]
run1 <- run.mar(small, variables = myvar, restrictions = myres, search = "random", boot=100)

hist(run1$top.bestfit)
}