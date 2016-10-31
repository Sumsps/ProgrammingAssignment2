
# makeVector <- function(x = numeric()) {
#     m <- NULL
#     set <- function(y) {
#         x <<- y
#         m <<- NULL
#     }
#     get <- function() x
#     setmean <- function(mean) m <<- mean
#     getmean <- function() m
#     list(set = set, get = get,
#          setmean = setmean,
#          getmean = getmean)
# }
# 
# cachemean <- function(x, ...) {
#     m <- x$getmean()
#     if(!is.null(m)) {
#         message("getting cached data")
#         return(m)
#     }
#     data <- x$get()
#     m <- mean(data, ...)
#     x$setmean(m)
#     m
# }

# Above sample code is used to create the logic.

#####################################################################################################    
# Created by - Sumesh Sukumaran 
# Created date - 10/30/2016
# Status  - Completed
# Comments - Assignment Week 3 - Matrix inversion & storing values in memory
#####################################################################################################

#Function to create a matrix object & manag cache
makeCacheMatrix <- function(obj = matrix()) 
{
    matrixcache <- NULL
    setMatrix <- function(newMatrix) 
    {
        obj <<- newMatrix
        matrixcache <<- NULL
    }
    
    getMatrix <- function() { obj }

    setCache <- function(InverseMatrix) 
    { 
        #Cache is assigned to variable.
        matrixcache <<- InverseMatrix 
        
    }
    
    getCache <- function() 
    { 
        matrixcache 
    }
    
    list(setMatrix = setMatrix
         , getMatrix = getMatrix
         , setCache = setCache
         , getCache = getCache)
}

#Function to access inverse matrix data from cache or calculate if not exist in memory. 
cacheSolve <- function(MatrixObj, ...) 
{
    inverseMatrix <- MatrixObj$getCache()
    if(is.null(inverseMatrix)==FALSE) 
    {
        print("Retrieving from Cache")
        return(inverseMatrix)
    }
    
    print("No cache found")
    inputMatrix <- MatrixObj$getMatrix()
    inverseMatrix <- solve(inputMatrix)
    MatrixObj$setCache(inverseMatrix)
    print("New cache created")
    return(inverseMatrix)
}