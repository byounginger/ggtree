# 6_19_2018

# GG_Tree code for Catenasporaceae MS

library(ape)
library(ggtree)
library(geiger)
library(tidytree)


setwd("/Users/brett/Documents/Catenasporaceae/R")

tree1 <- read.beast("T8.tre")
ggtree(tree1) + geom_tiplab() + geom_text(aes(label = bootstrap))
tree1
get.fields(tree1)
tr2 <- root(tree1, 1)



tr3 <- read.raxml("RAxML_bipartitionsBranchLabels.T3")
get.fields(tr3)
ggtree(tr3) + geom_tiplab() + 
  geom_text(aes(label = node))
# reroot(tr3, 1)

####
tr4 <- fortify(tr3)
ggtree(tr4) + geom_tiplab() + geom_text2(aes(label=node))
tail(tr4)
is.rooted(tr3)
getRoot(tr4)
tr5 <- reroot(tr3, 1)
root(tr3, "Trichoglossum_hirsutum", resolve.root = TRUE)
#####

tr5 <- read.nexus("T8.tre")
is.binary(tr5)
is.rooted(tr5)
tr6 <- root(tr5, "Trichoglossum_hirsutum", resolve.root = TRUE )
is.rooted(tr6)
is.binary(tr6)
tr7 <- fortify(tr6)
ggtree(tr6) + geom_tiplab() + geom_text2(aes(x = branch, label = bootstrap))
tr7

######

tr8 <- read.raxml("RAxML_bipartitionsBranchLabels.T3")
head(tr8)
tr9 <- fortify(tr8)
head(tr9)
is.binary(tr9)

######
tr10 <- read.tree("RAxML_bipartitions.T3")
tr10
is.rooted(tr10)
head(tr10)
tr11 <- root(tr10, "Trichoglossum_hirsutum", resolve.root = TRUE)
is.rooted(tr11)
head(tr11)
ggtree(tr10) + geom_tiplab() + geom_text2(aes(x = branch, label = label))
