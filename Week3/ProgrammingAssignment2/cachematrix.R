## These functions will generate a matrix (symmetric, invertible matrix is assumed!) and return its inverse.
## If there are no changes in the matrix x, the function will return the cached value of the inverse matrix.

#   1. makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
#   2. cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
#      If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache.

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL # initiate i and set to NULL
  set <- function(y) {
    x <<- y
    i <<- NULL # clear any values of i when x is changed 
  }
  get <- function() x
  setinverse <- function(invmat) i <<- invmat
  getinverse <- function() i
  
  # define the functions and return them in a list for downstream execution
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


# The following function calculates the inverse of the special "matrix"
# created with the above function. However, it first checks to see if the
# inverse has already been calculated. If so, it `get`s the result from the
# cache and skips the computation. Otherwise, it calculates the inverse of
# the data and sets the value of the inverse in the cache via the `setinverse`
# function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## If x is a new matrix, then getinverse will be NULL
        ## If get inverse is not NULL, then the inverse of x has already been calculated
        ## and will be returned from the cached value
        i <- x$getinverse()
        if(!is.null(i)) {
          message("getting cached data")
          return(i)
        }
        
        # calculcate the inverse of x if a cached value of i is not avaiable
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}
