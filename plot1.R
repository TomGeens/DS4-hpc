#setwd("D:/Gegevens/Coursera/DS4/exdata-data-household_power_consumption")
hpc <- 
        read.table("household_power_consumption.txt",
                   header=TRUE, sep=";", na.strings="?", dec=".", strip.white=TRUE)
hpcd<-hpc[hpc$Date=="1/2/2007"|hpc$Date=="2/2/2007",]

Sys.setlocale("LC_ALL","English")
hist(hpcd$Global_active_power,col="Red",xlab="Global Active Power (kilowatts)",ylab="Frequency", main="Global Active Power")

png(filename="plot1.png",width=480,height=480,unit="px")
hist(hpcd$Global_active_power,col="Red",xlab="Global Active Power (kilowatts)",ylab="Frequency", main="Global Active Power")
dev.off()