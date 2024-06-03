SELECT 
    m.nombre AS nombre_medicamento,
    COUNT(r.id_receta) AS total_recetas,
    d.nombre AS nombre_medico,
    p.nombre AS nombre_paciente
FROM 
    recetas r
JOIN 
    medicamentos m ON r.id_medicamento = m.id_medicamento
JOIN 
    medicos d ON r.id_medico = d.id_medico
JOIN 
    pacientes p ON r.id_paciente = p.id_paciente
GROUP BY 
    m.nombre, d.nombre, p.nombre
ORDER BY 
    total_recetas DESC;
    