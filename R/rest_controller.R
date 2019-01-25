source("R/make_model.R")

# defines predict_petal_length as a GET endpoint
# and returns the model prediction with a given input
#* @get /predict_petal_length

get_predict_length <- function(petal_width){
  #convert input to a number
  petal_width <- as.numeric(petal_width)
  
  # create prediction dataframe
  input_data <- data.frame(Petal.Width = as.numeric(petal_width))
  
  #create prediction
  predict(model, input_data)
}

# deinfes /tell_me_something as a GET endpoint
# and returns some random uppercase letters
#* @get /tell_me_something

get_something <- function(n){
  
  sample(LETTERS, n, TRUE)
}