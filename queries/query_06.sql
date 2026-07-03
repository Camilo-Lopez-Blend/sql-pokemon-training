-- ⚠️  PLACEHOLDER: Este query aún no ha sido completado
-- El entrenador asignado debe reemplazar este archivo con la consulta correcta.
select t.name_es, count(distinct pt.pokemon_id), avg(ps.base_value )
from   pokemon_stats ps 
join   stats s on ps.stat_id = s.id 
join   pokemon_types pt on ps.pokemon_id = pt.pokemon_id   
join   "types" t on pt.type_id = t.id
where  s.name_en = 'speed'
and    pt.slot =1
group by t.name_es 
having count(distinct pt.pokemon_id) > 3
 and   avg(ps.base_value) >= 70
order by 2 desc