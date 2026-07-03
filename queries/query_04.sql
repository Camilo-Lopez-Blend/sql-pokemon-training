-- ⚠️  PLACEHOLDER: Este query aún no ha sido completado
-- El entrenador asignado debe reemplazar este archivo con la consulta correcta.
WITH attack_stats AS (
    SELECT 
        ps.pokemon_id, 
        ps.base_value AS ataque
    FROM pokemon_stats ps
    JOIN stats s 
        ON s.id = ps.stat_id 
       AND s.name_en = 'attack'
),
defense_stats AS (
    SELECT 
        ps.pokemon_id, 
        ps.base_value AS defensa
    FROM pokemon_stats ps
    JOIN stats s 
        ON s.id = ps.stat_id 
       AND s.name_en = 'defense'
)
SELECT
    t.name_es AS tipo,
    ROUND(AVG(attack_stats.ataque)::numeric, 2) AS promedio_ataque,
    ROUND(AVG(defense_stats.defensa)::numeric, 2) AS promedio_defensa
FROM pokemon_types pt
JOIN types t 
    ON t.id = pt.type_id
JOIN pokemon p 
    ON p.id = pt.pokemon_id
LEFT JOIN attack_stats 
    ON attack_stats.pokemon_id = p.id
LEFT JOIN defense_stats 
    ON defense_stats.pokemon_id = p.id
WHERE pt.slot = 1
GROUP BY t.id, t.name_es
HAVING COUNT(DISTINCT p.id) >= 3
ORDER BY promedio_ataque DESC;