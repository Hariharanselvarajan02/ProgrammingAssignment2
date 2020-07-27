##creating a matrix
makeCacheMatrix <- function(x = matrix()) {
m <- NULL
set <- function(y)
{
x <<- y
m <<- NULL
}
get <- function()x
setInverse <- function(inverse) m <<- inverse
getInverse <- function()m 
list(set = set, get = get, 
setInverse = setInverse, 
getInverse = getInverse)
}
##the m value is took if its not null and returned, if there's no m value,it gets it from the cache and computes..
cacheSolve <- function(x, ...) {
##Getting data from the cache
m <- x$getInverse()
if(!is.null(m)){
message("getting cached data") 
return(m)
}
matrix1 <- x$get()
m <- solve(matrix1,...)
x$setInverse(m)
m      
}
