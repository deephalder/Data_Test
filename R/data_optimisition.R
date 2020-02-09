#' Function to optimise the data.
#' This function handles the missing data, and formates the data for analysis
#' @export
titanic_optimisation <- function(){

        # Checking for NA data.
        colSums(is.na(x))

        #checking for the missing data
        colSums(x == "")

        # as for this dataset we have a lot of missing values for the Age feature
        # we will be using the locf(last observation carried forward) function from Zoo package
        # to fill the NA values.

        x <- zoo::na.locf(x)

        # Let's change the empty values  in Embarked to the first choice "C"
        x$Embarked[x$Embarked==""]="C"

        # to find out the total number of unique values for each  features.
        apply(x, 2, function(y) length(unique(y)))

        #moving features Survived, Pclass, Sex, Embarked to be factors
        cols <- c("Survived","Pclass","Sex","Embarked")
        for (i in cols){
                x[,i] <- as.factor(x[,i])
        }
        #final optimized data set for analysis

        str(full)

        #updating the x.rda file with optimised data.
        usethis::use_data(x, overwrite = TRUE)
}
