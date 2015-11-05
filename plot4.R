#setwd("D:/Gegevens/Coursera/DS4/exdata-data-household_power_consumption")
hpc <- 
        read.table("household_power_consumption.txt",
                   header=TRUE, sep=";", na.strings="?", dec=".", strip.white=TRUE)
hpcd<-hpc[hpc$Date=="1/2/2007"|hpc$Date=="2/2/2007",]
datetime=paste(as.character(hpcd$Date),as.character(hpcd$Time),sep=" ")
datetime<-strptime(as.character(datetime),format="%d/%m/%Y %H:%M:%S")

Sys.setlocale("LC_ALL","English")
par(mfrow=c(2,2))
#plot1
plot(datetime,hpcd$Global_active_power,type="s",xlab="",ylab="Global Active Power")
#plot2
plot(datetime,hpcd$Voltage,type="s",ylab="Voltage")
#plot3
plot(c(datetime,datetime,datetime),c(hpcd$Sub_metering_1,hpcd$Sub_metering_2,hpcd$Sub_metering_3),xlab="",ylab="Energy sub metering",type="n")
lines(datetime,hpcd$Sub_metering_1,col="black",type="s")
lines(datetime,hpcd$Sub_metering_2,col="red",type="s")
lines(datetime,hpcd$Sub_metering_3,col="blue",type="s")
legend("topright",pch=151,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="n")
#plot4
plot(datetime,hpcd$Global_reactive_power,type="s",ylab="Global_reactive_power")


png(filename="plot4.png",width=480,height=480,unit="px")
par(mfrow=c(2,2))
#plot1
plot(datetime,hpcd$Global_active_power,type="s",xlab="",ylab="Global Active Power")
#plot2
plot(datetime,hpcd$Voltage,type="s",ylab="Voltage")
#plot3
plot(c(datetime,datetime,datetime),c(hpcd$Sub_metering_1,hpcd$Sub_metering_2,hpcd$Sub_metering_3),xlab="",ylab="Energy sub metering",type="n")
lines(datetime,hpcd$Sub_metering_1,col="black",type="s")
lines(datetime,hpcd$Sub_metering_2,col="red",type="s")
lines(datetime,hpcd$Sub_metering_3,col="blue",type="s")
legend("topright",pch=151,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="n")
#plot4
plot(datetime,hpcd$Global_reactive_power,type="s",ylab="Global_reactive_power")
dev.off()