plot1<-function(file){
  library(lubridate)
  data<-read.csv(file, sep=";")
  as.numeric(data$Global_active_power)
  data$Date <- dmy(data$Date)
  data<-subset(data[, ((Date>="2007-02-01")&(Date<="2007-02-02"))])
  png("plot1.png", width=480, height=480)
  hist(data$Global_active_power, main="Global active power", xlab="Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
  dev.off()
}