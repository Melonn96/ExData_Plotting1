## 1. Import the Data into a dataframe
DF <- data.table::fread(file = "household_power_consumption.txt")

## 2. Subset the data we are interested on
Data <- subset(DF, DF$Date == "1/2/2007" | DF$Date == "2/2/2007")

## 3. Prepare the histogram
png("plot1.png", width=480, height=480)
hist(as.numeric(Data$Global_active_power), col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency",
     main = "Global Active Power")
dev.off()


