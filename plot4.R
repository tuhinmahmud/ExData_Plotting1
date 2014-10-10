source("load.R")
source("mutate.R")
# 4 figures arranged in 2 rows and 2 columns
png("plot4.png", width=480, height=480)
attach(mtcars)
par(mfrow=c(2,2))

#1 top left
plot(dt$DateAndTime,dt$Global_active_power,
	xlab="",
	ylab="Global Active Power",
	col="black",
	type="l")
#2 top right
plot(dt$DateAndTime,dt$Voltage,
	xlab="datetime",
	ylab="Voltage",
	col="black",
	type="l")
#3 bottom left
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
	bty="n",
	col=c("black","red","blue")) 
#4 bottom right
plot(dt$DateAndTime,dt$Global_reactive_power,
	xlab="datetime",
	ylab="Gobal_reactive_power",
	col="black",
	type="l")
dev.off()
