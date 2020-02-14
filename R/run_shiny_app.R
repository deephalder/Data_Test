# Runs the shiny app
#' @title Shiny app function.
#' @description This function runs the shiny app to display the analysis.
#' @return Shiny app with the titanic data analysis and plots.
#' @examples run_shiny_app()
#' @export

run_shiny_app<- function(){
        shiny::runApp('inst/shiny/SurivalGraphs')
}
