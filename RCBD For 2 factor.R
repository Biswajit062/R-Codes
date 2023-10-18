library (doebioresearch)
data<-read.csv(file.choose())
head(data)
####RCBD 2F ANOVA and LSD
frbd2fact(data[4:10],data$Rep,data$Trt,data$Var,1)

####RCBD 2F ANOVA and DMRT
frbd2fact(data[4:10],data$Rep,data$Trt,data$Var,2)

####RCBD 2F ANOVA and Tukey
frbd2fact(data[4:10],data$Rep,data$Trt,data$Var,3)
