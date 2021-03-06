% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/degree_days.R
\name{degree_days}
\alias{degree_days}
\title{Caclulate degree days}
\usage{
degree_days(data, thresholds)
}
\arguments{
\item{data}{data in wide format with minimum temperature labeled as tmin and maximum temperature labeled as tmax}

\item{thresholds}{threshold of temperature intervals to calculate degree days}
}
\description{
\code{degree_days} returns a data frame with calculated daily degree days within a specified thresholds.
}
\details{
To generate degree days the data must be in wide format with minimum temperature 
column labeled as tmin and maximum temperature labeled as tmax. 

Degree days are calcuated from the following cases:

(1) Minimum temperature >= threshold

dday = (tmax - tmin/2) - threshold

(2) Minimum temperature < Threshold < Maximum Temperature

dday = ( W integral_{theta}^{pi/2} sin(t)dt - integral_{theta}^{pi/2} (threshold - tmin)dt ) / pi

W = (tmax - tmin)/2

theta = sin^{-1} [ ( tmax - tmin )/W ]

(3) Otherwise, degree days = 0
}
\examples{
data(napa)
degree_days(napa, thresholds = c(0:35))
}
\references{
Snyder, Richard L. "Hand calculating degree days." Agricultural and forest meteorology 35, no. 1-4 (1985): 353-358.

Woodill, A. John "United States Temperature Exposure 1900-2013." (2016) 
http://johnwoodill.blogspot.com/2016/06/us-degree-days-heat-map-interesting.html
}
