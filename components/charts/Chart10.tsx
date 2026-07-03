'use client'
// Query 10: Cadenas evolutivas de 3 etapas con diferencia de stats totales
// Viz: Tabla con flujo base → evo1 → evo2 y diff de stats

interface Row {
  base: string
  evo1: string | null
  evo2: string | null
  nivel_evo1: number | null
  nivel_evo2: number | null
  stats_base: number
  stats_final: number
  diferencia_stats: number
}

function EvoArrow({ level, trigger }: { level?: number | null; trigger?: string }) {
  return (
    <div className="flex flex-col items-center justify-center px-1 text-center">
      <span className="text-[var(--pokemon-yellow)] text-sm">→</span>
      {level && (
        <span className="text-[0.55rem] text-[var(--pokemon-muted)]">
          Nv.{level}
        </span>
      )}
    </div>
  )
}

export function Chart10({ data }: { data: Record<string, unknown>[] }) {
  const rows = data as Row[]

  return (
    <div className="overflow-auto max-h-72">
      <table className="pokemon-table">
        <thead>
          <tr>
            <th className="text-center" colSpan={5}>Cadena Evolutiva</th>
            <th className="text-right">Stats Base</th>
            <th className="text-right">Stats Final</th>
            <th className="text-right">Diferencia</th>
          </tr>
        </thead>
        <tbody>
          {rows.map((row) => (
            <tr key={row.base}>
              <td className="font-semibold text-[var(--pokemon-white)]">{row.base}</td>
              <td className="px-0 text-center text-[var(--pokemon-yellow)]">
                {row.evo1 ? <EvoArrow level={row.nivel_evo1} /> : null}
              </td>
              <td className="text-[var(--pokemon-muted)]">
                {row.evo1 ?? <span className="text-xs opacity-30">—</span>}
              </td>
              <td className="px-0 text-center text-[var(--pokemon-yellow)]">
                {row.evo2 ? <EvoArrow level={row.nivel_evo2} /> : null}
              </td>
              <td className="text-[var(--pokemon-muted)]">
                {row.evo2 ?? <span className="text-xs opacity-30">—</span>}
              </td>
              <td className="text-right font-mono text-xs">{row.stats_base}</td>
              <td className="text-right font-mono font-bold text-[var(--pokemon-yellow)]">
                {row.stats_final}
              </td>
              <td className="text-right">
                <span
                  className="font-mono font-bold text-sm"
                  style={{ color: row.diferencia_stats >= 0 ? '#4ade80' : '#f87171' }}
                >
                  +{row.diferencia_stats}
                </span>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  )
}
