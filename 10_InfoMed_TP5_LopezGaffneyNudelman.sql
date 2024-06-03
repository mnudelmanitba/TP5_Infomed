SELECT 
    d.nombre AS nombre_medico,
    COUNT(DISTINCT c.id_paciente) AS total_pacientes
FROM 
    consultas c
JOIN 
    medicos d ON c.id_medico = d.id_medico
GROUP BY 
    d.nombre
ORDER BY 
    total_pacientes DESC;

