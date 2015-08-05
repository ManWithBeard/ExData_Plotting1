plot2 <- function()
{ 
  
  power_consumption <- read.csv2("household_power_consumption.txt")  
  
  time_of_interest <- subset(power_consumption, power_consumption[1] == "1/2/2007" | power_consumption[1] == "2/2/2007")
  
  global_active <- as.numeric(as.vector(time_of_interest$Global_active_power))
  
  png("plot2.png", height = 480, width = 480)
  
  plot(global_active, type = 'l', xaxt = "n", ylab = "Global Active Power (kilowatts)", xlab = "")
  
  axis(1, at = c(1,1440,2880), labels = c("Thu","Fri","Sat"))
  
  dev.off()
  
  global_active
}
