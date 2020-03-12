#!/bin/bash

# Start a mssql-server instance running as the SQL Express edition
docker run -e 'ACCEPT_EULA=Y' 
           -e 'SA_PASSWORD=yourStrong(!)Password' 
           -e 'MSSQL_PID=Express' 
           -p 1433:1433 
           -d mcr.microsoft.com/mssql/server:2017-latest-ubuntu 