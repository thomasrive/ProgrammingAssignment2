## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#As Described in the assignment description, this function creates a matrix object
#That can cache it's inverse
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  #Set the value of vector
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  #Get the value of vector
  get <- function() x
  #Set the value of the inverse
  setinv <- function(inverse) m <<- inv
  #Get the value of the inverse
  getinv <- function() return(m)
  return(list(set = set, get = get,setinv = setinv,getinv = getinv))
}


## Write a short comment describing this function
#Either computes or retrieves the inverse of the matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  #Checking to see if inverse is already calculated
  if(!is.null(m)) {
    message("getting cached data")
    #Retrieves inverse
    return(m)
  }
  data <- x$get()
  #Grabbing inverse from cache
  m <- solve(data, ...)
  #invoking setinv function
  x$setinv(m)
  m
}
