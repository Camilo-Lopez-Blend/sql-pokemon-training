-- ⚠️  PLACEHOLDER: Este query aún no ha sido completado
-- El entrenador asignado debe reemplazar este archivo con la consulta correcta.
select m.damage_class, AVG(m.power) as poder_promedio,
count(distinct m.id) as cantidad_movimientos, count(distinct pm.pokemon_id) as pokemon_distintos
FROM moves m
JOIN pokemon_moves pm
    ON m.id = pm.move_id
group by m.damage_class;
