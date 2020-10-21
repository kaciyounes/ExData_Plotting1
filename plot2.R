plot2<-function(file){
  library(lubridate)
  data<-read.csv(file, sep=";")
  as.numeric(data$Global_active_power)
  data$Date <- dmy_hms(paste(data$Date,data$Time))
  data<-subset(data[, ((Date>="2007-02-01")&(Date<"2007-03-02"))])
  png("plot2.png", width=480, height=480)
  plot(x= data1$Date, y = data1$Global_active_power , xlab="", ylab = "Global Active Power (kilowatts", type = "l") 
  dev.off()
}