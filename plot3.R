## 1. Import the Data into a dataframe
DF <- data.table::fread(file = "household_power_consumption.txt")

## 2. Subset the data we are interested on
Data <- subset(DF, DF$Date == "1/2/2007" | DF$Date == "2/2/2007")

## 3. Sub metering
png("plot3.png", width = 480, height = 480)
plot(datetime, as.numeric(Data$Sub_metering_1), type = "l", col = "black", ylab = "Energy sub metering")
lines(datetime, as.numeric(Data$Sub_metering_2), type = "l", col = "red")
lines(datetime, as.numeric(Data$Sub_metering_3), type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1,
       lwd = 2.5, col = c("black", "red", "blue"))
dev.off()



