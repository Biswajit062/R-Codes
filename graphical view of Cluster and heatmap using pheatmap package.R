###graphical view of Cluster and heatmap using pheatmap package####
###Load the library
library("pheatmap")

###Load the data
data<-read.csv(file.choose())
head(data)
str(data)
data$X<-as.character(x=data$X)
str(data)
head(data)
rownames(data)<-c(data$X)
head(data)
newdata<-data[,-1]
head(newdata)
matx <- scale(newdata)
heatmap(matx, scale = "none")

###Draw Heatmap with Row & Column Clusters (Euclidean", "ward.D2", method )
pheatmap(matx, 
         color=colorRampPalette(c("navy", "white", "red"))(50))
pheatmap(matx, 
         clustering_distance_rows = "euclidean",
         clustering_distance_cols = "euclideaen", clustering_method = "ward.D2",
         cutree_rows = 4, cutree_cols =3, 
         color=colorRampPalette(c("navy", "white", "red"))(50))

