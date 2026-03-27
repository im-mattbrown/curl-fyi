'use client'

import { useState } from 'react'
import styles from './VibeCurl.module.css'

export default function VibeCurl({ isShaper, onVibeCurl, cooldown }) {
  const [vibe, setVibe] = useState('')
  const [showUpgrade, setShowUpgrade] = useState(false)

  function handleSubmit(e) {
    e.preventDefault()
    if (!vibe.trim()) return

    if (!isShaper) {
      setShowUpgrade(true)
      return
    }

    onVibeCurl(vibe.trim())
    setVibe('')
  }

  return (
    <div className={styles.wrapper}>
      <form className={styles.form} onSubmit={handleSubmit}>
        <input
          className={styles.input}
          type="text"
          value={vibe}
          onChange={e => setVibe(e.target.value)}
          placeholder="what's your vibe?"
          maxLength={120}
          aria-label="Vibe Curl — describe a feeling to discover a matching site"
        />
        <button
          className={`sku-btn sku-btn-sm ${styles.vibeBtn}`}
          type="submit"
          disabled={!vibe.trim() || cooldown}
        >
          curl it
        </button>
      </form>

      {/* Upgrade modal */}
      {showUpgrade && (
        <div className={styles.upgradeOverlay} onClick={() => setShowUpgrade(false)}>
          <div className={styles.upgradeCard} onClick={e => e.stopPropagation()}>
            <p className={styles.upgradeVibe}>"{vibe}"</p>
            <p className={styles.upgradeMessage}>
              That sounds like a great vibe.
              Upgrade to Shaper to unlock Vibe Curling.
            </p>
            <div className={styles.upgradeActions}>
              <a href="/profile/upgrade" className="sku-btn sku-btn-md">
                Upgrade to Shaper — $6/mo
              </a>
              <button
                className={styles.upgradeCancel}
                onClick={() => setShowUpgrade(false)}
              >
                Maybe later
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  )
}
