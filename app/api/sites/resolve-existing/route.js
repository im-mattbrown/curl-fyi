import { createClient } from '@/lib/supabase/server'
import { resolveUrl } from '@/lib/resolve-url'
import { NextResponse } from 'next/server'

/**
 * POST /api/sites/resolve-existing — Scan all sites and fix broken URLs.
 * Follows redirects and tests www/non-www variants.
 * Returns a report of what was changed.
 */
export async function POST() {
  const supabase = createClient()

  const { data: { user } } = await supabase.auth.getUser()
  if (!user) {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
  }

  const { data: sites, error } = await supabase
    .from('sites')
    .select('id, url')
    .order('created_at')

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 })
  }

  const results = { fixed: [], failed: [], unchanged: [] }

  for (const site of sites) {
    const resolved = await resolveUrl(site.url)

    if (resolved !== site.url) {
      // Check for duplicates before updating
      const { data: dup } = await supabase
        .from('sites')
        .select('id')
        .eq('url', resolved)
        .neq('id', site.id)
        .single()

      if (dup) {
        results.failed.push({
          id: site.id,
          original: site.url,
          resolved,
          reason: 'duplicate — another site already has this URL',
        })
        continue
      }

      const { error: updateErr } = await supabase
        .from('sites')
        .update({ url: resolved })
        .eq('id', site.id)

      if (updateErr) {
        results.failed.push({
          id: site.id,
          original: site.url,
          resolved,
          reason: updateErr.message,
        })
      } else {
        results.fixed.push({
          id: site.id,
          original: site.url,
          resolved,
        })
      }
    } else {
      results.unchanged.push(site.id)
    }
  }

  return NextResponse.json({
    summary: {
      total: sites.length,
      fixed: results.fixed.length,
      failed: results.failed.length,
      unchanged: results.unchanged.length,
    },
    fixed: results.fixed,
    failed: results.failed,
  })
}
