
#Please find the below steps and various function calls and its results

> rm(list = ls())
> source("cachematrix.R")
> MatrixObject<-makeCacheMatrix(matrix(rnorm(9), nrow = 3, ncol = 3) )
> MatrixObject$getMatrix()
            [,1]      [,2]       [,3]
[1,] -0.50130098 0.8693909  1.5344461
[2,] -0.07265354 2.1148485 -0.5627108
[3,] -0.53521244 0.4491831  1.7481600
> cacheSolve(MatrixObject)
[1] "No cache found"
[1] "New cache created"
          [,1]        [,2]       [,3]
[1,] 50.034278 -10.5213572 -47.304242
[2,]  5.423915  -0.6979684  -4.985504
[3,] 13.924719  -3.0418529 -12.629516
> cacheSolve(MatrixObject)
[1] "Retrieving from Cache"
          [,1]        [,2]       [,3]
[1,] 50.034278 -10.5213572 -47.304242
[2,]  5.423915  -0.6979684  -4.985504
[3,] 13.924719  -3.0418529 -12.629516
> MatrixObject$setMatrix(matrix(rnorm(16), nrow = 4, ncol = 4) )
> cacheSolve(MatrixObject)
[1] "No cache found"
[1] "New cache created"
         [,1]       [,2]      [,3]        [,4]
[1,] 3.475793 -1.7420854 10.104605  0.79254670
[2,] 2.137578 -0.4844218  5.394149  0.08189443
[3,] 2.208225 -1.1148583  7.712623  0.35129986
[4,] 2.197986 -1.8636550  8.295087 -0.41958484
> cacheSolve(MatrixObject)
[1] "Retrieving from Cache"
         [,1]       [,2]      [,3]        [,4]
[1,] 3.475793 -1.7420854 10.104605  0.79254670
[2,] 2.137578 -0.4844218  5.394149  0.08189443
[3,] 2.208225 -1.1148583  7.712623  0.35129986
[4,] 2.197986 -1.8636550  8.295087 -0.41958484