## Put comments here that give an overall description of what your
## functions do
## There are two functions. The first function deals with creating an empty matrix
## and the second deals with calculating the inverse of a matrix.

## Write a short comment describing this function
## This function deals with creating an empty matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)        
}

## Write a short comment describing this function
## This function deals with calculating the inverse of a matrix 
## and then return the inverse of the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m        
}
