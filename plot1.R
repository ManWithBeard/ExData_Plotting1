plot1 <- function()
{

  power_consumption <- read.csv2("household_power_consumption.txt")  
  
  time_of_interest <- subset(power_consumption, power_consumption[1] == "1/2/2007" | power_consumption[1] == "2/2/2007")
  
  global_active <- as.numeric(as.vector(time_of_interest$Global_active_power))
  
  png("plot1p.png", height = 480, width = 480)
  
  hist(global_active, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
  
  dev.off()
}
