-- ============================================================
-- ADMIN-ONLY POLICIES FOR SITES TABLE
-- Replace YOUR_USER_ID_HERE with your actual Supabase user ID
-- Run this in the Supabase SQL editor
-- ============================================================

-- Allow admin to delete sites (broken links)
create policy "Admin can delete sites"
  on sites for delete
  using (auth.uid() = 'YOUR_USER_ID_HERE'::uuid);

-- Allow admin to update sites (fix URLs)
create policy "Admin can update sites"
  on sites for update
  using (auth.uid() = 'YOUR_USER_ID_HERE'::uuid);
