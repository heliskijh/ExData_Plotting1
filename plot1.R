library(dplyr)
data <- read.table("hsepwrcomp.txt", header = TRUE, sep=";", na.strings="?")
data$Date <- as.Date(data$Date, "%d/%m/%Y")
output <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")
png(filename = "plot1.png", width = 480, height = 480)
hist(output$Global_active_power, col= "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()