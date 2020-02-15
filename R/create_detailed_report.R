# Create Detailed Report
#' @title  Function to create a detailed report of the data.
#' @description This function uses DataExporer package and create a detailed report of all the data present int the data frame
#' @note  To use this function by itself, you need to first run import_data() function.Then run the function by writing create_detailed_report()
#' @return imports the data from the file and runs the shiny app.
#' @examples create_detailed_report()
#' @import DataExplorer
#' @export
create_detailed_report <- function(){
        df<-DataTest::titanic_data
        DataExplorer::create_report(df)
}
