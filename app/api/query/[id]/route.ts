import { NextRequest, NextResponse } from 'next/server'
import { readFileSync } from 'fs'
import { join } from 'path'
import { supabaseAdmin } from '@/lib/supabase-server'

export async function GET(
  _req: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  const { id } = await params
  const queryId = id.padStart(2, '0')

  // Validar que sea un ID válido (01-10)
  const num = parseInt(queryId, 10)
  if (isNaN(num) || num < 1 || num > 10) {
    return NextResponse.json({ error: true, message: 'ID de consulta inválido (debe ser 01-10)' }, { status: 400 })
  }

  try {
    // Leer el archivo SQL del sistema de archivos (server-side)
    const sqlPath = join(process.cwd(), 'queries', `query_${queryId}.sql`)
    const sqlContent = readFileSync(sqlPath, 'utf-8')

    // Ejecutar via RPC la función de Supabase
    const { data, error } = await supabaseAdmin.rpc('execute_training_query', {
      p_sql: sqlContent,
    })

    if (error) {
      return NextResponse.json(
        { error: true, message: error.message, detail: error.details },
        { status: 422 }
      )
    }

    // La función puede retornar un objeto de error embebido en data
    if (data && typeof data === 'object' && !Array.isArray(data) && data.error) {
      return NextResponse.json(
        { error: true, message: data.message, detail: data.detail },
        { status: 422 }
      )
    }

    return NextResponse.json({ data: data ?? [] })
  } catch (err: unknown) {
    const message = err instanceof Error ? err.message : 'Error desconocido'
    return NextResponse.json({ error: true, message }, { status: 500 })
  }
}
