## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)
library(FossilSim)

## -----------------------------------------------------------------------------
t = ape::rtree(6)
f = sim.fossils.poisson(rate = 2, tree = t)

SAt = SAtree.from.fossils(tree = t, fossils = f)
print(SAt$tree)
print(SAt$fossils)
print(SAt$tree$complete)

## -----------------------------------------------------------------------------
SAt_pruned = prune.fossils(tree = SAt$tree)
plot(SAt_pruned)

## -----------------------------------------------------------------------------
SAt_sampled = sampled.tree.from.combined(tree = SAt$tree)
plot(SAt_sampled)

