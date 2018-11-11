## Inverting a matrix and storing it in the cache

## - Creating the cache, if it doesn't already exist
## - Returning the cache
makeCacheMatrix <- function(x = matrix()) {
    
    getCache <- function(){
        cacheMatrix
    }
    
    setCache <- function(){
        cacheMatrix <<- x
    }
    
    list(setCache = setCache, getCache = getCache)

}

## Checking if the cache exists
## If no cache exists, invert the matrix and cache the value
## If the cache exists, return the value

cacheSolve <- function(x, ...) {

    cache <- x$getCache()

    if(!is.null(cache)) {
        message("Getting cached data")
        return(cache)
    }else{
        ## Inverting the matrix and caching it
        invertedMatrix <<- solve(x)
        x$setCache(invertedMatrix)
        cache <- x$getCache()
    }

    ## Printing the cached value
    cache
}

## Generate the matrix
## exMatrix <- matrix(sample.int(10, 4, TRUE), nrow = 2, ncol = 2)

## Create the matrix cache object
## matrixObject <- makeCacheMatrix(exMatrix)

## Get the matrix
## cacheSolve(matrixObject)