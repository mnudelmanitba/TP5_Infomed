SELECT p.nombre, c.fecha, c.diagnostico
from pacientes p, consultas c
where c.fecha between '01-06-2024' and '30-06-2024'
and p.id_paciente=c.id_paciente
order by c.fecha
