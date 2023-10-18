library (doebioresearch)
data<-read.csv(file.choose())
head(data)

####RCBD 1F ANOVA and LSD

rcbd(data[3:8],data$Gen,data$Rep,1)
rcbd(data[9:13],data$Gen,data$Rep,1)

####RCBD 1F ANOVA and DMRT
rcbd(data[3:8],data$Gen,data$Rep,2)

