SELECT DISTINCT 
	P.ID_Proyecto,
	P.Ciudad,
	P.Clasificacion,
	SUM(C.Cantidad * MC.Precio_Unidad) AS 'Costo_Proyecto'
FROM
	Proyecto AS P
INNER JOIN 	MaterialConstruccion AS MC ON MC.ID_MaterialConstruccion = C.ID_MaterialConstruccion 
INNER JOIN  Compra AS C ON C.ID_Proyecto  = P.ID_Proyecto 
WHERE 
	P.Ciudad IN ('Salento','Armenia')
GROUP BY 
	P.ID_Proyecto 
HAVING 
	SUM(C.Cantidad * MC.Precio_Unidad) > 85000
ORDER BY 
	P.Ciudad ,
	P.Clasificacion,
	P.ID_Proyecto 
