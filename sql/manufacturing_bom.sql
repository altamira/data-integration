USE [INTEGRACAO]
GO

/****** Object:  StoredProcedure [dbo].[MANUFACTURING_BOM]    Script Date: 12/10/2014 13:27:20 ******/
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
		+ ',"items":' + '[' + STUFF(
		(SELECT
			',{"item":' + CAST(ISNULL(WBCCAD.dbo.INTEGRACAO_ORCITM.ORCITM, 0) AS VARCHAR(MAX)) 
			+ ',"description":"' + UPPER(LTRIM(RTRIM(LEFT(ISNULL(WBCCAD.dbo.INTEGRACAO_ORCITM.ORCTXT, ''), CHARINDEX(' Valor total líquido:', ISNULL(WBCCAD.dbo.INTEGRACAO_ORCITM.ORCTXT, '')))))) + '"'
			--ISNULL(WBCCAD.dbo.INTEGRACAO_ORCITM.ORCPRDQTD, 0) AS quantity, 
			--LTRIM(RTRIM(ISNULL(WBCCAD.dbo.INTEGRACAO_ORCITM.ORCPRDCOD, ''))) AS code, 
			--ISNULL(WBCCAD.dbo.INTEGRACAO_ORCITM.GRPCOD, 0) AS [group], 
			--ISNULL(WBCCAD.dbo.INTEGRACAO_ORCITM.SUBGRPCOD, 0) AS subgroup,
			+ ',"parts":' + '[' + STUFF(
			(SELECT
				  --ISNULL([GRPCOD], 0) AS [group]
				  --,ISNULL([SUBGRPCOD], 0) AS subgroup
				  --,ISNULL([ORCITM], 0) AS item
				  ',{"code":"' + LTRIM(RTRIM(CASE WHEN CHARINDEX('#', ISNULL([PRDCOD], '')) > 0 THEN LEFT(ISNULL([PRDCOD], ''), CHARINDEX('#', [PRDCOD]) -1) ELSE ISNULL([PRDCOD], '') END)) + '"'
				  + ',"description":"' + LTRIM(RTRIM(UPPER(ISNULL(MIN([PRDDSC]), '')))) + '"'
				  + ',"color": ' + 
				  (SELECT TOP 1
						',{'
						+ '"id": ' + CAST([ID] AS NVARCHAR) 
						+ ',"code": "' + LTRIM(RTRIM([CODE])) 
						+ '","name": "' + LTRIM(RTRIM([NAME])) + '"'
						 + '}'
					FROM 
						[INTEGRACAO].dbo.[CM_COLOR]
					WHERE 
						[CODE] = MIN([CORCOD])
					FOR XML PATH(''), TYPE).value('.', 'varchar(max)')
				  + ',"quantity": { "value": ' + CAST(CAST(ISNULL(SUM([ORCQTD]), 0) AS DECIMAL(10,3)) AS NVARCHAR(MAX)) + ', "unit": {
    "id": 6,
    "version": 1416181218645,
    "name": "unidade",
    "symbol": "un",
    "magnitude": {
        "id": 3,
        "version": 1416181206233,
        "name": "unidade"
    }
}}'
				  + ',"width": { "value": '  + CAST(CAST(CASE WHEN CHARINDEX('#', LTRIM(RTRIM(ISNULL([PRDCOD], '')))) > 0 THEN PARSENAME(REPLACE([PRDCOD], '#', '.'), 1) ELSE 0 END AS DECIMAL(10,3)) AS NVARCHAR(MAX)) + ', "unit": {
    "id": 4,
    "version": 1416181212470,
    "name": "milimetro",
    "symbol": "mm",
    "magnitude": {
        "id": 1,
        "version": 1416181199337,
        "name": "dimencional"
    }
}}'
				  + ',"height": { "value": '  + CAST(CAST(CASE WHEN CHARINDEX('#', LTRIM(RTRIM(ISNULL([PRDCOD], '')))) > 0 THEN PARSENAME(REPLACE([PRDCOD], '#', '.'), 2) ELSE 0 END AS DECIMAL(10,3)) AS NVARCHAR(MAX)) + ', "unit": {
    "id": 4,
    "version": 1416181212470,
    "name": "milimetro",
    "symbol": "mm",
    "magnitude": {
        "id": 1,
        "version": 1416181199337,
        "name": "dimencional"
    }
}}'
				  + ',"length": { "value": '  + CAST(CAST(CASE WHEN CHARINDEX('#', LTRIM(RTRIM(ISNULL([PRDCOD], '')))) > 0 THEN PARSENAME(REPLACE([PRDCOD], '#', '.'), 3) ELSE 0 END AS DECIMAL(10,3)) AS NVARCHAR(MAX)) + ', "unit": {
    "id": 4,
    "version": 1416181212470,
    "name": "milimetro",
    "symbol": "mm",
    "magnitude": {
        "id": 1,
        "version": 1416181199337,
        "name": "dimencional"
    }
}}'
				  --,CAST(ISNULL([ORCTOT], 0) AS DECIMAL(10,3)) AS value,
				  + ',"weight": { "value": ' + CAST(SUM(CAST(ISNULL([ORCPES], 0) AS DECIMAL(10,3))) AS NVARCHAR(MAX)) + ', "unit": {
    "id": 5,
    "version": 1416181214807,
    "name": "quilograma",
    "symbol": "kg",
    "magnitude": {
        "id": 2,
        "version": 1416181203701,
        "name": "peso"
    }
}}'
				  +'}'
			  FROM 
				[WBCCAD].[dbo].[INTEGRACAO_ORCPRD]
			  WHERE 
				[WBCCAD].[dbo].[INTEGRACAO_ORCPRD].ORCNUM = [WBCCAD].[dbo].[INTEGRACAO_ORCITM].ORCNUM AND
				[WBCCAD].[dbo].[INTEGRACAO_ORCPRD].ORCITM = [WBCCAD].[dbo].[INTEGRACAO_ORCITM].ORCITM
			  GROUP BY [PRDCOD]
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


