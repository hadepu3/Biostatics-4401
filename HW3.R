lizard_data <- read.csv("/Users/adepu/Downloads/Georgia Tech/Spring 2021/Biostatistics/HW3/lizards.csv", header= TRUE, sep = ",")

#look at all the length values 
lizard_data$length
#row index is listed first and the column second
lizard_data[,1]

#look at the values for only killed lizards
lengths_killed <- lizard_data$length[lizard_data$status=="killed"]

###QUESTION 1
lengths_killed <- lizard_data$length[lizard_data$status=="killed"]
lengths_alive <- lizard_data$length[lizard_data$status=="living"]

par(mfrow=c(1,2))
#par(mar=c(3, 3, 3, 3))
hist(lengths_alive, xlab="Horn Lengths", ylab="Frequency", main="Horn Lengths of Alive")
hist(lengths_killed, xlab="Horn Lengths", ylab="Frequency", main="Horn Lengths of Killed")

####QUESTION 2
print(mean(lengths_killed))

####QUESTION 3
print(mean(lengths_alive))

####QUESTION 4
var_killed <- (var(lengths_killed))

####QUESTION 5
var_alive <-(var(lengths_alive))

####QUESTION 6
boxplot(length~status, data=lizard_data, xlab= "Status",ylab="Length(mm)",main="Length of Lizards",col=(c("blue","lightgreen")))

####QUESTION 7
total_killed <- length(lengths_killed)
t <- (qt(0.025, df=(total_killed-1)))
print(1-x) 
mean(lengths_killed)-(t*((sqrt(var(lengths_killed)))/(sqrt(length(lengths_killed)))))  
####QUESTION 8
print(qt(0.025, df=(total_killed-1)))
mean(lengths_killed)+(t*((sqrt(var(lengths_killed)))/(sqrt(length(lengths_killed)))))  

####QUESTION 9
total_alive <- length(lengths_alive)
t <- (qt(0.025, df=(total_killed-1)))
print(1-y)
mean(lengths_alive)-(t*((sqrt(var(lengths_alive)))/(sqrt(length(lengths_alive)))))  
####QUESTION 10
print(qt(0.025, df=(total_killed-1)))
mean(lengths_alive)+(t*((sqrt(var(lengths_alive)))/(sqrt(length(lengths_alive)))))  

####QUESTION 11
n <- 29
a <- qchisq(0.95, df= 29, ncp = 0, lower.tail = TRUE, log.p = FALSE)
#((n*var_killed)/a)
(var(lengths_killed)*(total_killed-1))/a
####QUESTION 12
b <-qchisq(0.95, df= 29, ncp = 0, lower.tail = FALSE, log.p = FALSE)
(var(lenghts_killed)*(total_killed-1))/b
####QUESTION 13
c <- qchisq(0.95, df= 29, ncp = 0, lower.tail = TRUE, log.p = FALSE)
(var(lengths_alive)*(total_alive-1))/c
####QUESTINO 14
d <- qchisq(0.95, df= 29, ncp = 0, lower.tail = FALSE, log.p = FALSE)
(var(lengths_alive)*(total_alive-1))/d

##t-test
222+(2.064*((sqrt(169))/(sqrt(25))))
222-(2.064*((sqrt(169))/(sqrt(25))))
t <- abs((qt(.025, df=(24))))
450 + (t*((sqrt(800))/(sqrt(25))))
#Chi squared
#(n-1)*(s^2)/(value on table^2)
#for the lower look at 0.05 in table and for upper look at 0.95
## if you look at 95% ---> alpha = 0.025 and 0.975 
((24)*(169))/(36.415) #lower
((24)*(169))/(13.848) #upper 
b <-qchisq(0.025, df= 24)
(24)*(100)/b

