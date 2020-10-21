plot3<-function(file){
  library(lubridate)
  data<-read.csv(file, sep=";")
  data$Date <- dmy_hms(paste(data$Date,data$Time))
  data<-subset(data[, ((Date>="2007-02-01")&(Date<"2007-03-02"))])
  png("plot3.png", width=480, height=480)
  plot(x = data1$Date, y = data1$Sub_metering_1 , xlab="" , ylab = "Energy sub metering" , type = "l")
  lines(x = data1$Date , y = data1$Sub_metering_2 , col="red")
  lines(x = data1$Date , y = data1$Sub_metering_3 , col="blue")
  legend("topright"
                 , col=c("black","red","blue")
                 , c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  ")
                 ,lty=c(1,1), lwd=c(1,1))
  dev.off()
}