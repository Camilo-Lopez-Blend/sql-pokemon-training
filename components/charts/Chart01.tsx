'use client'
// Query 01: Por tipo de daño de movimiento: promedio de poder, cantidad y pokemones distintos
// Viz: Tabla con 3 metricas por fila

interface Row {
  clase: string
  promedio_poder: number
  cantidad_movimientos: number
  pokemon_distintos: number
}

const CLASS_COLORS: Record<string, string> = {
  fisico:   '#e3350d',
  especial: '#3b4cca',
  estado:   '#ffcb05',
}
const CLASS_ICONS: Record<string, string> = {
  fisico:   '⚔️',
  especial: '✨',
  estado:   '🌀',
}

export function Chart01({ data }: { data: Record<string, unknown>[] }) {
  const rows = data as unknown as Row[]

  return (
    <div className="overflow-x-auto">
      <table className="pokemon-table">
        <thead>
          <tr>
            <th className="text-left rounded-tl-lg">Clase</th>
            <th className="text-right">Poder Promedio</th>
            <th className="text-right">Movimientos</th>
            <th className="text-right rounded-tr-lg">Pokémon Distintos</th>
          </tr>
        </thead>
        <tbody>
          {rows.map((row) => (
            <tr key={row.clase}>
              <td>
                <div className="flex items-center gap-2">
                  <span>{CLASS_ICONS[row.clase] ?? '❓'}</span>
                  <span
                    className="font-semibold capitalize"
                    style={{ color: CLASS_COLORS[row.clase] ?? '#fff' }}
                  >
                    {row.clase}
                  </span>
                </div>
              </td>
              <td className="text-right">
                <span className="font-mono font-bold text-[var(--pokemon-yellow)]">
                  {row.promedio_poder ? Number(row.promedio_poder).toFixed(1) : '—'}
                </span>
              </td>
              <td className="text-right font-mono">{row.cantidad_movimientos}</td>
              <td className="text-right">
                <span className="bg-[rgba(59,76,202,0.2)] text-[#7b8ff5] px-3 py-0.5 rounded-full font-mono text-sm">
                  {row.pokemon_distintos}
                </span>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  )
}
