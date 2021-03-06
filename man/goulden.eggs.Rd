\name{goulden.eggs}
\alias{goulden.eggs}
\docType{data}
\title{
  Sample of egg weights on 24 consecutive days
}
\description{
  Sample of egg weights on 24 consecutive days
}
\usage{data("goulden.eggs")}
\format{
  A data frame with 240 observations on the following 2 variables.
  \describe{
    \item{\code{day}}{day}
    \item{\code{weight}}{weight}
  }
}
\details{

  Data are the weights of 10 eggs taken at random on each day for 24
  days.  Day 1 was Dec 10, and Day 24 was Jan 2.

  The control chart for standard deviations shows 4 values beyond the
  upper limits. The data reveals a single, unusually large egg on each
  of these days.  These are almost surely double-yolk eggs.

}
\source{
  Cyrus H. Goulden (1952).
  \emph{Methods of Statistical Analysis}, 2nd ed. Page 425.

  http://krishikosh.egranth.ac.in/handle/1/2034118
}
\references{
  None.
}
\examples{
data(goulden.eggs)
dat <- goulden.eggs

if(require(qicharts)){
  # Figure 19-4 of Goulden. (Goulden uses 1/n when calculating std dev)
  op <- par(mfrow=c(2,1))
  qic(weight, x = day, data = dat, chart = 'xbar',
      main = 'goulden.eggs - Xbar chart',
      xlab = 'Date', ylab = 'Avg egg weight' )
  qic(weight, x = day, data = dat, chart = 's',
      main = 'goulden.eggs - S chart',
      xlab = 'Date', ylab = 'Std dev egg weight' )
  par(op)
}

}
\keyword{datasets}
