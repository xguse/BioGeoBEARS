\name{invtransform_with_logistic}
\alias{invtransform_with_logistic}
\title{paramval=0.3, minval=0, maxval=1), minval=0, maxval=1)
paramval=0.3, minval=0, maxval=5), minval=0, maxval=5)
Transform rescaled values back to continuously-sampled parameter on -Inf, +Inf to a boundedly-sampled parameter}
\usage{
  invtransform_with_logistic(transformed_paramval,
    minval = 0, maxval = 1)
}
\arguments{
  \item{transformed_paramval}{The input value in the range
  [minval, maxval]}

  \item{minval}{The minimum rescaled value (default 0)}

  \item{maxval}{The maximum rescaled value (default 1)}
}
\value{
  \code{paramval}
}
\description{
  \code{\link[LaplacesDemon]{LaplacesDemon}} likes to run
  its MCMC sampling on a simple number line.  Thus, the
  likelihood function etc. should transform the numbers
  into the range desired, e.g. 0-1.
  invtransform_with_logistic does the reverse transform.
}
\note{
  Go BEARS!
}
\examples{
test=1

# Transform regular-space parameters to logistic space
invlogit(0.5)
transform_with_logistic(paramval=0.5, minval=0, maxval=1)
transform_with_logistic(paramval=0.5, minval=0, maxval=5)

invlogit(0.3)
transform_with_logistic(paramval=0.3, minval=0, maxval=1)
transform_with_logistic(paramval=0.3, minval=0, maxval=5)

# Transform logistic-space parameters back to regular space
logit(0.5744425)
invtransform_with_logistic(transformed_paramval=0.5744425, minval=0, maxval=1)
invtransform_with_logistic(transformed_paramval=3.112297, minval=0, maxval=5)

logit(0.5744425)
invtransform_with_logistic(transformed_paramval=0.5744425, minval=0, maxval=1)
invtransform_with_logistic(transformed_paramval=2.872213, minval=0, maxval=5)

# These should transform, then undo the transform
invtransform_with_logistic(transformed_paramval=transform_with_logistic(
paramval=0.3, minval=0, maxval=1), minval=0, maxval=1)
invtransform_with_logistic(transformed_paramval=transform_with_logistic(
paramval=0.3, minval=0, maxval=5), minval=0, maxval=5)
}
\author{
  Nicholas J. Matzke \email{matzke@berkeley.edu}
}
\references{
  \url{http://phylo.wikidot.com/matzke-2013-international-biogeography-society-poster}

  LaplacesDemon_Tutorial

  Matzke_2012_IBS
}
\seealso{
  \code{\link[LaplacesDemon]{LaplacesDemon}}
}

