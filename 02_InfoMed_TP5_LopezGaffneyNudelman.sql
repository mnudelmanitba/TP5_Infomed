SELECT m.nombre, COUNT(*) AS recuento_recetas
FROM medicos m
INNER JOIN recetas r ON m.id_medico = r.id_medico
GROUP BY m.nombre
ORDER BY recuento_recetas DESC;
