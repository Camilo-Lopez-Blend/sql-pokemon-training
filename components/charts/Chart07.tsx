'use client'
// Query 07: Pokemon cuyo HP base es mayor al promedio general
// Viz: Tabla con diferencia vs promedio (+/-)

interface Row {
  pokemon: string
  hp: number
  promedio_general?: number
  diferencia?: number
}

export function Chart07({ data }: { data: Record<string, unknown>[] }) {
  const rows = data as Row[]
  const avg = rows[0]?.promedio_general
    ? Number(rows[0].promedio_general)
    : rows.reduce((s, r) => s + r.hp, 0) / rows.length

  const maxHp = Math.max(...rows.map((r) => r.hp))

  return (
    <div className="flex flex-col gap-2">
      {/* Promedio header */}
      <div className="flex items-center justify-between bg-[rgba(255,203,5,0.08)] border border-[rgba(255,203,5,0.2)] rounded-lg px-4 py-2 mb-1">
        <span className="text-[var(--pokemon-muted)] text-xs">Promedio general de HP</span>
        <span className="font-mono font-bold text-[var(--pokemon-yellow)] text-sm">
          {avg.toFixed(1)} HP
        </span>
      </div>

      <div className="overflow-auto max-h-56">
        <table className="pokemon-table">
          <thead>
            <tr>
              <th className="text-left">Pokémon</th>
              <th className="text-right">HP Base</th>
              <th className="text-right">vs Promedio</th>
            </tr>
          </thead>
          <tbody>
            {rows.map((row) => {
              const diff = row.diferencia ?? row.hp - avg
              return (
                <tr key={row.pokemon}>
                  <td className="font-semibold">{row.pokemon}</td>
                  <td className="text-right">
                    <div className="flex items-center gap-2 justify-end">
                      <div className="stat-bar-track w-16 hidden sm:block">
                        <div
                          className="stat-bar-fill"
                          style={{
                            width: `${(row.hp / maxHp) * 100}%`,
                            background: 'linear-gradient(90deg, #78c850, #ffcb05)',
                          }}
                        />
                      </div>
                      <span className="font-mono font-bold text-[var(--pokemon-yellow)]">
                        {row.hp}
                      </span>
                    </div>
                  </td>
                  <td className="text-right">
                    <span
                      className="font-mono font-bold text-sm"
                      style={{ color: diff >= 0 ? '#4ade80' : '#f87171' }}
                    >
                      {diff >= 0 ? '+' : ''}{Math.round(diff)}
                    </span>
                  </td>
                </tr>
              )
            })}
          </tbody>
        </table>
      </div>
    </div>
  )
}
