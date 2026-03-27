'use client'

import { useState } from 'react'
import styles from './SkuButton.module.css'

export default function SkuButton({
  children,
  onClick,
  variant = 'md',      // 'sm' | 'md' | 'lg' | 'curl'
  latching = false,    // stays pressed until clicked again
  pressed = false,     // controlled pressed state
  disabled = false,
  className = '',
  type = 'button',
  ...props
}) {
  const [internalPressed, setInternalPressed] = useState(false)

  const isPressed = latching ? pressed : internalPressed

  function handleClick(e) {
    if (disabled) return
    if (!latching) {
      setInternalPressed(true)
      setTimeout(() => setInternalPressed(false), 80)
    }
    onClick?.(e)
  }

  const sizeClass = {
    sm: 'sku-btn-sm',
    md: 'sku-btn-md',
    lg: 'sku-btn-lg',
    curl: 'sku-btn-curl',
  }[variant] || 'sku-btn-md'

  return (
    <button
      type={type}
      className={[
        'sku-btn',
        sizeClass,
        isPressed && latching ? 'latched' : '',
        !latching && internalPressed ? 'pressing' : '',
        disabled ? 'disabled' : '',
        className,
      ].filter(Boolean).join(' ')}
      onClick={handleClick}
      disabled={disabled}
      {...props}
    >
      {children}
    </button>
  )
}
