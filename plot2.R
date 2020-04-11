## 1. Import the Data into a dataframe
DF <- data.table::fread(file = "household_power_consumption.txt")

## 2. Subset the data we are interested on
Data <- subset(DF, DF$Date == "1/2/2007" | DF$Date == "2/2/2007")

## 3. Global Active Power over the days
datetime <- strptime(paste(Data$Date, Data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(datetime, as.numeric(Data$Global_active_power), type = "l", ylab = "Global Active Power (kilowatts)", main = "Global Power vs Time")
dev.off()

