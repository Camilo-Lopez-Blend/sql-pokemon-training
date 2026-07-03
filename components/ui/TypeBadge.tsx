'use client'

const TYPE_COLORS: Record<string, string> = {
  Normal:    '#A8A878', Normal2:   '#A8A878',
  Fuego:     '#F08030', Agua:      '#6890F0',
  Eléctrico: '#F8D030', Planta:    '#78C850',
  Hielo:     '#98D8D8', Lucha:     '#C03028',
  Veneno:    '#A040A0', Tierra:    '#E0C068',
  Volador:   '#A890F0', Psíquico:  '#F85888',
  Bicho:     '#A8B820', Roca:      '#B8A038',
  Fantasma:  '#705898', Dragón:    '#7038F8',
  Siniestro: '#705848', Acero:     '#B8B8D0',
  Hada:      '#EE99AC',
  // English fallbacks
  fire: '#F08030', water: '#6890F0', grass: '#78C850',
  electric: '#F8D030', ice: '#98D8D8', fighting: '#C03028',
  poison: '#A040A0', ground: '#E0C068', flying: '#A890F0',
  psychic: '#F85888', bug: '#A8B820', rock: '#B8A038',
  ghost: '#705898', dragon: '#7038F8', dark: '#705848',
  steel: '#B8B8D0', fairy: '#EE99AC', normal: '#A8A878',
}

interface TypeBadgeProps {
  type: string
  size?: 'sm' | 'md'
}

export function TypeBadge({ type, size = 'md' }: TypeBadgeProps) {
  const color = TYPE_COLORS[type] ?? '#666'
  const padding = size === 'sm' ? '1px 7px' : '2px 10px'
  const fontSize = size === 'sm' ? '0.6rem' : '0.7rem'

  return (
    <span
      className="type-badge"
      style={{ backgroundColor: color, padding, fontSize }}
    >
      {type}
    </span>
  )
}
