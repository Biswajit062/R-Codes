###Estimation of genetic parameters and variance components using “variability” package

library(variability)	Load package
vardata<-read.csv(file.choose())	Data Input
head(vardata)	Data view 1st 6 rows
tail(vardata)
Data view last 6 rows

####Analysis of Covariance####
data(vardata)
ancova(vardata[3:9],vardata$Gen,vardata$Rep)
####Estimation of Genetic Parameters####

Output Results
ANOVA, genotypic and phenotypic coefficient of variance, heritability, genetic advance and genetic advance as percentage of mean.

##### Estimation of Genetic Parameters#####
gen.var(vardata[3:9],vardata$Gen,vardata$Rep)

#####Genotypic Correlation Analysis#####
geno.corr(vardata[3:9],vardata$Gen,vardata$Rep)

#### Phenotypic Correlation Analysis####
pheno.corr (vardata[3:9],vardata$Gen,vardata$Rep)

####Estimation of direct and indirect effect####

#### Genotypic Path Analysis####
geno.path(vardata[9],vardata[3:8],vardata$Gen,vardata$Rep)

#### Phenotypic Path Analysis####
pheno.path(vardata[9],vardata[3:8],vardata$Gen,vardata$Rep)

### Output data save
