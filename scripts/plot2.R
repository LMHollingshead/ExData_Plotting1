## Set working directory
setwd("../ExploratoryAnalysis/data")

## Load in prepared dataset (see PrepareData.R)
ds <- read.csv("workingdata.csv")

## Plot 2
png("plot2.png",bg="white")
plot(ds$datetime, ds$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", type="l")
dev.off()