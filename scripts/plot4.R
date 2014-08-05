## Set working directory
setwd("../ExploratoryAnalysis/data")

## Load in prepared dataset (see PrepareData.R)
ds <- read.csv("workingdata.csv")

## Plot 4
png("plot4.png",bg="white")
par(mfrow=c(2,2))

plot(ds$datetime, ds$Global_active_power, ylab="Global Active Power", xlab="", type="l")

plot(ds$datetime, ds$Voltage, ylab="Voltage", xlab="datetime", type="l")

plot(ds$datetime, ds$Sub_metering_1, ylab="Energy sub metering", xlab="", type="l")
lines(ds$datetime, ds$Sub_metering_2, col="red")
lines(ds$datetime, ds$Sub_metering_3, col="blue")
legend("topright",lty="solid",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_Metering_3"), bty="n")

plot(ds$datetime, ds$Global_reactive_power, ylab="Global_reactive_power", xlab="datetime", type="l")

dev.off()