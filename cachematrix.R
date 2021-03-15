## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inver <- NULL
  #BECAUSE WE ASSUME MATRIX TO BE INVERTIBLE
  set <- function(y){
    x <<- y
    inver <<- NULL
  }
  get <- function() {x}
  setinver <- function(inverse) {inver <<- inverse}
  getinver <- function() {inver}
  list(set = set, get = get, setinver = setinver, getinver = getinver)
}

cachesol <- function(x, ...){
  inver <- x$getinver()
  if(!is.null(inver)){
    message("getting cached data")
    return(inver)
  }
  mat <-x$get()
  inver <- solve(mat, ...)
  x$setinver(inver)
  inver
}
}

