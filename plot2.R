data <- read.table(unzip("exdata_data_household_power_consumption.zip"),
                   header = TRUE,
                   sep = ";",
                   na.strings = "?")
# Slice for the lines of interest
data <- data[66637:69516, ] 
data$DateTime <- strptime(paste(data$Date, data$Time), 
                          format = "%d/%m/%Y %H:%M:%S")
png(filename = "plot2.png", width = 480, height = 480, units = "px")
plot(data$DateTime,
     data$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()