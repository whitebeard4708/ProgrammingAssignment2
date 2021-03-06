## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function gets the matrix and finds out its inverse (if the matrix is invertible)
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
    x <<- y
    m <<- NULL
    }
    get <- function() x
    setInv <- function(solve) m <<- solve
    getInv <- function() m
    list(set = set, get = get, setInv = setInv, getInv, getInv = getInv)
}


## Write a short comment describing this function
## This function gets the inverse of the matrix (if it was calculated before, else find a new one)

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInv()
    if (!is.null(m)) {
        message("Getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setInv(m)
    m
}
