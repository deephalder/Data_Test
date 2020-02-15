#UI for the shiny app
library(shinydashboard)
library(ggplot2)

#loading the data
df<-DataTest::titanic_data

#defining the User Interface
    shinyUI(
        dashboardPage(
            title='Titanic Passenger Data  Analysis',
            dashboardHeader(title = "Titanic Survivor Rate Analysis",titleWidth = 450),
            dashboardSidebar(
                    sidebarMenu(
                        menuItem("Titanic Analysis Summary",tabName = "Dashboard",icon = icon("dashboard")),
                        menuItem("Visualization of Data",tabName = "graphs",icon = icon("bar-chart-o")),
                        menuItem("Data",tabName = "data",icon = icon("table"))
               )),
                dashboardBody(
                    tabItems(
                        tabItem(tabName = "Dashboard", h3("Introduction to the analysis"),
                                    hr(),
                                    p("The sinking of the RMS Titanic is one of the most infamous shipwrecks in history. On April 15, 1912, during her maiden voyage, the Titanic sank after colliding with an iceberg, killing 1502 out of 2224 passengers and crew. This sensational tragedy shocked the international community and led to better safety regulations for ships."),
                                    p("One of the reasons that the shipwreck led to such loss of life was that there were not enough lifeboats for the passengers and crew. Although there was some element of luck involved in surviving the sinking, some groups of people were more likely to survive than others, such as women, children, and the upper-class."),
                                    p("Some of the images of the ship and the disaster are shown below:"),

                                    tags$img(src="https://upload.wikimedia.org/wikipedia/commons/d/db/Titanic-Cobh-Harbour-1912.JPG",width="500",height="250",align="center"),
                                tags$img(src="https://i.pinimg.com/originals/56/2d/a3/562da35ec7db047e5e3612cf045c7d4a.jpg",width="500",height="250",align="center"),
                                tags$img(src="https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/the-sinking-of-the-rms-titanic-florent-pey.jpg",width="500",height="250",align="center"),
                                tags$img(src="https://upload.wikimedia.org/wikipedia/commons/6/6e/St%C3%B6wer_Titanic.jpg",width="500",height="250",align="center"),
                                    tags$br(),
                                    tags$br(),
                                    p("In this package we are analysing 891 model passengers and analysing the relationship between the survival ratio and different features, such as age, ticket class , sex."),
                                    tags$br(),
                                    tags$li("The first analysis is based on sex of the passengers and survival rate"),
                                    tags$li("The second analysis is based on  the age of the passengers and survival rate"),
                                    tags$li("The third analysis is based on  the ticket class of the passengers and survival rate"),
                                    tags$br(),
                                    p("Using a sidebar menu in the left side of the window, is possible to select the different graphs and also the main dataset used to plot the data and perform the analysis"),
                                    hr(),
                                    h4("About the author"),
                                    p("Subhradip Halder,Msc - Data Science & Economics,University of Milan,Italy"),
                                    br()
                                    ),

                                tabItem(tabName = "graphs",h3("Histograms and Bar Plots"),
                                fluidRow(
                                    box(plotOutput("sex_rel")),
                                    box(plotOutput("mean_class")),
                                    box(plotOutput("mean_age"))

                                )
                                ),

                        tabItem(tabName = "data",h3(" Passenger data"),
                                fluidRow(
                                    DT::dataTableOutput("data")

                                ))
                )

            )
        )
    )
