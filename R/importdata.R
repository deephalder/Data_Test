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
        df <- read.csv(system.file("files", "train.csv", package="DataTest"))

        # as for this dataset we have a lot of missing values for the Age feature
        # we will be using the locf(last observation carried forward) function from Zoo package
        # to fill the NA values.

        df <- zoo::na.locf(df)
        #saving df in a rda file:
        usethis::use_data(df, overwrite = TRUE)
        return(summary(df))
}
