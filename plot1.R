data <- read.table(unzip("exdata_data_household_power_consumption.zip"),
                   header = TRUE,
                   sep = ";",
                   na.strings = "?")
# Slice for the lines of interest
data <- data[66637:69516, ] 
data$DateTime <- strptime(paste(data$Date, data$Time), 
                          format = "%d/%m/%Y %H:%M:%S")
png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(data$Global_active_power, 
     xlab = "Global Active Power (kilowatts)", 
     col = "red", 
     main = "Global Active Power")
dev.off()