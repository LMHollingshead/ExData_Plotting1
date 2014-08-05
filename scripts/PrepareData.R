library(lubridate)

##Set working directory here
setwd("../ExploratoryAnalysis/data")

## Load Dataset
rd <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", colClasses=c(rep('character',2),rep('numeric',7)))

## Convert to date and time
rd$Date <- dmy(rd$Date)
rd$Time <- hms(rd$Time)

## Set date range
startDate <- dmy("01/02/2007")
endDate <- hms("02/02/2007")

## Subset data based on date range
ds <- subset(rd, year(Date) == 2007 & month(Date) == 2 & (day(Date) %in% c(1,2)))

## Create datetime column
ds$datetime <- ds$Date + ds$Time

write.csv(ds,"workingdata.csv")