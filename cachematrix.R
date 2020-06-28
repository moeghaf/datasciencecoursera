

## Creates an object for matrix to be saved into

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x 
        setmatrix <- function(matrix) m <<- matrix
        getmatrix <- function() m 
        list(set = set, get = get,
             setmatrix= setmatrix, 
             getmatrix = getmatrix)
        

}


## Aquires saved inverse of matrix OR calcualtes it. 

cacheSolve <- function(x, ...) {
        m <- x$getmatrix()
        if(!is.null(m)) {
                message ("getting cached data")
                return(m)
        }
        data <- x$get() 
        m <- solve(data, ...)
        x$setmatrix(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
