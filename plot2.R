hpc <- read.table("household_power_consumption.txt",sep = ";",skip = 66637,nrows = (69518-66638))
names(hpc) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
hpc$Date <- as.Date(hpc$Date,format = "%d/%m/%Y")
dt <- paste(hpc$Date,hpc$Time)
dtf <- strptime(dt,format="%Y-%m-%d %H:%M:%S")
png(filename = "plot2.png",width = 480, height = 480)
plot(dtf,hpc$Global_active_power,type="l",xlab = "",ylab = "Global Active Power(kilowatts)")
dev.off()
