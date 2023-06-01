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
data(L4.mar)
myvar <- c(0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2)
myres <- matrix(0.5,
  nrow = length(which(myvar == 1)),
  ncol = length(which(myvar != 0))
) 
small <- L4.mar[1:20,]
run1 <- run.mar(small, variables = myvar, restrictions = myres, search = "random", boot = FALSE)

summary(run1)
}
