#' Titanic Survial Rate Analysis
#' This package analyses the data of a list of passangers on titanic and analyses the survival rate.
data_aquisition <- function(){
#finding out the filepath of the train csv file and store it in path variable
        path <-system.file(package = "DataTest","files","train.csv")
        x <- read.csv(path)
        usethis::use_data(x) #saving x to an rda file.

}
