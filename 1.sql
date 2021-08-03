SELECT
	Documento_Identidad,
	Nombre ||' '|| Primer_Apellido ||' '|| Segundo_Apellido AS 'Lider',
	Ciudad_Residencia ,
	Salario
FROM
	Lider
WHERE 
	Cargo = 'Asociado'
ORDER BY 
	Documento_Identidad  
	