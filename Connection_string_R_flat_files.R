# Source Flat files



setwd("/Users/tomazkastrun/Documents/tomaztk_github/Connection-strings-R/data/flat_file")


# Read a txt file, reading data from sample.txt file
data_txt <- read.delim("sample.txt", header = TRUE, sep = "\t", dec = ".")


# Read a csv file, getting data from sample.csv file
data_csv <- read.csv("sample.csv", header = TRUE, sep = ",", dec = ".")
