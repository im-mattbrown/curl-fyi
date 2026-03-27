import LoginForm from '@/components/auth/LoginForm'
import ShorelineWaves from '@/components/auth/ShorelineWaves'
import styles from '../signup/signup.module.css'

export const metadata = {
  title: 'Sign in — curl.fyi',
}

export default function LoginPage() {
  return (
    <div className={styles.page}>
      <div className={styles.background} />

      <ShorelineWaves className={styles.waves} />

      <div className={styles.card}>
        <div className={styles.logo}>
          <span className={styles.logoText}>curl</span>
          <span className={styles.logoDomain}>.fyi</span>
        </div>
        <p className={styles.tagline}>surf the web again</p>
        <LoginForm />
      </div>
    </div>
  )
}
