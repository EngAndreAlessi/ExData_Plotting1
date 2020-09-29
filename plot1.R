data <- read.table(unzip("exdata_data_household_power_consumption.zip"),
                   header = TRUE,
                   sep = ";",
                   na.strings = "?")
# Slice for the lines of interest
data <- data[66637:69516, ] 
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data$Time <- strptime(data$Time, format = "%H:%M:%S")
png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(data$Global_active_power, 
     xlab = "Global Active Power (kilowatts)", 
     col = "red", 
     main = "Global Active Power")
dev.off()