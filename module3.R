Name <- c("Jeb", "Donald", "Ted", "Macro", "Carly", "Hillary", "Bernie")
ABC  <- c(4, 62, 51, 21, 2, 14, 15)
CBS  <- c(12, 75, 43, 19, 1, 21, 19)
results <- cbind(Name, ABC, CBS)
results
results.df <- data.frame(Name, ABC, CBS)
results.df
mean(results.df[,2])
mean(results.df[,3])
