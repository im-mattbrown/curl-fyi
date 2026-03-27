/**
 * Resolves a URL by following redirects and testing variants (www/non-www).
 * Returns the final working URL, or the original if nothing resolves.
 */
export async function resolveUrl(inputUrl) {
  // Ensure the URL has a protocol
  let url = inputUrl.trim()
  if (!/^https?:\/\//i.test(url)) {
    url = 'https://' + url
  }

  // Generate variants to try
  const variants = getUrlVariants(url)

  for (const variant of variants) {
    const resolved = await tryResolve(variant)
    if (resolved) return resolved
  }

  // Nothing resolved — return the cleaned-up original
  return url
}

/**
 * Generate URL variants: original, without www, with www
 */
function getUrlVariants(url) {
  const parsed = new URL(url)
  const variants = [url]

  if (parsed.hostname.startsWith('www.')) {
    // Also try without www
    const noWww = url.replace(/^(https?:\/\/)www\./i, '$1')
    variants.push(noWww)
  } else {
    // Also try with www
    const withWww = url.replace(/^(https?:\/\/)/i, '$1www.')
    variants.push(withWww)
  }

  return variants
}

/**
 * Attempt a HEAD request, following redirects.
 * Returns the final resolved URL on success, or null on failure.
 */
async function tryResolve(url) {
  try {
    const controller = new AbortController()
    const timeout = setTimeout(() => controller.abort(), 8000)

    const res = await fetch(url, {
      method: 'HEAD',
      redirect: 'follow',
      signal: controller.signal,
      headers: {
        'User-Agent': 'curl-fyi-bot/1.0',
      },
    })

    clearTimeout(timeout)

    if (res.ok || res.status === 301 || res.status === 302 || res.status === 308) {
      // Use the final URL after redirects
      return res.url || url
    }

    return null
  } catch {
    return null
  }
}
