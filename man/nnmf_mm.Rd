\name{nnmf_mm}
\alias{nnmf_mm}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Non-negative Matrix Factorization via multiplicative update 
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
X <- matrix(1:12, 3, 4)

results <- nnmf(X, 2)
#which is equivalent to
results <- nnmf(X, 2, 'nnmf_mm')
} 