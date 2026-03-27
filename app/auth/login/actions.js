'use server'

import { createClient } from '@/lib/supabase/server'

export async function login(formData) {
  const supabase = createClient()

  const { error } = await supabase.auth.signInWithPassword({
    email: formData.get('email'),
    password: formData.get('password'),
  })

  if (error) {
    return { error: error.message }
  }

  return { success: true }
}
