select nombre
from medicamentos, recetas
where recetas.id_medico=2 and 
	  recetas.id_medicamento=medicamentos.id_medicamento
group by nombre
having count(*)>1
