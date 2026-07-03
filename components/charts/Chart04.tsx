'use client'
// Query 04: Promedio de ataque y defensa por tipo primario
// Viz: Barra agrupada (Recharts)

import {
  BarChart, Bar, XAxis, YAxis, CartesianGrid, Tooltip,
  Legend, ResponsiveContainer,
} from 'recharts'

interface Row {
  tipo: string
  promedio_ataque: number
  promedio_defensa: number
}

export function Chart04({ data }: { data: Record<string, unknown>[] }) {
  const rows = (data as Row[]).map((r) => ({
    tipo: r.tipo,
    Ataque: Number(Number(r.promedio_ataque).toFixed(1)),
    Defensa: Number(Number(r.promedio_defensa).toFixed(1)),
  }))

  return (
    <ResponsiveContainer width="100%" height={260}>
      <BarChart data={rows} margin={{ top: 5, right: 10, left: -10, bottom: 60 }}>
        <CartesianGrid strokeDasharray="3 3" stroke="rgba(15,52,96,0.5)" />
        <XAxis
          dataKey="tipo"
          tick={{ fill: '#8892b0', fontSize: 10 }}
          angle={-45}
          textAnchor="end"
          interval={0}
        />
        <YAxis tick={{ fill: '#8892b0', fontSize: 10 }} />
        <Tooltip
          contentStyle={{ background: '#16213e', border: '1px solid #0f3460', borderRadius: 8 }}
          labelStyle={{ color: '#ffcb05' }}
          itemStyle={{ color: '#f0f0f0' }}
        />
        <Legend wrapperStyle={{ paddingTop: '10px', fontSize: 12 }} />
        <Bar dataKey="Ataque"  fill="#e3350d" radius={[4, 4, 0, 0]} />
        <Bar dataKey="Defensa" fill="#3b4cca" radius={[4, 4, 0, 0]} />
      </BarChart>
    </ResponsiveContainer>
  )
}
