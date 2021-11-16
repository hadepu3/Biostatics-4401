oil_data <- read.csv("/Users/adepu/Downloads/Georgia Tech/Spring 2021/Biostatistics/oil.csv", header= TRUE, sep = ",")


boxplot(oil_data$OilPercent~oil_data$BeachID, main="Oil percent of different beaches",
        xlab = "BeachID", ylab = "Oil Percent", col=blues9, par(las=3),cex.axis=0.75)

boxplot(mpg~cyl,data=mtcars, main="Car Milage Data",
        xlab="Number of Cylinders", ylab="Miles Per Gallon")