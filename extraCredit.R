library("readxl")
library("gridExtra")
library('ggplot2')

mamal_data = read.csv('C:\\Users\\ajay1\\Desktop\\Georgia Tech\\BIOS4401\\mammals.csv')

hist(mamal_data$LogBodyMass, xlab='Species', ylab='body mass', main='Body Mass of all species')

ggplot(mamal_data, aes(x=BodyMass))+ geom_histogram(color="darkblue", fill="lightblue") + 
  labs(title="Body mass histograms",  x='Body Mass', y='Frequency')

bm <- mamal_data$BodyMass

mamal_data$LogBodyMass <- log(mamal_data$BodyMass)

#question 1
hist(mamal_data$BodyMass, xlab='Body Mass', ylab='Frequency', main='Body Mass of all species')

#question 2
hist(mamal_data$LogBodyMass, xlab='Body Mass', ylab='Freqeuncy', main='Body Mass of all species')

#GGplot graphs for histograms
ggplot(mamal_data, aes(x=BodyMass))+ geom_histogram(color="darkblue", fill="lightblue") + 
  labs(title="Body mass histograms",  x='Body Mass', y='Frequency')

ggplot(mamal_data, aes(x=LogBodyMass))+ geom_histogram(color="darkblue", fill="lightblue") + 
  labs(title="Body mass histograms",  x='Body Mass', y='Frequency')

#question 3 boxplots

plot1 <- ggplot(mamal_data, aes(x=ThreatStatus,y=BodyMass, fill=ThreatStatus))+geom_boxplot() + 
  labs(title="Boxplots of Body mass and Threat Status",  x='Threat Status', y='Body Mass')
plot2 <- ggplot(mamal_data, aes(x=ThreatStatus,y=LogBodyMass, fill=ThreatStatus))+geom_boxplot() + 
  labs(title="Boxplots of Body mass and Threat Status",  x='Threat Status', y='Body Mass')
grid.arrange(plot1, plot2, ncol=2)


#question 4 scatter plots

ggplot(mamal_data, aes(x=LogBodyMass,y=Range, color=Range))+geom_jitter() + 
  labs(title="scatter plot of Body mass and ranges",  y='range', x='Body Mass')

ggplot(mamal_data, aes(LogBodyMass, Range)) +
  geom_point(shape = 3, color = "#FC4E07", size = 3)+
  theme_minimal() + labs(title="scatter plot of Body mass and ranges",  y='range', x='Body Mass')


td = table(mamal_data$ThreatStatus)

pie(td, labels=mamal_data$ThreatStatus)

ThreatStatus <- c('CR', 'DD', 'EN', 'LC', 'NT', 'VU')
frequency <- c(185, 764, 461, 1, 3152, 349, 524)



pie(frequency, labels=ThreatStatus, main='Pie Chart for Threat Status and frequency')

df <- data.frame(
  ThreatStatus <- c('CR', 'DD', 'EN', 'LC', 'NT', 'VU'),
  frequency <- c(185, 764, 461, 1, 3152, 349, 524)
)
head(df)