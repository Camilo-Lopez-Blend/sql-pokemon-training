SELECT 
  p.name_es AS pokemon,
  t.name_es AS tipo,
  a.name_es AS habilidad
FROM pokemon p
INNER JOIN pokemon_types pt ON p.id = pt.pokemon_id
INNER JOIN types t ON pt.type_id = t.id
INNER JOIN pokemon_abilities pa ON p.id = pa.pokemon_id
INNER JOIN abilities a ON pa.ability_id = a.id
WHERE pa.is_hidden = false
ORDER BY p.name_es, t.name_es, a.name_es