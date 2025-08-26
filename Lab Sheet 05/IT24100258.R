setwd("C:\\Users\\it24100258\\Downloads\\OneDrive_2025-08-26\\IT24100258")

##1
Delivery_Times <- read.table("Exercise - Lab 05.txt", header=TRUE)
fix(Delivery_Times)
attach(Delivery_Times)

##2
histogram <- hist(Delivery_Time_.minutes., main = "Histogram for Delivery Time", breaks = seq(20,70,length = 10), right = FALSE)

##3
#The distribution of delivery times is approximately symmetric, with most values between 35 and 45 minutes. 
#There is a slight right skew, as fewer deliveries take longer (60–70 minutes).

##4
cum_freq <- cumsum(histogram$counts)

mids <- histogram$mids


plot(mids, cum_freq, type="o", 
     main="Cumulative Frequency Polygon (Ogive)",
     xlab="Delivery Time (minutes)", ylab="Cumulative Frequency",
     col="blue")
