\name{nnmf_als}
\alias{nnmf_als}


%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Non-negative Matrix Factorization
}
\description{
Non-negative Matrix Factorization - multiplicative update method
}
\usage{
nnmf_als(x, k, maxiter, eps)
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
    D <- dx[1L]
    N <- dx[2L]
    Xscale = sum(x)
    if (!D || !N) 
        stop("0 extent dimensions")
    W <- matrix(abs(rnorm(D * k)), D, k)
    H <- matrix(abs(rnorm(k * N)), k, N)
    Rscale = sum(W \%*\% H)
    sqrnorm = sqrt(Rscale/Xscale)
    H = H/sqrnorm
    W = W/sqrnorm
    Xr_old = W \%*\% H
    for (iter in 1:maxiter) {
        W = x \%*\% t(mpinv(H \%*\% t(H)) \%*\% H)
        W = (W > 0) * W
        W = W/(t(matrix(rep(colSums(W), D), ncol(W), nrow(W))) + 
            eps)
        H = t(W \%*\% mpinv(t(W) \%*\% W)) \%*\% x
        H = H * (H > 0)
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
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory. 