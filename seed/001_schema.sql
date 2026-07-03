-- ============================================================
-- SCHEMA: Pokemon Gen 1 Training Database
-- Proyecto: SQL Pokemon Training Dashboard
-- ============================================================

-- Limpiar tablas si existen (en orden por dependencias)
DROP TABLE IF EXISTS evolutions CASCADE;
DROP TABLE IF EXISTS pokemon_moves CASCADE;
DROP TABLE IF EXISTS pokemon_abilities CASCADE;
DROP TABLE IF EXISTS pokemon_stats CASCADE;
DROP TABLE IF EXISTS pokemon_types CASCADE;
DROP TABLE IF EXISTS moves CASCADE;
DROP TABLE IF EXISTS abilities CASCADE;
DROP TABLE IF EXISTS stats CASCADE;
DROP TABLE IF EXISTS pokemon CASCADE;
DROP TABLE IF EXISTS types CASCADE;

-- ============================================================
-- TIPOS DE POKEMON
-- ============================================================
CREATE TABLE types (
    id         SERIAL PRIMARY KEY,
    name_es    VARCHAR(20) NOT NULL,
    name_en    VARCHAR(20) NOT NULL,
    color_hex  VARCHAR(7)  NOT NULL
);

-- ============================================================
-- ESTADISTICAS BASE (HP, Ataque, Defensa, etc.)
-- ============================================================
CREATE TABLE stats (
    id       SERIAL PRIMARY KEY,
    name_es  VARCHAR(30) NOT NULL,
    name_en  VARCHAR(20) NOT NULL UNIQUE
);

-- ============================================================
-- HABILIDADES
-- ============================================================
CREATE TABLE abilities (
    id              SERIAL PRIMARY KEY,
    name_es         VARCHAR(50) NOT NULL,
    name_en         VARCHAR(50) NOT NULL,
    description_es  TEXT
);

-- ============================================================
-- MOVIMIENTOS
-- ============================================================
CREATE TABLE moves (
    id           SERIAL PRIMARY KEY,
    name_es      VARCHAR(50) NOT NULL,
    name_en      VARCHAR(50) NOT NULL,
    type_id      INT REFERENCES types(id),
    power        INT,          -- NULL si es movimiento de estado
    accuracy     INT,          -- NULL si nunca falla
    pp           INT NOT NULL,
    damage_class VARCHAR(10) NOT NULL CHECK (damage_class IN ('fisico', 'especial', 'estado'))
);

-- ============================================================
-- POKEMON
-- ============================================================
CREATE TABLE pokemon (
    id               SERIAL PRIMARY KEY,
    pokedex_number   INT NOT NULL UNIQUE,
    name_es          VARCHAR(50) NOT NULL,
    name_en          VARCHAR(50) NOT NULL,
    height_dm        INT NOT NULL,    -- altura en decimetros (7 = 0.7m)
    weight_hg        INT NOT NULL,    -- peso en hectogramos (69 = 6.9kg)
    base_experience  INT NOT NULL,
    is_legendary     BOOLEAN NOT NULL DEFAULT FALSE,
    is_mythical      BOOLEAN NOT NULL DEFAULT FALSE
);

-- ============================================================
-- RELACIONES POKEMON - TIPOS (un pokemon puede tener 1 o 2 tipos)
-- ============================================================
CREATE TABLE pokemon_types (
    pokemon_id  INT NOT NULL REFERENCES pokemon(id),
    type_id     INT NOT NULL REFERENCES types(id),
    slot        INT NOT NULL CHECK (slot IN (1, 2)),  -- 1=primario, 2=secundario
    PRIMARY KEY (pokemon_id, slot)
);

-- ============================================================
-- ESTADISTICAS DE CADA POKEMON
-- ============================================================
CREATE TABLE pokemon_stats (
    pokemon_id  INT NOT NULL REFERENCES pokemon(id),
    stat_id     INT NOT NULL REFERENCES stats(id),
    base_value  INT NOT NULL,
    PRIMARY KEY (pokemon_id, stat_id)
);

-- ============================================================
-- HABILIDADES DE CADA POKEMON
-- ============================================================
CREATE TABLE pokemon_abilities (
    pokemon_id  INT NOT NULL REFERENCES pokemon(id),
    ability_id  INT NOT NULL REFERENCES abilities(id),
    is_hidden   BOOLEAN NOT NULL DEFAULT FALSE,
    PRIMARY KEY (pokemon_id, ability_id)
);

-- ============================================================
-- MOVIMIENTOS QUE PUEDE APRENDER CADA POKEMON (level-up)
-- ============================================================
CREATE TABLE pokemon_moves (
    pokemon_id  INT NOT NULL REFERENCES pokemon(id),
    move_id     INT NOT NULL REFERENCES moves(id),
    PRIMARY KEY (pokemon_id, move_id)
);

-- ============================================================
-- EVOLUCIONES
-- ============================================================
CREATE TABLE evolutions (
    id               SERIAL PRIMARY KEY,
    from_pokemon_id  INT NOT NULL REFERENCES pokemon(id),
    to_pokemon_id    INT NOT NULL REFERENCES pokemon(id),
    min_level        INT,          -- NULL si evoluciona por piedra u otro trigger
    trigger_name     VARCHAR(30) NOT NULL  -- 'nivel', 'piedra-fuego', 'intercambio', etc.
);

-- ============================================================
-- FUNCION: Ejecutar queries de entrenamiento (solo SELECT)
-- Usada por la API route de Next.js para ejecutar los archivos .sql
-- ============================================================
CREATE OR REPLACE FUNCTION execute_training_query(p_sql TEXT)
RETURNS JSONB
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
DECLARE
    result JSONB;
    clean_sql TEXT;
BEGIN
    clean_sql := TRIM(p_sql);

    -- Solo permitir SELECT
    IF NOT (UPPER(LEFT(clean_sql, 6)) = 'SELECT' OR UPPER(LEFT(clean_sql, 4)) = 'WITH') THEN
        RAISE EXCEPTION 'Solo se permiten consultas SELECT o WITH (CTE). Tipo recibido: %', UPPER(LEFT(clean_sql, 6));
    END IF;

    EXECUTE format('SELECT COALESCE(json_agg(row_to_json(t)), %L::json) FROM (%s) t', '[]', clean_sql)
    INTO result;

    RETURN COALESCE(result, '[]'::jsonb);
EXCEPTION
    WHEN OTHERS THEN
        RETURN jsonb_build_object(
            'error', true,
            'message', SQLERRM,
            'detail', SQLSTATE
        );
END;
$$;

-- Dar permisos a anon para llamar la funcion
GRANT EXECUTE ON FUNCTION execute_training_query TO anon;
GRANT EXECUTE ON FUNCTION execute_training_query TO authenticated;
