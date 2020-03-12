IF NOT EXISTS 
   (
     SELECT name FROM master.dbo.sysdatabases 
     WHERE name = N'kafka_connect_test'
    )
CREATE DATABASE kafka_connect_test

USE kafka_connect_test;

IF  NOT EXISTS (SELECT * FROM sys.objects 
WHERE object_id = OBJECT_ID(N'[dbo].[test3]') AND type in (N'U'))

BEGIN
CREATE TABLE [dbo].[test3](
  id int NOT NULL IDENTITY(100,1) PRIMARY KEY,
  fname varchar(100),
  email varchar(200),
  department varchar(200),
  modified datetime default CURRENT_TIMESTAMP
) 

END

INSERT INTO test3 (fname, email, department) VALUES ('alice', 'alice@abc.com', 'engineering');
INSERT INTO test3 (fname, email, department) VALUES ('bob', 'bob@abc.com', 'sales');
