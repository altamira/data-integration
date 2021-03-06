USE [INTEGRACAO]
GO

/****** Object:  StoredProcedure [dbo].[MANUFACTURING_PROCESS]    Script Date: 09/29/2014 14:14:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MANUFACTURING_PROCESS] (@code NVARCHAR(MAX)) AS


SELECT STUFF(
	(SELECT     
		',{"code":' + CAST(GPIMAC_Altamira.dbo.LPV.LPPED AS VARCHAR(MAX)) 
		+ ',"description":"' + LTRIM(RTRIM(ISNULL(GPIMAC_Altamira.dbo.CACLI.CCNOM, ''))) + '"'
		+ ',"color":"' + LTRIM(RTRIM(ISNULL(GPIMAC_Altamira.dbo.CAREP.CVNOM, ''))) + '"'
		+ ',"weight":"' + LTRIM(RTRIM(ISNULL(CONVERT(NVARCHAR, GPIMAC_Altamira.dbo.LPV.LPENT, 127), ''))) /*'1410895028676'*/ + '"'
		+ ',"width":"' + LTRIM(RTRIM(ISNULL(CONVERT(NVARCHAR, GPIMAC_Altamira.dbo.LPV.LP0SAIRED, 127), ''))) /*'1410895028676'*/ + '"'
		+ ',"length":"' + GPIMAC_Altamira.dbo.LPV.LPWBCCADORCNUM + '"'
		+ ',"comment":"' + CASE WHEN LEN(LTRIM(RTRIM(GPIMAC_Altamira.dbo.LPV.LPObsOP))) = 0 THEN ' ' ELSE LTRIM(RTRIM(GPIMAC_Altamira.dbo.LPV.LPObsOP)) END + '"'
		+ ',"finish":"PINTURA A PÓ"' 
		+ ',"revision":[{"date": 1410895028676,"by": "ROBERTO ZELLI"},{"date": 1410895028676,"by": "HELIO TODA"},{"date": 1410895028676,"by": "HELIO TODA"}]'
		+ ',"operation":' + '[' + STUFF(
		(SELECT
			',{"sequence":' + CAST(ISNULL(WBCCAD.dbo.INTEGRACAO_ORCITM.ORCITM, 0) AS VARCHAR(MAX)) 
			+ ',"name":"' + LTRIM(RTRIM(LEFT(ISNULL(WBCCAD.dbo.INTEGRACAO_ORCITM.ORCTXT, ''), CHARINDEX(' Valor total líquido:', ISNULL(WBCCAD.dbo.INTEGRACAO_ORCITM.ORCTXT, ''))))) + '"'
			+ ',"description":""'
			+ ',"croqui":""' 
			--ISNULL(WBCCAD.dbo.INTEGRACAO_ORCITM.ORCPRDQTD, 0) AS quantity, 
			--LTRIM(RTRIM(ISNULL(WBCCAD.dbo.INTEGRACAO_ORCITM.ORCPRDCOD, ''))) AS code, 
			--ISNULL(WBCCAD.dbo.INTEGRACAO_ORCITM.GRPCOD, 0) AS [group], 
			--ISNULL(WBCCAD.dbo.INTEGRACAO_ORCITM.SUBGRPCOD, 0) AS subgroup,
			+ ',"input":' + '[' + STUFF(
			(SELECT
				  --ISNULL([GRPCOD], 0) AS [group]
				  --,ISNULL([SUBGRPCOD], 0) AS subgroup
				  --,ISNULL([ORCITM], 0) AS item
				  ',{"code":"' + LTRIM(RTRIM(CASE WHEN CHARINDEX('#', ISNULL([PRDCOD], '')) > 0 THEN LEFT(ISNULL([PRDCOD], ''), CHARINDEX('#', [PRDCOD]) -1) ELSE ISNULL([PRDCOD], '') END)) + '"'
				  + ',"color":"' + LTRIM(RTRIM(ISNULL([CORCOD], ''))) + '"'
				  + ',"description":"' + LTRIM(RTRIM(ISNULL([PRDDSC], ''))) + '"'
				  + ',"quantity":' + CAST(CAST(ISNULL([ORCQTD], 0) AS DECIMAL(10,3)) AS NVARCHAR(MAX))
				  --,CAST(ISNULL([ORCTOT], 0) AS DECIMAL(10,3)) AS value,
				  + ',"unit":' + CAST(CAST(ISNULL([ORCPES], 0) AS DECIMAL(10,3)) AS NVARCHAR(MAX))
				  +'}'
			  FROM 
				[WBCCAD].[dbo].[INTEGRACAO_ORCPRD]
			  WHERE 
				[WBCCAD].[dbo].[INTEGRACAO_ORCPRD].ORCNUM = [WBCCAD].[dbo].[INTEGRACAO_ORCITM].ORCNUM AND
				[WBCCAD].[dbo].[INTEGRACAO_ORCPRD].ORCITM = [WBCCAD].[dbo].[INTEGRACAO_ORCITM].ORCITM
			  FOR XML PATH(''), TYPE).value('.', 'varchar(max)'), 1, 1, '') + ']' + '}'
			+ ',"output":' + '[' + STUFF(
			(SELECT
				  --ISNULL([GRPCOD], 0) AS [group]
				  --,ISNULL([SUBGRPCOD], 0) AS subgroup
				  --,ISNULL([ORCITM], 0) AS item
				  ',{"code":"' + LTRIM(RTRIM(CASE WHEN CHARINDEX('#', ISNULL([PRDCOD], '')) > 0 THEN LEFT(ISNULL([PRDCOD], ''), CHARINDEX('#', [PRDCOD]) -1) ELSE ISNULL([PRDCOD], '') END)) + '"'
				  + ',"color":"' + LTRIM(RTRIM(ISNULL([CORCOD], ''))) + '"'
				  + ',"description":"' + LTRIM(RTRIM(ISNULL([PRDDSC], ''))) + '"'
				  + ',"quantity":' + CAST(CAST(ISNULL([ORCQTD], 0) AS DECIMAL(10,3)) AS NVARCHAR(MAX))
				  --,CAST(ISNULL([ORCTOT], 0) AS DECIMAL(10,3)) AS value,
				  + ',"unit":' + CAST(CAST(ISNULL([ORCPES], 0) AS DECIMAL(10,3)) AS NVARCHAR(MAX))
				  +'}'
			  FROM 
				[WBCCAD].[dbo].[INTEGRACAO_ORCPRD]
			  WHERE 
				[WBCCAD].[dbo].[INTEGRACAO_ORCPRD].ORCNUM = [WBCCAD].[dbo].[INTEGRACAO_ORCITM].ORCNUM AND
				[WBCCAD].[dbo].[INTEGRACAO_ORCPRD].ORCITM = [WBCCAD].[dbo].[INTEGRACAO_ORCITM].ORCITM
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
		GPIMAC_Altamira.dbo.CAREP WITH (NOLOCK) ON GPIMAC_Altamira.dbo.CAREP.CVCOD = GPIMAC_Altamira.dbo.LPV.LPVEN
		 /*INNER JOIN
		WBCCAD.dbo.INTEGRACAO_ORCCAB WITH (NOLOCK) INNER JOIN
		WBCCAD.dbo.INTEGRACAO_ORCITM WITH (NOLOCK) ON WBCCAD.dbo.INTEGRACAO_ORCCAB.ORCNUM = WBCCAD.dbo.INTEGRACAO_ORCITM.ORCNUM INNER JOIN
		WBCCAD.dbo.INTEGRACAO_ORCPRD WITH (NOLOCK) ON WBCCAD.dbo.INTEGRACAO_ORCITM.ORCNUM = WBCCAD.dbo.INTEGRACAO_ORCPRD.ORCNUM ON 
		GPIMAC_Altamira.dbo.LPV.LPWBCCADORCNUM = WBCCAD.dbo.INTEGRACAO_ORCCAB.ORCNUM*/
	WHERE     
		(GPIMAC_Altamira.dbo.LPV.LPPED = @code)
	FOR XML PATH(''), TYPE).value('.', 'varchar(max)'), 1, 1, '') AS 'process'



GO

GRANT EXECUTE ON MANUFACTURING_PROCESS TO integracao
GO


