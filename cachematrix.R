## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  
  setmat <- function( matrix ) {
    m <<- matrix
    a <<- NULL
  }
  
  getmat <- function() {
   
    m
  }
  
 
  seetinmat <- function(inverse) {
    a <<- inverse
  }
  
  
  getinmat <- function() {
   
    a
  }
  
  
  list(setmat = setmat, getmat = getmat,
       setinmat = setinmat,
       getinmat = getinmat)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinmat()
  
 
  if( !is.null(m) ) {
    message("getting cached data")
    return(m)
  }
  
  
  data <- x$getmat()
  
  
  m <- solve(data) %*% data
  
 
  x$setinmat(m)
  
  
  m
}
