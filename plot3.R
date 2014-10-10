source("load.R")
source("mutate.R")
png("plot3.png", width=480, height=480)
plot(dt$DateAndTime,dt$Sub_metering_1,
	xlab="",
	ylab="Energy sub metering",
	col="black",
	type="l")
lines(dt$DateAndTime,dt$Sub_metering_2,
	col="red",
	type="l")
lines(dt$DateAndTime,dt$Sub_metering_3,
	col="blue",
	type="l")
legend( "topright",
        c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
	lty=c(1,1,1), 
	lwd=c(2.5,2.5,2.5),
	col=c("black","red","blue")) 
dev.off()
