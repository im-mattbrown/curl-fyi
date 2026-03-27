'use client'

import { useState } from 'react'
import { createClient } from '@/lib/supabase/client'
import styles from './AuthForm.module.css'

export default function LoginForm() {
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState('')

  async function handleSubmit(e) {
    e.preventDefault()
    setError('')
    setLoading(true)

    const supabase = createClient()
    const { error: signInError } = await supabase.auth.signInWithPassword({
      email: e.target.email.value,
      password: e.target.password.value,
    })

    if (signInError) {
      setError(signInError.message)
      setLoading(false)
      return
    }

    window.location.href = '/'
  }

  return (
    <form className={styles.form} onSubmit={handleSubmit}>
      <div className={styles.field}>
        <label className={styles.label} htmlFor="email">Email</label>
        <input
          id="email"
          name="email"
          className={styles.input}
          type="email"
          placeholder="ex: johnny.utah@fbi.gov"
          required
          autoComplete="email"
        />
      </div>

      <div className={styles.field}>
        <label className={styles.label} htmlFor="password">Password</label>
        <input
          id="password"
          name="password"
          className={styles.input}
          type="password"
          placeholder="your password"
          required
          autoComplete="current-password"
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
        {loading ? 'Signing in...' : 'Sign in'}
      </button>

      <p className={styles.footer}>
        Don&apos;t have an account?{' '}
        <a href="/auth/signup" className={styles.link}>Sign up</a>
      </p>
    </form>
  )
}
