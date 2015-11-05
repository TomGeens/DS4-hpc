#setwd("D:/Gegevens/Coursera/DS4/exdata-data-household_power_consumption")
hpc <- 
        read.table("household_power_consumption.txt",
                   header=TRUE, sep=";", na.strings="?", dec=".", strip.white=TRUE)
hpcd<-hpc[hpc$Date=="1/2/2007"|hpc$Date=="2/2/2007",]
DateTime=paste(as.character(hpcd$Date),as.character(hpcd$Time),sep=" ")
RDate<-strptime(as.character(DateTime),format="%d/%m/%Y %H:%M:%S")

Sys.setlocale("LC_ALL","English")
par(mfrow=c(1,1))
plot(RDate,hpcd$Global_active_power,type="s",xlab="",ylab="Global Active Power (kilowatts)")

png(filename="plot2.png",width=480,height=480,unit="px")
plot(RDate,hpcd$Global_active_power,type="s",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()