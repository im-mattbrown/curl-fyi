'use client'

import styles from './SiteFrame.module.css'

export default function SiteFrame({ site, loading }) {
  if (loading) {
    return (
      <div className={styles.frame}>
        <div className={`skeleton ${styles.skeleton}`} />
      </div>
    )
  }

  if (!site) {
    return (
      <div className={`${styles.frame} ${styles.empty}`}>
        <p className={styles.emptyText}>Press curl to discover something</p>
      </div>
    )
  }

  // Not iframe-compatible: show screenshot or placeholder
  if (!site.iframe_compatible) {
    return (
      <div className={styles.frame}>
        {site.thumbnail_url ? (
          <>
            <img
              src={site.thumbnail_url}
              alt={site.title}
              className={styles.screenshot}
            />
            <a
              href={site.url}
              target="_blank"
              rel="noopener noreferrer"
              className={styles.visitPill}
            >
              ↗ Open Site
            </a>
          </>
        ) : (
          <div className={styles.noScreenshot}>
            <div className={styles.noScreenshotInner}>
              <span className={styles.noScreenshotIcon}>◈</span>
              <p className={styles.noScreenshotTitle}>{site.title}</p>
              <a
                href={site.url}
                target="_blank"
                rel="noopener noreferrer"
                className={`sku-btn sku-btn-md ${styles.visitBtn}`}
              >
                ↗ Open Site
              </a>
            </div>
          </div>
        )}
      </div>
    )
  }

  // iframe-compatible
  return (
    <div className={styles.frame}>
      <iframe
        src={site.url}
        title={site.title}
        className={styles.iframe}
        sandbox="allow-scripts allow-same-origin allow-forms allow-popups"
        loading="lazy"
      />
      <a
        href={site.url}
        target="_blank"
        rel="noopener noreferrer"
        className={styles.visitPill}
      >
        ↗ Open Site
      </a>
    </div>
  )
}
