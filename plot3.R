#setwd("D:/Gegevens/Coursera/DS4/exdata-data-household_power_consumption")
hpc <- 
        read.table("household_power_consumption.txt",
                   header=TRUE, sep=";", na.strings="?", dec=".", strip.white=TRUE)
hpcd<-hpc[hpc$Date=="1/2/2007"|hpc$Date=="2/2/2007",]
DateTime=paste(as.character(hpcd$Date),as.character(hpcd$Time),sep=" ")
RDate<-strptime(as.character(DateTime),format="%d/%m/%Y %H:%M:%S")

Sys.setlocale("LC_ALL","English")
par(mfrow=c(1,1))

Sys.setlocale("LC_ALL","English")
plot(c(RDate,RDate,RDate),c(hpcd$Sub_metering_1,hpcd$Sub_metering_2,hpcd$Sub_metering_3),xlab="",ylab="Energy sub metering",type="n")
lines(RDate,hpcd$Sub_metering_1,col="black",type="s")
lines(RDate,hpcd$Sub_metering_2,col="red",type="s")
lines(RDate,hpcd$Sub_metering_3,col="blue",type="s")
legend("topright",pch=151,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

png(filename="plot3.png",width=480,height=480,unit="px")
plot(c(RDate,RDate,RDate),c(hpcd$Sub_metering_1,hpcd$Sub_metering_2,hpcd$Sub_metering_3),xlab="",ylab="Energy sub metering",type="n")
lines(RDate,hpcd$Sub_metering_1,col="black",type="s")
lines(RDate,hpcd$Sub_metering_2,col="red",type="s")
lines(RDate,hpcd$Sub_metering_3,col="blue",type="s")
legend("topright",pch=151,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()