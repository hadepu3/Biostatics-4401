peppers_data <- read.csv("/Users/adepu/Downloads/Georgia Tech/Spring 2021/Biostatistics/Extra Credit 3/peppers.csv", header= TRUE, sep = ",")

##to see if the plots are normalized 
d_1989 <- table(peppers_data$year_1989)
barplot(d_1989, main="Distribution 1989",xlab="country")
d_1992 <- table(peppers_data$year_1992)
barplot(d_1992, main="Distribution 1992",xlab="country")

##t-test 
count_1989 <- peppers_data$year_1989
count_1992 <- peppers_data$year_1992
t.test(count_1989,count_1992,paired=TRUE)

#wilcoxn test
#asking the question if the water from upstream is lower 
#in the year 1992
wilcox.test(count_1992,count_1989, alternative = c("less"),
            paired = TRUE)
#KS test 
ks.test(count_1992,count_1989, alternative = c("less"),exact = NULL)
