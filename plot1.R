
powerData <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
dataSet <- subset(powerData, Date %in% c("1/2/2007","2/2/2007"))

dataSet$Date <- as.Date(dataSet$Date, format="%d/%m/%Y")

hist(dataSet$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

png("plot1.png", width=480, height=480)

dev.off()