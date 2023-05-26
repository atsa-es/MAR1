\name{print.MAR}
\alias{print.MAR}

\title{
Print output of a MAR model
}
\description{
Method for printing components of an object of class \code{MAR} that provide a concise overview of the model
}
\usage{
\method{print}{MAR}(x,...)
}

\arguments{

\item{x}{
	Object of class \code{MAR} to be printed
}

\item{...}{
	Further arguments passed to or from other methods
}

}

\details{
Formats and prints the following components of a \code{MAR} object when the object's name is called:  the time-series variables that were selected to be included in the model; any restrictions that were set on variable interactions; the search type used to select the best-fit model; and the coefficients, AIC values, and R^2 values of the best-fit and bootstrapped models.  Other components of a \code{MAR} object can be viewed by specifying their name according to \code{str(object)}.
}

\author{
LP Scheef
}

\value{
Prints a selection of components of a MAR object.
}

\examples{
data(L4.mar)
myvar <- c(0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 2)
myres <- matrix(0.5,
  nrow = length(which(myvar == 1)),
  ncol = length(which(myvar != 0))
) 
small <- L4.mar[1:50,]
run1 <- run.mar(small, variables = myvar, restrictions = myres, search = "random", boot = FALSE)

print(run1)
}