## R functions that are able to cache potentially time-consuming computations
##  this pair of functions cache the inverse of a matrix



## Test matrix
B = matrix( 
c(2, 4, 3, 1, 5, 7, 9,0), 
nrow=3, 
ncol=3) 

## Test matrix
B = matrix( 
c(runif(1, 0, 9)
, runif(1, 0, 9)
, runif(1, 0, 9)
, runif(1, 0, 9)
, runif(1, 0, 9)
, runif(1, 0, 9)
, runif(1, 0, 9)
, runif(1, 0, 9)
, runif(1, 0, 9)

), 
nrow=3, 
ncol=3) 


## This function creates a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
        	m <<- solve(x)
        	m
}
makeCacheMatrix(B)

## This function computes the inverse of the 
## special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), 
## then cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		if(!is.null(m)) {
                	message("getting cached data")
                	return(m)
        	}
	else solve (B)
}

cacheSolve(B)











