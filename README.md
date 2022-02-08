# Curated list of different connection strings for R Language


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


## Databases and formats

#### Spark

#### Microsoft SQL Server

### PostgresSQL

### Oracle

### MySQL

### SQLite

### Avro

### Parquet

### MongoDB

### Informix

### Netezza

### Hadoop

### Snowflake


## External sources

### Web URL / HTML

### RSS

### API 

### FTP


## Cloud storage

### Azure - blob storage

### AWS - S3 Bucket

### Google Cloud - ?

### Rabbit MQ

### Databricks


## Applications

### SAS

### KNIME

### SPSS

### Excel

### Weka

### Orange




## Languages

### Powershell

### Python

### C#
