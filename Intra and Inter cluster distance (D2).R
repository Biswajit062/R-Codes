####Intra and Inter cluster distance (D2) ####

####Data load
pea<-read.csv(file.choose())
head(pea)

####Scaling####
pea.s <-scale(pea[,-1])
pea.s

####dissimilarity matrix####
d <-dist (pea.s)
options (max.print=100000)

#### hirearchical distance (Ward.D2 means Euclidean and ward squared method)
library(NbClust)
wardse <-hclust(d,"ward.D2")
hcm <-cutree(wardse, k=4)
hcm

###Inter and Intra distance
library(clv)
hid <-cls.scatt.data(pea.s,hcm)
