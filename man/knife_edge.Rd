\name{knife_edge}
\alias{knife_edge}
\title{Size based knife-edge selectivity function}
\usage{
  knife_edge(w, knife_edge_size)
}
\arguments{
  \item{w}{The size of the individual.}

  \item{knife_edge_size}{The size at which the knife-edge
  operates.}
}
\description{
  A knife-edge selectivity function where only sizes
  greater or equal to \code{knife_edge_size} are selected.
}

