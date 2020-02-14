# MidDatAnalysis


#### Survival Rate Analysis of Passengers in Titanic.
##### Repo : a2b3bab6

#### Introduction

The RMS Titanic was a British passenger liner that sank in the North Atlantic Ocean in the early morning of April 15, 1912 after colliding with an iceberg during her maiden voyage from Southampton to New York City. The ship contained 2,224 passengers and crew, out of which 1,500 died in the unfortunate incident.

In this study, we intend to perform a statistical analysis of the fatalities on the ship using the Titanic dataset on [Kaggle](https://www.kaggle.com/c/titanic/data/train.csv). The main question that we are addressing here is whether there is a statistically significance relation between the death of the person and their passenger class, age, sex and showcases the analysis in different graph and a shiny app.

img:![] (path/to/inst/images/1246453.png)

                                  

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

* __main_func()__ - *This function first calls import_data() and imports the data from a csv file and imports it into a dataframe.It also calls a shiny app which shows the detailed analysis.*

* __import_data()__ - *This function  imports the data from a csv file and imports it into a dataframe :df.It also handles some missing values and finally stores the df into a rda file.It returns the created df as an output*


