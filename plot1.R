house <- "./data/household_power_consumption.txt"
data <- read.table(house, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subset_house <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]


#str(subset_house)
globalActivePower <- as.numeric(subset_house$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
