'use client'

import { useRouter } from 'next/navigation'
import { createClient } from '@/lib/supabase/client'
import styles from './NavBar.module.css'

export default function NavBar({ user, profile }) {
  const router = useRouter()
  const supabase = createClient()

  async function handleSignOut() {
    await supabase.auth.signOut()
    router.push('/auth/signup')
    router.refresh()
  }

  const isShaper = profile?.tier === 'shaper'

  return (
    <nav className={styles.nav}>
      <a href="/" className={styles.logo}>
        <span className={styles.logoText}>curl</span>
        <span className={styles.logoDomain}>.fyi</span>
      </a>

      <div className={styles.actions}>
        {!isShaper && (
          <a href="/profile/upgrade" className={`${styles.upgradeBtn}`}>
            ✦ Upgrade to Shaper
          </a>
        )}
        {isShaper && (
          <span className={styles.shaperBadge}>✦ Shaper</span>
        )}
        <a href="/interests" className={styles.navLink}>Interests</a>
        <a href="/profile" className={styles.navLink}>Profile</a>
        <button className={styles.signOut} onClick={handleSignOut}>
          Sign out
        </button>
      </div>
    </nav>
  )
}
