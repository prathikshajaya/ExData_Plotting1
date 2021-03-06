energy<-read.table("household_power_consumption.txt", sep=";")
names(energy)<-c("Date", "Time", "Global_active_power", "Global_reactive_power", "Volatage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
subsetting<-subset(energy, energy$Date == "1/2/2007" | energy$Date == "2/2/2007")
Globalpower<-as.numeric(as.character(subsetting$Global_active_power))
hist(Globalpower, col="red", main = "Global Active Power", xlab = "Global ACtive Power (Kilowatts)")