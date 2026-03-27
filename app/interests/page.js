import { createClient } from '@/lib/supabase/server'
import { redirect } from 'next/navigation'
import InterestsClient from '@/components/interests/InterestsClient'
import styles from './interests.module.css'

export const metadata = {
  title: 'Choose your interests — curl.fyi',
}

export default async function InterestsPage() {
  const supabase = createClient()

  const { data: { user } } = await supabase.auth.getUser()
  if (!user) redirect('/auth/signup')

  // Load full taxonomy
  const { data: topics } = await supabase
    .from('topics')
    .select('*')
    .order('name')

  const { data: subtopics } = await supabase
    .from('subtopics')
    .select('*')
    .order('name')

  const { data: niches } = await supabase
    .from('niches')
    .select('*')
    .order('name')

  // Load existing preferences (for returning users)
  const { data: topicPrefs } = await supabase
    .from('user_topic_preferences')
    .select('topic_id')
    .eq('user_id', user.id)

  const { data: subtopicPrefs } = await supabase
    .from('user_subtopic_preferences')
    .select('subtopic_id')
    .eq('user_id', user.id)

  const { data: nichePrefs } = await supabase
    .from('user_niche_preferences')
    .select('niche_id')
    .eq('user_id', user.id)

  const existingPrefs = {
    topics: (topicPrefs || []).map(p => p.topic_id),
    subtopics: (subtopicPrefs || []).map(p => p.subtopic_id),
    niches: (nichePrefs || []).map(p => p.niche_id),
  }

  return (
    <div className={styles.page}>
      <div className={styles.header}>
        <div className={styles.logo}>
          <span className={styles.logoText}>curl</span>
          <span className={styles.logoDomain}>.fyi</span>
        </div>
        <p className={styles.subtitle}>
          What are you into? Press the buttons to choose your interests.
        </p>
      </div>

      <InterestsClient
        topics={topics || []}
        subtopics={subtopics || []}
        niches={niches || []}
        existingPrefs={existingPrefs}
        userId={user.id}
      />
    </div>
  )
}
