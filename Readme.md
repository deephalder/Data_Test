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



Function             | Description                                                                 | Examples
---------------------|-----------------------------------------------------------------------------|------------------------
`get_text()`         | Scrap BBC News article headline and body text                               | get_text("world-us-canada-51381625")
`clean_text()`       | Clean and transfrom article text (stem text, remove numbers, stopwords etc.)| clean_text("world-us-canada-51381625")
`analyze_text()`     | Build a dataframe with the most frequent words and plot it with a wordcloud | analyze_text("world-us-canada-51381625", 50, TRUE)
`assoc_word()`       | Find associations (terms which are correlated) with the input word          | assoc_word("world-us-canada-51408704", "trump", 0.5)            |
`analyze_sentiment()`| Analyze sentiment distribution across the article and plot it               | analyze_sentiment("world-us-canada-51381625")

Type ?Function for a complete description of the functions (for example, `?get_text()`)

## Arguments

Argument `url_end` is used in all the functions. `url_end` is a character string, an ending part of [BBC News](https://www.bbc.com/news/) particular atricle URL (everything after https://www.bbc.com/news/). For example, article URL is "https://www.bbc.com/news/world-us-canada-51381625". Only "world-us-canada-51381625" should be pasted in the function

**Note**: Please, check that URL (url_end) exists before running the function, otherwise you will get an "Error in open.connection(x, "rb") : HTTP error 404". Please, insert URLs of the **BBC News** (not Sports, Travel etc.) articles in English only.

## Packages Imported
rvest, xml2, tm, SnowballC, wordcloud, sentimentr, ggplot2, RColorBrewer, utils, devtools, dplyr, magrittr


**Author**: Angelina Khatiwada

**Date**: February 2020
