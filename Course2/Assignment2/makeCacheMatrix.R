makeCacheMatrix <- function(x = matrix()){}
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