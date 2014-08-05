## Set working directory
setwd("../ExploratoryAnalysis/data")

## Load in prepared dataset (see PrepareData.R)
ds <- read.csv("workingdata.csv")

## Plot 3
png("plot3.png",bg="white")
plot(ds$datetime, ds$Sub_metering_1, ylab="Energy sub metering", xlab="", type="l")
lines(ds$datetime, ds$Sub_metering_2, col="red")
lines(ds$datetime, ds$Sub_metering_3, col="blue")
legend("topright",lty="solid",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_Metering_3"))
dev.off()