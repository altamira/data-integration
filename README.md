Data Integration
================

Provide API to data integration with legacy systems at Altamira Industria Metalurgica.

### Setup Microsoft IIS (Internet Information Server)

To install this service at Microsoft IIS server follow this steps:

1. Copy the content of `wwwroot` folder to your IIS home folder. The default location is `C:\inetpub\wwwroot\`.
2. Create a new site at IIS and point to `C:\inetpub\wwwroot\integration`. 
   ![Alt text](img/iis-integration-site.png?raw=true "Create new site") 
3. Add a new `HTTP Response Header` to enable [CORS](http://pt.wikipedia.org/wiki/Cross-origin_resource_sharing). 

   ![Alt text](img/iis-http-cosr-header.png?raw=true "Create new site")
   
   `Access-Control-Allow-Origin = *`

### Setup Microsoft SQL Server 2008

To setup this database at SQL Server 2008 do the foloow:

1. Create a SQL Server login "integracao".
2. Run the script `database.sql` at folder `/sql` to create database `INTEGRACAO`
3. Grant `db_datareader` permission on login `integracao` to databases `INTEGRACAO`, `WBCCAD` and `GPIMAC_Altamira`.
2. Adjust the database connection string user and password at `C:\inetput\wwwroot\manufacturing\bom\index.aspx`, at line 28 to point to the correct database, user and password, for example `Database=INTEGRACAO;User Id=integracao;Password=123456;`.

To run this service make a http request to

```sh
GET http://integracao.altamira.com.br/manufacturing/bom?72271
```

Don't forget to pass #Sales Order Number# as url query parameter, like this: `?72271`.
