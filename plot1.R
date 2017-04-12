## PLOT 1 
##Reads in the “Individual household electric power consumption Data Set” available from the UC Irvine Machine Learning Repository, and produces a histogram of the frequency of Global Active Power consumption in kilowatts for the dates February 1 and 2, 2007. 


  power <- read.table("household_power_consumption.txt", header=T, sep=";")
  power$Date <- as.Date(power$Date, format="%d/%m/%Y")
  
  df <- power[(power$Date=="2007-02-01") | (power$Date=="2007-02-02"),]
  
  df$Global_active_power <- as.numeric(as.character(df$Global_active_power))
  
  hist(df$Global_active_power, main = paste("Global Active Power"), col="red", xlab="Global Active Power (kilowatts)")
  
  dev.copy(png, file="plot1.png", width=480, height=480)
  dev.off()