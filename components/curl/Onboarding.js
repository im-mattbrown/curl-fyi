'use client'

import styles from './Onboarding.module.css'

const STEPS = [
  {
    target: 'curl-button',
    title: 'This is your Curl button.',
    body: 'Press it to discover a new website based on your interests. Every press fetches something new.',
    position: 'top',
  },
  {
    target: 'curl-frame',
    title: 'Sites load right here.',
    body: 'Some open directly in the window, others will open in a new tab — either way, something interesting is waiting.',
    position: 'right',
  },
  {
    target: 'curl-meta',
    title: 'Save and rate what you find.',
    body: 'Found something you love? Save it to your collection or rate it 1-10. Your ratings help refine what you discover.',
    position: 'left',
  },
  {
    target: null,
    title: 'Feeling something specific?',
    body: 'Type a vibe — "meditative and strange" or "something that makes me think" — and Vibe Curl will find a site that matches the feeling.',
    position: 'top',
    isFinal: true,
  },
]

export default function Onboarding({ step, onNext, onDismiss }) {
  const current = STEPS[step]
  if (!current) {
    onDismiss()
    return null
  }

  return (
    <div className={styles.overlay}>
      <div className={styles.backdrop} onClick={onDismiss} />

      <div className={styles.tooltip}>
        <div className={styles.stepIndicator}>
          {STEPS.map((_, i) => (
            <div
              key={i}
              className={`${styles.stepDot} ${i === step ? styles.stepDotActive : ''} ${i < step ? styles.stepDotDone : ''}`}
            />
          ))}
        </div>

        <h3 className={styles.title}>{current.title}</h3>
        <p className={styles.body}>{current.body}</p>

        <div className={styles.actions}>
          <button
            className={styles.skip}
            onClick={onDismiss}
          >
            Skip
          </button>
          <button
            className="sku-btn sku-btn-md"
            onClick={current.isFinal ? onDismiss : onNext}
          >
            {current.isFinal ? 'Start Curling →' : 'Next →'}
          </button>
        </div>
      </div>
    </div>
  )
}
