'use client'

import { useState, useEffect, useRef, useCallback } from 'react'
import { createClient } from '@/lib/supabase/client'
import SiteFrame from './SiteFrame'
import SiteMetadata from './SiteMetadata'
import CurlButton from './CurlButton'
import VibeCurl from './VibeCurl'
import Onboarding from './Onboarding'
import NavBar from '@/components/layout/NavBar'
import styles from './CurlPage.module.css'

const COOLDOWN_MS = 3000

export default function CurlPage({ user, profile, initialSite }) {
  const supabase = createClient()

  const [currentSite, setCurrentSite] = useState(initialSite)
  const [loading, setLoading] = useState(false)
  const [cooldown, setCooldown] = useState(false)
  const [cooldownProgress, setCooldownProgress] = useState(0)
  const [activeTagFilter, setActiveTagFilter] = useState(null)
  const [userRating, setUserRating] = useState(null)
  const [isSaved, setIsSaved] = useState(false)
  const [showOnboarding, setShowOnboarding] = useState(!profile?.has_seen_onboarding)
  const [onboardingStep, setOnboardingStep] = useState(0)

  const cooldownTimer = useRef(null)
  const progressTimer = useRef(null)

  // Load user's rating and save status for current site
  useEffect(() => {
    if (!currentSite) return

    async function loadSiteUserData() {
      const [{ data: rating }, { data: saved }] = await Promise.all([
        supabase
          .from('site_ratings')
          .select('rating')
          .eq('user_id', user.id)
          .eq('site_id', currentSite.id)
          .single(),
        supabase
          .from('saved_sites')
          .select('id')
          .eq('user_id', user.id)
          .eq('site_id', currentSite.id)
          .is('folder_id', null)
          .single(),
      ])

      setUserRating(rating?.rating || null)
      setIsSaved(!!saved)
    }

    loadSiteUserData()
  }, [currentSite?.id, user.id])

  const startCooldown = useCallback(() => {
    setCooldown(true)
    setCooldownProgress(0)

    const startTime = Date.now()
    progressTimer.current = setInterval(() => {
      const elapsed = Date.now() - startTime
      const progress = Math.min(elapsed / COOLDOWN_MS, 1)
      setCooldownProgress(progress)
    }, 50)

    cooldownTimer.current = setTimeout(() => {
      setCooldown(false)
      setCooldownProgress(0)
      clearInterval(progressTimer.current)
    }, COOLDOWN_MS)
  }, [])

  useEffect(() => {
    return () => {
      clearTimeout(cooldownTimer.current)
      clearInterval(progressTimer.current)
    }
  }, [])

  async function recordView(siteId, vibeQuery = null) {
    await supabase.from('site_views').insert({
      user_id: user.id,
      site_id: siteId,
      vibe_query: vibeQuery,
    })
  }

  async function handleCurl(vibeQuery = null) {
    if (cooldown || loading) return
    setLoading(true)

    try {
      let site = null

      if (vibeQuery) {
        // Vibe Curl — go through API route
        const res = await fetch('/api/vibe-curl', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({
            vibe: vibeQuery,
            currentSiteId: currentSite?.id,
          }),
        })
        const data = await res.json()
        site = data.site
      } else {
        // Standard Curl — call Supabase RPC
        const { data } = await supabase.rpc('get_curl_site', {
          p_user_id: user.id,
          p_exclude_days: 30,
        })
        // Apply tag filter if active
        if (activeTagFilter && data?.[0]) {
          // Tag filter is best-effort — if the returned site doesn't match,
          // we do a secondary query filtered by tag
          const filtered = await fetchFilteredSite(activeTagFilter)
          site = filtered || data?.[0]
        } else {
          site = data?.[0]
        }
      }

      if (site) {
        await recordView(site.id, vibeQuery)
        setCurrentSite(site)
        setUserRating(null)
        setIsSaved(false)
      }
    } catch (err) {
      console.error('Curl failed:', err)
    } finally {
      setLoading(false)
      startCooldown()
    }
  }

  async function fetchFilteredSite(filter) {
    // Filter by topic, subtopic, or niche tag
    const { data } = await supabase
      .from('sites_with_taxonomy')
      .select('*')
      .contains(filter.type + '_names', [filter.name])
      .neq('id', currentSite?.id)
      .limit(20)

    if (!data?.length) return null
    return data[Math.floor(Math.random() * data.length)]
  }

  async function handleRate(rating) {
    setUserRating(rating)
    await supabase.from('site_ratings').upsert({
      user_id: user.id,
      site_id: currentSite.id,
      rating,
    }, { onConflict: 'user_id,site_id' })
  }

  async function handleSave(folderId = null) {
    if (isSaved && !folderId) {
      // Unsave from root
      await supabase
        .from('saved_sites')
        .delete()
        .eq('user_id', user.id)
        .eq('site_id', currentSite.id)
      setIsSaved(false)
    } else {
      await supabase.from('saved_sites').upsert({
        user_id: user.id,
        site_id: currentSite.id,
        folder_id: folderId,
      }, { onConflict: 'user_id,site_id,folder_id' })
      setIsSaved(true)
    }
  }

  async function handleDeleteSite() {
    if (!currentSite) return
    const siteId = currentSite.id
    await supabase.from('sites').delete().eq('id', siteId)
    setCurrentSite(null)
  }

  function handleTagClick(tag) {
    setActiveTagFilter(prev =>
      prev?.name === tag.name ? null : tag
    )
  }

  async function dismissOnboarding() {
    setShowOnboarding(false)
    await supabase
      .from('profiles')
      .update({ has_seen_onboarding: true })
      .eq('id', user.id)
  }

  const isShaper = profile?.tier === 'shaper'

  return (
    <div className={styles.layout}>
      <NavBar user={user} profile={profile} />

      {/* ── Active tag filter pill ── */}
      {activeTagFilter && (
        <div className={styles.filterPill}>
          <span>Filtering by:</span>
          <button
            className={styles.filterTag}
            onClick={() => setActiveTagFilter(null)}
          >
            {activeTagFilter.name} ✕
          </button>
        </div>
      )}

      {/* ── Main content area ── */}
      <main className={styles.main}>
        {/* Left: iframe / screenshot */}
        <div className={styles.framePanel} id="curl-frame">
          <SiteFrame site={currentSite} loading={loading} />
        </div>

        {/* Right: metadata */}
        <div className={styles.metaPanel} id="curl-meta">
          <SiteMetadata
            site={currentSite}
            loading={loading}
            userRating={userRating}
            isSaved={isSaved}
            onRate={handleRate}
            onSave={handleSave}
            onTagClick={handleTagClick}
            activeTag={activeTagFilter}
            userId={user.id}
            onDelete={handleDeleteSite}
          />
        </div>
      </main>

      {/* ── Footer: Vibe Curl + Curl button ── */}
      <footer className={styles.footer}>
        <VibeCurl
          isShaper={isShaper}
          onVibeCurl={(vibe) => handleCurl(vibe)}
          cooldown={cooldown}
        />
        <div className={styles.curlWrap} id="curl-button">
          <CurlButton
            onCurl={() => handleCurl()}
            cooldown={cooldown}
            loading={loading}
            cooldownProgress={cooldownProgress}
          />
        </div>
      </footer>

      {/* ── First-time onboarding overlay ── */}
      {showOnboarding && (
        <Onboarding
          step={onboardingStep}
          onNext={() => setOnboardingStep(s => s + 1)}
          onDismiss={dismissOnboarding}
        />
      )}
    </div>
  )
}
