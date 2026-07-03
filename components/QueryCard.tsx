'use client'

import { useEffect, useState } from 'react'
import { SectionHeader } from '@/components/ui/SectionHeader'
import { ErrorState } from '@/components/ui/ErrorState'
import { LoadingState } from '@/components/ui/LoadingState'

export interface QueryMeta {
  queryId: number
  title: string
  description: string
  concept: string
  assignee: string
}

interface QueryCardProps extends QueryMeta {
  children: (data: Record<string, unknown>[]) => React.ReactNode
}

export function QueryCard({
  queryId,
  title,
  description,
  concept,
  assignee,
  children,
}: QueryCardProps) {
  const [state, setState] = useState<'loading' | 'success' | 'error'>('loading')
  const [data, setData] = useState<Record<string, unknown>[]>([])
  const [errorMessage, setErrorMessage] = useState<string>('')

  useEffect(() => {
    const id = queryId.toString().padStart(2, '0')
    fetch(`/api/query/${id}`)
      .then(async (res) => {
        const json = await res.json()
        if (!res.ok || json.error) {
          setErrorMessage(json.message ?? 'Error desconocido')
          setState('error')
        } else {
          setData(json.data ?? [])
          setState('success')
        }
      })
      .catch((err) => {
        setErrorMessage(err.message)
        setState('error')
      })
  }, [queryId])

  return (
    <div className="pokemon-card p-5 flex flex-col h-full">
      <SectionHeader
        queryId={queryId}
        title={title}
        description={description}
        concept={concept}
        assignee={assignee}
        hasData={state === 'success' && data.length > 0}
      />

      <div className="flex-1 min-h-0">
        {state === 'loading' && <LoadingState />}
        {state === 'error'   && <ErrorState queryId={queryId} message={errorMessage} assignee={assignee} />}
        {state === 'success' && data.length === 0 && (
          <ErrorState queryId={queryId} message="La consulta no retornó datos" assignee={assignee} />
        )}
        {state === 'success' && data.length > 0 && children(data)}
      </div>
    </div>
  )
}
