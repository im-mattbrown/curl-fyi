import { createClient } from '@/lib/supabase/server'
import { NextResponse } from 'next/server'

export async function POST(request) {
  const supabase = createClient()

  // Auth check
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
  }

  // Shaper tier check
  const { data: profile } = await supabase
    .from('profiles')
    .select('tier')
    .eq('id', user.id)
    .single()

  if (profile?.tier !== 'shaper') {
    return NextResponse.json({ error: 'Shaper tier required' }, { status: 403 })
  }

  const { vibe, currentSiteId } = await request.json()

  if (!vibe?.trim()) {
    return NextResponse.json({ error: 'Vibe is required' }, { status: 400 })
  }

  try {
    // Get candidate sites matching user preferences
    // Pull topic IDs for this user first
    const { data: topicPrefs } = await supabase
      .from('user_topic_preferences')
      .select('topic_id')
      .eq('user_id', user.id)

    const topicIds = (topicPrefs || []).map(p => p.topic_id)

    // Get recently viewed site IDs to exclude
    const { data: recentViews } = await supabase
      .from('site_views')
      .select('site_id')
      .eq('user_id', user.id)
      .gte('viewed_at', new Date(Date.now() - 30 * 24 * 60 * 60 * 1000).toISOString())

    const recentIds = (recentViews || []).map(v => v.site_id)
    if (currentSiteId) recentIds.push(currentSiteId)

    // Fetch candidate sites — only id, title, vibe for LLM efficiency
    const { data: candidates } = await supabase
      .from('sites')
      .select('id, title, vibe, url, description, thumbnail_url, iframe_compatible')
      .eq('approved', true)
      .not('id', 'in', recentIds.length > 0 ? `(${recentIds.join(',')})` : '(null)')
      .not('vibe', 'is', null)
      .limit(60)

    if (!candidates?.length) {
      return NextResponse.json({ error: 'No candidates found' }, { status: 404 })
    }

    // Call Anthropic API for semantic matching
    const prompt = candidates
      .map(s => `ID:${s.id} | TITLE:${s.title} | VIBE:${s.vibe}`)
      .join('\n')

    const anthropicRes = await fetch('https://api.anthropic.com/v1/messages', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'x-api-key': process.env.ANTHROPIC_API_KEY,
        'anthropic-version': '2023-06-01',
      },
      body: JSON.stringify({
        model: 'claude-haiku-4-5-20251001',
        max_tokens: 100,
        system: `You are a web curator for curl.fyi, a site discovery platform. 
You will be given a user's vibe description and a list of sites with their vibe descriptions.
Return ONLY the UUID of the single site that best matches the user's requested vibe.
Return nothing else — no explanation, no punctuation, just the UUID.`,
        messages: [
          {
            role: 'user',
            content: `Sites:\n${prompt}\n\nUser vibe: "${vibe.trim()}"`,
          },
        ],
      }),
    })

    const anthropicData = await anthropicRes.json()
    const matchedId = anthropicData.content?.[0]?.text?.trim()

    // Find the matched site
    const matchedSite = candidates.find(s => s.id === matchedId)

    if (!matchedSite) {
      // Fallback: return random candidate
      const fallback = candidates[Math.floor(Math.random() * candidates.length)]
      return NextResponse.json({ site: fallback })
    }

    // Fetch full site with taxonomy
    const { data: fullSite } = await supabase
      .from('sites_with_taxonomy')
      .select('*')
      .eq('id', matchedSite.id)
      .single()

    return NextResponse.json({ site: fullSite || matchedSite })

  } catch (err) {
    console.error('Vibe Curl error:', err)
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 })
  }
}
