house <- "./data/household_power_consumption.txt"
data <- read.table(house, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subset_house <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# Making png file
datetime <- strptime(paste(subset_house$Date, subset_house$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subset_house$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()