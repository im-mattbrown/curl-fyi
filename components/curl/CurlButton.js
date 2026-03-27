'use client'

import styles from './CurlButton.module.css'

const CIRCUMFERENCE = 2 * Math.PI * 28 // r=28

export default function CurlButton({ onCurl, cooldown, loading, cooldownProgress }) {
  const strokeOffset = CIRCUMFERENCE * (1 - cooldownProgress)

  const label = loading
    ? 'curling...'
    : cooldown
    ? null
    : 'curl'

  const countdown = cooldown
    ? Math.ceil(3 * (1 - cooldownProgress))
    : null

  return (
    <div className={styles.wrapper}>
      {/* SVG cooldown ring */}
      {cooldown && (
        <svg className={styles.ring} viewBox="0 0 72 72" aria-hidden="true">
          <circle
            className={styles.ringTrack}
            cx="36" cy="36" r="28"
            fill="none"
            strokeWidth="3"
          />
          <circle
            className={styles.ringProgress}
            cx="36" cy="36" r="28"
            fill="none"
            strokeWidth="3"
            strokeDasharray={CIRCUMFERENCE}
            strokeDashoffset={strokeOffset}
            strokeLinecap="round"
            transform="rotate(-90 36 36)"
          />
        </svg>
      )}

      <button
        className={[
          'sku-btn',
          'sku-btn-curl',
          cooldown ? 'cooldown' : '',
          loading ? 'pressing' : '',
        ].filter(Boolean).join(' ')}
        onClick={onCurl}
        disabled={cooldown || loading}
        aria-label="Curl — discover a new website"
      >
        {cooldown ? (
          <span className={styles.countdown}>{countdown}</span>
        ) : (
          <span className={styles.label}>{label}</span>
        )}
      </button>
    </div>
  )
}
