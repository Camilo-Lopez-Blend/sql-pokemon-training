'use client'
// Query 03: Top 5 habilidades mas comunes (no ocultas)
// Viz: Cards de habilidades con contador y barra de progreso

interface Row {
  habilidad: string
  descripcion: string
  total_pokemon: number
}

export function Chart03({ data }: { data: Record<string, unknown>[] }) {
  const rows = data as unknown as Row[]
  const max = Math.max(...rows.map((r) => r.total_pokemon))

  const colors = ['#e3350d', '#ff8c42', '#ffcb05', '#78c850', '#6890f0']

  return (
    <div className="flex flex-col gap-3">
      {rows.map((row, i) => (
        <div
          key={row.habilidad}
          className="p-3 rounded-lg border border-[var(--pokemon-border)] bg-[rgba(255,255,255,0.02)]"
        >
          <div className="flex items-start justify-between gap-2 mb-2">
            <div className="flex items-center gap-2">
              <span
                className="w-6 h-6 rounded-full flex items-center justify-center text-xs font-bold flex-shrink-0"
                style={{ backgroundColor: colors[i] ?? '#888', color: '#fff' }}
              >
                {i + 1}
              </span>
              <span className="font-semibold text-sm" style={{ color: colors[i] }}>
                {row.habilidad}
              </span>
            </div>
            <span className="font-mono font-bold text-[var(--pokemon-yellow)] text-sm flex-shrink-0">
              {row.total_pokemon} pkm
            </span>
          </div>
          {row.descripcion && (
            <p className="text-[var(--pokemon-muted)] text-xs mb-2 ml-8 leading-relaxed">
              {row.descripcion}
            </p>
          )}
          <div className="ml-8 stat-bar-track">
            <div
              className="stat-bar-fill"
              style={{
                width: `${(row.total_pokemon / max) * 100}%`,
                backgroundColor: colors[i] ?? '#888',
              }}
            />
          </div>
        </div>
      ))}
    </div>
  )
}
