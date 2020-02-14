# Main Function #

# Dependencies are listed in the DESCRIPTION-file and should be imported automatically when installing the package.
#'
#'
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
