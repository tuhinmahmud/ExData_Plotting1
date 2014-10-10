library(dplyr)
tbs<-tbl_df(dt)
#tbs<-select(tbl_dt,Date,Time,Global_active_power,Sub_metering_1,Sub_metering_2,Sub_metering_3)
#tbn<-mutate(tbs,DayOfWeek=weekdays(Date,abbreviate=TRUE))
#tbn1<-mutate(tbn,DateS=as.character(Date))
dt<-mutate(tbs, 
      DayOfWeek=weekdays(Date,abbreviate=TRUE), 
      DateAndTime=as.POSIXct(strptime(paste(as.character(Date),
                   as.character(Time)), format="%Y-%m-%d %H:%M:%S")))
