install.packages('shiny')
install.packages('coindeskr')
install.packages('dygraphs')
install.packages('crypto')
install.packages("ggplot2")
library(crypto)
library(shiny)
library(coindeskr)
library(dygraphs)
library(ggplot2)
install.packages('coindeskr', dependencies=TRUE, repos='http://cran.rstudio.com/')
#' Extracts the last 31 days of bitcoins prices using the coindeskrr package

last31 <- get_last31days_price()
date <- rownames(last31)
price <- get_current_price()
mean31 <- mean(last31[,])
names(price)

mean(last31[,])


num3 <- price[,8]

func <- function(num3){
  if(num3 <= mean31){
    "Dont Buy!"
  } else{
    "Buy Now!"
  }
}

func(num3)

hist(last31$Price, main="Histogram of Crypto In Last 31 Days", xlab = "Prices")
plot(last31$Price)

