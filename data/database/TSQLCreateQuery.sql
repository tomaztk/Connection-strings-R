

USE mydatabase;
GO

DROP TABLE IF EXISTS dbo.sample_table

CREATE TABLE dbo.sample_table (
  [name] VARCHAR(100) NOT NULL
  ,age INT NOT NULL
  ,Country VARCHAR(10) NOT NULL
)

INSERT INTO dbo.sample_table VALUES ('Tom',30,'US')
INSERT INTO dbo.sample_table VALUES ('Mike',54,'UK')
INSERT INTO dbo.sample_table VALUES ('Eddie',56,'PT')


select * from dbo.sample_table