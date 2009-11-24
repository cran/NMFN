\name{distance2}
\alias{distance2}

\title{
Euclidean Distance between two matrices
}
\description{
Euclidean Distance between two matrices
}
\usage{
distance2(x1, x2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x1}{
Matrix 1
}
  \item{x2}{
Matrix 2
}
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Suhai (Timothy) Liu
}


\examples{

## The function is currently defined as
function (x1, x2) 
{
    temp <- x1 - x2
    sum(temp * temp)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{distance } 
