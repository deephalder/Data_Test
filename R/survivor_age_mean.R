# Calculate the mean age of survivors
#' @title Survivor Age Mean
#' @description This function analyses and returns the mean age among the people who survived.Its also gives the age group, which is most likely to survive.
#' @note  To use this function by itself, you need to first run import_data() function.Then run the functions by writing survivor_age_mean(df)
#' @param df: The titanic train data set which we imported and converted to df dataframe.
#' @param sboa Variable to store the output of the analysis.
#' @param plot_age : subset to store a dataframe containting age and survival rate.
#' @param graph_age : variable containing the graph representing the relationship between age and survival rate
#' @return The mean age of the survivors and the most proobable age of survival and the graphical representation between age and survival.
#' @examples survivor_age_mean()
#' @export
survivor_age_mean <- function(default=df){

        Subage <- subset(df,Survived ==Survived,Age)

        sboa <-paste ("The mean age of the survivors was :",colMeans(Subage,na.rm = TRUE),"so we can say that the passengers around the age of :", round(colMeans(Subage,na.rm = TRUE),digits = -1),"had higher chances of survival")
        #Plotting the Age and Survival relationship graph.

        plot_age<-data.frame(df$Survived,df$Age)
        colnames(plot_age) <- c("Survived","Age")
        plot_age$Survived[plot_age$Survived==1] <-'Survived'
        plot_age$Survived[plot_age$Survived==0] <-'Not Survived'
        graph_age <-ggplot(data = plot_age,aes(x=Age,fill=Survived))+geom_histogram(binwidth =3)+ggtitle("Age - Survival Rate Graph")

        return_age <- list(sboa,graph_age)
        return(return_age)

        }

