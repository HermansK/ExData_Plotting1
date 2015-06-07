require(readr)
base_table <- read_delim("C:/Users/KiHr/Desktop/coursera/household_power_consumption.txt", delim = ";", progress=TRUE)

final_table <- base_table[which(base_table$Date=="1/2/2007" | base_table$Date=="2/2/2007"),]
final_table$Date <- as.Date(final_table$Date, format="%d/%m/%Y")

dateTime <- paste(as.Date(final_table$Date), final_table$Time)
final_table$dateTime <- as.POSIXct(dateTime)

plot(final_table$Global_active_power~final_table$dateTime, type="l", ylab="Global Active Power (kilowatts)", xlab = "")

png(filename = "C:/Users/KiHr/Desktop/coursera/plot2.png")
dev.off()
