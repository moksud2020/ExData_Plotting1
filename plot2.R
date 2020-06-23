
powerData <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')

dataSet <- subset(powerData, Date %in% c("1/2/2007","2/2/2007"))

dataSet$Date <- as.Date(dataSet$Date, format="%d/%m/%Y")

date_time <- paste(as.Date(dataSet$Date), dataSet$Time)

dataSet$Datetime <- as.POSIXct(date_time)

## Plot 2
with(dataSet, {
  plot(Global_active_power~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
})

dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()