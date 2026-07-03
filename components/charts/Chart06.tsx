'use client'
// Query 06: Tipos cuyo promedio de velocidad supera 70 y tienen mas de 3 pokemon
// Viz: Cards con badge de velocidad y barra

interface Row {
  tipo: string
  cantidad_pokemon: number
  promedio_velocidad: number
}

function getSpeedColor(speed: number): string {
  if (speed >= 100) return '#e3350d'
  if (speed >= 85)  return '#f08030'
  if (speed >= 75)  return '#ffcb05'
  return '#78c850'
}

export function Chart06({ data }: { data: Record<string, unknown>[] }) {
  const rows = (data as Row[]).sort((a, b) => b.promedio_velocidad - a.promedio_velocidad)
  const max = Math.max(...rows.map((r) => r.promedio_velocidad))

  return (
    <div className="grid grid-cols-1 gap-3">
      {rows.map((row) => {
        const color = getSpeedColor(row.promedio_velocidad)
        return (
          <div
            key={row.tipo}
            className="flex items-center gap-3 p-3 rounded-lg border border-[var(--pokemon-border)] bg-[rgba(255,255,255,0.02)]"
          >
            <div className="flex-1">
              <div className="flex items-center justify-between mb-1">
                <span className="font-semibold text-sm">{row.tipo}</span>
                <div className="flex items-center gap-2">
                  <span className="text-[var(--pokemon-muted)] text-xs">
                    {row.cantidad_pokemon} pkm
                  </span>
                  <span
                    className="font-mono font-bold text-sm px-2 py-0.5 rounded-full"
                    style={{ color, background: `${color}22` }}
                  >
                    ⚡ {Number(row.promedio_velocidad).toFixed(1)}
                  </span>
                </div>
              </div>
              <div className="stat-bar-track">
                <div
                  className="stat-bar-fill"
                  style={{
                    width: `${(row.promedio_velocidad / max) * 100}%`,
                    backgroundColor: color,
                  }}
                />
              </div>
            </div>
          </div>
        )
      })}
    </div>
  )
}
