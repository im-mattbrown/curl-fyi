import { createClient } from '@/lib/supabase/server'
import { redirect } from 'next/navigation'
import CurlPage from '@/components/curl/CurlPage'

export const metadata = {
  title: 'curl.fyi — surf the web again',
}

export default async function HomePage() {
  const supabase = createClient()
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) redirect('/auth/login')

  // Load user profile
  const { data: profile } = await supabase
    .from('profiles')
    .select('*')
    .eq('id', user.id)
    .single()

  // Load site of the day
  const { data: siteOfDay } = await supabase
    .from('todays_site')
    .select('*')
    .single()

  // If no site of the day, get a random one
  let initialSite = siteOfDay
  if (!initialSite) {
    const { data: randomSite } = await supabase
      .from('sites_with_taxonomy')
      .select('*')
      .eq('approved', true)
      .limit(1)
      .single()
    initialSite = randomSite
  }

  return (
    <CurlPage
      user={user}
      profile={profile}
      initialSite={initialSite}
    />
  )
}
