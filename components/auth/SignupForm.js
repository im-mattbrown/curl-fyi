'use client'

import { useState } from 'react'
import { useRouter } from 'next/navigation'
import { createClient } from '@/lib/supabase/client'
import styles from './AuthForm.module.css'

export default function SignupForm() {
  const router = useRouter()
  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')
  const [confirm, setConfirm] = useState('')
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState('')
  const [sent, setSent] = useState(false)

  async function handleSubmit(e) {
    e.preventDefault()
    setError('')

    if (password !== confirm) {
      setError('Passwords do not match.')
      return
    }
    if (password.length < 8) {
      setError('Password must be at least 8 characters.')
      return
    }

    setLoading(true)

    const supabase = createClient()
    const { error: signUpError } = await supabase.auth.signUp({
      email,
      password,
      options: {
        emailRedirectTo: `${window.location.origin}/auth/callback`,
      },
    })

    setLoading(false)

    if (signUpError) {
      setError(signUpError.message)
      return
    }

    setSent(true)
  }

  if (sent) {
    return (
      <div className={styles.confirmation}>
        <div className={styles.confirmIcon}>✉</div>
        <h2 className={styles.confirmTitle}>Check your email</h2>
        <p className={styles.confirmText}>
          We sent a confirmation link to <strong>{email}</strong>.
          Click it to activate your account and start curling.
        </p>
      </div>
    )
  }

  return (
    <form className={styles.form} onSubmit={handleSubmit}>
      <div className={styles.field}>
        <label className={styles.label} htmlFor="email">Email</label>
        <input
          id="email"
          className={styles.input}
          type="email"
          value={email}
          onChange={e => setEmail(e.target.value)}
          placeholder="ex: johnny.utah@fbi.gov"
          required
          autoComplete="email"
        />
      </div>

      <div className={styles.field}>
        <label className={styles.label} htmlFor="password">Password</label>
        <input
          id="password"
          className={styles.input}
          type="password"
          value={password}
          onChange={e => setPassword(e.target.value)}
          placeholder="at least 8 characters"
          required
          autoComplete="new-password"
        />
      </div>

      <div className={styles.field}>
        <label className={styles.label} htmlFor="confirm">Confirm password</label>
        <input
          id="confirm"
          className={styles.input}
          type="password"
          value={confirm}
          onChange={e => setConfirm(e.target.value)}
          placeholder="same again"
          required
          autoComplete="new-password"
        />
      </div>

      {error && (
        <p className={styles.error}>{error}</p>
      )}

      <button
        className={`sku-btn sku-btn-lg ${styles.submitBtn}`}
        type="submit"
        disabled={loading}
      >
        {loading ? 'Creating account...' : 'Create account'}
      </button>

      <p className={styles.footer}>
        Already have an account?{' '}
        <a href="/auth/login" className={styles.link}>Sign in</a>
      </p>
    </form>
  )
}
