\docType{methods}
\name{getESpawning}
\alias{getESpawning}
\alias{getESpawning,MizerParams,matrix,numeric,matrix-method}
\alias{getESpawning,MizerParams,matrix,numeric,missing-method}
\alias{getESpawning-method}
\title{getESpawning method for the size based model}
\arguments{
  \item{object}{A \code{MizerParams} object.}

  \item{n}{A matrix of species abundance (species x size).}

  \item{n_pp}{A vector of the background abundance by
  size.}

  \item{e}{The energy available for reproduction and growth
  (optional). A matrix of size no. species x no. size bins.
  If not supplied, is calculated internally using the
  \code{getEReproAndGrowth()} method.}
}
\value{
  A two dimensional array (prey species x prey size)
}
\description{
  Calculates the energy available by species and size for
  reproduction after metabolism and movement have been
  accounted for. Used by the \code{project} method for
  performing simulations.
}
\examples{
\dontrun{
data(NS_species_params_gears)
data(inter)
params <- MizerParams(NS_species_params_gears, inter)
# Project with constant fishing effort for all gears for 20 time steps
sim <- project(params, t_max = 20, effort = 0.5)
# Get the energy at a particular time step
getESpawning(params,sim@n[21,,],sim@n_pp[21,])
}
}
\seealso{
  \code{\link{project}} and
  \code{\link{getEReproAndGrowth}}.
}

