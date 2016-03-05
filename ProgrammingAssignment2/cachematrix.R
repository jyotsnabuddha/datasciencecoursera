## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#this fuction will cache will chache its inverse for later use 

makeCacheMatrix <- function(x = matrix()) {
  matinv <- NULL
  
  set <- function(y) {
    x <<- y
    matinv <<- NULL
  }
  
  get <- function() x
  setInv <- function(inverse) matinv <<- inverse
  getInv <- function() matinv
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)

}


## Write a short comment describing this function
# The below function below will retrieve the cached data if it alrady exsists 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  matinv <- x$getInv()
  if(!is.null(matinv)) {
    message("getting cached data")
    return(matinv)
  }
  data <- x$get()
  matinv <- solve(data, ...)
  x$setInv(matinv)
  matinv

}
