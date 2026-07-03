'use client'

import { QueryCard } from '@/components/QueryCard'
import { Chart01 } from '@/components/charts/Chart01'
import { Chart02 } from '@/components/charts/Chart02'
import { Chart03 } from '@/components/charts/Chart03'
import { Chart04 } from '@/components/charts/Chart04'
import { Chart05 } from '@/components/charts/Chart05'
import { Chart06 } from '@/components/charts/Chart06'
import { Chart07 } from '@/components/charts/Chart07'
import { Chart08 } from '@/components/charts/Chart08'
import { Chart09 } from '@/components/charts/Chart09'
import { Chart10 } from '@/components/charts/Chart10'

// Metadatos de las 10 consultas
const QUERIES = [
  {
    queryId: 1,
    title: 'Estadísticas por clase de movimiento',
    description: 'Poder promedio, cantidad de movimientos y pokémon distintos por clase de daño',
    concept: 'JOIN + GROUP BY + COUNT DISTINCT',
    assignee: 'Braider',
  },
  {
    queryId: 2,
    title: 'Pokémon con doble tipo',
    description: 'Pokémon con exactamente 2 tipos ordenados por suma total de stats',
    concept: 'JOIN + HAVING + ORDER BY',
    assignee: 'Santiago',
  },
  {
    queryId: 3,
    title: 'Top 5 habilidades más comunes',
    description: 'Las 5 habilidades no ocultas con más pokémon que las poseen',
    concept: 'JOIN + GROUP BY + LIMIT',
    assignee: 'Alejandro',
  },
  {
    queryId: 4,
    title: 'Ataque vs Defensa por tipo',
    description: 'Promedio de ataque y defensa de cada tipo primario',
    concept: 'GROUP BY + AVG + ORDER BY',
    assignee: 'Eduardo',
  },
  {
    queryId: 5,
    title: 'Pokédex completa con habilidades',
    description: 'Todos los pokémon con sus tipos y habilidades no ocultas',
    concept: 'JOIN múltiple',
    assignee: 'Lina',
  },
  {
    queryId: 6,
    title: 'Tipos de alta velocidad',
    description: 'Tipos primarios con velocidad promedio > 70 y más de 3 pokémon',
    concept: 'HAVING + AVG',
    assignee: 'Javier',
  },
  {
    queryId: 7,
    title: 'Pokémon con HP sobre el promedio',
    description: 'Pokémon cuyo HP base supera el promedio general de todos',
    concept: 'Subquery en WHERE',
    assignee: 'Bonus #01',
  },
  {
    queryId: 8,
    title: 'Top 5 — Mejores stats totales',
    description: 'Los 5 pokémon con mayor suma de stats, con cada stat individual',
    concept: 'JOIN + CASE WHEN + SUM',
    assignee: 'Bonus #02',
  },
  {
    queryId: 9,
    title: 'Campeón de ataque por tipo',
    description: 'El pokémon con mayor ataque de cada tipo primario',
    concept: 'Subquery correlacionado',
    assignee: 'Bonus #03',
  },
  {
    queryId: 10,
    title: 'Cadenas evolutivas completas',
    description: 'Cadenas base → evo1 → evo2 con diferencia de stats totales',
    concept: 'CTE (WITH)',
    assignee: 'Bonus #04',
  },
]

export default function Dashboard() {
  return (
    <div className="min-h-screen">
      {/* ── HERO ── */}
      <header className="relative overflow-hidden border-b border-[var(--pokemon-border)] bg-[var(--pokemon-surface)]">
        <div className="w-full px-8 py-10">
          <div className="flex flex-col md:flex-row items-start md:items-center justify-between gap-6">
            <div>
              <div className="flex items-center gap-3 mb-3">
                {/* Pokeball SVG inline */}
                <svg width="36" height="36" viewBox="0 0 100 100" className="flex-shrink-0">
                  <circle cx="50" cy="50" r="48" stroke="#e3350d" strokeWidth="4" fill="none"/>
                  <path d="M 2 50 A 48 48 0 0 1 98 50" fill="#e3350d" opacity="0.8"/>
                  <line x1="2" y1="50" x2="98" y2="50" stroke="#ffcb05" strokeWidth="3"/>
                  <circle cx="50" cy="50" r="12" stroke="#ffcb05" strokeWidth="3" fill="#1a1a2e"/>
                  <circle cx="50" cy="50" r="5" fill="#ffcb05"/>
                </svg>
                <h1 className="font-pokemon text-[var(--pokemon-yellow)] text-sm md:text-base leading-relaxed">
                  Pokemon SQL<br />Training Dashboard
                </h1>
              </div>
              <p className="text-[var(--pokemon-muted)] text-sm max-w-xl">
                Cada sección está asociada a un query SQL. Cuando un entrenador complete su consulta
                y haga merge a <code className="text-[var(--pokemon-yellow)] bg-[rgba(255,203,5,0.1)] px-1 rounded">develop</code>,
                el gráfico se activará automáticamente. ¡Que comiencen los combates!
              </p>
            </div>

            {/* Stats globales */}
            <div className="flex gap-4 flex-wrap">
              {[
                { label: 'Pokémon',   value: '151', icon: '🔴' },
                { label: 'Consultas', value: '10',  icon: '📋' },
                { label: 'Tipos',     value: '18',  icon: '⚡' },
              ].map((s) => (
                <div
                  key={s.label}
                  className="text-center bg-[var(--pokemon-card)] border border-[var(--pokemon-border)] rounded-xl px-5 py-3 min-w-[80px]"
                >
                  <div className="text-xl mb-1">{s.icon}</div>
                  <div className="font-pokemon text-[var(--pokemon-yellow)] text-base">{s.value}</div>
                  <div className="text-[var(--pokemon-muted)] text-xs mt-0.5">{s.label}</div>
                </div>
              ))}
            </div>
          </div>
        </div>
      </header>

      {/* ── GRID DE CONSULTAS ── */}
      <main className="w-full px-8 py-8">
        {/* Fila 1: Q1 + Q2 */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-6 mb-6">
          <QueryCard {...QUERIES[0]}>
            {(data) => <Chart01 data={data} />}
          </QueryCard>
          <QueryCard {...QUERIES[1]}>
            {(data) => <Chart02 data={data} />}
          </QueryCard>
        </div>

        {/* Fila 2: Q3 (4 cols) + Q4 (8 cols) */}
        <div className="grid grid-cols-1 md:grid-cols-5 gap-6 mb-6">
          <div className="md:col-span-2">
            <QueryCard {...QUERIES[2]}>
              {(data) => <Chart03 data={data} />}
            </QueryCard>
          </div>
          <div className="md:col-span-3">
            <QueryCard {...QUERIES[3]}>
              {(data) => <Chart04 data={data} />}
            </QueryCard>
          </div>
        </div>

        {/* Fila 3: Q5 full width */}
        <div className="mb-6">
          <QueryCard {...QUERIES[4]}>
            {(data) => <Chart05 data={data} />}
          </QueryCard>
        </div>

        {/* Fila 4: Q6 + Q7 */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-6 mb-6">
          <QueryCard {...QUERIES[5]}>
            {(data) => <Chart06 data={data} />}
          </QueryCard>
          <QueryCard {...QUERIES[6]}>
            {(data) => <Chart07 data={data} />}
          </QueryCard>
        </div>

        {/* Fila 5: Q8 (5 cols) + Q9 (7 cols) */}
        <div className="grid grid-cols-1 md:grid-cols-5 gap-6 mb-6">
          <div className="md:col-span-2">
            <QueryCard {...QUERIES[7]}>
              {(data) => <Chart08 data={data} />}
            </QueryCard>
          </div>
          <div className="md:col-span-3">
            <QueryCard {...QUERIES[8]}>
              {(data) => <Chart09 data={data} />}
            </QueryCard>
          </div>
        </div>

        {/* Fila 6: Q10 full width */}
        <div className="mb-6">
          <QueryCard {...QUERIES[9]}>
            {(data) => <Chart10 data={data} />}
          </QueryCard>
        </div>
      </main>

      {/* ── FOOTER ── */}
      <footer className="border-t border-[var(--pokemon-border)] bg-[var(--pokemon-surface)] py-4 px-6 text-center">
        <p className="text-[var(--pokemon-muted)] text-xs">
          Pokemon SQL Training Dashboard · Blend360 ·{' '}
          <span className="text-[var(--pokemon-yellow)]">Gen 1 — 151 pokémon</span>
        </p>
      </footer>
    </div>
  )
}
