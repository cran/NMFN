\name{NMFN-package}
\alias{NMFN-package}
\alias{NMFN}
\docType{package}
\title{
Non-negative Matrix Factorization - Overview
}
\description{
Non-negative Matrix Factorization
}
\details{
\tabular{ll}{
Package: \tab NMFN\cr
Type: \tab Package\cr
Version: \tab 2.0\cr
Date: \tab 2010-01-02\cr
License: \tab GPL\cr
LazyLoad: \tab yes\cr
}

}
\author{Suhai (Timothy) Liu <tim.liu@alumni.duke.edu>  based on multiplicative updates (Lee and Seung 2001), alternating least squares and multinomial algorithms; Lars Kai Hansen's nnmf_als Matlab implementation; Torsten Hothorn's Moore-Penrose inverse function 

}
\references{
Lee and Seung - Algorithms for non-negative matrix factorization. In Advances in Neural Information Processing Systems 13, 2001.
}
\keyword{non-negative matrix factorization, multiplicative update, alternating least squares, multinomial}
\examples{

X <- matrix(1:12,3,4) 
z.mm   <- nnmf(X,3)             # 3 factors via multiplicative update
z.als  <- nnmf(X,3,'nnmf_als')  # 3 factors via alternating least square
z.prob <- nnmf(X,3,'nnmf_prob') # 3 factors via multinomial

}
