###Biplot
To make a simple biplot of individuals and variables, type this:
  
  fviz_pca_biplot(res.pca, repel = TRUE,
                  col.var = "#2E9FDF", 
                  col.ind = "#E7B800"
  )
###Cos2
fviz_pca_biplot(res.pca,
                label = "var",
                col.ind = "cos2",
                col.var = "black",
                gradient.cols = c("blue","green","red"))

###Contribution
fviz_pca_biplot(res.pca,
                label = "var",
                col.ind = "black",
                col.var = "contrib",
                gradient.cols = c("blue","green","red"))
