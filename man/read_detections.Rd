\name{read_detections}
\alias{read_detections}
\title{Read a file with detection counts per area}
\usage{
  read_detections(detects_fn, OTUnames = NULL,
    areanames = NULL, tmpskip = 0, phy = NULL)
}
\arguments{
  \item{detects_fn}{The filename of the detections file.}

  \item{OTUnames}{Default \code{NULL}, in which case the
  first column of the text file is used as row names/OTU
  names.}

  \item{areanames}{Default \code{NULL}, in which case the
  text file column headings are used.}

  \item{tmpskip}{How many lines should be skipped before
  reading the text file?  Default \code{0}.}

  \item{phy}{An ape phylo object. If included, the rows
  will be sorted to match the order of tree tip labels.}
}
\value{
  \code{dtf}
}
\description{
  This function reads in a tab-delimited text file
  containing counts of detections of each OTU in each
  region.  These could be from database records or some
  other source.
}
\note{
  Go BEARS!
}
\examples{
testval=1

# soft-coded input files
extdata_dir = np(system.file("extdata", package="BioGeoBEARS"))
detects_fn = np(paste(extdata_dir, "/Psychotria_detections_v1.txt", sep=""))
controls_fn = np(paste(extdata_dir, "/Psychotria_controls_v1.txt", sep=""))

OTUnames=NULL
areanames=NULL
tmpskip=0
phy=NULL

dtf = read_detections(detects_fn, OTUnames=NULL, areanames=NULL, tmpskip=0, phy=NULL)
dtf

trfn = np(paste(extdata_dir, "/Psychotria_5.2.newick", sep=""))
phy = read.tree(trfn)

dtf = read_detections(detects_fn, OTUnames=NULL, areanames=NULL, tmpskip=0, phy=phy)
dtf




# soft-coded input files
extdata_dir = np(system.file("extdata", package="BioGeoBEARS"))
detects_fn = np(paste(extdata_dir, "/Psychotria_detections_v1.txt", sep=""))
controls_fn = np(paste(extdata_dir, "/Psychotria_controls_v1.txt", sep=""))

OTUnames=NULL
areanames=NULL
tmpskip=0
phy=NULL

dtf = read_controls(controls_fn, OTUnames=NULL, areanames=NULL, tmpskip=0, phy=NULL)
dtf

trfn = np(paste(extdata_dir, "/Psychotria_5.2.newick", sep=""))
phy = read.tree(trfn)

dtf = read_controls(controls_fn, OTUnames=NULL, areanames=NULL, tmpskip=0, phy=phy)
dtf
}
\author{
  Nicholas J. Matzke \email{matzke@berkeley.edu}
}
\references{
  \url{http://phylo.wikidot.com/matzke-2013-international-biogeography-society-poster}

  Matzke_2012_IBS

  Bottjer_Jablonski_1988
}
\seealso{
  \code{\link[cladoRcpp]{rcpp_calc_anclikes_sp_COOweights_faster}}
}

