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

## The function is currently defined as
function (X) 
{
    Eps <- 100 * .Machine$double.eps
    s <- svd(X)
    d <- s$d
    m <- length(d)
    if (!(is.vector(d))) 
        return(t(s$v \%*\% (1/d) \%*\% t(s$u)))
    d <- d[d > Eps]
    notnull <- length(d)
    if (notnull == 1) {
        inv <- 1/d
    }
    else {
        inv <- solve(diag(d))
    }
    if (notnull != m) {
        inv <- cbind(inv, matrix(0, nrow = notnull, ncol = (m - 
            notnull)))
        inv <- rbind(inv, matrix(0, nrow = (m - notnull), ncol = m))
    }
    mp <- s$v \%*\% inv \%*\% t(s$u)
    mp[abs(mp) < Eps] <- 0
    return(mp)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Moore-Penrose }
\keyword{ inverse }% __ONLY ONE__ keyword per line
