\name{arc.fromP4ToWkt}
\docType{methods}
\alias{arc.fromP4ToWkt}
\title{Convert PROJ.4 Coordinate Reference System string to Well-known Text.}
\usage{
  arc.fromP4ToWkt(proj4)
}
\arguments{
\item{proj4}{PROJ.4 projection string}
}
\value{
  return WKT string
}
\description{
The \code{arc.fromP4ToWkt} command converts a PROJ.4 coordinate
reference system (CRS) string to a well-known text (WKT) representation.
Well-known text is used by ArcGIS and other applications to robustly
describe a coordinate reference system. Converts PROJ.4 stings which
include either the '+proj' fully specified projection parameter, or the
'+init' form that takes well-known IDs (WKIDs), such as EPSG codes,
as input.
}
\details{
The produced WKT is equivalent to the ArcPy spatial reference
exported string:

\code{arcpy.Describe(layer).SpatialReference.exportToString()}
}
\note{
The '+init' method currently only works with ArcGIS Pro.
}
\section{References}{

 \enumerate{
   \item OGC specification
     \href{http://docs.opengeospatial.org/is/12-063r5/12-063r5.html#36}{
   12-063r5}
   \item \href{http://desktop.arcgis.com/en/desktop/latest/guide-books/map-projections/what-are-map-projections.htm}{ArcGIS Help: What are map projections?}
}
}
\examples{

arc.fromP4ToWkt("+proj=eqc") # Equirectangular

arc.fromP4ToWkt("+proj=latlong +datum=wgs84") # WGS 1984 geographic

arc.fromP4ToWkt("+init=epsg:2806") # initalize based on EPSG code
}
\seealso{
\code{\link{arc.fromWktToP4}}
}

\keyword{method}
\keyword{projection}
