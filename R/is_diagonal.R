#' Test if matrix is diagonal
#' 
#' 0s on the diagonal are fine.
#' 
#' @param x A matrix
#' @param na.rm TRUE/FALSE  TRUE means that NAs on the diagonal are ignored
#' @keywords internal
is.diagonal <- function(x, na.rm = FALSE) {
  # works on numeric matrices or list matrices
  # ok if there are 0s on diagonal
  if (!is.matrix(x)) {
    return(FALSE)
  } # x must be 2D matrix; is.matrix returns false for 3D array
  x <- as.matrix(unname(x))
  if (na.rm == FALSE && any(is.na(x))) {
    return(FALSE)
  }
  nr <- dim(x)[1]
  nc <- dim(x)[2]
  if (nr != nc) {
    return(FALSE)
  } # must be square
  # ok if there are 0s on diagonal
  # if(isTRUE( any(diagx==0) ) ) return(FALSE)
  dimx <- dim(x)[1]
  if (length(x) == 1) {
    return(TRUE)
  }
  x1 <- matrix(sapply(x, identical, 0), dimx, dimx)
  if (isTRUE(all(x1[lower.tri(x)])) && isTRUE(all(x1[upper.tri(x)]))) {
    return(TRUE)
  } # diagonal
  return(FALSE)
}
