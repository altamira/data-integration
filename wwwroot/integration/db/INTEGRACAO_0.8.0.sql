USE [master]
GO
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 03/06/2015 16:18:51 ******/
/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'@äq0ºõ+æ5ÈÁíB6]¿\ÕZ"Ú®mÓw2^½R', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Português (Brasil)], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 03/06/2015 16:18:51 ******/
/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'RíÙ7vÍÐÏìÊ¨3Ñ×D¥yÞ+¾,ÙW', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/****** Object:  Login [ALTAMIRA\Administrador]    Script Date: 03/06/2015 16:18:51 ******/
CREATE LOGIN [ALTAMIRA\Administrador] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Português (Brasil)]
GO
/****** Object:  Login [ALTAMIRA\Alessandro.Holanda]    Script Date: 03/06/2015 16:18:51 ******/
CREATE LOGIN [ALTAMIRA\Alessandro.Holanda] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Português (Brasil)]
GO
/****** Object:  Login [ALTAMIRA\dimas.negri]    Script Date: 03/06/2015 16:18:51 ******/
CREATE LOGIN [ALTAMIRA\dimas.negri] FROM WINDOWS WITH DEFAULT_DATABASE=[ALTANET], DEFAULT_LANGUAGE=[Português (Brasil)]
GO
/****** Object:  Login [ALTAMIRA\Marcelo.Parra]    Script Date: 03/06/2015 16:18:51 ******/
CREATE LOGIN [ALTAMIRA\Marcelo.Parra] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Português (Brasil)]
GO
/****** Object:  Login [ALTAMIRA\negociacao.comercial]    Script Date: 03/06/2015 16:18:51 ******/
CREATE LOGIN [ALTAMIRA\negociacao.comercial] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Português (Brasil)]
GO
/****** Object:  Login [ALTAMIRA\osvaldo.maiolli]    Script Date: 03/06/2015 16:18:51 ******/
CREATE LOGIN [ALTAMIRA\osvaldo.maiolli] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Português (Brasil)]
GO
/****** Object:  Login [altanet]    Script Date: 03/06/2015 16:18:51 ******/
/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [altanet] WITH PASSWORD=N'Qñ¬acæD)RO^ÂG¯IÛ>Ê£ÿ&öÒ°', DEFAULT_DATABASE=[ALTANET], DEFAULT_LANGUAGE=[Português (Brasil)], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [altanet] DISABLE
GO
/****** Object:  Login [BUILTIN/Administrators]    Script Date: 03/06/2015 16:18:51 ******/
/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [BUILTIN/Administrators] WITH PASSWORD=N'ÌñîAð×ò-Áe@ªe®FaaÑSübBKC?]í', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Português (Brasil)], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
EXEC sys.sp_addsrvrolemember @loginame = N'BUILTIN/Administrators', @rolename = N'sysadmin'
GO
ALTER LOGIN [BUILTIN/Administrators] DISABLE
GO
/****** Object:  Login [consult]    Script Date: 03/06/2015 16:18:51 ******/
/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [consult] WITH PASSWORD=N'·)c	*Ô¸ö7MC½Ý³«ß{²_øi=Qê', DEFAULT_DATABASE=[GPIMAC_Altamira], DEFAULT_LANGUAGE=[Português (Brasil)], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [consult] DISABLE
GO
/****** Object:  Login [flextime]    Script Date: 03/06/2015 16:18:51 ******/
/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [flextime] WITH PASSWORD=N'Í¶UÌsÎhÿ±SbaB,8GÙùè/3Ë', DEFAULT_DATABASE=[FLEXTIME], DEFAULT_LANGUAGE=[Português (Brasil)], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [flextime] DISABLE
GO
/****** Object:  Login [gpimac]    Script Date: 03/06/2015 16:18:51 ******/
/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [gpimac] WITH PASSWORD=N'¥ò¸ÌàKH$÷%O¡«[ßÔ!sõþô³ÕÐF', DEFAULT_DATABASE=[GPIMAC_Altamira], DEFAULT_LANGUAGE=[Português (Brasil)], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [gpimac] DISABLE
GO
/****** Object:  Login [integracao]    Script Date: 03/06/2015 16:18:52 ******/
/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [integracao] WITH PASSWORD=N'qñg[ÜÚÁûmüáèÔ®w¡RÎ¡/d7·».', DEFAULT_DATABASE=[INTEGRACAO], DEFAULT_LANGUAGE=[Português (Brasil)], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [integracao] DISABLE
GO
/****** Object:  Login [MAXSQLSERVER\Administrator]    Script Date: 03/06/2015 16:18:52 ******/
CREATE LOGIN [MAXSQLSERVER\Administrator] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Português (Brasil)]
GO
/****** Object:  Login [mule]    Script Date: 03/06/2015 16:18:52 ******/
/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [mule] WITH PASSWORD=N'	¾$¾ÀgNªçÓöD[äëùÌ¾yÉÎ9ÑòÉS8¯Ë''', DEFAULT_DATABASE=[GPIMAC_Altamira_Teste], DEFAULT_LANGUAGE=[Português (Brasil)], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [mule] DISABLE
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 03/06/2015 16:18:52 ******/
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Português (Brasil)]
GO
/****** Object:  Login [NT SERVICE\MSSQLSERVER]    Script Date: 03/06/2015 16:18:52 ******/
CREATE LOGIN [NT SERVICE\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Português (Brasil)]
GO
/****** Object:  Login [NT SERVICE\SQLSERVERAGENT]    Script Date: 03/06/2015 16:18:52 ******/
CREATE LOGIN [NT SERVICE\SQLSERVERAGENT] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Português (Brasil)]
GO
/****** Object:  Login [office]    Script Date: 03/06/2015 16:18:52 ******/
/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [office] WITH PASSWORD=N'ÒRN-ãÄ¨ÿ2ÎK½d	©´àl% ÓZåùsá´É7', DEFAULT_DATABASE=[OLAP], DEFAULT_LANGUAGE=[Português (Brasil)], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [office] DISABLE
GO
/****** Object:  Login [scada]    Script Date: 03/06/2015 16:18:52 ******/
/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [scada] WITH PASSWORD=N'o¯3Ú¥«vóØð0ö½¬G¹V&mÌ¢ÞHå£¥H', DEFAULT_DATABASE=[SCADA], DEFAULT_LANGUAGE=[Português (Brasil)], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [scada] DISABLE
GO
/****** Object:  Login [wbccad]    Script Date: 03/06/2015 16:18:52 ******/
/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [wbccad] WITH PASSWORD=N'apiz4nºë³PÐKîiÊ-lØt Ífz%Ñ', DEFAULT_DATABASE=[WBCCAD], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wbccad] DISABLE
GO
USE [INTEGRACAO]
GO
/****** Object:  User [integracao]    Script Date: 03/06/2015 16:18:51 ******/
CREATE USER [integracao] FOR LOGIN [integracao] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[CM_COLOR]    Script Date: 03/06/2015 16:18:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CM_COLOR](
	[ID] [int] NOT NULL,
	[CODE] [nvarchar](255) NOT NULL,
	[NAME] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_CM_COLOR] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CM_COLOR] ([ID], [CODE], [NAME]) VALUES (1010, N'GALV-F+PAD', N'GALV-F+PAD')
INSERT [dbo].[CM_COLOR] ([ID], [CODE], [NAME]) VALUES (1011, N'GALV-E+COR', N'GALV-E+COR')
INSERT [dbo].[CM_COLOR] ([ID], [CODE], [NAME]) VALUES (1012, N'S/ PINT', N'S/ PINT')
INSERT [dbo].[CM_COLOR] ([ID], [CODE], [NAME]) VALUES (1013, N'AZ-IR', N'AZ-IR')
INSERT [dbo].[CM_COLOR] ([ID], [CODE], [NAME]) VALUES (1014, N'BEGE-PAD', N'BEGE-PAD')
INSERT [dbo].[CM_COLOR] ([ID], [CODE], [NAME]) VALUES (1015, N'BR-LB', N'BR-LB')
INSERT [dbo].[CM_COLOR] ([ID], [CODE], [NAME]) VALUES (1016, N'GALV-E', N'GALV-E')
INSERT [dbo].[CM_COLOR] ([ID], [CODE], [NAME]) VALUES (1017, N'BG AM-LB', N'BG AM-LB')
INSERT [dbo].[CM_COLOR] ([ID], [CODE], [NAME]) VALUES (1018, N'GALV-F+COR', N'GALV-F+COR')
INSERT [dbo].[CM_COLOR] ([ID], [CODE], [NAME]) VALUES (1019, N'AM-LB', N'AM-LB')
INSERT [dbo].[CM_COLOR] ([ID], [CODE], [NAME]) VALUES (1020, N'CZ-PAD', N'CINZA TEXTURIZADO A PÓ')
INSERT [dbo].[CM_COLOR] ([ID], [CODE], [NAME]) VALUES (1021, N'VD-LB', N'VD-LB')
INSERT [dbo].[CM_COLOR] ([ID], [CODE], [NAME]) VALUES (1022, N'CZ CL-LB', N'CZ CL-LB')
INSERT [dbo].[CM_COLOR] ([ID], [CODE], [NAME]) VALUES (1023, N'BEGE PAD', N'BEGE PAD')
INSERT [dbo].[CM_COLOR] ([ID], [CODE], [NAME]) VALUES (1024, N'AZ-LB', N'AZ-LB')
INSERT [dbo].[CM_COLOR] ([ID], [CODE], [NAME]) VALUES (1025, N'GALV-F', N'GALV-F')
INSERT [dbo].[CM_COLOR] ([ID], [CODE], [NAME]) VALUES (1026, N'GALV-E+PAD', N'GALV-E+PAD')
INSERT [dbo].[CM_COLOR] ([ID], [CODE], [NAME]) VALUES (1027, N'LA-LB', N'LA-LB')
INSERT [dbo].[CM_COLOR] ([ID], [CODE], [NAME]) VALUES (1028, N'PR-LF', N'PR-LF')
INSERT [dbo].[CM_COLOR] ([ID], [CODE], [NAME]) VALUES (1029, N'S/ COR', N'S/ COR')
/****** Object:  Table [dbo].[MS_UNIT]    Script Date: 03/06/2015 16:18:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MS_UNIT](
	[ID] [int] NOT NULL,
	[NAME] [nvarchar](255) NOT NULL,
	[SYMBOL] [nvarchar](255) NOT NULL,
	[MAGNITUDE] [int] NOT NULL,
 CONSTRAINT [PK_MS_UNIT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[MS_UNIT] ([ID], [NAME], [SYMBOL], [MAGNITUDE]) VALUES (210, N'minuto', N'min', 4)
INSERT [dbo].[MS_UNIT] ([ID], [NAME], [SYMBOL], [MAGNITUDE]) VALUES (211, N'segundo', N's', 4)
INSERT [dbo].[MS_UNIT] ([ID], [NAME], [SYMBOL], [MAGNITUDE]) VALUES (212, N'hora', N'h', 4)
INSERT [dbo].[MS_UNIT] ([ID], [NAME], [SYMBOL], [MAGNITUDE]) VALUES (213, N'milimetro', N'mm', 1)
INSERT [dbo].[MS_UNIT] ([ID], [NAME], [SYMBOL], [MAGNITUDE]) VALUES (214, N'metro', N'm', 1)
INSERT [dbo].[MS_UNIT] ([ID], [NAME], [SYMBOL], [MAGNITUDE]) VALUES (215, N'quilograma', N'kg', 2)
INSERT [dbo].[MS_UNIT] ([ID], [NAME], [SYMBOL], [MAGNITUDE]) VALUES (216, N'tonelada', N'TON', 2)
INSERT [dbo].[MS_UNIT] ([ID], [NAME], [SYMBOL], [MAGNITUDE]) VALUES (217, N'unidade', N'un', 3)
INSERT [dbo].[MS_UNIT] ([ID], [NAME], [SYMBOL], [MAGNITUDE]) VALUES (218, N'peças', N'pç', 3)
/****** Object:  Table [dbo].[MS_MAGNITUDE]    Script Date: 03/06/2015 16:18:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MS_MAGNITUDE](
	[ID] [int] NOT NULL,
	[NAME] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_MS_MAGNITUDE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[MS_MAGNITUDE] ([ID], [NAME]) VALUES (1, N'dimencional')
INSERT [dbo].[MS_MAGNITUDE] ([ID], [NAME]) VALUES (2, N'peso')
INSERT [dbo].[MS_MAGNITUDE] ([ID], [NAME]) VALUES (3, N'unidade')
INSERT [dbo].[MS_MAGNITUDE] ([ID], [NAME]) VALUES (4, N'tempo')
/****** Object:  StoredProcedure [dbo].[MATERIAL]    Script Date: 03/06/2015 16:18:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MATERIAL] (@search NVARCHAR(MAX), @start AS INT, @max AS INT) AS

SELECT '[' + STUFF(
	(SELECT
		  --ISNULL([GRPCOD], 0) AS [group]
		  --,ISNULL([SUBGRPCOD], 0) AS subgroup
		  --,ISNULL([ORCITM], 0) AS item
		  ',{"code":"' + LTRIM(RTRIM(PRODUTO)) + '"'
		  + ',"description":"' + LTRIM(RTRIM(UPPER(ISNULL(DESCRICAO, '')))) + '"'
		  /*+ ',"color": ' + 
		  (SELECT TOP 1
				'{"id":' + CAST([ID] AS NVARCHAR) 
				+ ',"code":"' + LTRIM(RTRIM([CODE])) + '"' 
				+ ',"name":"' + LTRIM(RTRIM([NAME])) + '"'
				+ '}'
			FROM 
				[INTEGRACAO].dbo.[CM_COLOR]
			WHERE 
				[CODE] = MIN([CORCOD])
			FOR XML PATH(''), TYPE).value('.', 'varchar(max)')
		  + ',"quantity":{"value": ' + CAST(CAST(ISNULL(SUM([ORCQTD]), 0) AS DECIMAL(10,3)) AS NVARCHAR(MAX)) + ',"unit":' + 
		  (SELECT TOP 1
				'{"id":' + CAST([ID] AS NVARCHAR) 
				+ ',"name":"' + LTRIM(RTRIM([NAME])) + '"'
				+ ',"symbol":"' + LTRIM(RTRIM([SYMBOL])) + '"'
				+ '}'
			FROM 
				[INTEGRACAO].dbo.[MS_UNIT]
			WHERE 
				[SYMBOL] = 'un'
			FOR XML PATH(''), TYPE).value('.', 'varchar(max)') + '}'
		  + ',"width": { "value": '  + CAST(CAST(CASE WHEN CHARINDEX('#', LTRIM(RTRIM(ISNULL([PRDCOD], '')))) > 0 THEN PARSENAME(REPLACE([PRDCOD], '#', '.'), 1) ELSE 0 END AS DECIMAL(10,3)) AS NVARCHAR(MAX)) + ', "unit":' +
		  (SELECT TOP 1
				'{"id":' + CAST([ID] AS NVARCHAR) 
				+ ',"name":"' + LTRIM(RTRIM([NAME])) + '"'
				+ ',"symbol":"' + LTRIM(RTRIM([SYMBOL])) + '"'
				+ '}'
			FROM 
				[INTEGRACAO].dbo.[MS_UNIT]
			WHERE 
				[SYMBOL] = 'mm'
			FOR XML PATH(''), TYPE).value('.', 'varchar(max)') + '}'
		  + ',"height": { "value": '  + CAST(CAST(CASE WHEN CHARINDEX('#', LTRIM(RTRIM(ISNULL([PRDCOD], '')))) > 0 THEN PARSENAME(REPLACE([PRDCOD], '#', '.'), 2) ELSE 0 END AS DECIMAL(10,3)) AS NVARCHAR(MAX)) + ', "unit":' +
		  (SELECT TOP 1
				'{"id":' + CAST([ID] AS NVARCHAR) 
				+ ',"name":"' + LTRIM(RTRIM([NAME])) + '"'
				+ ',"symbol":"' + LTRIM(RTRIM([SYMBOL])) + '"'
				+ '}'
			FROM 
				[INTEGRACAO].dbo.[MS_UNIT]
			WHERE 
				[SYMBOL] = 'mm'
			FOR XML PATH(''), TYPE).value('.', 'varchar(max)') + '}'
		  + ',"length": { "value": '  + CAST(CAST(CASE WHEN CHARINDEX('#', LTRIM(RTRIM(ISNULL([PRDCOD], '')))) > 0 THEN PARSENAME(REPLACE([PRDCOD], '#', '.'), 3) ELSE 0 END AS DECIMAL(10,3)) AS NVARCHAR(MAX)) + ', "unit":' +
		  (SELECT TOP 1
				'{"id":' + CAST([ID] AS NVARCHAR) 
				+ ',"name":"' + LTRIM(RTRIM([NAME])) + '"'
				+ ',"symbol":"' + LTRIM(RTRIM([SYMBOL])) + '"'
				+ '}'
			FROM 
				[INTEGRACAO].dbo.[MS_UNIT]
			WHERE 
				[SYMBOL] = 'mm'
			FOR XML PATH(''), TYPE).value('.', 'varchar(max)') + '}'
		  + ',"weight": { "value": ' + CAST(SUM(CAST(ISNULL([ORCPES], 0) AS DECIMAL(10,3))) AS NVARCHAR(MAX)) + ', "unit":' +
		  (SELECT TOP 1
				'{"id":' + CAST([ID] AS NVARCHAR) 
				+ ',"name":"' + LTRIM(RTRIM([NAME])) + '"'
				+ ',"symbol":"' + LTRIM(RTRIM([SYMBOL])) + '"'
				+ '}'
			FROM 
				[INTEGRACAO].dbo.[MS_UNIT]
			WHERE 
				[SYMBOL] = 'kg'
			FOR XML PATH(''), TYPE).value('.', 'varchar(max)') + '}'*/
		  +'}'
	  FROM 
		(SELECT * FROM 
			(SELECT 
				ROW_NUMBER() OVER (ORDER BY [WBCCAD].[dbo].[PRDORC].PRODUTO) AS ROW_NUM, 
				[WBCCAD].[dbo].[PRDORC].PRODUTO,
				[WBCCAD].[dbo].[PRDORC].DESCRICAO
			FROM 
				[WBCCAD].[dbo].[PRDORC]
			WHERE 
				[WBCCAD].[dbo].[PRDORC].Produto LIKE @search + '%' OR
				[WBCCAD].[dbo].[PRDORC].Descricao LIKE '%' + @search + '%') AS [RESULT]
		WHERE 
			--ROW_NUM >= ((@pageNumber -1) * @pageSize) AND ROW_NUM < ((@pageNumber -1) * @pageSize) + @pageSize)
			ROW_NUM BETWEEN ((@start) * @max + 1) AND ((@start + 1) * @max)
		) AS [PAGE_RESULT]
		--[WBCCAD].[dbo].[PRDEST] WITH (NOLOCK)
	  FOR XML PATH(''), TYPE).value('.', 'varchar(max)'), 1, 1, '') + ']' AS 'material'
GO
/****** Object:  StoredProcedure [dbo].[MANUFACTURING_BOM]    Script Date: 03/06/2015 16:18:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MANUFACTURING_BOM] (@order INT) AS

SELECT STUFF(
	(SELECT     
		',{"number":' + CAST(GPIMAC_Altamira.dbo.LPV.LPPED AS VARCHAR(MAX)) 
		+ ',"customer":"' + LTRIM(RTRIM(UPPER(ISNULL(GPIMAC_Altamira.dbo.CACLI.CCNOM, '')))) + '"'
		+ ',"representative":"' + LTRIM(RTRIM(UPPER(ISNULL(GPIMAC_Altamira.dbo.CAREP.CVNOM, '')))) + '"'
		+ ',"created":"' + LTRIM(RTRIM(ISNULL(CONVERT(NVARCHAR, GPIMAC_Altamira.dbo.LPV.LPENT, 127), ''))) /*'1410895028676'*/ + '"'
		+ ',"delivery":"' + LTRIM(RTRIM(ISNULL(CONVERT(NVARCHAR, GPIMAC_Altamira.dbo.LPV.LP0SAIRED, 127), ''))) /*'1410895028676'*/ + '"'
		+ ',"quotation":"' + GPIMAC_Altamira.dbo.LPV.LPWBCCADORCNUM + '"'
		+ ',"comment":"' + 
				CASE WHEN LTRIM(RTRIM(ISNULL(GPIMAC_Altamira.dbo.LPV.LPObsOP, ''))) <> '' THEN 'PRODUÇÃO: ' + REPLACE(REPLACE(REPLACE(REPLACE(UPPER(LTRIM(RTRIM(ISNULL(GPIMAC_Altamira.dbo.LPV.LPObsOP, '')))), CHAR(10), '\\n'), CHAR(13), '\\r'), CHAR(39), '\\'''), CHAR(34), '\\"') ELSE '' END + 
				CASE WHEN LTRIM(RTRIM(ISNULL(GPIMAC_Altamira.dbo.LPV.LPObsInt, ''))) <> '' THEN ' PEDIDO: ' + REPLACE(REPLACE(REPLACE(REPLACE(UPPER(LTRIM(RTRIM(ISNULL(GPIMAC_Altamira.dbo.LPV.LPObsInt, '')))), CHAR(10), '\\n'), CHAR(13), '\\r'), CHAR(39), '\\'''), CHAR(34), '\\"') ELSE '' END + 
				CASE WHEN LTRIM(RTRIM(ISNULL(GPIMAC_Altamira.dbo.LPV.LPObsNF, ''))) <> '' THEN ' FATURAMENTO: ' + REPLACE(REPLACE(REPLACE(REPLACE(UPPER(LTRIM(RTRIM(ISNULL(GPIMAC_Altamira.dbo.LPV.LPObsNF, '')))), CHAR(10), '\\n'), CHAR(13), '\\r'), CHAR(39), '\\'''), CHAR(34), '\\"') ELSE '' END + '"',
		+ ',"finish":"' + LTRIM(RTRIM(UPPER(GPIMAC_Altamira.dbo.CAACAB.CAc0Nom))) + '"'
		+ ',"project":' + CAST(GPIMAC_Altamira.dbo.LPV.LPPED AS VARCHAR(MAX)) 
		+ ',"item":' + '[' + STUFF(
		(SELECT DISTINCT
			',{"item":' + CAST(ISNULL(WBCCAD.dbo.INTEGRACAO_ORCITM.ORCITM, 0) AS VARCHAR(MAX)) 
			+ ',"description":"' + REPLACE(REPLACE(REPLACE(REPLACE(UPPER(LTRIM(RTRIM(LEFT(ISNULL(WBCCAD.dbo.INTEGRACAO_ORCITM.ORCTXT,'ITEM 0'), ISNULL(CHARINDEX(' Valor total líquido:', WBCCAD.dbo.INTEGRACAO_ORCITM.ORCTXT), LEN('ITEM 0')))))), CHAR(10), '\\n'), CHAR(13), '\\r'), CHAR(39), '\\'''), CHAR(34), '\\"') + '"'
			--ISNULL(WBCCAD.dbo.INTEGRACAO_ORCITM.ORCPRDQTD, 0) AS quantity, 
			--LTRIM(RTRIM(ISNULL(WBCCAD.dbo.INTEGRACAO_ORCITM.ORCPRDCOD, ''))) AS code, 
			--ISNULL(WBCCAD.dbo.INTEGRACAO_ORCITM.GRPCOD, 0) AS [group], 
			--ISNULL(WBCCAD.dbo.INTEGRACAO_ORCITM.SUBGRPCOD, 0) AS subgroup,
			+ ',"component":' + '[' + STUFF(
			(SELECT
				(SELECT
					  --ISNULL([GRPCOD], 0) AS [group]
					  --,ISNULL([SUBGRPCOD], 0) AS subgroup
					  --,ISNULL([ORCITM], 0) AS item
					  ',{"material":{"id":0,"code":"' + LTRIM(RTRIM(UPPER(ISNULL([WBCCAD].[dbo].[PRDORC].[PRODUTO], '')))) + '"'
					  + ',"description":"' + REPLACE(REPLACE(REPLACE(REPLACE(LTRIM(RTRIM(UPPER(ISNULL([WBCCAD].[dbo].[PRDORC].[DESCRICAO], '')))), CHAR(10), '\\n'), CHAR(13), '\\r'), CHAR(39), '\\'''), CHAR(34), '\\"') + '"}'
					  + ',"code":"' + LTRIM(RTRIM(UPPER(ISNULL([WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[PRDCOD], '')))) + '"' 
					  + ',"description":"' + REPLACE(REPLACE(REPLACE(REPLACE(LTRIM(RTRIM(UPPER(ISNULL(MIN([WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[PRDDSC]), '')))), CHAR(10), '\\n'), CHAR(13), '\\r'), CHAR(39), '\\'''), CHAR(34), '\\"') + '"' 
					  + ',"color": ' + 
					  (SELECT TOP 1
							'{"id":' + CAST([INTEGRACAO].dbo.[CM_COLOR].[ID] AS NVARCHAR) 
							+ ',"code":"' + LTRIM(RTRIM([INTEGRACAO].dbo.[CM_COLOR].[CODE])) + '"' 
							+ ',"name":"' + LTRIM(RTRIM([INTEGRACAO].dbo.[CM_COLOR].[NAME])) + '"'
							+ '}'
						FROM 
							[INTEGRACAO].dbo.[CM_COLOR]
						WHERE 
							[INTEGRACAO].dbo.[CM_COLOR].[CODE] = MIN([CORCOD])
						FOR XML PATH(''), TYPE).value('.', 'varchar(max)')
					  + ',"quantity":{"value": ' + CONVERT(VARCHAR(50), SUM(ISNULL([WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[ORCQTD], 0)), 128) + ',"unit":' + 
					  (SELECT TOP 1
							'{"id":' + CAST([INTEGRACAO].dbo.[MS_UNIT].[ID] AS NVARCHAR) 
							+ ',"name":"' + LTRIM(RTRIM([INTEGRACAO].dbo.[MS_UNIT].[NAME])) + '"'
							+ ',"symbol":"' + LTRIM(RTRIM([INTEGRACAO].dbo.[MS_UNIT].[SYMBOL])) + '"'
							+ '}'
						FROM 
							[INTEGRACAO].dbo.[MS_UNIT]
						WHERE 
							[INTEGRACAO].dbo.[MS_UNIT].[SYMBOL] = CASE	WHEN LEFT([WBCCAD].[dbo].[PRDORC].[PRODUTO], 3) = 'ALP' THEN 'kg'
																		WHEN LEFT([WBCCAD].[dbo].[PRDORC].[PRODUTO], 3) = 'TPO' THEN 'kg'
																		ELSE 'un' END
						FOR XML PATH(''), TYPE).value('.', 'varchar(max)') + '}'
					  + ',"width": { "value": '  + CONVERT(VARCHAR(50), (CASE WHEN CHARINDEX('#', LTRIM(RTRIM(ISNULL([WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[PRDCOD], '')))) > 0 THEN CAST(PARSENAME(REPLACE([WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[PRDCOD], '#', '.'), 1) AS FLOAT) ELSE ISNULL([WBCCAD].[dbo].[PRDORC].[Comprimento], 0) END), 128) + ', "unit":' +
					  (SELECT TOP 1
							'{"id":' + CAST([INTEGRACAO].dbo.[MS_UNIT].[ID] AS NVARCHAR) 
							+ ',"name":"' + LTRIM(RTRIM([INTEGRACAO].dbo.[MS_UNIT].[NAME])) + '"'
							+ ',"symbol":"' + LTRIM(RTRIM([INTEGRACAO].dbo.[MS_UNIT].[SYMBOL])) + '"'
							+ '}'
						FROM 
							[INTEGRACAO].dbo.[MS_UNIT]
						WHERE 
							[INTEGRACAO].dbo.[MS_UNIT].[SYMBOL] = 'mm'
						FOR XML PATH(''), TYPE).value('.', 'varchar(max)') + '}'
					  + ',"height": { "value": '  + CONVERT(VARCHAR(50), (CASE WHEN CHARINDEX('#', LTRIM(RTRIM(ISNULL([WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[PRDCOD], '')))) > 0 THEN CAST(PARSENAME(REPLACE([WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[PRDCOD], '#', '.'), 2) AS FLOAT) ELSE ISNULL([WBCCAD].[dbo].[PRDORC].[Altura], 0) END), 128) + ', "unit":' +
					  (SELECT TOP 1
							'{"id":' + CAST([INTEGRACAO].dbo.[MS_UNIT].[ID] AS NVARCHAR) 
							+ ',"name":"' + LTRIM(RTRIM([INTEGRACAO].dbo.[MS_UNIT].[NAME])) + '"'
							+ ',"symbol":"' + LTRIM(RTRIM([INTEGRACAO].dbo.[MS_UNIT].[SYMBOL])) + '"'
							+ '}'
						FROM 
							[INTEGRACAO].dbo.[MS_UNIT]
						WHERE 
							[INTEGRACAO].dbo.[MS_UNIT].[SYMBOL] = 'mm'
						FOR XML PATH(''), TYPE).value('.', 'varchar(max)') + '}'
					  + ',"length": { "value": '  + CONVERT(VARCHAR(50), (CASE WHEN CHARINDEX('#', LTRIM(RTRIM(ISNULL([WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[PRDCOD], '')))) > 0 THEN CAST(PARSENAME(REPLACE([WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[PRDCOD], '#', '.'), 3) AS FLOAT) ELSE ISNULL([WBCCAD].[dbo].[PRDORC].[Largura], 0) END), 128) + ', "unit":' +
					  (SELECT TOP 1
							'{"id":' + CAST([INTEGRACAO].dbo.[MS_UNIT].[ID] AS NVARCHAR) 
							+ ',"name":"' + LTRIM(RTRIM([INTEGRACAO].dbo.[MS_UNIT].[NAME])) + '"'
							+ ',"symbol":"' + LTRIM(RTRIM([INTEGRACAO].dbo.[MS_UNIT].[SYMBOL])) + '"'
							+ '}'
						FROM 
							[INTEGRACAO].dbo.[MS_UNIT]
						WHERE 
							[INTEGRACAO].dbo.[MS_UNIT].[SYMBOL] = 'mm'
						FOR XML PATH(''), TYPE).value('.', 'varchar(max)') + '}'
					  --,CAST(ISNULL([ORCTOT], 0) AS DECIMAL(10,3)) AS value,
					  + ',"weight": { "value": ' + CONVERT(VARCHAR(50), SUM(ISNULL([WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[ORCPES], 0)), 128) + ', "unit":' +
					  (SELECT TOP 1
							'{"id":' + CAST([INTEGRACAO].dbo.[MS_UNIT].[ID] AS NVARCHAR) 
							+ ',"name":"' + LTRIM(RTRIM([INTEGRACAO].dbo.[MS_UNIT].[NAME])) + '"'
							+ ',"symbol":"' + LTRIM(RTRIM([INTEGRACAO].dbo.[MS_UNIT].[SYMBOL])) + '"'
							+ '}'
						FROM 
							[INTEGRACAO].dbo.[MS_UNIT]
						WHERE 
							[INTEGRACAO].dbo.[MS_UNIT].[SYMBOL] = 'kg'
						FOR XML PATH(''), TYPE).value('.', 'varchar(max)') + '}'
					  +'}'
				  FROM
					[WBCCAD].[dbo].[PRDORC]
				  WHERE 
  					LTRIM(RTRIM([WBCCAD].[dbo].[PRDORC].[PRODUTO])) = CASE WHEN CHARINDEX('#', LTRIM(RTRIM(ISNULL([WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[PRDCOD], '')))) > 0 THEN LEFT([WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[PRDCOD], CHARINDEX('#', LTRIM(RTRIM(ISNULL([WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[PRDCOD], '')))) -1) ELSE LTRIM(RTRIM([WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[PRDCOD])) END
				  FOR XML PATH(''), TYPE).value('.', 'varchar(max)')
			  FROM 
				[WBCCAD].[dbo].[INTEGRACAO_ORCPRD]
				--[WBCCAD].[dbo].[ORCMAT]				
			  WHERE 
				[WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[ORCNUM] = [WBCCAD].[dbo].[INTEGRACAO_ORCCAB].[ORCNUM] AND
				[WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[ORCITM] = ISNULL([WBCCAD].[dbo].[INTEGRACAO_ORCITM].[ORCITM], 0)
				--[WBCCAD].[dbo].[ORCMAT].[numeroOrcamento] = [WBCCAD].[dbo].[INTEGRACAO_ORCITM].ORCNUM AND
				--[WBCCAD].[dbo].[ORCMAT].
			  GROUP BY [WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[PRDCOD]
			  FOR XML PATH(''), TYPE).value('.', 'varchar(max)'), 1, 1, '') + ']' + '}'
		FROM 
			[WBCCAD].[dbo].[INTEGRACAO_ORCCAB] WITH (NOLOCK) INNER JOIN
			[WBCCAD].[dbo].[INTEGRACAO_ORCPRD] WITH (NOLOCK) ON [WBCCAD].[dbo].[INTEGRACAO_ORCCAB].[ORCNUM] = [WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[ORCNUM] LEFT OUTER JOIN
			[WBCCAD].[dbo].[INTEGRACAO_ORCITM] WITH (NOLOCK) ON [WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[ORCITM] = [WBCCAD].[dbo].[INTEGRACAO_ORCITM].[ORCITM] AND
			[WBCCAD].[dbo].[INTEGRACAO_ORCCAB].[ORCNUM] = [WBCCAD].[dbo].[INTEGRACAO_ORCITM].[ORCNUM] 
		WHERE
			WBCCAD.dbo.INTEGRACAO_ORCCAB.ORCNUM = GPIMAC_Altamira.dbo.LPV.LPWBCCADORCNUM
		FOR XML PATH(''), TYPE).value('.', 'varchar(max)'), 1, 1, '') + ']' + '}'
	FROM         
		GPIMAC_Altamira.dbo.LPV WITH (NOLOCK) INNER JOIN
		GPIMAC_Altamira.dbo.CACLI WITH (NOLOCK) ON GPIMAC_Altamira.dbo.CACLI.CCCGC = GPIMAC_Altamira.dbo.LPV.CCCGC INNER JOIN
		GPIMAC_Altamira.dbo.CAREP WITH (NOLOCK) ON GPIMAC_Altamira.dbo.CAREP.CVCOD = GPIMAC_Altamira.dbo.LPV.LPVEN INNER JOIN
		GPIMAC_Altamira.dbo.CAACAB WITH (NOLOCK) ON GPIMAC_Altamira.dbo.CAACAB.CAC0COD = LPV.CAC0COD
		 /*INNER JOIN
		WBCCAD.dbo.INTEGRACAO_ORCCAB WITH (NOLOCK) INNER JOIN
		WBCCAD.dbo.INTEGRACAO_ORCITM WITH (NOLOCK) ON WBCCAD.dbo.INTEGRACAO_ORCCAB.ORCNUM = WBCCAD.dbo.INTEGRACAO_ORCITM.ORCNUM INNER JOIN
		WBCCAD.dbo.INTEGRACAO_ORCPRD WITH (NOLOCK) ON WBCCAD.dbo.INTEGRACAO_ORCITM.ORCNUM = WBCCAD.dbo.INTEGRACAO_ORCPRD.ORCNUM ON 
		GPIMAC_Altamira.dbo.LPV.LPWBCCADORCNUM = WBCCAD.dbo.INTEGRACAO_ORCCAB.ORCNUM*/
	WHERE     
		(GPIMAC_Altamira.dbo.LPV.LPPED = @order)
	FOR XML PATH(''), TYPE).value('.', 'varchar(max)'), 1, 1, '') AS 'order'
GO
/****** Object:  StoredProcedure [dbo].[BOM_ITEMS]    Script Date: 03/06/2015 16:18:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BOM_ITEMS] (@order NVARCHAR(MAX)) AS

SELECT '[' + STUFF(
	(SELECT
		  --ISNULL([GRPCOD], 0) AS [group]
		  --,ISNULL([SUBGRPCOD], 0) AS subgroup
		  --,ISNULL([ORCITM], 0) AS item
		  ',{"code":"' + LTRIM(RTRIM(CASE WHEN CHARINDEX('#', ISNULL([PRDCOD], '')) > 0 THEN LEFT(ISNULL([PRDCOD], ''), CHARINDEX('#', [PRDCOD]) -1) ELSE ISNULL([PRDCOD], '') END)) + '"'
		  + ',"description":"' + LTRIM(RTRIM(UPPER(ISNULL(MIN([PRDDSC]), '')))) + '"'
		  + ',"color": ' + 
		  (SELECT TOP 1
				'{"id":' + CAST([ID] AS NVARCHAR) 
				+ ',"code":"' + LTRIM(RTRIM([CODE])) + '"' 
				+ ',"name":"' + LTRIM(RTRIM([NAME])) + '"'
				+ '}'
			FROM 
				[INTEGRACAO].dbo.[CM_COLOR]
			WHERE 
				[CODE] = MIN([CORCOD])
			FOR XML PATH(''), TYPE).value('.', 'varchar(max)')
		  + ',"quantity":{"value": ' + CAST(CAST(ISNULL(SUM([ORCQTD]), 0) AS DECIMAL(10,3)) AS NVARCHAR(MAX)) + ',"unit":' + 
		  (SELECT TOP 1
				'{"id":' + CAST([ID] AS NVARCHAR) 
				+ ',"name":"' + LTRIM(RTRIM([NAME])) + '"'
				+ ',"symbol":"' + LTRIM(RTRIM([SYMBOL])) + '"'
				+ '}'
			FROM 
				[INTEGRACAO].dbo.[MS_UNIT]
			WHERE 
				[SYMBOL] = 'un'
			FOR XML PATH(''), TYPE).value('.', 'varchar(max)') + '}'
		  + ',"width": { "value": '  + CAST(CAST(CASE WHEN CHARINDEX('#', LTRIM(RTRIM(ISNULL([PRDCOD], '')))) > 0 THEN PARSENAME(REPLACE([PRDCOD], '#', '.'), 1) ELSE 0 END AS DECIMAL(10,3)) AS NVARCHAR(MAX)) + ', "unit":' +
		  (SELECT TOP 1
				'{"id":' + CAST([ID] AS NVARCHAR) 
				+ ',"name":"' + LTRIM(RTRIM([NAME])) + '"'
				+ ',"symbol":"' + LTRIM(RTRIM([SYMBOL])) + '"'
				+ '}'
			FROM 
				[INTEGRACAO].dbo.[MS_UNIT]
			WHERE 
				[SYMBOL] = 'mm'
			FOR XML PATH(''), TYPE).value('.', 'varchar(max)') + '}'
		  + ',"height": { "value": '  + CAST(CAST(CASE WHEN CHARINDEX('#', LTRIM(RTRIM(ISNULL([PRDCOD], '')))) > 0 THEN PARSENAME(REPLACE([PRDCOD], '#', '.'), 2) ELSE 0 END AS DECIMAL(10,3)) AS NVARCHAR(MAX)) + ', "unit":' +
		  (SELECT TOP 1
				'{"id":' + CAST([ID] AS NVARCHAR) 
				+ ',"name":"' + LTRIM(RTRIM([NAME])) + '"'
				+ ',"symbol":"' + LTRIM(RTRIM([SYMBOL])) + '"'
				+ '}'
			FROM 
				[INTEGRACAO].dbo.[MS_UNIT]
			WHERE 
				[SYMBOL] = 'mm'
			FOR XML PATH(''), TYPE).value('.', 'varchar(max)') + '}'
		  + ',"length": { "value": '  + CAST(CAST(CASE WHEN CHARINDEX('#', LTRIM(RTRIM(ISNULL([PRDCOD], '')))) > 0 THEN PARSENAME(REPLACE([PRDCOD], '#', '.'), 3) ELSE 0 END AS DECIMAL(10,3)) AS NVARCHAR(MAX)) + ', "unit":' +
		  (SELECT TOP 1
				'{"id":' + CAST([ID] AS NVARCHAR) 
				+ ',"name":"' + LTRIM(RTRIM([NAME])) + '"'
				+ ',"symbol":"' + LTRIM(RTRIM([SYMBOL])) + '"'
				+ '}'
			FROM 
				[INTEGRACAO].dbo.[MS_UNIT]
			WHERE 
				[SYMBOL] = 'mm'
			FOR XML PATH(''), TYPE).value('.', 'varchar(max)') + '}'
		  --,CAST(ISNULL([ORCTOT], 0) AS DECIMAL(10,3)) AS value,
		  + ',"weight": { "value": ' + CAST(SUM(CAST(ISNULL([ORCPES], 0) AS DECIMAL(10,3))) AS NVARCHAR(MAX)) + ', "unit":' +
		  (SELECT TOP 1
				'{"id":' + CAST([ID] AS NVARCHAR) 
				+ ',"name":"' + LTRIM(RTRIM([NAME])) + '"'
				+ ',"symbol":"' + LTRIM(RTRIM([SYMBOL])) + '"'
				+ '}'
			FROM 
				[INTEGRACAO].dbo.[MS_UNIT]
			WHERE 
				[SYMBOL] = 'kg'
			FOR XML PATH(''), TYPE).value('.', 'varchar(max)') + '}'
		  +'}'
	  FROM 
		[GPIMAC_Altamira].[dbo].[LPV] WITH (NOLOCK) INNER JOIN 
		[WBCCAD].[dbo].[INTEGRACAO_ORCCAB] WITH (NOLOCK) ON [WBCCAD].[dbo].[INTEGRACAO_ORCCAB].[ORCNUM] = [GPIMAC_Altamira].[dbo].[LPV].[LPWBCCADORCNUM] INNER JOIN
		WBCCAD.dbo.INTEGRACAO_ORCITM WITH (NOLOCK) ON WBCCAD.dbo.INTEGRACAO_ORCCAB.ORCNUM = WBCCAD.dbo.INTEGRACAO_ORCITM.ORCNUM INNER JOIN
		[WBCCAD].[dbo].[INTEGRACAO_ORCPRD] WITH (NOLOCK) ON [WBCCAD].[dbo].[INTEGRACAO_ORCPRD].ORCNUM = [WBCCAD].[dbo].[INTEGRACAO_ORCITM].ORCNUM AND
		[WBCCAD].[dbo].[INTEGRACAO_ORCPRD].ORCITM = [WBCCAD].[dbo].[INTEGRACAO_ORCITM].ORCITM
	  WHERE 
		(GPIMAC_Altamira.dbo.LPV.LPPED = @order)
	  GROUP BY [PRDCOD]
	  FOR XML PATH(''), TYPE).value('.', 'varchar(max)'), 1, 1, '') + ']' AS 'order'
GO
GRANT EXECUTE ON [dbo].[MANUFACTURING_BOM] TO [integracao] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[MATERIAL] TO [integracao] AS [dbo]
GO
GRANT SELECT ON [dbo].[CM_COLOR] TO [integracao] AS [dbo]
GO
