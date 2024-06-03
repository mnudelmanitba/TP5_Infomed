SELECT p.nombre, count(*)
from pacientes p, recetas r
where p.id_paciente=r.id_paciente
group by p.nombre
