## this function creates a special vector (makeVector)

makeCacheMatrix = function(x1 = matrix()) {
   n2 = NULL
   set = function(y) {
      x1 <<- y
      n2 <<- NULL
   }
   get = function() x1
   setmatrix = function(matrix) n2 <<- matrix
   getmatrix = function() n2
   list(set = set, get = get,
        setmatrix = setmatrix,
        getmatrix = getmatrix)
}

## calculates the mean of the special vector

cacheSolve = function(z, ...) {
   p = x$getmatrix()
   if(!is.null(p)) {
      message("getting cached data")
      return(p)
   }
   data = z$get()
   p = try(solve(data, ...), silent = TRUE)
   if(!is.matrix(p)) {
       print(“this is not valid for inverse”)
       
   } else
     {z$setmatrix(p)
      p}
 }
