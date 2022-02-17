# Curated list of connection strings for R Language


## Motivation:
To created a curated list of many different connections strings in R language, to get (or to post) the data. Many times, finding the connection string can be tedious and hence, delivering everything on one page, should minimize the time for the search.

## Idea
Prepare a curated list of the sources. This list will also include all the necessary steps to get the data into R environment.

E.g.: Sources -> Flat files -> TXT

```R
path <- "/data/flat_file/sample.txt"
```

All the sample data is included in the repository (under folder `data`). Follow the script to use the file format.


# Flat file sources

Most common of the file sources will be flat file sources.
All these files are available in repository under folder `data/flat_file`.

### TXT

Read TXT files or files with delimited format.

```R
setwd("users/tomazkastrun/documents/tomaztk_github/data/flat_file")
data_txt <- read.delim("sample.txt", header = TRUE, sep = "\t", dec = ".")
```


### CSV

Read CSV (comma separated values) files or files with specified separator character (semicolon, pipe, comma).

```R
setwd("users/tomazkastrun/documents/tomaztk_github/data/flat_file")
# Read a csv file, getting data from sample.csv file
data_csv <- read.csv("sample.csv", header = TRUE, sep = ",", dec = ".")
```

### JSON

Read JSON format files. Using `listviewer` R package for pretty view of JSON nodes.

```R
library(jsonlite)
library(listviewer)
data_json <- fromJSON("sample.json", simplifyVector = FALSE)
jsonedit(data_json, height = "400px", mode = "view")
```


# Database and database file formats

### Apache Spark


### Microsoft SQL Server

Connect to Microsoft SQL server using R package `odbc` and read data from SQL tables by using SELECT statements or calling stored procedures. Library also supports INSERT, UPDATE, DELETE statements.

```R
# install.packages("odbc")
library(odbc)

 con <- dbConnect(odbc()
                  ,Driver = "SQL Server"
                  ,Server = "MSSQLSERVER2019"
                  ,Database = "bikestore"
                  ,trusted_connection="true"
                  ,Port = 1433)


dbConnection <- 'Driver={SQL Server}; Server=MSSQLSERVER2019; Database=bikestore; Trusted_Connection=Yes'

dbGetQuery(, "SELECT * FROM dbo.sample_table")
sqlQuery( dbConnection, "SELECT * FROM dbo.sample_table" )
```

### PostgresSQL

```R
#install.packages('RPostgreSQL')
#install.packages('RPostgres')

library('RPostgres')
library(DBI)
db <- 'postgres'  #provide the name of your db
host_db <- 'localhost'
db_port <- '5432'  
db_user <- 'postgres'  
db_password <- ''
con <- dbConnect(RPostgres::Postgres(), dbname = db, host=host_db, port=db_port, user=db_user, password=db_password)  

dbGetQuery(con, 'SELECT * FROM sample_table')
dbDisconnect(con) 

```

### Oracle

### MySQL

### SQLite

### Avro

### Parquet

### MongoDB

### Informix

### Hadoop

### Snowflake


# External sources


### Web URL / HTML

### RSS

### API 

### FTP




# Cloud storage

### Azure - blob storage

### AWS - S3 Bucket

### Google Cloud - ?

### Rabbit MQ

### Databricks


# Applications for data engineering and data science

### SAS

### KNIME

### SPSS

### Excel

### Weka

### Orange


# Other languages

### Powershell

### Python

### C#


# List of all used R packages

Installing packages:
```R
# Example
install.packages("jsonlite", dependencies = TRUE)
```



1. jsonlite (Link to: [CRAN](https://cran.r-project.org/web/packages/jsonlite/index.html))
1. Rodbc


