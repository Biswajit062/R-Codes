###correlation matrix and correlation plot
library (corrplot)
my_data <- read.csv(file.choose())
head(my_data)
d<-my_data[,c(-1)]

d
cor(d)
mat <-cor(d)
library (corrplot)
##1_Corrplot
corrplot(mat)
##2_Corrplot
corrplot(mat,method="ellipse", type="lower")

library(RColorBrewer)
M <-cor(d) 
testRes = cor.mtest(d, conf.level = 0.95)

corrplot(M, p.mat = testRes$p, method = 'ellipse', diag = FALSE, type = 'full', sig.level = c(0.001, 0.01, 0.05), pch.cex = 1, insig = 'label_sig', pch.col = 'grey20', order = 'AOE')

corrplot(M, p.mat = testRes$p, method = 'color', diag = FALSE, type = 'upper',
         sig.level = c(0.001, 0.01, 0.05), pch.cex = 2,
         insig = 'label_sig', pch.col = 'grey20', order = 'AOE')

corrplot(M, p.mat = testRes$p, method = 'ellipse', diag = TRUE, type = 'lower',
         sig.level = c(0.001, 0.01, 0.05), pch.cex = 2,
         insig = 'label_sig', pch.col = 'green4', order = 'AOE')

my_data <- read.csv(file.choose())
head(my_data)
d<-my_data[,c(-1)]
d
cor(d)
mat <-cor(d)

##Test fig 03
library (corrplot)
corr_mat=cor(mat,method="s")
corr_mat[1:5,1:5]
corrplot(corr_mat)  
##Test fig 04
library(RColorBrewer)
corrplot(corr_mat, method = "color", outline = T, addgrid.col = "darkgray", order="hclust", addrect = 4, rect.col = "black", rect.lwd = 5,cl.pos = "b", tl.col = "indianred4", tl.cex = 1.5, cl.cex = 1.5, addCoef.col = "white", number.digits = 2, number.cex = 0.75, col = colorRampPalette(c("darkred","white","midnightblue"))(100))
