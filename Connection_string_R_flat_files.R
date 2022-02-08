###############################
# Get data from flat files
# Handle TXT, CSV, JSON files
# 
# Author:
# Date: 
# Git: 
################################

#Set working directory
setwd("/Users/tomazkastrun/Documents/tomaztk_github/Connection-strings-R/data/flat_file")


# Read a txt file, reading data from sample.txt file
data_txt <- read.delim("sample.txt", header = TRUE, sep = "\t", dec = ".")


# Read a csv file, getting data from sample.csv file
data_csv <- read.csv("sample.csv", header = TRUE, sep = ",", dec = ".")



# Read a JSON file, getting data from sample.JSON file

#install.packages("jsonlite")
#install.packages("listviewer")
library(jsonlite)
library(listviewer)

# get data
data_json <- fromJSON("sample.json", simplifyVector = FALSE)

# View JSON data
View(data_json)
listviewer::jsonedit(data_json, height = "400px", mode = "view")
