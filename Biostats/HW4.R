lizard_data <- read.csv("/Users/adepu/Downloads/Georgia Tech/Spring 2021/Biostatistics/HW3/lizards.csv", header= TRUE, sep = ",")

living_avg_horn <- 24.2812
killed_avg_horn <- 21.9867 
lengths_killed <- lizard_data$length[lizard_data$status=="killed"]
lengths_alive <- lizard_data$length[lizard_data$status=="living"]


#question 1-4
var.test(lengths_killed, y = lengths_alive, conf.level = 0.95, var.equal = TRUE )
#1 = 0.94276
#2 = 153
#3 = 29
#4 = 0.7859


#question 5-8 
t.test(lengths_alive, y = lengths_killed, alternative = c("less"), conf.level = 0.95)
#5 = 4.263
#6 = 40.372
#7 = 0.9999
#8 = ?

fish_data <- read.csv("/Users/adepu/Downloads/Georgia Tech/Spring 2021/Biostatistics/HW4/fish.csv", header= TRUE, sep = ",")
View(fish_data)
bluefin <- fish_data$size[fish_data$species=="bluefin"]
redfin <- fish_data$size[fish_data$species=="redfin"]

length(bluefin)
length(redfin) #greater number of samples 

#question 9-11
var.test(redfin, y = bluefin, conf.level = 0.95, var.equal=TRUE)
#9 = 0.41655
#10 = 244
#11 = 220

#question 12-14
t.test(redfin, y = bluefin, alternative = c("less"), conf.level = 0.95)
#12 = 11.369
#13 = 369.37 
#14 = ?