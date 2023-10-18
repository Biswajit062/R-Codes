####Cluster analysis (Euclidean distance and ward clustering) using factoextra package####
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
newdata<-data[,-1]
head(newdata)
df1<-newdata
df <- na.omit(df1)
df <- scale(df1)
head(df)

##Dissimilarity matrix/distance matrix
res.dist<-dist(x=df,method="euclidean")
res.hc<-hclust(d=res.dist,method="ward.D2")
plot(x=res.hc)
library(factoextra)
fviz_dend(x=res.hc,cex=0.7,lwd=0.7)

###Rectangle fill with no border
fviz_dend(x=res.hc,cex=0.8,lwd=0.8,k=6, k_colors="jco")

###Rectangle fill with border
fviz_dend(x=res.hc,cex=0.8,lwd=0.8,k=6, rect=TRUE, rect_border="jco",  k_colors="jco", rect_fill=TRUE)
###Rectangle fill with rotted
fviz_dend(x=res.hc,cex=0.8,lwd=0.8,k=6, rect=TRUE, rect_border="jco",  k_colors="jco", rect_fill=TRUE, horiz=TRUE)
###Rectangle fill with rotted with theme
fviz_dend(res.hc,cex=0.8,lwd=0.8,k=6,rect=TRUE,k_colors="jco",rect_border="jco",rect_fill=TRUE,ggtheme=theme_classic())
### Circular type cluster
fviz_dend(res.hc,cex=0.8,lwd=0.8,k=3,rect=TRUE, k_colors="jco",rect_border="jco",rect_fill=TRUE, type="circular")

### Phylogenic type cluster
fviz_dend(res.hc,cex=0.8,lwd=0.8,k=7,rect=TRUE, k_colors="jco", rect_border="jco", rect_fill=TRUE, type="phylogenic")

### Phylogenic type cluster layout.gem
fviz_dend(res.hc,cex=0.8,lwd=0.8,k=7,rect=TRUE, k_colors="jco",rect_border="jco", rect_fill=TRUE, type="phylogenic",repel=TRUE,phylo_layout="layout.gem")
### Phylogenic type cluster layout_as_tree
fviz_dend(res.hc,cex=0.8,lwd=0.8,k=3,rect=TRUE, k_colors="jco",rect_border="jco",rect_fill=TRUE, type="phylogenic",repel=TRUE,phylo_layout="layout_as_tree")
