#shiny server

df<- DataTest::titanic_data
shinyServer(function(input,output){

    output$sex_rel <-renderPlot({
        import_data()
        survival_sex_rel()
    })
    output$mean_class <- renderPlot({
        survival_mean_class()
    })
    output$mean_age <- renderPlot({
        survivor_age_mean()
    })

    output$data <- DT::renderDataTable(
        df
    )

})

