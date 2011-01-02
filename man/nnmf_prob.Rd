\name{nnmf_prob}
\alias{nnmf_prob}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Non-negative Matrix Factorization via multinomial 
}
\description{
Non-negative Matrix Factorization - multinomial method
}
\usage{
nnmf_prob(x, k, maxiter, eps)
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
results <- nnmf(X, 5, 'nnmf_prob')
} 