'use client'

import { useState, useCallback, useTransition } from 'react'
import { useRouter } from 'next/navigation'
import { createClient } from '@/lib/supabase/client'
import SkuButton from '@/components/ui/SkuButton'
import styles from './InterestsClient.module.css'

function TopicIcon({ slug, className }) {
  return (
    <img
      src={`/images/icons/${slug}.svg`}
      alt=""
      className={className}
      width={20}
      height={20}
    />
  )
}

export default function InterestsClient({
  topics,
  subtopics,
  niches,
  existingPrefs,
  userId,
}) {
  const router = useRouter()
  const [isPending, startTransition] = useTransition()

  const [selectedTopics, setSelectedTopics] = useState(
    new Set(existingPrefs.topics)
  )
  const [selectedSubtopics, setSelectedSubtopics] = useState(
    new Set(existingPrefs.subtopics)
  )
  const [selectedNiches, setSelectedNiches] = useState(
    new Set(existingPrefs.niches)
  )
  const [saving, setSaving] = useState(false)

  // Derived counts
  const totalSelected = selectedTopics.size + selectedSubtopics.size + selectedNiches.size
  const meetsMinimum = selectedTopics.size >= 3 && totalSelected >= 12

  // Get subtopics for a given topic
  const getSubtopicsForTopic = useCallback((topicId) => {
    return subtopics.filter(st => st.topic_id === topicId)
  }, [subtopics])

  // Get niches for a given subtopic
  const getNichesForSubtopic = useCallback((subtopicId) => {
    return niches.filter(n => n.subtopic_id === subtopicId)
  }, [niches])

  function toggleTopic(topicId) {
    setSelectedTopics(prev => {
      const next = new Set(prev)
      if (next.has(topicId)) {
        next.delete(topicId)
        // Deselect all subtopics and niches under this topic
        const topicSubtopics = getSubtopicsForTopic(topicId)
        const subtopicIds = topicSubtopics.map(st => st.id)
        setSelectedSubtopics(prevSt => {
          const nextSt = new Set(prevSt)
          subtopicIds.forEach(id => {
            nextSt.delete(id)
            // Also remove niches under these subtopics
            const subtopicNiches = getNichesForSubtopic(id)
            subtopicNiches.forEach(n => {
              setSelectedNiches(prevN => {
                const nextN = new Set(prevN)
                nextN.delete(n.id)
                return nextN
              })
            })
          })
          return nextSt
        })
      } else {
        next.add(topicId)
      }
      return next
    })
  }

  function toggleSubtopic(subtopicId, topicId) {
    setSelectedSubtopics(prev => {
      const next = new Set(prev)
      if (next.has(subtopicId)) {
        next.delete(subtopicId)
        // Deselect all niches under this subtopic
        const subtopicNiches = getNichesForSubtopic(subtopicId)
        setSelectedNiches(prevN => {
          const nextN = new Set(prevN)
          subtopicNiches.forEach(n => nextN.delete(n.id))
          return nextN
        })
      } else {
        next.add(subtopicId)
        // Auto-select parent topic if not selected
        setSelectedTopics(prevT => {
          if (!prevT.has(topicId)) {
            const nextT = new Set(prevT)
            nextT.add(topicId)
            return nextT
          }
          return prevT
        })
      }
      return next
    })
  }

  function toggleNiche(nicheId, subtopicId, topicId) {
    setSelectedNiches(prev => {
      const next = new Set(prev)
      if (next.has(nicheId)) {
        next.delete(nicheId)
      } else {
        next.add(nicheId)
        // Auto-select parent subtopic and topic
        setSelectedSubtopics(prevSt => {
          if (!prevSt.has(subtopicId)) {
            const nextSt = new Set(prevSt)
            nextSt.add(subtopicId)
            return nextSt
          }
          return prevSt
        })
        setSelectedTopics(prevT => {
          if (!prevT.has(topicId)) {
            const nextT = new Set(prevT)
            nextT.add(topicId)
            return nextT
          }
          return prevT
        })
      }
      return next
    })
  }

  async function handleSave() {
    if (!meetsMinimum || saving) return
    setSaving(true)

    const supabase = createClient()

    try {
      // Delete existing preferences
      await Promise.all([
        supabase.from('user_topic_preferences').delete().eq('user_id', userId),
        supabase.from('user_subtopic_preferences').delete().eq('user_id', userId),
        supabase.from('user_niche_preferences').delete().eq('user_id', userId),
      ])

      // Insert new preferences
      const inserts = []

      if (selectedTopics.size > 0) {
        inserts.push(
          supabase.from('user_topic_preferences').insert(
            [...selectedTopics].map(id => ({ user_id: userId, topic_id: id }))
          )
        )
      }

      if (selectedSubtopics.size > 0) {
        inserts.push(
          supabase.from('user_subtopic_preferences').insert(
            [...selectedSubtopics].map(id => ({ user_id: userId, subtopic_id: id }))
          )
        )
      }

      if (selectedNiches.size > 0) {
        inserts.push(
          supabase.from('user_niche_preferences').insert(
            [...selectedNiches].map(id => ({ user_id: userId, niche_id: id }))
          )
        )
      }

      await Promise.all(inserts)

      // Mark onboarding complete
      await supabase
        .from('profiles')
        .update({ onboarding_complete: true })
        .eq('id', userId)

      startTransition(() => {
        router.push('/')
        router.refresh()
      })
    } catch (err) {
      console.error('Failed to save preferences:', err)
      setSaving(false)
    }
  }

  const counterText = () => {
    const parts = []
    if (selectedTopics.size > 0) parts.push(`${selectedTopics.size} topic${selectedTopics.size !== 1 ? 's' : ''}`)
    if (selectedSubtopics.size > 0) parts.push(`${selectedSubtopics.size} subtopic${selectedSubtopics.size !== 1 ? 's' : ''}`)
    if (selectedNiches.size > 0) parts.push(`${selectedNiches.size} niche${selectedNiches.size !== 1 ? 's' : ''}`)
    if (parts.length === 0) return 'Select at least 3 topics and 12 total to continue'
    return parts.join(', ') + ` — ${totalSelected} selected`
  }

  return (
    <div className={styles.wrapper}>

      {/* ── Sticky footer with counter + CTA ── */}
      <div className={styles.footer}>
        <span className={`${styles.counter} ${meetsMinimum ? styles.counterMet : ''}`}>
          {counterText()}
          {meetsMinimum && <span className={styles.checkmark}> ✓</span>}
        </span>
        <SkuButton
          variant="lg"
          onClick={handleSave}
          disabled={!meetsMinimum || saving || isPending}
          className={`${styles.ctaBtn} ${meetsMinimum ? styles.ctaReady : ''}`}
        >
          {saving || isPending ? 'Saving your taste...' : 'Start Curling →'}
        </SkuButton>
      </div>

      {/* ── Tier 1: Topics ── */}
      <section className={styles.tier}>
        <h2 className={styles.tierLabel}>
          <span className={styles.tierNumber}>01</span>
          Topics
        </h2>
        <div className={styles.grid}>
          {topics.map(topic => (
            <SkuButton
              key={topic.id}
              latching
              pressed={selectedTopics.has(topic.id)}
              onClick={() => toggleTopic(topic.id)}
              className={styles.topicBtn}
            >
              <TopicIcon slug={topic.slug} className={styles.topicIcon} />
              {topic.name}
            </SkuButton>
          ))}
        </div>
      </section>

      {/* ── Tier 1 → Tier 2 Separator ── */}
      <div className="tier-separator" />

      {/* ── Tier 2: Subtopics (progressive reveal per topic) ── */}
      <section className={styles.tier}>
        <h2 className={styles.tierLabel}>
          <span className={styles.tierNumber}>02</span>
          Subtopics
        </h2>

        {topics.filter(t => selectedTopics.has(t.id)).length === 0 ? (
          <p className={styles.emptyHint}>
            Select a topic above to see its subtopics
          </p>
        ) : (
          <div className={styles.subtopicGroups}>
            {topics
              .filter(t => selectedTopics.has(t.id))
              .map(topic => {
                const topicSubtopics = getSubtopicsForTopic(topic.id)
                return (
                  <div key={topic.id} className={`${styles.subtopicGroup} accordion-enter`}>
                    <span className={styles.groupLabel}>
                      <TopicIcon slug={topic.slug} className={styles.groupIcon} /> {topic.name}
                    </span>
                    <div className={styles.grid}>
                      {topicSubtopics.map(st => (
                        <SkuButton
                          key={st.id}
                          latching
                          pressed={selectedSubtopics.has(st.id)}
                          onClick={() => toggleSubtopic(st.id, topic.id)}
                          variant="sm"
                        >
                          {st.name}
                        </SkuButton>
                      ))}
                    </div>
                  </div>
                )
              })}
          </div>
        )}
      </section>

      {/* ── Tier 2 → Tier 3 Separator ── */}
      <div className="tier-separator" />

      {/* ── Tier 3: Niches (progressive reveal per subtopic) ── */}
      <section className={styles.tier}>
        <h2 className={styles.tierLabel}>
          <span className={styles.tierNumber}>03</span>
          Niches
        </h2>

        {selectedSubtopics.size === 0 ? (
          <p className={styles.emptyHint}>
            Select a subtopic above to see its niches
          </p>
        ) : (
          <div className={styles.subtopicGroups}>
            {subtopics
              .filter(st => selectedSubtopics.has(st.id))
              .map(st => {
                const subtopicNiches = getNichesForSubtopic(st.id)
                if (subtopicNiches.length === 0) return null
                return (
                  <div key={st.id} className={`${styles.subtopicGroup} accordion-enter`}>
                    <span className={styles.groupLabel}>{st.name}</span>
                    <div className={styles.grid}>
                      {subtopicNiches.map(n => (
                        <SkuButton
                          key={n.id}
                          latching
                          pressed={selectedNiches.has(n.id)}
                          onClick={() => toggleNiche(n.id, st.id,
                            subtopics.find(s => s.id === st.id)?.topic_id
                          )}
                          variant="sm"
                          className={styles.nicheBtn}
                        >
                          {n.name}
                        </SkuButton>
                      ))}
                    </div>
                  </div>
                )
              })}
          </div>
        )}
      </section>

    </div>
  )
}
