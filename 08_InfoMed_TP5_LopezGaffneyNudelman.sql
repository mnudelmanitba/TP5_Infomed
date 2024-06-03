select m.nombre, p.nombre, count(*)
from pacientes p, medicos m, consultas c
where p.id_paciente=c.id_paciente and m.id_medico=c.id_medico
group by m.nombre, p.nombre
order by m.nombre
