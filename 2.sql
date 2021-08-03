SELECT DISTINCT 
	Constructora,
	Clasificacion ,
	Ciudad
FROM
	Proyecto
WHERE
	Banco_Vinculado = 'Conavi'
	ORDER BY 
	Constructora,
	Clasificacion,
	Ciudad 
