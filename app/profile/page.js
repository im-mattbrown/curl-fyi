import { createClient } from '@/lib/supabase/server'
import { redirect } from 'next/navigation'
import ProfileClient from '@/components/profile/ProfileClient'
import ShorelineWaves from '@/components/auth/ShorelineWaves'
import styles from './profile.module.css'

export const metadata = {
  title: 'Your Profile — curl.fyi',
}

export default async function ProfilePage() {
  const supabase = createClient()

  const { data: { user } } = await supabase.auth.getUser()
  if (!user) redirect('/auth/login')

  // Load user folders
  const { data: folders } = await supabase
    .from('folders')
    .select('*')
    .eq('user_id', user.id)
    .order('created_at')

  // Load saved sites with full site data
  const { data: savedSites } = await supabase
    .from('saved_sites')
    .select('*, sites(*)')
    .eq('user_id', user.id)
    .order('saved_at', { ascending: false })

  return (
    <div className={styles.page}>
      <div className={styles.background} />
      <ShorelineWaves className={styles.waves} />

      <div className={styles.content}>
      <div className={styles.header}>
        <div className={styles.logo}>
          <span className={styles.logoText}>curl</span>
          <span className={styles.logoDomain}>.fyi</span>
        </div>
        <p className={styles.subtitle}>
          Your saved corners of the internet
        </p>
      </div>

      <ProfileClient
        user={user}
        folders={folders || []}
        savedSites={savedSites || []}
      />
      </div>
    </div>
  )
}
