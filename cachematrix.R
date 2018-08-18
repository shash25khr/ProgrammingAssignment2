## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inver<-NULL
set<-function(y)
{
  x<<-y
  inver<<-NULL
}
get<-function()x

setinverse<-function(inverse) inver<<-inver
getinverse<-function()inver
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inver<-x$getinverse() ## Return a matrix that is the inverse of 'x'
  if(!is.null(inver))
  {
    message("getting data")
    return(inver)
  }
  data<-x$get()
  inver<-solve(data,...)
  x$setinverse(inver)
  inver
}
