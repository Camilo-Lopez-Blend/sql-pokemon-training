'use client'
// Query 02: Pokemon con exactamente 2 tipos ordenados por stats totales
// Viz: Tabla con doble badge de tipo

import { TypeBadge } from '@/components/ui/TypeBadge'

interface Row {
  pokemon: string
  tipo_primario: string
  tipo_secundario: string
  total_stats: number
}

export function Chart02({ data }: { data: Record<string, unknown>[] }) {
  const rows = data as unknown as Row[]
  const max = Math.max(...rows.map((r) => r.total_stats))

  return (
    <div className="overflow-auto max-h-72">
      <table className="pokemon-table">
        <thead>
          <tr>
            <th className="text-left">#</th>
            <th className="text-left">Pokémon</th>
            <th className="text-left">Tipos</th>
            <th className="text-right">Total Stats</th>
          </tr>
        </thead>
        <tbody>
          {rows.map((row, i) => (
            <tr key={row.pokemon}>
              <td className="text-[var(--pokemon-muted)] font-mono text-xs">{i + 1}</td>
              <td className="font-semibold">{row.pokemon}</td>
              <td>
                <div className="flex gap-1 flex-wrap">
                  <TypeBadge type={row.tipo_primario} size="sm" />
                  <TypeBadge type={row.tipo_secundario} size="sm" />
                </div>
              </td>
              <td className="text-right">
                <div className="flex items-center gap-2 justify-end">
                  <div className="stat-bar-track w-16 hidden sm:block">
                    <div
                      className="stat-bar-fill"
                      style={{
                        width: `${(row.total_stats / max) * 100}%`,
                        background: 'linear-gradient(90deg, #3b4cca, #e3350d)',
                      }}
                    />
                  </div>
                  <span className="font-mono font-bold text-[var(--pokemon-yellow)]">
                    {row.total_stats}
                  </span>
                </div>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  )
}
