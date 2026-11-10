'use client'

import { useEffect, useRef, useState } from 'react'
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
  const [menuOpen, setMenuOpen] = useState(false)
  const menuRef = useRef(null)

  useEffect(() => {
    if (!menuOpen) return
    function handleClick(e) {
      if (menuRef.current && !menuRef.current.contains(e.target)) setMenuOpen(false)
    }
    function handleKey(e) {
      if (e.key === 'Escape') setMenuOpen(false)
    }
    document.addEventListener('mousedown', handleClick)
    document.addEventListener('touchstart', handleClick)
    document.addEventListener('keydown', handleKey)
    return () => {
      document.removeEventListener('mousedown', handleClick)
      document.removeEventListener('touchstart', handleClick)
      document.removeEventListener('keydown', handleKey)
    }
  }, [menuOpen])

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

      <div className={styles.mobileMenu} ref={menuRef}>
        <button
          type="button"
          className={`${styles.hamburger} ${menuOpen ? styles.hamburgerOpen : ''}`}
          onClick={() => setMenuOpen((o) => !o)}
          aria-label={menuOpen ? 'Close menu' : 'Open menu'}
          aria-expanded={menuOpen}
          aria-controls="mobile-nav-menu"
        >
          <svg width="26" height="20" viewBox="0 0 26 20" fill="none" aria-hidden="true">
            <path className={styles.waveTop} d="M2 4 C 6 1.5, 9 6.5, 13 4 S 20 1.5, 24 4" />
            <path className={styles.waveMid} d="M2 10 C 6 7.5, 9 12.5, 13 10 S 20 7.5, 24 10" />
            <path className={styles.waveBot} d="M2 16 C 6 13.5, 9 18.5, 13 16 S 20 13.5, 24 16" />
          </svg>
        </button>

        {menuOpen && (
          <div id="mobile-nav-menu" className={styles.dropdown} role="menu">
            {!isShaper && (
              <a href="/profile/upgrade" className={styles.dropdownUpgrade} role="menuitem">
                ✦ Upgrade to Shaper
              </a>
            )}
            {isShaper && (
              <span className={styles.dropdownBadge}>✦ Shaper</span>
            )}
            <a href="/interests" className={styles.dropdownItem} role="menuitem">Interests</a>
            <a href="/profile" className={styles.dropdownItem} role="menuitem">Profile</a>
            <div className={styles.dropdownDivider} />
            <button
              type="button"
              className={`${styles.dropdownItem} ${styles.dropdownSignOut}`}
              onClick={handleSignOut}
              role="menuitem"
            >
              Sign out
            </button>
          </div>
        )}
      </div>
    </nav>
  )
}
