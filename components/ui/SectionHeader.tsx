'use client'

interface SectionHeaderProps {
  queryId: number
  title: string
  description: string
  concept: string
  assignee: string
  hasData: boolean
}

export function SectionHeader({ queryId, title, description, concept, assignee, hasData }: SectionHeaderProps) {
  return (
    <div className="flex items-start justify-between gap-3 mb-4">
      <div className="flex-1 min-w-0">
        <div className="flex items-center gap-2 mb-1">
          <span className="font-pokemon text-[var(--pokemon-yellow)] text-[0.55rem]">
            #{queryId.toString().padStart(2, '0')}
          </span>
          <span className="text-xs bg-[rgba(59,76,202,0.3)] text-[#7b8ff5] px-2 py-0.5 rounded-full font-mono">
            {concept}
          </span>
          {hasData ? (
            <span className="text-xs bg-[rgba(74,222,128,0.15)] text-[var(--pokemon-success)] px-2 py-0.5 rounded-full">
              ✓ activo
            </span>
          ) : (
            <span className="text-xs bg-[rgba(227,53,13,0.15)] text-[var(--pokemon-error)] px-2 py-0.5 rounded-full animate-pulse-red">
              ⚡ pendiente
            </span>
          )}
        </div>
        <h3 className="text-[var(--pokemon-white)] font-semibold text-sm leading-snug">{title}</h3>
        <p className="text-[var(--pokemon-muted)] text-xs mt-0.5 truncate">{description}</p>
      </div>
      <div className="text-right shrink-0">
        <p className="text-[var(--pokemon-muted)] text-[0.65rem]">Entrenador</p>
        <p className="text-[var(--pokemon-yellow)] text-xs font-semibold">{assignee}</p>
      </div>
    </div>
  )
}
