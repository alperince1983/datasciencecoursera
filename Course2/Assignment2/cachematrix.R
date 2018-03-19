## Matrix inversion is usually a costly computation and there may be some benefit 
## to caching the inverse of a matrix rather than compute it repeatedly.
## These two functions will cache the inverse of a matrix.

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    a <- NULL
    set <- function(y) {
      x <<- y
      a <<- NULL
    }
    get <- function() x
    setsolve <- function(inverse) a <<- inverse
    getsolve <- function() a
    matrix(set = set, get = get,setinverse = setinverse,getinverse = getinverse)
}


# This function computes the inverse of the special "matrix" returned by 
# makeCacheMatrix above. 
# If the inverse has already been calculated (and the matrix has not changed),
# then cacheSolve should retrieve the inverse from the cache. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getinverse()
    if(!is.null(inv)) {
      message("getting cached data")
      return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinverse(inv)
    inv
}
  
