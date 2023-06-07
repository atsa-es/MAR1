\name{run1}
\alias{run1}
\docType{data}
\title{
A sample 
}
\description{
An example MAR1 model prepared with the code in the example.
}
\usage{data(run1)}
\format{
  A sample MAR1 model fit to the L4.mar data. Object of class MAR.
}

\examples{
data(run1)

\dontrun{
# run1 created with
data(L4.mar)

myvar <- c(0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 2, 2, 2) # 8 variates, 3 covariates
myres <- matrix(0.5,
  nrow = length(which(myvar == 1)),
  ncol = length(which(myvar != 0))
) # no restrictions (all 0.5)

run1 <- run.mar(L4.mar, variables = myvar, restrictions = myres, search = "exhaustive")
}
}

\keyword{datasets}
