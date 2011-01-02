\name{nnmf}
\alias{nnmf}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Non-negative Matrix Factorization
}
\description{
Non-negative Matrix Factorization
}
\usage{
nnmf(x, k, method = "nnmf_mm", maxiter = 1000, eps = 2.2204e-16)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
original input matrix
}
  \item{k}{
number of factors / components
}
  \item{method}{
which method to use for matrix factorization (default - multiplicative update)
}
  \item{maxiter}{
max number of iterations
}
  \item{eps}{
small threshold value
}
}
\author{
Suhai (TImothy) Liu
}

\examples{
 
X <- matrix(1:12,3,4) 
z.mm   <- nnmf(X,3)             # 3 factors via multiplicative update
z.als  <- nnmf(X,3,'nnmf_als')  # 3 factors via alternating least square
z.prob <- nnmf(X,3,'nnmf_prob') # 3 factors via multinomial

}
 
