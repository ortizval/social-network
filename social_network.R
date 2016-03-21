# social network project

# author Ivan Valencia

# 2016

# definitions

# read data

edges <- read.table("~/social-network/social-network/edges", quote="\"", comment.char="")

dist <- abs(edges[,1] - edges[,2])

edges.d <- cbind(edges,dist = dist)

vertices <- sort(unique(c(edges[,1],edges[,2])))

# calculates distances between node N1 and N2

N1 <- 10 

N2 <- 20


# select from graph N1 and N2 contacts

edges.s <- as.matrix(edges.d[,1:2] )

seleN1 <- which(edges.s == N1 ,arr.ind = TRUE)
seleN2 <- which(edges.s == N2 ,arr.ind = TRUE)

edges.s[seleN1[,1],]
edges.s[seleN2[,1],]

