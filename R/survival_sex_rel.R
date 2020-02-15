# Analyse survival rate based on Sex.
#' @title Survival rate based on Sex.
#' @description This function analyses the relationship between Survival rate and sex of the passengers.
#' @note  To use this function by itself, you need to first run import_data() function to import the  Titanic df from the train.csv file.
#' @param df: The titanic train data set which we imported and converted to df dataframe.
#' @param sub_sex : subset which contains just the sex and survival rate of passenger
#' @param fem_total :total females in the ship
#' @param male_total :total males in the ship
#' @param sur_sex :subset with only survived passengers
#' @param female_survived : total female survived
#' @param male_survived : total male survived
#' @param mf_total: total analysis
#' @param plot_sex : graphical representation of the relationship
#' @return sex_rel_ans : returns the analysis and also the graphical representation.
#' @examples survival_sex_rel()
#' @export


survival_sex_rel <- function(){
        library(ggplot2)
        df <-DataTest::titanic_data
        sub_sex <- data.frame(df$Survived,df$Sex)
        colnames(sub_sex)= c("Survived","Sex")
        sub_sex$Survived[sub_sex$Survived==1] <-'Survived'
        sub_sex$Survived[sub_sex$Survived==0] <-'Not Survived'
        fem_total <-sum(sub_sex$Sex=='female')
        male_total <-sum(sub_sex$Sex=='male')
        sur_sex <-subset(sub_sex,Survived=='Survived',Sex)
        female_survived<-sum(sur_sex$Sex=='female')
        male_survived <-sum(sur_sex$Sex=='male')
        mf.total <- paste("Total Passengers:",fem_total+male_total,"Total Female :",fem_total,"Total Male :",male_total,"Survived female:",female_survived,"and survived male :",male_survived)

        #plotting the relationship:

        plot_sex<- ggplot(data=sub_sex,aes(x=Sex,fill=Survived))+geom_bar()+ggtitle("Sex - Survival Rate Graph")

        sex_rel_ans <- list(mf.total,plot_sex)
        return(sex_rel_ans)

}
