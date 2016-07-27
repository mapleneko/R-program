## Put comments here that give an overall description of what your
## functions do

## The first function creates a unit to store a matrix and its inverse matrix.
## The second calculates the inverse matrix of the unit above.


## Write a short comment describing this function

## The function makeCacheMatrix creates a unit that stores a matrix variable  
## and an inverse matrix of default null value when initialized.
## There're four inner functions to input and output matrix 
## and its inverse matrix relatively.


makeCacheMatrix <- function(x = matrix()) {
	if(!is.matrix(x)){
		message("Error: please input a matrix")
		return(NULL)
	}
	inv <<- NULL
	m <<- x
	set <- function(y){
		if(!is.matrix(y)){
			message("please input a matrix")
		}
		else{
		m <<- y
		inv <<- NULL
		}
	}
	get <-function() m
	setinv <- function(y) inv <<- y
	getinv <- function() inv 
	list(set=set, get=get, 
	     setinv=setinv, 
	     getinv=getinv)
}



## Write a short comment describing this function

## The function cacheSolve is called to get the inverse matrix of 
## a matrix unit created above.
## If there is already a result stored in the unit, it will be directly output.
## Else, the function will calculate the result and store it in the unit.

cacheSolve <- function(x, ...) {
      i <- x$getinv()
	if(!is.null(i)){
		message("getting cached data")
		return(i)
	}
	i <- solve(x$get(),...)
	x$setinv(i)
	i

}


## hello friend~
## here's my email: toyed2@163.com
## welcome to @me ¡«(£þ¨Œ£þ¡«)

