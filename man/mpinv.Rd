\name{mpinv}
\alias{mpinv}

\title{
Moore-Penrose Inverse
}
\description{
Moore-Penrose Inverse
}
\usage{
mpinv(X)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{X}{
original matrix
}
}
\author{
Torsten Hothorn
}

\examples{

X<-matrix(1:12,3,4)
m.inv = mpinv(X)
}
 
