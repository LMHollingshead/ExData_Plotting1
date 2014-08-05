## Set working directory
setwd("../ExploratoryAnalysis/data")

## Load in prepared dataset (see PrepareData.R)
ds <- read.csv("workingdata.csv")

## Plot 1
png("plot1.png",bg="white")
hist(ds$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()