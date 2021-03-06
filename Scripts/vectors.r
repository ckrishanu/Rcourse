#' # Vectors #
#'
#' An important, if not the most important, object in the R language is the vector.
#' A vector is a set of items connected together.
#' Building a vector is easy using the `c` operator:
c(1,2,3)

#' This combines three items - 1 and 2 and 3 - into a vector.

#' The same result is possible with the `:` (colon) operators:
1:3

#' The two can also be combined:
c(1:3,4)
c(1:2,4:5,6)
1:4

#' And colon-built sequences can be in any direction:
4:1
10:2
#' And we can also reverse the order of a vector using `rev`:
1:10
rev(1:10)

#' Arbitrary numeric sequences can also be built with `seq`:
seq(from=1,to=10)
seq(2,25)

#' `seq` accepts a number of optional arguments, including:
#' by, which controls the spacing between vector elements
seq(1,10,by=2)
seq(0,1,by=.1)
#' length.out, which controls the length of the resulting sequence
seq(0,1,length.out=11)

#' A related function `seq_along` produces a sequence the length of another vector:
seq_along(c(1,4,5))

#' This is shorthand for combining `seq` with the `length` function:
length(c(1,4,5))
seq(1,length(c(1,4,5)))

#' It's also possible to create repeated sequences using `rep`:
rep(1,times=5)
#' This also allows us to repeat shorter vectors into longer vectors:
rep(c(1,2),times=4)
#' If we use an `each` parameter instead of a `times` parameter, we can get a different result:
rep(c(1,2),each=4)
#' Finally, we might want to repeat a vector into a vector that is not a multiple of the original vector length.
#' For example, we might want to alternate 1 and 2 for five values. We can use the `length.out` parameter:
rep(c(1,2),length.out=5)
#' These repetitions can be helpful when we need to categorize data into groups.


#' ## Vector classses ##
#'
#' The above vectors are numeric, but vectors can be other classes, like character:
c("a","b")

#' Sequences of dates are also possible, using Date classes:
seq(as.Date("1999/1/1"), as.Date("1999/3/5"), "week")
seq(as.Date("1999/1/1"), as.Date("1999/3/5"), "day")

#' But vectors can only have one class, so elements will be coerced, such that:
c(1,2,"c")
#' produces a character vector



#' ## Empty vectors ##
#'
#' We can create vectors of different classes using the appropriate functions:
#' (1) The function `numeric` produces numeric vectors:
numeric()
#' The result is an empty numeric vector. If we supply a `length` parameter:
numeric(length=10)
#' The result is a vector of zeroes.
#' (2) The function `character` produces an empty character vector:
character()
#' We can again supply a `length` argument to produce a vector of empty chracter strings:
character(length=10)
#' (3) The function `logical` produces an empty logical vector:
logical()
#' Or, with a `length` parameter, a vector of FALSE values:
logical(length=10)

#' These functions may seem kind of pointless right now. But they are useful in large projects.
#' Filling in the values of a vector "initialized" (e.g., with `numeric`, `character`, or `logical`) is much faster than building a vector with `c()`.
#' This is hard to observe at this scale (a few elements) but matters with bigger data.
