#---------# Functions  #----------#

# Dependencies are listed in the DESCRIPTION-file and should be imported automatically when installing the package.



# Imports the data to be analyzed into a Dataframe (DF)
#' @title Import Data
#'
#' @description This function reads the data from a csv-file and returns it as a DataFrame-object.
#' @usage To use this function by itself, store the DF in a variable.
#' @examples
#' df = import_data()
#' @import readr
#' @import zoo
#' @export
import_data <- function() {
        df <- read_csv(system.file("files", "train.csv", package="DataTest"))

        # as for this dataset we have a lot of missing values for the Age feature
        # we will be using the locf(last observation carried forward) function from Zoo package
        # to fill the NA values.

        df <- zoo::na.locf(df)
        #saving df in a rda file:
        usethis::use_data(df, overwrite = TRUE)
        return(df)
}
# Calculate and print mean age of all pasengers
#' @title Passenger Age Mean
#'
#' @description This function returns the mean age of the passengers.
#' @usage To use this function by itself, you need to input the Titanic DF. The DF can be stored as a variable by using the function import_data().
#' @param df The Titanic dataframe. Raw data as csv from Kaggle, converted to a R dataframe with the function read_csv.
#' @examples
#' age_mean(df)
#' @export
age_mean <- function(df){
        sprintf("The mean age of all the passengers was: %f", mean(df[['Age']]))
}

# Calculate mean age of survivors
#' @title Survivor Age Mean
#'
#' @description This function returns the mean age of the survivors.
#' @usage To use this function by itself, you need to input the Titanic DF. The DF can be stored as a variable by using the function import_data().
#' @param df The Titanic dataframe. Raw data as csv from Kaggle, converted to a R dataframe with the function read_csv.
#' @examples
#' survivor_age_mean(df)
#' @export
survivor_age_mean <- function(df){
        i <- df[['Survived']] == 1
        sprintf("The mean age of the survivors was %f:", mean(df[['Age']][i]))
}
# Main function
#' @title Main function
#'
#' @description This function runs the various functions of the package in the correct order.
#' @usage Run the function by calling it without arguments.
#' @examples
#' main_func()
#' @import DataExplorer
#' @export
main_func <- function(){
        df = import_data()
        create_report(df)
        age_mean(df)
        survivor_age_mean(df)


}
