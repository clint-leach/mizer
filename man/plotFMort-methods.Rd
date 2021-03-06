\docType{methods}
\name{plotFMort}
\alias{plotFMort}
\alias{plotFMort,MizerSim-method}
\alias{plotFMort-method}
\title{Plot total fishing mortality of each species by size}
\arguments{
  \item{object}{An object of class \code{MizerSim}.}

  \item{time_range}{The time range (either a vector of
  values, a vector of min and max time, or a single value)
  to average the abundances over. Default is the final time
  step.}

  \item{print_it}{Display the plot, or just return the
  ggplot2 object}
}
\value{
  A ggplot2 object
}
\description{
  After running a projection, plot the total fishing
  mortality of each species by size. The total fishing
  mortality is averaged over the specified time range (a
  single value for the time range can be used to plot a
  single time step).
}
\examples{
\dontrun{
data(NS_species_params_gears)
data(inter)
params <- MizerParams(NS_species_params_gears, inter)
sim <- project(params, effort=1, t_max=20, t_save = 2)
plotFMort(sim)
plotFMort(sim, time_range = 10:20)
}
}
\seealso{
  \code{\link{getFMort}}
}

