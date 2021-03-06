\docType{methods}
\name{plotYield}
\alias{plotYield}
\alias{plotYield,MizerSim-method}
\alias{plotYield-method}
\title{Plot the total yield of each species through time}
\arguments{
  \item{object}{An object of class \code{MizerSim}}

  \item{print_it}{Display the plot, or just return the
  ggplot2 object}
}
\value{
  A ggplot2 object
}
\description{
  After running a projection, the total yield of each
  species across all fishing gears can be plotted against
  time. This plot is pretty easy to do by hand. It just
  gets the biomass using the \code{\link{getYield}} method
  and plots using the ggplot2 package. You can then fiddle
  about with colours and linetypes etc. Just look at the
  source code for details.
}
\examples{
\dontrun{
data(NS_species_params_gears)
data(inter)
params <- MizerParams(NS_species_params_gears, inter)
sim <- project(params, effort=1, t_max=20, t_save = 2)
plotYield(sim)
}
}
\seealso{
  \code{\link{getYield}}
}

