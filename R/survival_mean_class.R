# Analyse survival rate based on ticket class.
#' @title Relationship between ticket class and survival.
#' @description This function analyses the relationship between survival rate and ticket class of the passengers.
#' @note  To use this function by itself, you need to input the Titanic df. The DF can be stored as a variable by using the function import_data().
#' @param df The Titanic dataframe which gets imported after running the import_data functions. Raw data as csv from Kaggle, converted to a R dataframe with the function read.csv.
#' @param sub_class: Subset dataframe containing the Class for passengers and their respective survival rate.
#' @param sboc : Variable which stores the the analysis of the mean ticket class
#' @param plot_sboc: Variable to store the graph behind the analysis
#' @param sboc_output : a variable which stores both the analysis and plot results in a list.
#' @return the analysis behind the relationship between the ticket class and also the graph based on the relationship.
#' @examples survival_mean_class()
#' @export
survival_mean_class <- function(){
        library(ggplot2)
        df <- DataTest::titanic_data
        meanset <- subset(df,Survived == 1 ,Pclass)
        sboc<- paste("The mean seat class of the survivors was :", mean(meanset$Pclass),"And the class with the most survival rate was Class:", round(mean(meanset$Pclass)),", which means that people with lower class had more chances of survival")
        sub_class <-data.frame(df$Survived,df$Pclass)
        colnames(sub_class) <- c("Survived", "Class")
        sub_class$Survived[sub_class$Survived==1] <-'Survived'
        sub_class$Survived[sub_class$Survived==0] <-'Not Survived'
        plot_sboc <-ggplot(sub_class, aes(Class))+ geom_bar(aes(fill=Survived))+ggtitle("Ticket Class - Survival Rate Graph")
        sboc_output <- list(sboc,plot_sboc)
        return(sboc_output)
}
