### ##Descriptive by Mean data using Pastecs package#####

library(pastecs)
my_data <- read.csv(file.choose())	Data Input
head (my_data)	Data view
res <- stat.desc(my_data) 	
round(res,2)
round(res,3)

stat.desc(my_data, basic=TRUE, desc=TRUE, norm=TRUE, p=0.95)
####End Descriptive statistics####
