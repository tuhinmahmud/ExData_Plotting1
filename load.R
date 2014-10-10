fileUrl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
#fileUrl<-"C:/Users/IBM_ADMIN/Downloads/exdata-data-household_power_consumption.zip"
zipDir<-"./zip"
temp <- tempfile()
download.file(fileUrl,temp)
setAs("character","myDate", function(from) as.Date(from, format="%d/%m/%Y"))
#setAs("character","myTime", function(from) strptime(from, format="%H:%M:%S"))
data <- read.table(unz(temp, "household_power_consumption.txt"),header=TRUE,sep=";",colClasses=c("Date"="myDate","numeric"),na.strings="?")
dt<-subset(data,Date %in% as.Date(c('2007-02-01','2007-02-02')))
unlink(temp)

