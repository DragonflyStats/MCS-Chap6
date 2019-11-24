# http://gallery.rcpp.org/articles/r-function-from-c++/

set.seed(42)
x <- rnorm(1e5)
fivenum(x)
# [1] -4.043276 -0.682384 -0.002066  0.673325  4.328091

#include <Rcpp.h>

using namespace Rcpp;

// [[Rcpp::export]]
NumericVector callFunction(NumericVector x, Function f) {
    NumericVector res = f(x);
    return res;
}


callFunction(x, fivenum)
#[1] -4.043276 -0.682384 -0.002066  0.673325  4.328091
