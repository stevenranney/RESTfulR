

library(plumber)

r <- plumb("R/rest_controller.R")

r$run(port = 80, host = "0.0.0.0")



