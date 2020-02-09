#' Function to optimise the data.
#' This function handles the missing data, and formates the data for analysis
#' @export
titanic_optimisation <- function(){

        # Checking for NA data.
        colSums(is.na(train))

        #checking for the missing data
        colSums(train == "")

        # as for this dataset we have a lot of missing values for the Age feature
        # we will be using the locf(last observation carried forward) function from Zoo package
        # to fill the NA values.

        train <- zoo::na.locf(train)

        # Let's change the empty values  in Embarked to the first choice "C"
        train$Embarked[train$Embarked==""]="C"

        # to find out the total number of unique values for each  features.
        apply(train, 2, function(x) length(unique(x)))

        #moving features Survived, Pclass, Sex, Embarked to be factors
        cols <- c("Survived","Pclass","Sex","Embarked")
        for (i in cols){
                train[,i] <- as.factor(train[,i])
        }
        #final optimized data set for analysis

        str(train)

        #updating the train.rda file with optimised data.
        usethis::use_data(train, overwrite = TRUE)
}
