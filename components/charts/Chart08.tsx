'use client'
// Query 08: Top 5 pokemon por suma total de stats con cada stat individual
// Viz: Leaderboard con barra de radar simplificada

import { TypeBadge } from '@/components/ui/TypeBadge'

interface Row {
  pokemon: string
  tipos: string
  total_stats: number
  hp: number
  ataque: number
  defensa: number
  atq_especial: number
  def_especial: number
  velocidad: number
}

const STAT_COLORS: Record<string, string> = {
  HP: '#ff5f5f', Atq: '#f08030', Def: '#f8d030',
  'AtqE': '#6890f0', 'DefE': '#78c850', 'Vel': '#f85888',
}

const MEDALS = ['🥇', '🥈', '🥉', '4°', '5°']

export function Chart08({ data }: { data: Record<string, unknown>[] }) {
  const rows = data as unknown as Row[]

  return (
    <div className="flex flex-col gap-3">
      {rows.map((row, i) => {
        const stats = [
          { key: 'HP',   val: row.hp },
          { key: 'Atq',  val: row.ataque },
          { key: 'Def',  val: row.defensa },
          { key: 'AtqE', val: row.atq_especial },
          { key: 'DefE', val: row.def_especial },
          { key: 'Vel',  val: row.velocidad },
        ]
        const maxStat = Math.max(...stats.map((s) => s.val))

        return (
          <div
            key={row.pokemon}
            className="p-3 rounded-lg border border-[var(--pokemon-border)] bg-[rgba(255,255,255,0.02)]"
          >
            <div className="flex items-center justify-between mb-2">
              <div className="flex items-center gap-2">
                <span className="text-lg">{MEDALS[i] ?? `${i + 1}°`}</span>
                <div>
                  <span className="font-bold text-sm">{row.pokemon}</span>
                  <div className="flex gap-1 mt-0.5">
                    {(row.tipos ?? '').split(/[\/,]/).map((t) => (
                      <TypeBadge key={t} type={t.trim()} size="sm" />
                    ))}
                  </div>
                </div>
              </div>
              <span className="font-pokemon text-[var(--pokemon-yellow)] text-xs">
                {row.total_stats}
              </span>
            </div>

            {/* Mini stat bars */}
            <div className="grid grid-cols-6 gap-1 mt-1">
              {stats.map(({ key, val }) => (
                <div key={key} className="flex flex-col items-center gap-0.5">
                  <div className="w-full h-10 flex items-end justify-center">
                    <div
                      className="w-full rounded-sm transition-all"
                      style={{
                        height: `${(val / maxStat) * 100}%`,
                        minHeight: '4px',
                        backgroundColor: STAT_COLORS[key] ?? '#888',
                      }}
                    />
                  </div>
                  <span className="text-[0.55rem] text-[var(--pokemon-muted)]">{key}</span>
                  <span className="text-[0.6rem] font-mono text-[var(--pokemon-white)]">{val}</span>
                </div>
              ))}
            </div>
          </div>
        )
      })}
    </div>
  )
}
