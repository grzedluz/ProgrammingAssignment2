## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The following program is a list of programs to set and get the 
## matrix and its inverse.
makeCacheMatrix <- function(x = matrix()) {
        Inv <- NULL
        set <- function(y) {
                x <<- y
                Inv <<- NULL
        }
        get <- function() x
        setInv <- function(inv) Inv <<- inv
        getInv <- function() Inv
        list(set = set,get = get,
             setInv = setInv,
             getInv = getInv)
}


## Write a short comment describing this function
## The following function computes the inverse of the matrix if 
## it is not yet computed.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        Inv <- x$getInv()
        if (!is.null(Inv)) {
                message("getting cached inverse")  
                return(Inv)
        }
        mat <- x$get()
        Inv <- solve(mat,...)
        x$setInv(Inv)
        Inv
}
