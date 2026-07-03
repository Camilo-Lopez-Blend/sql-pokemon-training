SELECT p.name_es, t.name_es, a.name_es 
FROM pokemon p 
JOIN pokemon_types pt ON p.id = pt.pokemon_id 
JOIN types t ON pt.type_id = t.id 
JOIN pokemon_abilities pa ON p.id = pa.pokemon_id 
JOIN abilities a ON pa.ability_id = a.id 
WHERE NOT pa.is_hidden