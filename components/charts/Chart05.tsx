'use client'
// Query 05: Pokemon con sus tipos y habilidades no ocultas
// Viz: Tabla paginada con badges

import { useState } from 'react'
import { TypeBadge } from '@/components/ui/TypeBadge'

interface Row {
  pokemon: string
  tipos: string
  habilidades: string
}

const PAGE_SIZE = 8

export function Chart05({ data }: { data: Record<string, unknown>[] }) {
  const rows = data as unknown as Row[]
  const [page, setPage] = useState(0)
  const total = Math.ceil(rows.length / PAGE_SIZE)
  const slice = rows.slice(page * PAGE_SIZE, (page + 1) * PAGE_SIZE)

  return (
    <div className="flex flex-col gap-3">
      <div className="overflow-auto max-h-60">
        <table className="pokemon-table">
          <thead>
            <tr>
              <th className="text-left">Pokémon</th>
              <th className="text-left">Tipos</th>
              <th className="text-left">Habilidades</th>
            </tr>
          </thead>
          <tbody>
            {slice.map((row) => (
              <tr key={row.pokemon}>
                <td className="font-semibold">{row.pokemon}</td>
                <td>
                  <div className="flex gap-1 flex-wrap">
                    {(row.tipos ?? '').split(', ').map((t) => (
                      <TypeBadge key={t} type={t.trim()} size="sm" />
                    ))}
                  </div>
                </td>
                <td className="text-[var(--pokemon-muted)] text-xs">
                  {row.habilidades}
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>

      {/* Paginacion */}
      {total > 1 && (
        <div className="flex items-center justify-between pt-1">
          <span className="text-[var(--pokemon-muted)] text-xs">
            {rows.length} pokémon · página {page + 1}/{total}
          </span>
          <div className="flex gap-2">
            <button
              onClick={() => setPage((p) => Math.max(0, p - 1))}
              disabled={page === 0}
              className="px-3 py-1 text-xs rounded-lg bg-[var(--pokemon-border)] text-[var(--pokemon-white)] disabled:opacity-30 hover:bg-[var(--pokemon-red)] transition-colors"
            >
              ← Ant.
            </button>
            <button
              onClick={() => setPage((p) => Math.min(total - 1, p + 1))}
              disabled={page === total - 1}
              className="px-3 py-1 text-xs rounded-lg bg-[var(--pokemon-border)] text-[var(--pokemon-white)] disabled:opacity-30 hover:bg-[var(--pokemon-red)] transition-colors"
            >
              Sig. →
            </button>
          </div>
        </div>
      )}
    </div>
  )
}
