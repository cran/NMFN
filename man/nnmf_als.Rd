\name{nnmf_als}
\alias{nnmf_als}


%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Non-negative Matrix Factorization via alternating least squares
}
\description{
Non-negative Matrix Factorization - alternating least squares method
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
 
\author{
Suhai (Timothy) Liu
} 
 
\examples{
X <- matrix(1:12, 3, 4)
results <- nnmf(X, 2, 'nnmf_als')
  
} 