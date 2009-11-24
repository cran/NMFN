\name{nnmf_mm}
\alias{nnmf_mm}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Non-negative Matrix Factorization
}
\description{
Non-negative Matrix Factorization - multiplicative update method
}
\usage{
nnmf_mm(x, k, maxiter, eps)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
original input matrix
}
  \item{k}{
number of factors / components
}
  \item{maxiter}{
max number of iterations
}
  \item{eps}{
small threshold value
}
} 
\value{
W, H - returned decomposed matrices
}
\references{
Lee and Sung 2001
}
\author{
Suhai (Timothy) Liu
} 


\examples{
 
## The function is currently defined as
function (x, k, maxiter, eps) 
{
    print_iter <- 50
    x <- as.matrix(x)
    if (any(!is.finite(x))) 
        stop("infinite or missing values in 'x'")
    dx <- dim(x)
    n <- dx[1L]
    m <- dx[2L]
    if (!n || !m) 
        stop("0 extent dimensions")
    W <- matrix(abs(rnorm(n * k)), n, k)
    H <- matrix(abs(rnorm(k * m)), k, m)
    Xr_old = W \%*\% H
    for (iter in 1:maxiter) {
        H = H * (t(W) \%*\% x)/((t(W) \%*\% W) \%*\% H + eps)
        W = W * t(H \%*\% t(x))/(W \%*\% (H \%*\% t(H)) + eps)
        if (iter\%\%print_iter == 0) {
            Xr = W \%*\% H
            diff = sum(abs(Xr_old - Xr))
            Xr_old = Xr
            eucl_dist = distance2(x, W \%*\% H)
            errorx = mean(abs(x - W \%*\% H))/mean(x)
            cat("Iter = ", iter, "\t")
            cat("relative error = ", errorx, "\t")
            cat("diff = ", diff, "\t")
            cat("eucl dist = ", eucl_dist, "\n")
            if (errorx < 1e-05) {
                cat("Execution finishes at iteration = ", iter, 
                  "\n")
                break
            }
        }
    }
    z <- c(list(W = W, H = H))
    z
  }
}