SELECT m.nombre, count(*)
from medicos m, recetas r
where m.id_medico=r.id_medico
group by m.nombre
order by 2 desc
