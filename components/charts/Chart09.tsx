'use client'
// Query 09: Campeon de ataque por cada tipo primario
// Viz: Grid de cards por tipo con su campeon

import { TypeBadge } from '@/components/ui/TypeBadge'

interface Row {
  tipo: string
  campeon: string
  ataque: number
}

export function Chart09({ data }: { data: Record<string, unknown>[] }) {
  const rows = data as unknown as Row[]
  const maxAtk = Math.max(...rows.map((r) => r.ataque))

  return (
    <div className="grid grid-cols-2 gap-2 overflow-auto max-h-72">
      {rows.map((row) => (
        <div
          key={row.tipo}
          className="flex flex-col gap-1.5 p-2.5 rounded-lg border border-[var(--pokemon-border)] bg-[rgba(255,255,255,0.02)] hover:bg-[rgba(255,255,255,0.04)] transition-colors"
        >
          <TypeBadge type={row.tipo} size="sm" />
          <p className="font-semibold text-sm text-[var(--pokemon-white)]">{row.campeon}</p>
          <div className="flex items-center gap-2">
            <div className="stat-bar-track flex-1">
              <div
                className="stat-bar-fill"
                style={{
                  width: `${(row.ataque / maxAtk) * 100}%`,
                  background: 'linear-gradient(90deg, #e3350d, #ffcb05)',
                }}
              />
            </div>
            <span className="font-mono font-bold text-[var(--pokemon-yellow)] text-xs flex-shrink-0">
              {row.ataque}
            </span>
          </div>
        </div>
      ))}
    </div>
  )
}
