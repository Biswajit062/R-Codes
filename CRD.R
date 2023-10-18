library (doebioresearch)
data<-read.csv(file.choose())
head(data)
crd(data[2:8],data$Treatments,1)
crd(data[9:12],data$Treatments,1)
### Output data save

