library(tidyverse)

p <- 0.481 # proportion of voters chosing one side

# total number of voters choosing one side
ns <- seq(100, 2000, 100)

# standard error of total number of voters choosing one side
se <- sapply(ns, function(N) {
  sqrt(N * p * (1-p)) # standard error for the sum of values
})

# see how standard error changes vs total number of voters
data.frame(N = ns, SE = se) %>% ggplot(aes(N, SE)) + geom_line()
