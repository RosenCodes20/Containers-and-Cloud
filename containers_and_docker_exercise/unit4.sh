docker run -d --name mssql_db -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=YourStrong@Passw0rd" -p 1433:1433 -v /Users/macbookpro16/Vs_code/mssql:/var/opt/mssql mcr.microsoft.com/mssql/server
