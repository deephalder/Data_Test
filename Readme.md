
### Survival Analysis of Titanic passengers. 

Package Name             | Author                                                                 |Github Repo
---------------------|-----------------------------------------------------------------------------|------------------------
MidDatAnalysis        | Subhradip halder                          | [a2b3bab6](https://github.com/unimi-dse/a2b3bab6)


#### Introduction

The RMS Titanic was a British passenger liner that sank in the North Atlantic Ocean in the early morning of April 15, 1912 after colliding with an iceberg during her maiden voyage from Southampton to New York City. The ship contained 2,224 passengers and crew, out of which 1,500 died in the unfortunate incident.


In this study, we intend to perform a statistical analysis of the fatalities on the ship using the Titanic dataset on [Kaggle](https://www.kaggle.com/c/titanic/data/train.csv). The main question that we are addressing here is whether there is a statistically significance relation between the death of the person and their passenger class, age, sex and showcases the analysis in different graphs and a shiny app.


#### Installation

```R
# Please install the R package "devtools" if not installed then use the following command:
devtools::install_github('unimi-dse/a2b3bab6')
```

#### Loading the package

```R
# load the package
require(MidDatAnalysis)
```

#### Functions

* __main_func( )__ - *This function first calls __import_data()__ and imports the data from a csv file and imports it into a dataframe.It also calls a shiny app which shows the detailed analysis.*

* __import_data( )__ - *This function  imports the data from a csv file and imports it into a dataframe :df.It also handles some missing values and finally stores the df into a rda file.It returns the created df as an output*

* __survivor_age_mean( )__ - *This function  uses the df dataframe and performes an analysis on the mean age of the passengers who survived and  also plots the analysis on a histogram*

* __survival_mean_class( )__ - *This function  uses the df dataframe and performes an analysis on the ticket class of the passengers who survived and  also plots the analysis on a bar graph*

* __survival_sex_rel( )__ - *This function  uses the df dataframe and performes an analysis on the sex  of the total number of passengers and also the total passengers who survived  and   plots the analysis on a bar graph*

* __run_shiny_app( )__ - *This function calls the shiny app  which diplayes all the analysis graphs, raw data, project summary.*

* __create_detailed_report( )__ - *This function uses the DataExplorer package to run a detailed report and all the parameters of the df dataframe. It saved all the analysis in a report.html file and opens automatically in a browser*

#### Recommended way to run the functions.

1. *Run this function __main_func( )__  to see a glimpse of the project. This will import the dataframe and also to run the shiny app*

2. You can directly run the Shiny app using the function __run_shiny_app( )__.

3. __Please run the *import_data( )* function first, if you want to run the following functions individually:__
    * survivor_age_mean( )
    * survival_mean_class( )
    * survival_sex_rel( )
    * create_detailed_report( )

4. You can run the __create_detailed_report( )__ function at the end to give you the detailed report.

#### About the author:

Name             |        Desc.                                                           |Linked.in
---------------------|-----------------------------------------------------------------------------|------------------------
Subhradip Halder       | MSc. Data Science Student at University of Milan,Italy                         | [Profile link](https://www.linkedin.com/in/deephalder/)

###### Dated:Feb 14,2020


        
        


