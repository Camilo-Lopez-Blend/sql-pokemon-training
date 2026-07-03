SELECT
    p.name_es AS pokemon,
    t1.name_es AS tipo_primario,
    t2.name_es AS tipo_secundario,
    SUM(ps.base_value) AS total_stats
FROM pokemon p
JOIN pokemon_types pt1 ON p.id = pt1.pokemon_id AND pt1.slot = 1
JOIN types t1 ON pt1.type_id = t1.id
JOIN pokemon_types pt2 ON p.id = pt2.pokemon_id AND pt2.slot = 2
JOIN types t2 ON pt2.type_id = t2.id
JOIN pokemon_stats ps ON p.id = ps.pokemon_id
GROUP BY
    p.id,
    p.name_es,
    t1.name_es,
    t2.name_es
ORDER BY total_stats DESC;