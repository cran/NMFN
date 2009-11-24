\name{NMFN-package}
\alias{NMFN-package}
\alias{NMFN}
\docType{package}
\title{
Non-negative Matrix Factorization
}
\description{
Non-negative Matrix Factorization
}
\details{
\tabular{ll}{
Package: \tab NMFN\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2009-11-24\cr
License: \tab GPL\cr
LazyLoad: \tab yes\cr
}

}
\author{Suhai (Timothy) Liu <suhai_tim_liu@hotmail.com>  based on multiplicative updates (Lee and Sung 2001) and alternating least squares algorithm; Lars Kai Hansen's nnmf_als Matlab implementation; Torsten Hothorn's Moore-Penrose inverse function 

}
\references{
Lee and Sung - Algorithms for non-negative matrix factorization. In Advances in Neural Information Processing Systems 13, 2001.
}
\keyword{ matrix factorization }

\examples{

X <- matrix(1:12,3,4) 
ss <- nnmf(X,3)            # 3 factors
sx <- nnmf(X,3,'nnmf_als')  # 3 factors

}
