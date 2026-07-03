'use client'

interface ErrorStateProps {
  queryId: number
  message?: string
  assignee?: string
}

export function ErrorState({ queryId, message, assignee }: ErrorStateProps) {
  return (
    <div className="flex flex-col items-center justify-center h-full min-h-[200px] gap-4 p-6 text-center">
      {/* Pokeball rota */}
      <div className="relative w-16 h-16 opacity-60">
        <svg viewBox="0 0 100 100" className="w-full h-full">
          <circle cx="50" cy="50" r="48" stroke="#e3350d" strokeWidth="4" fill="none" />
          <line x1="2" y1="50" x2="98" y2="50" stroke="#e3350d" strokeWidth="4" />
          <circle cx="50" cy="50" r="10" stroke="#e3350d" strokeWidth="4" fill="#1a1a2e" />
          {/* Crack */}
          <path d="M 40 20 L 50 35 L 44 45" stroke="#e3350d" strokeWidth="3" fill="none" strokeLinecap="round" />
        </svg>
      </div>

      <div>
        <p className="text-[var(--pokemon-yellow)] font-bold text-sm">
          ¡Consulta KO!
        </p>
        <p className="text-[var(--pokemon-muted)] text-xs mt-1">
          Query #{queryId.toString().padStart(2, '0')} pendiente
        </p>
        {assignee && (
          <p className="text-[var(--pokemon-muted)] text-xs mt-1">
            Entrenador: <span className="text-[var(--pokemon-white)]">{assignee}</span>
          </p>
        )}
      </div>

      {message && (
        <div className="bg-[rgba(227,53,13,0.1)] border border-[rgba(227,53,13,0.3)] rounded-lg px-4 py-2 max-w-xs">
          <p className="text-[var(--pokemon-error)] text-xs font-mono break-words">{message}</p>
        </div>
      )}
    </div>
  )
}
