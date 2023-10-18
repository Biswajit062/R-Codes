###Data load
data<-read.csv(file.choose())
head(data)
tail(data)
str(data)
data$X<-as.character(x=data$X)
str(data)
head(data)
rownames(data)<-c(data$X)
head(data)
data1 <-data[,-1]
head(data1)
##Load library
library("factoextra")
library("FactoMineR")	
iris.pca <- PCA(data1[,-13], graph = FALSE)	
fviz_pca_ind(iris.pca, 
             label = "all", 
             col.ind = data1$Cluster, 
             palette = c("#00AFBB", "green", "red", "#FC4E007"),addEllipses = TRUE, ellipse.type = "convex",legend.title = "Cluster"
)
fviz_pca_biplot(iris.pca,
                col.ind = data1$Cluster, 
                palette = c("#000AFBB","green4",  "maroon", "#FC4E07"),addEllipses = TRUE, ellipse.type = "convex",legend.title = "Clusters"
)
fviz_pca_biplot(iris.pca,
                col.ind = data1$Cluster, 
                palette = c("#000AFBB", "red", "green4", "blue3"),addEllipses = TRUE, ellipse.type = "euclid",legend.title = "Cluster"
)

