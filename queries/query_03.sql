
SELECT
    a.name_es AS habilidad,
    a.description_es AS descripcion,
    COUNT(DISTINCT pa.pokemon_id) AS total_pokemon
FROM pokemon_abilities pa
JOIN abilities a
    ON a.id = pa.ability_id
WHERE pa.is_hidden = false
GROUP BY a.id, a.name_es, a.description_es
ORDER BY total_pokemon DESC
LIMIT 5;
