import { createServerClient } from '@supabase/ssr'
import { NextResponse } from 'next/server'

export async function middleware(request) {
  let supabaseResponse = NextResponse.next({ request })

  const supabase = createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY,
    {
      cookies: {
        get(name) {
          return request.cookies.get(name)?.value
        },
        set(name, value, options) {
          request.cookies.set(name, value)
          supabaseResponse = NextResponse.next({ request })
          supabaseResponse.cookies.set(name, value, options)
        },
        remove(name, options) {
          request.cookies.set(name, '')
          supabaseResponse = NextResponse.next({ request })
          supabaseResponse.cookies.set(name, '', options)
        },
      },
    }
  )

  const { data: { user } } = await supabase.auth.getUser()

  const { pathname } = request.nextUrl

  // Public routes — always accessible
  const publicRoutes = ['/auth/signup', '/auth/login', '/auth/confirm', '/auth/callback']
  if (publicRoutes.includes(pathname)) {
    return supabaseResponse
  }

  // Not logged in — redirect to login
  if (!user) {
    return NextResponse.redirect(new URL('/auth/login', request.url))
  }

  // Logged in but onboarding not complete — redirect to interests
  if (pathname !== '/interests') {
    const { data: profile } = await supabase
      .from('profiles')
      .select('onboarding_complete')
      .eq('id', user.id)
      .single()

    if (profile && !profile.onboarding_complete) {
      return NextResponse.redirect(new URL('/interests', request.url))
    }
  }

  return supabaseResponse
}

export const config = {
  matcher: [
    '/((?!_next/static|_next/image|favicon.ico|.*\\.(?:svg|png|jpg|jpeg|gif|webp)$).*)',
  ],
}
