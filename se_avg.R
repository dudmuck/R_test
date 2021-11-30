library(tidyverse)

x_hat <- 0.481

# total number of voters choosing one side
ns <- seq(25, 100, 5)

# standarder orr of the proportion of voters choosing one side
se <- sapply(ns, function(N) {
  sqrt(x_hat*(1-x_hat)/N) # standard error for the average value
})

# see how standard error changes vs total number of voters
data.frame(N = ns, SE = se) %>% ggplot(aes(N, SE)) + geom_line()
