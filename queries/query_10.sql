WITH cadenas AS (
    SELECT
        e1.from_pokemon_id AS base_id,
        e1.to_pokemon_id AS evo1_id,
        e1.min_level AS nivel_evo1,
        e2.to_pokemon_id AS evo2_id,
        e2.min_level AS nivel_evo2
    FROM evolutions e1
    JOIN evolutions e2 ON e2.from_pokemon_id = e1.to_pokemon_id
),
stats_totales AS (
    SELECT
        p.id,
        SUM(ps.base_value) AS total_stats
    FROM pokemon p
    JOIN pokemon_stats ps ON ps.pokemon_id = p.id
    GROUP BY p.id
)
SELECT
    pb.name_es AS base,
    pe1.name_es AS evo1,
    pe2.name_es AS evo2,
    c.nivel_evo1,
    c.nivel_evo2,
    sb.total_stats AS stats_base,
    sf.total_stats AS stats_final,
    sf.total_stats - sb.total_stats AS diferencia_stats
FROM cadenas c
JOIN pokemon pb ON pb.id = c.base_id
JOIN pokemon pe1 ON pe1.id = c.evo1_id
JOIN pokemon pe2 ON pe2.id = c.evo2_id
JOIN stats_totales sb ON sb.id = c.base_id
JOIN stats_totales sf ON sf.id = c.evo2_id
ORDER BY pb.name_es;