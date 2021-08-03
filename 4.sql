SELECT
	MC.ID_MaterialConstruccion,
	MC.Nombre_Material,
	C.Cantidad,
	MC.Precio_Unidad,
	(C.Cantidad * MC.Precio_Unidad) AS 'Precio_Total'
FROM
	Compra AS C
INNER JOIN MaterialConstruccion AS MC ON MC.ID_MaterialConstruccion  = C.ID_MaterialConstruccion 
INNER JOIN Proyecto AS P ON P.ID_Proyecto  = C.ID_Proyecto 
WHERE 
	P.ID_Proyecto IN (19,24,37,39,58,63)
ORDER BY 
	P.ID_Proyecto ASC,
	MC.Precio_Unidad DESC 