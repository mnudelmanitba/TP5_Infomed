SELECT m.nombre, count(*)
from medicamentos m, recetas r
where m.id_medicamento=r.id_medicamento
group by m.nombre
order by count(*) desc
limit 1;
