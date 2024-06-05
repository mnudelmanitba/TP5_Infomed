SELECT p.nombre, c.diagnostico, c.fecha
from pacientes p
join consultas c on p.id_paciente=c.id_paciente
WHERE 
    c.fecha = (
        SELECT 
            MAX(c.fecha)
        FROM 
            consultas c
        WHERE 
            c.id_paciente = p.id_paciente
    );
    