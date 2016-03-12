getwd()
wd <- file.path ("C:","Users","Wolfi","ProgrammingAssignment2")
setwd (wd)
source("cachematrix.R")

originalmatrix <- matrix(rexp(400, rate=.1), nrow=20,ncol=20)
originalmatrix

inverse <- solve(originalmatrix)
n <- makeCacheMatrix()
n$setinv(inverse)

cacheSolve (n)
inv <- n$getinv()
