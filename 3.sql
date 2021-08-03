SELECT DISTINCT 
	L.Nombre || ' ' || L.Primer_Apellido AS 'Lider',
	L.Cargo,
	COUNT(P.ID_Proyecto) AS '# Proyectos'
FROM
	Lider AS L
INNER JOIN Proyecto AS P ON P.ID_Lider = L.ID_Lider 
WHERE 
    P.Constructora = 'Edificios y Edificios'
GROUP BY 
    L.ID_Lider
ORDER BY 
 	Cargo,
 	Lider
