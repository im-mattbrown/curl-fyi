'use client'

import { useState } from 'react'
import { useRouter } from 'next/navigation'
import { createClient } from '@/lib/supabase/client'
import styles from './ProfileClient.module.css'

export default function ProfileClient({ user, folders, savedSites }) {
  const router = useRouter()
  const supabase = createClient()

  const [showNewFolderInput, setShowNewFolderInput] = useState(false)
  const [newFolderName, setNewFolderName] = useState('')
  const [creating, setCreating] = useState(false)
  const [activeFolder, setActiveFolder] = useState(null)

  // Group saved sites by folder_id
  const sitesByFolder = {}
  for (const ss of savedSites) {
    const fid = ss.folder_id || 'root'
    if (!sitesByFolder[fid]) sitesByFolder[fid] = []
    sitesByFolder[fid].push(ss)
  }

  function getSitesForFolder(folderId) {
    return sitesByFolder[folderId] || []
  }

  // Get up to 4 thumbnail URLs for a folder preview grid
  function getFolderThumbnails(folderId) {
    const sites = getSitesForFolder(folderId)
    return sites
      .slice(0, 4)
      .map(ss => ss.sites?.thumbnail_url)
      .filter(Boolean)
  }

  async function handleCreateFolder() {
    if (!newFolderName.trim() || creating) return
    setCreating(true)

    const { error } = await supabase.from('folders').insert({
      user_id: user.id,
      name: newFolderName.trim(),
      parent_folder_id: null,
    })

    if (!error) {
      setNewFolderName('')
      setShowNewFolderInput(false)
      router.refresh()
    }
    setCreating(false)
  }

  // Get all sites for a folder (including root saves for the default "Saved" folder)
  function getAllSitesForFolder(folder) {
    const folderSites = getSitesForFolder(folder.id)
    if (folder.name === 'Saved' && !folder.parent_folder_id) {
      return [...folderSites, ...getSitesForFolder('root')]
    }
    return folderSites
  }

  return (
    <div className={styles.wrapper}>
      <a href="/" className={styles.backLink}>← Back to curl</a>

      <div className={styles.grid}>
        {/* Render each folder as a square card */}
        {folders.map(folder => {
          const siteCount = getSitesForFolder(folder.id).length
          const rootSiteCount = getSitesForFolder('root').length
          // Include root (unsorted) saves in the default "Saved" folder count
          const totalCount = folder.name === 'Saved' && !folder.parent_folder_id
            ? siteCount + rootSiteCount
            : siteCount
          const thumbnails = getFolderThumbnails(folder.id)

          return (
            <div
              key={folder.id}
              className={styles.folderCard}
              onClick={() => setActiveFolder(folder)}
            >
              <div className={styles.thumbnailGrid}>
                {thumbnails.length > 0 ? (
                  thumbnails.map((url, i) => (
                    <div key={i} className={styles.thumbSlot}>
                      <img src={url} alt="" className={styles.thumbImg} />
                    </div>
                  ))
                ) : (
                  <div className={styles.emptyPreview}>
                    <span className={styles.folderEmoji}>📁</span>
                  </div>
                )}
              </div>

              <div className={styles.folderInfo}>
                <span className={styles.folderName}>{folder.name}</span>
                <span className={styles.siteCount}>
                  {totalCount} {totalCount === 1 ? 'site' : 'sites'}
                </span>
              </div>
            </div>
          )
        })}

        {/* "Add a folder" card */}
        {!showNewFolderInput ? (
          <button
            className={`${styles.folderCard} ${styles.addCard}`}
            onClick={() => setShowNewFolderInput(true)}
          >
            <div className={styles.addIconWrap}>
              <span className={styles.addIcon}>+</span>
            </div>
            <div className={styles.folderInfo}>
              <span className={styles.folderName}>Add a folder</span>
            </div>
          </button>
        ) : (
          <div className={`${styles.folderCard} ${styles.addCard}`}>
            <div className={styles.newFolderForm}>
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
                    setShowNewFolderInput(false)
                    setNewFolderName('')
                  }
                }}
              />
              <div className={styles.newFolderActions}>
                <button
                  className={styles.createBtn}
                  onClick={handleCreateFolder}
                  disabled={!newFolderName.trim() || creating}
                >
                  {creating ? 'Creating...' : 'Create'}
                </button>
                <button
                  className={styles.cancelBtn}
                  onClick={() => {
                    setShowNewFolderInput(false)
                    setNewFolderName('')
                  }}
                >
                  Cancel
                </button>
              </div>
            </div>
          </div>
        )}
      </div>

      {/* Folder modal */}
      {activeFolder && (
        <div
          className={styles.overlay}
          onClick={() => setActiveFolder(null)}
        >
          <div
            className={styles.modal}
            onClick={e => e.stopPropagation()}
          >
            <div className={styles.modalHeader}>
              <h2 className={styles.modalTitle}>{activeFolder.name}</h2>
              <button
                className={styles.modalClose}
                onClick={() => setActiveFolder(null)}
              >
                ✕
              </button>
            </div>

            <div className={styles.modalBody}>
              {getAllSitesForFolder(activeFolder).length === 0 ? (
                <p className={styles.modalEmpty}>
                  No saved sites in this folder yet
                </p>
              ) : (
                <div className={styles.siteList}>
                  {getAllSitesForFolder(activeFolder).map(ss => (
                    <a
                      key={ss.id}
                      href={ss.sites?.url}
                      target="_blank"
                      rel="noopener noreferrer"
                      className={styles.siteCard}
                    >
                      {ss.sites?.thumbnail_url ? (
                        <img
                          src={ss.sites.thumbnail_url}
                          alt={ss.sites?.title}
                          className={styles.siteThumb}
                        />
                      ) : (
                        <div className={styles.siteThumbEmpty}>
                          <span>◈</span>
                        </div>
                      )}
                      <div className={styles.siteInfo}>
                        <span className={styles.siteTitle}>
                          {ss.sites?.title || 'Untitled'}
                        </span>
                        <span className={styles.siteUrl}>
                          {ss.sites?.url?.replace(/^https?:\/\//, '').replace(/\/$/, '')}
                        </span>
                      </div>
                    </a>
                  ))}
                </div>
              )}
            </div>
          </div>
        </div>
      )}
    </div>
  )
}
