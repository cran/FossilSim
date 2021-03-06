% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/taxonomy.R
\name{taxonomy}
\alias{taxonomy}
\alias{as.taxonomy}
\alias{is.taxonomy}
\title{Taxonomy object}
\usage{
taxonomy(data)

as.taxonomy(data)

is.taxonomy(data)
}
\arguments{
\item{data}{Dataframe of species taxonomy. See Details for the list of required fields.}
}
\description{
Create a taxonomy object relating species identity to a phylo object.
}
\details{
The taxonomy object includes the following 6 fields for each edge in the corresponding phylo object:
\itemize{
\item{\code{sp} true species identity label.
If all species originated via budding or bifurcation this will always correspond to the terminal-most edge label (i.e. the youngest node) associated with each species.
This is not the case if the data set also contains anagenetic species, when multiple species may be associated with a single edge}
\item{\code{edge} edge label of the branch in the corresponding phylo object.
Note some species may be associated with multiple edges}
\item{\code{parent} = ancestor of species \code{sp}. Parent labels follow the same convention as species.
The label assigned to the parent of the origin or root will be zero}
\item{\code{start} = start time of the corresponding \code{edge}} and/or origin time of the species.
If the corresponding edge is also the oldest edge associated with the species this value will equal the species origination time.
If speciation mode is asymmetric or symmetric the speciation time will match the start time of the corresponding edge.
If speciation mode is anagenetic the speciation time will be younger than the start time of the corresponding edge
\item{\code{end} = end time of the corresponding \code{edge}} and/or end time of the species.
If the corresponding edge is also the youngest edge associated with the species this value will equal the species end time.
Unless the species end time coincides with an anagenetic speciation event, the species end time will match the end time of the corresponding edge.
If the species end time coincides with an anagenetic speciation event, the speciation time will be older than the end time of the corresponding edge
\item{\code{mode} = speciation mode. "o" = origin or "r" = root (the edge/species that began the process).
"b" = asymmetric or budding speciation. "s" = symmetric or bifurcating speciation. "a" = anagenetic speciation}
}

Optional fields:
\itemize{
\item{\code{cryptic} TRUE if the speciation event was cryptic. If missing the function assumes \code{cryptic = FALSE}}
\item{\code{cryptic.id} = cryptic species identity. If \code{cryptic = TRUE} \code{cryptic.id} will differ from the true species identity \code{sp}}
}
}
