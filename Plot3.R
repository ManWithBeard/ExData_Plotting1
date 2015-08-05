plot3 <- function()
{ 
  
  power_consumption <- read.csv2("household_power_consumption.txt")  
  
  time_of_interest <- subset(power_consumption, power_consumption[1] == "1/2/2007" | power_consumption[1] == "2/2/2007")
  
  sub1 <- as.numeric(as.vector(time_of_interest$Sub_metering_1))
  
  sub2 <- as.numeric(as.vector(time_of_interest$Sub_metering_2))
  
  sub3 <- as.numeric(as.vector(time_of_interest$Sub_metering_3))
  
  png("plot3.png", height = 480, width = 480)
  
  plot(sub1, type = 'l',  xaxt = "n", xlab = "", ylab = "Energy sub metering") #, legend(1800,0030,c("line1","line2","line3"))) #, lty = c(1,1))
  
  lines(sub2, col = "red")
  
  lines(sub3, col = "blue")
  
  axis(1, at = c(1,1440,2880), labels = c("Thu","Fri","Sat"))
  
  legend(1750,40,legend="Sub_metering_1", lty=1, bty="n")
  legend(1750,37,legend="Sub_metering_2", lty=1, col="red",bty="n")
  legend(1750,34,legend="Sub_metering_3", lty=1, col="blue",bty="n")
  
  rect(1700, 40, 3000, 30)
  
  box()
  
  dev.off()
  
  sub1
}
