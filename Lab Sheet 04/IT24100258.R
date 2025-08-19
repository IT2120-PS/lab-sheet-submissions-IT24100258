setwd("C:\\Users\\it24100258\\Desktop\\IT24100258\\lab4")

branch_data <-  read.table("Exercise.txt", header = TRUE, sep = ",")
fix(branch_data)
attach(branch_data)

summary(Branch)
summary(Sales_X1)
summary(Advertising_X2)
summary(Years_X3)


boxplot(Sales_X1, main = "Box plot for Sales", outline = TRUE, outpch = 8, horizontal = TRUE)

quantile(Advertising_X2)
IQR(Advertising_X2)

get.outliers_years <- function(c){
  q1 <- quantile(c)[2]
  q3 <- quantile(c)[4]
  iqr <- q3 - q1
  
  ub <- q3 + 1.5*iqr
  lb <- q1 - 1.5*iqr
  
  print(paste("Upper Bound = ", ub))
  print(paste("Lower Bound = ", lb))
  print(paste("Outliers: ", paste(sort(c[c<lb | c>ub]), collapse = ",")))
}

get.outliers_years(Years_X3)
