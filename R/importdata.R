# Imports the data from CSV into a Dataframe (DF)
#' @title Imports Data from csv file and stores it in a df.
#' @description This function reads the data from a csv-file and returns it as a DataFrame-object.It also handles missing age data using locf.
#' @details This functions downloads the train.csv file from the package to the user's local and creates a dataframe.It then handles missing data and stores the dataframe to a .rda file under the data folder.
#' @return This function returns the  dafaframe after its created.
#' @examples import_data()
#' @export
import_data <- function() {

        #importing data from file.
        titanic_data <- read.csv(system.file("extdata", "train.csv", package="DataTest"))


        # as for this dataset we have a lot of missing values for the Age feature
        # we will be using the locf(last observation carried forward) function from Zoo package
        # to fill the NA values.

        titanic_data <- zoo::na.locf(titanic_data)

        #saving df in a rda file,overwriting the file if already present:
        usethis::use_data(titanic_data,overwrite = TRUE)

        #returning the main dataset df.
        return(titanic_data)
}
