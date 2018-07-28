## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)
library(FossilSim)

## ------------------------------------------------------------------------
t = ape::rtree(6)
f = sim.fossils.poisson(rate = 2, tree = t)

SAt = SAtree.from.fossils(t,f)
print(SAt)
print(SAt$complete)

## ------------------------------------------------------------------------
plot(SAt)

## ------------------------------------------------------------------------
ape::plot.phylo(SAt)

## ------------------------------------------------------------------------
SAt_pruned = prune.fossils(SAt)
ape::plot.phylo(SAt_pruned)

## ------------------------------------------------------------------------
SAt_sampled = sampled.tree.from.combined(SAt)
ape::plot.phylo(SAt_sampled)

