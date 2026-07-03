# Guía de Capacitación SQL — Pokemon Training Dashboard

## Tu misión

Resolver el problema SQL asignado y hacer que tu gráfico en el dashboard se active.

---

## Flujo de trabajo

```bash
# 1. Clonar el repo (solo la primera vez)
git clone git@github.com:Camilo-Lopez-Blend/sql-pokemon-training.git
cd sql-pokemon-training

# 2. Pararte en develop y actualizar
git checkout develop
git pull origin develop

# 3. Crear tu rama
git checkout -b feat/<tu-nombre>-query-<N>
# Ejemplo: feat/braider-query-01

# 4. Editar TU archivo de query
# Reemplazar el placeholder con tu consulta SQL correcta
# (ver tu asignación abajo)

# 5. Hacer commit
git add queries/query_0N.sql
git commit -m "feat(queries): se agrega query_0N con consulta de <descripcion>"
# Ejemplo: feat(queries): se agrega query_01 con estadisticas de movimientos por clase

# 6. Push
git push origin feat/<tu-nombre>-query-<N>

# 7. Abrir PR en GitHub
# → base: develop
# → compare: feat/<tu-nombre>-query-<N>
# → Pedir review al instructor
```

---

## Asignaciones

| Query | Estudiante | Nivel | Concepto clave |
|-------|-----------|-------|----------------|
| `query_01.sql` | Braider   | Medio | JOIN + GROUP BY + COUNT DISTINCT + AVG |
| `query_02.sql` | Santiago  | Medio | JOIN + HAVING COUNT = 2 + ORDER BY |
| `query_03.sql` | Alejandro | Medio | JOIN + GROUP BY + LIMIT |
| `query_04.sql` | Eduardo   | Medio | GROUP BY + AVG + ORDER BY |
| `query_05.sql` | Lina      | Medio | JOIN múltiple + STRING_AGG |
| `query_06.sql` | Javier    | Medio | HAVING + AVG |
| `query_07.sql` | Bonus #01 | Medio-Alto | Subquery en WHERE |
| `query_08.sql` | Bonus #02 | Alto | JOIN + CASE WHEN + SUM |
| `query_09.sql` | Bonus #03 | Alto | Subquery correlacionado |
| `query_10.sql` | Bonus #04 | Avanzado | CTE (WITH) |

---

## Tablas disponibles

```sql
pokemon          -- id, pokedex_number, name_es, name_en, height_dm, weight_hg, base_experience, is_legendary
types            -- id, name_es, name_en, color_hex
pokemon_types    -- pokemon_id, type_id, slot (1=primario, 2=secundario)
stats            -- id, name_es, name_en ('hp','attack','defense','special-attack','special-defense','speed')
pokemon_stats    -- pokemon_id, stat_id, base_value
abilities        -- id, name_es, name_en, description_es
pokemon_abilities -- pokemon_id, ability_id, is_hidden
moves            -- id, name_es, name_en, type_id, power, accuracy, pp, damage_class ('fisico','especial','estado')
pokemon_moves    -- pokemon_id, move_id
evolutions       -- id, from_pokemon_id, to_pokemon_id, min_level, trigger_name
```

---

## Problemas por query

### Query 01 — Braider
**Problema:** Por cada clase de daño de movimiento (fisico, especial, estado), mostrar:
- El promedio de poder (excluyendo movimientos sin poder, es decir donde `power IS NULL`)
- La cantidad total de movimientos de esa clase
- Cuántos pokémon distintos pueden aprender movimientos de esa clase

**Columnas esperadas:** `clase`, `promedio_poder`, `cantidad_movimientos`, `pokemon_distintos`

---

### Query 02 — Santiago
**Problema:** Listar todos los pokémon que tienen **exactamente 2 tipos**, mostrando:
- El nombre del pokémon
- Su tipo primario (slot=1)
- Su tipo secundario (slot=2)
- La suma total de sus 6 estadísticas base (`total_stats`)

Ordenado por `total_stats` de mayor a menor.

**Columnas esperadas:** `pokemon`, `tipo_primario`, `tipo_secundario`, `total_stats`

---

### Query 03 — Alejandro
**Problema:** Las **5 habilidades más comunes** entre pokémon (solo habilidades no ocultas, `is_hidden = false`), mostrando:
- Nombre de la habilidad
- Descripción
- Cuántos pokémon la tienen

Ordenado por cantidad de pokémon de mayor a menor.

**Columnas esperadas:** `habilidad`, `descripcion`, `total_pokemon`

---

### Query 04 — Eduardo
**Problema:** Para cada **tipo primario** (slot=1), calcular el promedio de ataque y de defensa entre todos los pokémon de ese tipo.
Mostrar solo tipos con al menos 3 pokémon. Ordenar por promedio de ataque descendente.

**Columnas esperadas:** `tipo`, `promedio_ataque`, `promedio_defensa`

---

### Query 05 — Lina
**Problema:** Listar todos los pokémon con sus tipos y habilidades no ocultas (`is_hidden = false`).
Si tiene 2 tipos, mostrarlos separados por `, `. Si tiene múltiples habilidades, mostrarlas separadas por `, `.
Ordenar por número de pokédex.

**Tip:** Usa `STRING_AGG(DISTINCT campo, ', ' ORDER BY ...)` para concatenar.

**Columnas esperadas:** `pokemon`, `tipos`, `habilidades`

---

### Query 06 — Javier
**Problema:** Tipos primarios (slot=1) cuyo **promedio de velocidad** entre sus pokémon supere 70
**Y** que tengan **más de 3 pokémon** en ese tipo.
Ordenar por promedio de velocidad descendente.

**Columnas esperadas:** `tipo`, `cantidad_pokemon`, `promedio_velocidad`

---

### Query 07 — Bonus #01
**Problema:** Listar los pokémon cuyo HP base sea **mayor al promedio general de HP** de todos los pokémon.
Mostrar también cuánto supera el promedio (diferencia).

**Tip:** Usa una subquery `(SELECT AVG(base_value) FROM ...)` en el WHERE o en el SELECT.

**Columnas esperadas:** `pokemon`, `hp`, `promedio_general`, `diferencia`

---

### Query 08 — Bonus #02
**Problema:** Los **top 5 pokémon** con mayor suma total de estadísticas, mostrando cada stat en columna separada.

**Tip:** Usa `MAX(CASE WHEN s.name_en = 'hp' THEN ps.base_value END) as hp`.

**Columnas esperadas:** `pokemon`, `tipos`, `total_stats`, `hp`, `ataque`, `defensa`, `atq_especial`, `def_especial`, `velocidad`

---

### Query 09 — Bonus #03
**Problema:** Por cada **tipo primario**, mostrar el pokémon con el **mayor ataque** (el campeón de su tipo).

**Tip:** Subquery correlacionada `WHERE ps.base_value = (SELECT MAX(...) WHERE tipo = tipo_externo)`.

**Columnas esperadas:** `tipo`, `campeon`, `ataque`

---

### Query 10 — Bonus #04
**Problema:** Cadenas evolutivas de **3 etapas** (base → evo1 → evo2) con:
- Nombre de cada etapa
- Nivel de evolución de cada paso
- Suma de stats de la forma base
- Suma de stats de la forma final
- Diferencia entre forma final y base

**Tip:** Usa un CTE (`WITH cadenas AS (...)`) para simplificar los JOINs de evoluciones.

**Columnas esperadas:** `base`, `evo1`, `evo2`, `nivel_evo1`, `nivel_evo2`, `stats_base`, `stats_final`, `diferencia_stats`
