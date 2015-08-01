## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    # v is the inverted matrix
    v <- NULL
    # set update the matrix values and change cache value
    set <- function(y){
        x <<- y
        v <<- NULL
    }
    
    #get returns contained matrix
    get  <- function() x
    
    #setinv modify the inverted matrix to cache
    setinv <- function(inv) v <<- inv
    
    #getinv returns the inverted matrix
    getinv <- function() v
    
    list(set = set, get = get, setinv = setinv, getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    v <- x$getinv()
    if(!is.null(v)){
        message("getting cached data")
        return(v)
    }
    mat <- x$get()
    v <- solve(mat)
    x$setinv(v)
    v
}
