source("load.R")
source("mutate.R")
png("plot2.png", width=480, height=480)
plot(dt$DateAndTime,dt$Global_active_power,
	xlab="",
	ylab="Global Active Power (kilowatts)",
	col="black",
	type="l")
dev.off()
