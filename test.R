source("cachematrix.R")

testPA2 <- function() {
    #test default params
    x <- makeCacheMatrix();
    #should return empty matrix
    y <- cacheSolve(x);
    #should return cached version 
    z <- cacheSolve(x);
    if (!identical(y, z))
      return(FALSE);
    

    #test 2x2 identity matrix
    diag2 <- makeCacheMatrix(diag(2));
    #should compute inverse the first time
    y <- cacheSolve(diag2);
    #should return cached result
    z <- cacheSolve(diag2);
    #should return TRUE
    identical(y, z);
}


