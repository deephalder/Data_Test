#' Function to Acquire the data for analysis
#' This function imports the train file for titanic data analysis and stores them in a dataframe.
#' @export
data_aquisition <- function(){
#finding out the filepath of the train csv file and store it in path variable
        path <-system.file(package = "DataTest","files","train.csv")
        train<- read.csv(path) # reading the data from the path.
        LT=dim(train)[1] # variable to count the number of total passengers.
        usethis::use_data(train, overwrite = TRUE) #saving train to an rda file.
        train
}
