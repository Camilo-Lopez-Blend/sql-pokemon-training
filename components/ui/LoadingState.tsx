'use client'

export function LoadingState() {
  return (
    <div className="flex flex-col items-center justify-center h-full min-h-[200px] gap-3">
      {/* Pokeball girando */}
      <div className="animate-spin-slow w-12 h-12 opacity-80">
        <svg viewBox="0 0 100 100">
          <circle cx="50" cy="50" r="48" stroke="#ffcb05" strokeWidth="4" fill="none" />
          <path d="M 2 50 A 48 48 0 0 1 98 50" fill="#e3350d" opacity="0.5" />
          <line x1="2" y1="50" x2="98" y2="50" stroke="#ffcb05" strokeWidth="3" />
          <circle cx="50" cy="50" r="10" stroke="#ffcb05" strokeWidth="3" fill="#1a1a2e" />
          <circle cx="50" cy="50" r="4" fill="#ffcb05" />
        </svg>
      </div>
      <p className="text-[var(--pokemon-muted)] text-xs animate-pulse">Ejecutando consulta...</p>
    </div>
  )
}
