USE [INTEGRACAO]
GO

/****** Object:  StoredProcedure [dbo].[MANUFACTURING_BOM]    Script Date: 02/13/2015 18:10:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO








ALTER PROCEDURE [dbo].[MANUFACTURING_BOM] (@order INT) AS

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
				/* ALTAMIRA-76: revert changes in component material
				(SELECT*/
					  --ISNULL([GRPCOD], 0) AS [group]
					  --,ISNULL([SUBGRPCOD], 0) AS subgroup
					  --,ISNULL([ORCITM], 0) AS item
					  ',{"material":{"id":0,"code":"' + LTRIM(RTRIM(UPPER(ISNULL(/*ALTAMIRA-76: [WBCCAD].[dbo].[PRDORC].[PRODUTO]*/[WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[PRDCOD], '')))) + '"'
					  + ',"description":"' + LTRIM(RTRIM(UPPER(ISNULL(/*ALTAMIRA-76: [WBCCAD].[dbo].[PRDORC].[DESCRICAO]*/MIN([WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[PRDDSC]), '')))) + '"}'
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
					  + ',"width": { "value": '  + CONVERT(VARCHAR(50), (CASE WHEN CHARINDEX('#', LTRIM(RTRIM(ISNULL([WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[PRDCOD], '')))) > 0 THEN CAST(PARSENAME(REPLACE([WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[PRDCOD], '#', '.'), 1) AS FLOAT) ELSE ISNULL(/*ALTAMIRA-76: [WBCCAD].[dbo].[PRDORC].[Comprimento]*/NULL, 0) END), 128) + ', "unit":' +
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
					  + ',"height": { "value": '  + CONVERT(VARCHAR(50), (CASE WHEN CHARINDEX('#', LTRIM(RTRIM(ISNULL([WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[PRDCOD], '')))) > 0 THEN CAST(PARSENAME(REPLACE([WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[PRDCOD], '#', '.'), 2) AS FLOAT) ELSE ISNULL(/*ALTAMIRA-76: [WBCCAD].[dbo].[PRDORC].[Altura]*/NULL, 0) END), 128) + ', "unit":' +
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
					  + ',"length": { "value": '  + CONVERT(VARCHAR(50), (CASE WHEN CHARINDEX('#', LTRIM(RTRIM(ISNULL([WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[PRDCOD], '')))) > 0 THEN CAST(PARSENAME(REPLACE([WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[PRDCOD], '#', '.'), 3) AS FLOAT) ELSE ISNULL(/*ALTAMIRA-76: [WBCCAD].[dbo].[PRDORC].[Largura]*/NULL, 0) END), 128) + ', "unit":' +
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
				  /* ALTAMIRA-76: revert changes in component material
				  FROM
					[WBCCAD].[dbo].[PRDORC]
				  WHERE 
  					LTRIM(RTRIM([WBCCAD].[dbo].[PRDORC].[PRODUTO])) = CASE WHEN CHARINDEX('#', LTRIM(RTRIM(ISNULL([WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[PRDCOD], '')))) > 0 THEN LEFT([WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[PRDCOD], CHARINDEX('#', LTRIM(RTRIM(ISNULL([WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[PRDCOD], '')))) -1) ELSE LTRIM(RTRIM([WBCCAD].[dbo].[INTEGRACAO_ORCPRD].[PRDCOD])) END
				  FOR XML PATH(''), TYPE).value('.', 'varchar(max)')*/
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


