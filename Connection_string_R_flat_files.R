###############################
# Get data from flat files
# Handle TXT, CSV, JSON files
# 
# Author:
# Date: 
# Git: 
################################

##############
#
# Flat files
#
##############

#Set working directory
#setwd("/Users/tomazkastrun/Documents/tomaztk_github/Connection-strings-R/data/flat_file") #unix
setwd("c://datatk//git//connection-strings-r//data//flat_file")  #windows



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



##############
#
# Database
#
##############


### SQLite

#install.packages("RSQLite")
library(RSQLite)

# point path to folder
#setwd("/Users/tomazkastrun/Documents/tomaztk_github/Connection-strings-R/data/database") #unix
setwd("c://datatk//git//connection-strings-r//data//database") #windows
sqlite <- dbDriver("SQLite")
conn <- dbConnect(sqlite,"sampledb.db")

# Get the table Name
dbListTables(conn)

#get into Data.frame  
data_from_db <- data.frame(dbGetQuery(conn, "SELECT * FROM data_db"))

head(data_from_db)

#use query
dbGetQuery(conn, "SELECT * FROM data_db WHERE age > 30")

# Terminate connection
dbDisconnect(conn)


### Microsoft SQL Server

# install.packages("odbc")
library(odbc)
library(RODBC)

# con <- dbConnect(odbc()
#                  ,Driver = "SQL Server"
#                  ,Server = "MSSQLSERVER2019"
#                  ,Database = "bikestore"
#                  #,UID = "myuser"
#                  #,PWD = rstudioapi::askForPassword("Database password")
#                  ,trusted_connection="true"
#                  ,Port = 1433)


dbConnection <- 'Driver={SQL Server}; Server=MSSQLSERVER2019; Database=bikestore; Trusted_Connection=Yes'

dbGetQuery(, "SELECT * FROM dbo.sample_table")
sqlQuery( dbConnection, "SELECT * FROM dbo.sample_table" )



### Apache Spark



### PostgreSQL

install.packages('RPostgreSQL')
install.packages('RPostgres')
library('RPostgres')

library(DBI)
db <- 'postgres'  #provide the name of your db
host_db <- 'localhost'
db_port <- '5432'  
db_user <- 'postgres'  
db_password <- 'LastChristmas2000.'
con <- dbConnect(RPostgres::Postgres(), dbname = db, host=host_db, port=db_port, user=db_user, password=db_password)  

dbGetQuery(con, 'SELECT * FROM sample_table')
dbDisconnect(con) 



#### MySQL

#install.packages("RMySQL")
library(RMySQL)
library(DBI)

mydb = dbConnect(MySQL(), user='mysqluser', password='LastChristmas2000.', dbname='AdventureWorks', host='localhost')
df <- data.frame(dbSendQuery(mydb, 'SELECT * FROM my_table'))

