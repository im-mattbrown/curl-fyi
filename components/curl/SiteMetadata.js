'use client'

import { useState, useEffect } from 'react'
import { createClient } from '@/lib/supabase/client'
import styles from './SiteMetadata.module.css'

export default function SiteMetadata({
  site,
  loading,
  userRating,
  isSaved,
  onRate,
  onSave,
  onTagClick,
  activeTag,
  userId,
  onDelete,
}) {
  const [folders, setFolders] = useState([])
  const [showFolderMenu, setShowFolderMenu] = useState(false)
  const [showNewFolder, setShowNewFolder] = useState(false)
  const [newFolderName, setNewFolderName] = useState('')
  const [creatingFolder, setCreatingFolder] = useState(false)
  const [showUrlEdit, setShowUrlEdit] = useState(false)
  const [editedUrl, setEditedUrl] = useState('')
  const [updatingUrl, setUpdatingUrl] = useState(false)
  const supabase = createClient()

  useEffect(() => {
    async function loadFolders() {
      const { data } = await supabase
        .from('folders')
        .select('*')
        .eq('user_id', userId)
        .order('name')
      setFolders(data || [])
    }
    loadFolders()
  }, [userId])

  async function handleCreateFolder() {
    if (!newFolderName.trim() || creatingFolder) return
    setCreatingFolder(true)

    const { data, error } = await supabase
      .from('folders')
      .insert({
        user_id: userId,
        name: newFolderName.trim(),
        parent_folder_id: null,
      })
      .select()
      .single()

    if (!error && data) {
      // Save the site to the new folder
      onSave(data.id)
      setFolders(prev => [...prev, data])
      setNewFolderName('')
      setShowNewFolder(false)
      setShowFolderMenu(false)
    }
    setCreatingFolder(false)
  }

  async function handleUpdateUrl() {
    if (!editedUrl.trim() || editedUrl === site.url || updatingUrl) return
    setUpdatingUrl(true)

    const { error } = await supabase
      .from('sites')
      .update({ url: editedUrl.trim() })
      .eq('id', site.id)

    if (!error) {
      site.url = editedUrl.trim()
      setShowUrlEdit(false)
    }
    setUpdatingUrl(false)
  }

  if (loading) {
    return (
      <div className={styles.meta}>
        <div className={`skeleton ${styles.skelTitle}`} />
        <div className={`skeleton ${styles.skelUrl}`} />
        <div className={styles.skelTags}>
          {[1,2,3].map(i => (
            <div key={i} className={`skeleton ${styles.skelTag}`} />
          ))}
        </div>
        <div className={`skeleton ${styles.skelDesc}`} />
        <div className={`skeleton ${styles.skelDesc}`} style={{width:'80%'}} />
      </div>
    )
  }

  if (!site) return null

  const topicNames = site.topic_names || []
  const subtopicNames = site.subtopic_names || []
  const nicheNames = site.niche_names || []

  const displayUrl = site.url
    .replace(/^https?:\/\//, '')
    .replace(/\/$/, '')

  return (
    <div className={styles.meta}>

      {/* Title */}
      <h1 className={styles.title}>{site.title}</h1>

      {/* URL */}
      <a
        href={site.url}
        target="_blank"
        rel="noopener noreferrer"
        className="url-display"
      >
        {displayUrl}
      </a>

      {/* Tags */}
      <div className={styles.tags}>
        {topicNames.map(name => (
          <button
            key={name}
            className={`tag tag-topic ${activeTag?.name === name ? 'active' : ''}`}
            onClick={() => onTagClick({ type: 'topic', name })}
            title={`Filter by ${name}`}
          >
            {name}
          </button>
        ))}
        {subtopicNames.map(name => (
          <button
            key={name}
            className={`tag tag-subtopic ${activeTag?.name === name ? 'active' : ''}`}
            onClick={() => onTagClick({ type: 'subtopic', name })}
            title={`Filter by ${name}`}
          >
            {name}
          </button>
        ))}
        {nicheNames.map(name => (
          <button
            key={name}
            className={`tag tag-niche ${activeTag?.name === name ? 'active' : ''}`}
            onClick={() => onTagClick({ type: 'niche', name })}
            title={`Filter by ${name}`}
          >
            {name}
          </button>
        ))}
      </div>

      {/* Separator */}
      <div className={styles.divider} />

      {/* Description */}
      {site.description && (
        <p className={styles.description}>{site.description}</p>
      )}

      {/* Vibe line */}
      {site.vibe && (
        <p className={styles.vibe}>"{site.vibe}"</p>
      )}

      {/* Separator */}
      <div className={styles.divider} />

      {/* Rating */}
      <div className={styles.ratingSection}>
        <span className={styles.ratingLabel}>Rate this site</span>
        <div className={styles.ratingDots}>
          {Array.from({ length: 10 }, (_, i) => i + 1).map(n => (
            <button
              key={n}
              className={`${styles.dot} ${userRating >= n ? styles.dotFilled : ''}`}
              onClick={() => onRate(n)}
              title={`Rate ${n}/10`}
              aria-label={`Rate ${n} out of 10`}
            />
          ))}
        </div>
        {userRating && (
          <span className={styles.ratingValue}>{userRating}/10</span>
        )}
      </div>

      {/* Save */}
      <div className={styles.saveSection}>
        <button
          className={`sku-btn sku-btn-md ${styles.saveBtn} ${isSaved ? styles.saveBtnSaved : ''}`}
          onClick={() => {
            if (isSaved) {
              onSave(null) // unsave
              setShowFolderMenu(false)
            } else {
              onSave(null) // save to root
            }
          }}
        >
          {isSaved ? '✓ Saved' : '+ Save to Collection'}
        </button>

        {isSaved && (
          <div className={styles.folderSection}>
            <button
              className={styles.folderToggle}
              onClick={() => setShowFolderMenu(m => !m)}
            >
              Move to folder ▾
            </button>
            {showFolderMenu && (
              <div className={styles.folderMenu}>
                {folders.map(folder => (
                  <button
                    key={folder.id}
                    className={styles.folderOption}
                    onClick={() => {
                      onSave(folder.id)
                      setShowFolderMenu(false)
                    }}
                  >
                   <span className={styles.flex}>
                   <img
      src={`/images/icons/folder.svg`}
      alt=""
      className={styles.mr}
      width={20}
      height={20}
    /> {folder.name}</span> 
                  </button>
                ))}

                {!showNewFolder ? (
                  <button
                    className={`${styles.folderOption} ${styles.newFolderOption}`}
                    onClick={() => setShowNewFolder(true)}
                  >
                    + New folder
                  </button>
                ) : (
                  <div className={styles.newFolderRow}>
                    <input
                      type="text"
                      value={newFolderName}
                      onChange={e => setNewFolderName(e.target.value)}
                      placeholder="Folder name"
                      className={styles.newFolderInput}
                      autoFocus
                      onKeyDown={e => {
                        if (e.key === 'Enter') handleCreateFolder()
                        if (e.key === 'Escape') {
                          setShowNewFolder(false)
                          setNewFolderName('')
                        }
                      }}
                    />
                    <button
                      className={styles.newFolderBtn}
                      onClick={handleCreateFolder}
                      disabled={!newFolderName.trim() || creatingFolder}
                    >
                      {creatingFolder ? '...' : 'Add'}
                    </button>
                  </div>
                )}
              </div>
            )}
          </div>
        )}
      </div>

      {/* Delete broken link */}
      <button
        className={styles.deleteBtn}
        onClick={() => {
          if (confirm('Delete this site from the database?')) {
            onDelete()
          }
        }}
      >
        Delete broken link
      </button>

      {/* Update URL */}
      {!showUrlEdit ? (
        <button
          className={styles.deleteBtn}
          onClick={() => {
            setEditedUrl(site.url)
            setShowUrlEdit(true)
          }}
        >
          Update URL
        </button>
      ) : (
        <div className={styles.urlEditRow}>
          <input
            type="text"
            value={editedUrl}
            onChange={e => setEditedUrl(e.target.value)}
            className={styles.urlEditInput}
            autoFocus
            onKeyDown={e => {
              if (e.key === 'Enter') handleUpdateUrl()
              if (e.key === 'Escape') setShowUrlEdit(false)
            }}
          />
          <button
            className={styles.newFolderBtn}
            onClick={handleUpdateUrl}
            disabled={!editedUrl.trim() || editedUrl === site.url || updatingUrl}
          >
            {updatingUrl ? '...' : 'Save'}
          </button>
          <button
            className={styles.cancelUrlBtn}
            onClick={() => setShowUrlEdit(false)}
          >
            ✕
          </button>
        </div>
      )}

    </div>
  )
}
