## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {  ## define the argument with default mode of "matrix"
inver<-NULL ## initialize inver as NULL
set<-function(y) ## define the set function to assign new
{
  x<<-y  #value of matrix in parent environment
  inver<<-NULL
}
get<-function()x
 
setinverse<-function(inverse) inver<<-inver  ## assigns value of inv in parent environment
getinverse<-function()inver  ## gets the value of inv where called
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse) ## you need this in order to refer to the functions with the $ operator
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
