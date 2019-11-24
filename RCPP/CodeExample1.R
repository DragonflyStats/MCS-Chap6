// [[Rcpp::depends(RcppArmadillo)]]
#include <RcppArmadillo.h>

using namespace arma; 
using namespace Rcpp;

vec fun1_cpp(const vec& x) {	// a first function 
    vec y = x + x;
    return (y);
}

vec fun2_cpp(const vec& x) {	// and a second function
    vec y = 10*x;
    return (y);
}
