#'Installs packages for data, refreshes from live site, every hour
install.packages('coindeskr')
library(coindeskr)
install.packages('coindeskr', dependencies=TRUE, repos='http://cran.rstudio.com/')
#' Extracts the last 31 days of bitcoins prices using the coindeskrr package

#' gets last 31 days of prices in USD From CoindeskR package repo
last31 <- get_last31days_price()

#'makes the first row in last 31 a numerica value of dates
date <- rownames(last31)

#'gets the current price in USD
price <- get_current_price()

#' calculates the average of the last 31 days prices
mean31 <- mean(last31[,])
mean(last31[,])

#'calculates the minumum value of the last 31 days
min31  <- min(last31)

#'Usefule for function, seeing what is assigned to what value in the for the price
names(price)

#'gets current price
num3 <- price[,8]

#'If the current price is greater than  or equal to the minimun and average price, Dont buy
func <- function(num3){
  if(num3 <= mean31 && min31){
    "Buy Now!"
  } else{
    "Dont Buy!"
  }
}

#' execute function
func(num3)

hist(last31$Price, main="Histogram of Crypto In Last 31 Days", xlab = "Prices")
plot(last31$Price)

