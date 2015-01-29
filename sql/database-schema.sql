USE [INTEGRACAO]
GO
/****** Object:  User [integracao]    Script Date: 01/29/2015 16:50:47 ******/
CREATE USER [integracao] FOR LOGIN [integracao] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[CM_COLOR]    Script Date: 01/29/2015 16:50:47 ******/
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
/****** Object:  Table [dbo].[MS_UNIT]    Script Date: 01/29/2015 16:50:47 ******/
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
/****** Object:  Table [dbo].[MS_MAGNITUDE]    Script Date: 01/29/2015 16:50:47 ******/
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
/****** Object:  StoredProcedure [dbo].[MATERIAL]    Script Date: 01/29/2015 16:50:45 ******/
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
/****** Object:  StoredProcedure [dbo].[MANUFACTURING_BOM]    Script Date: 01/29/2015 16:50:45 ******/
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
		(SELECT
			',{"item":' + CAST(ISNULL(WBCCAD.dbo.INTEGRACAO_ORCITM.ORCITM, 0) AS VARCHAR(MAX)) 
			+ ',"description":"' + UPPER(LTRIM(RTRIM(LEFT(ISNULL(WBCCAD.dbo.INTEGRACAO_ORCITM.ORCTXT, ''), CHARINDEX(' Valor total líquido:', ISNULL(WBCCAD.dbo.INTEGRACAO_ORCITM.ORCTXT, '')))))) + '"'
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
					  + ',"description":"' + LTRIM(RTRIM(UPPER(ISNULL([WBCCAD].[dbo].[PRDORC].[DESCRICAO], '')))) + '"}'
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
							[INTEGRACAO].dbo.[MS_UNIT].[SYMBOL] = 'un'
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
				[WBCCAD].[dbo].[INTEGRACAO_ORCPRD].ORCNUM = [WBCCAD].[dbo].[INTEGRACAO_ORCITM].ORCNUM AND
				[WBCCAD].[dbo].[INTEGRACAO_ORCPRD].ORCITM = [WBCCAD].[dbo].[INTEGRACAO_ORCITM].ORCITM 
				--[WBCCAD].[dbo].[ORCMAT].[numeroOrcamento] = [WBCCAD].[dbo].[INTEGRACAO_ORCITM].ORCNUM AND
				--[WBCCAD].[dbo].[ORCMAT].
			  GROUP BY [WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[PRDCOD]
			  FOR XML PATH(''), TYPE).value('.', 'varchar(max)'), 1, 1, '') + ']' + '}'
		FROM 
			WBCCAD.dbo.INTEGRACAO_ORCCAB WITH (NOLOCK) INNER JOIN
			WBCCAD.dbo.INTEGRACAO_ORCITM WITH (NOLOCK) ON
			WBCCAD.dbo.INTEGRACAO_ORCCAB.ORCNUM = WBCCAD.dbo.INTEGRACAO_ORCITM.ORCNUM
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
/****** Object:  StoredProcedure [dbo].[BOM_ITEMS]    Script Date: 01/29/2015 16:50:45 ******/
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
