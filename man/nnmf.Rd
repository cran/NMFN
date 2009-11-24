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


## The function is currently defined as
function (x, k, method = "nnmf_mm", maxiter = 1000, eps = 2.2204e-16) 
{
    if (method == "nnmf_als") {
        cat("Alternating Least Squares Algorithm", "\n")
        nnmf_als(x, k, maxiter, eps)
    }
    else {
        cat("Multiplicative Update Algorithm", "\n")
        nnmf_mm(x, k, maxiter, eps)
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ matrix }
\keyword{factorization}% __ONLY ONE__ keyword per line
