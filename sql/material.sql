USE [INTEGRACAO]
GO

/****** Object:  StoredProcedure [dbo].[MATERIAL]    Script Date: 12/12/2014 09:00:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[MATERIAL] (@search NVARCHAR(MAX)) AS

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
		[WBCCAD].[dbo].[PRDORC]
		--[WBCCAD].[dbo].[PRDEST] WITH (NOLOCK)
	  WHERE 
		--([WBCCAD].[dbo].[PRDEST].PRDORCCODIGOPAI LIKE @search + '%')
		[WBCCAD].[dbo].[PRDORC].Produto LIKE @search + '%' OR
		[WBCCAD].[dbo].[PRDORC].Descricao LIKE '%' + @search + '%'
	  FOR XML PATH(''), TYPE).value('.', 'varchar(max)'), 1, 1, '') + ']' AS 'material'














GO


