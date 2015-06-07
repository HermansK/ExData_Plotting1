require(readr)
base_table <- read_delim("C:/Users/KiHr/Desktop/coursera/household_power_consumption.txt", delim = ";", progress=TRUE)

final_table <- base_table[which(base_table$Date=="1/2/2007" | base_table$Date=="2/2/2007"),]

hist(final_table$Global_active_power, col="red",xlab ="Global Active Power (kilowatts)", main = "Global Active Power")

png(filename = "C:/Users/KiHr/Desktop/coursera/plot1.png")
dev.off()
