import { createClient } from '@/lib/supabase/server'
import { resolveUrl } from '@/lib/resolve-url'
import { NextResponse } from 'next/server'

/**
 * POST /api/sites — Add a new site with automatic URL resolution.
 * Follows redirects and tests www/non-www variants to find the working URL.
 */
export async function POST(request) {
  const supabase = createClient()

  const { data: { user } } = await supabase.auth.getUser()
  if (!user) {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
  }

  const body = await request.json()
  const { url, title, description, vibe, thumbnail_url, topic_ids, subtopic_ids, niche_ids } = body

  if (!url || !title) {
    return NextResponse.json({ error: 'url and title are required' }, { status: 400 })
  }

  // Resolve the URL — follow redirects, test www/non-www variants
  const resolvedUrl = await resolveUrl(url)

  // Check if this URL already exists
  const { data: existing } = await supabase
    .from('sites')
    .select('id')
    .eq('url', resolvedUrl)
    .single()

  if (existing) {
    return NextResponse.json({ error: 'Site already exists', siteId: existing.id }, { status: 409 })
  }

  // Insert the site with the resolved URL
  const { data: site, error } = await supabase
    .from('sites')
    .insert({
      url: resolvedUrl,
      title,
      description: description || null,
      vibe: vibe || null,
      thumbnail_url: thumbnail_url || null,
      submitted_by: user.id,
    })
    .select()
    .single()

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 })
  }

  // Link taxonomy if provided
  if (topic_ids?.length) {
    await supabase.from('site_topics').insert(
      topic_ids.map(tid => ({ site_id: site.id, topic_id: tid }))
    )
  }
  if (subtopic_ids?.length) {
    await supabase.from('site_subtopics').insert(
      subtopic_ids.map(sid => ({ site_id: site.id, subtopic_id: sid }))
    )
  }
  if (niche_ids?.length) {
    await supabase.from('site_niches').insert(
      niche_ids.map(nid => ({ site_id: site.id, niche_id: nid }))
    )
  }

  return NextResponse.json({
    site,
    resolved: resolvedUrl !== url,
    originalUrl: resolvedUrl !== url ? url : undefined,
  })
}
