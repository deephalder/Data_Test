# Main Function
#' @title Main Function to call sub functions
#' @description This function is called to invoke all the other functions.
#' @return imports the data from the file and runs the shiny app.
#' @examples main_func()
#' @export
main_func <- function(){
        import_data()
        run_shiny_app()
}
