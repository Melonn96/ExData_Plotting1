## 1. Import the Data into a dataframe
DF <- data.table::fread(file = "household_power_consumption.txt")

## 2. Subset the data we are interested on
Data <- subset(DF, DF$Date == "1/2/2007" | DF$Date == "2/2/2007")

## 6. 4 plots 
png("plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))
plot(datetime, as.numeric(Data$Global_active_power), type = "l", ylab = "Global Active Power (kilowatts)")
plot(datetime, as.numeric(Data$Voltage), type = "l", ylab = "Voltage")
plot(datetime, as.numeric(Data$Sub_metering_1), type = "l", col = "black", ylab = "Energy sub metering")
lines(datetime, as.numeric(Data$Sub_metering_2), type = "l", col = "red")
lines(datetime, as.numeric(Data$Sub_metering_3), type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = ,
       lwd = 2.5, col = c("black", "red", "blue"), bty = "o")
plot(datetime, as.numeric(Data$Global_reactive_power), type = "l", ylab = "Global Reactive Power (kilowatts)")
dev.off()

