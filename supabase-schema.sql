-- ============================================================
-- CURL.FYI — COMPLETE SUPABASE SCHEMA
-- Paste this into your Supabase SQL editor and run all at once
-- ============================================================

-- ============================================================
-- EXTENSIONS
-- ============================================================
create extension if not exists "uuid-ossp";

-- ============================================================
-- TAXONOMY TABLES
-- ============================================================

create table topics (
  id uuid primary key default uuid_generate_v4(),
  name text not null,
  slug text not null unique,
  icon text, -- emoji or icon name for onboarding UI
  created_at timestamptz default now()
);

create table subtopics (
  id uuid primary key default uuid_generate_v4(),
  topic_id uuid not null references topics(id) on delete cascade,
  name text not null,
  slug text not null,
  created_at timestamptz default now(),
  unique(topic_id, slug)
);

create table niches (
  id uuid primary key default uuid_generate_v4(),
  subtopic_id uuid not null references subtopics(id) on delete cascade,
  name text not null,
  slug text not null,
  created_at timestamptz default now(),
  unique(subtopic_id, slug)
);

-- ============================================================
-- SITES TABLE
-- ============================================================

create table sites (
  id uuid primary key default uuid_generate_v4(),
  url text not null unique,
  title text not null,
  description text,
  vibe text, -- freeform vibe description for LLM matching
  thumbnail_url text, -- screenshot stored in Supabase Storage or Cloudinary
  iframe_compatible boolean default true,
  submitted_by uuid references auth.users(id) on delete set null,
  approved boolean default true, -- false for pending user submissions
  created_at timestamptz default now()
);

-- Junction tables: sites <-> taxonomy
create table site_topics (
  site_id uuid not null references sites(id) on delete cascade,
  topic_id uuid not null references topics(id) on delete cascade,
  primary key (site_id, topic_id)
);

create table site_subtopics (
  site_id uuid not null references sites(id) on delete cascade,
  subtopic_id uuid not null references subtopics(id) on delete cascade,
  primary key (site_id, subtopic_id)
);

create table site_niches (
  site_id uuid not null references sites(id) on delete cascade,
  niche_id uuid not null references niches(id) on delete cascade,
  primary key (site_id, niche_id)
);

-- ============================================================
-- USER PROFILES
-- ============================================================

create table profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  username text unique,
  avatar_url text,
  tier text not null default 'surfer', -- 'surfer' | 'shaper'
  polar_subscription_id text, -- for linking Polar.sh subscription
  has_seen_onboarding boolean default false,
  onboarding_complete boolean default false,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

-- Auto-create profile on signup
create or replace function handle_new_user()
returns trigger as $$
begin
  insert into public.profiles (id)
  values (new.id);
  return new;
end;
$$ language plpgsql security definer;

create trigger on_auth_user_created
  after insert on auth.users
  for each row execute procedure handle_new_user();

-- ============================================================
-- USER PREFERENCES
-- ============================================================

create table user_topic_preferences (
  user_id uuid not null references auth.users(id) on delete cascade,
  topic_id uuid not null references topics(id) on delete cascade,
  created_at timestamptz default now(),
  primary key (user_id, topic_id)
);

create table user_subtopic_preferences (
  user_id uuid not null references auth.users(id) on delete cascade,
  subtopic_id uuid not null references subtopics(id) on delete cascade,
  created_at timestamptz default now(),
  primary key (user_id, subtopic_id)
);

create table user_niche_preferences (
  user_id uuid not null references auth.users(id) on delete cascade,
  niche_id uuid not null references niches(id) on delete cascade,
  created_at timestamptz default now(),
  primary key (user_id, niche_id)
);

-- ============================================================
-- DISCOVERY HISTORY
-- ============================================================

create table site_views (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid not null references auth.users(id) on delete cascade,
  site_id uuid not null references sites(id) on delete cascade,
  vibe_query text, -- stores what the user typed for Vibe Curl
  viewed_at timestamptz default now()
);

create index idx_site_views_user_id on site_views(user_id);
create index idx_site_views_viewed_at on site_views(viewed_at);

-- ============================================================
-- SAVES AND FOLDERS
-- ============================================================

create table folders (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid not null references auth.users(id) on delete cascade,
  name text not null,
  parent_folder_id uuid references folders(id) on delete cascade, -- null = root folder
  created_at timestamptz default now()
);

-- Auto-create root "Saved" folder on profile creation
create or replace function handle_new_profile()
returns trigger as $$
begin
  insert into public.folders (user_id, name, parent_folder_id)
  values (new.id, 'Saved', null);
  return new;
end;
$$ language plpgsql security definer;

create trigger on_profile_created
  after insert on public.profiles
  for each row execute procedure handle_new_profile();

create table saved_sites (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid not null references auth.users(id) on delete cascade,
  site_id uuid not null references sites(id) on delete cascade,
  folder_id uuid references folders(id) on delete set null, -- null = root saved
  saved_at timestamptz default now(),
  unique(user_id, site_id, folder_id)
);

-- ============================================================
-- RATINGS
-- ============================================================

create table site_ratings (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid not null references auth.users(id) on delete cascade,
  site_id uuid not null references sites(id) on delete cascade,
  rating integer not null check (rating >= 1 and rating <= 10),
  rated_at timestamptz default now(),
  unique(user_id, site_id)
);

-- ============================================================
-- SITE OF THE DAY
-- ============================================================

create table site_of_the_day (
  id uuid primary key default uuid_generate_v4(),
  site_id uuid not null references sites(id) on delete cascade,
  date date not null unique,
  curator_note text, -- optional personal note from curator
  created_at timestamptz default now()
);

-- ============================================================
-- USER SUBMISSIONS (pending review)
-- ============================================================

create table pending_sites (
  id uuid primary key default uuid_generate_v4(),
  url text not null,
  title text not null,
  description text,
  vibe text,
  thumbnail_url text,
  iframe_compatible boolean default true,
  submitted_by uuid not null references auth.users(id) on delete cascade,
  submitted_at timestamptz default now(),
  status text not null default 'pending', -- 'pending' | 'approved' | 'rejected'
  reviewer_notes text,
  -- taxonomy selections as arrays of IDs for simplicity
  topic_ids uuid[],
  subtopic_ids uuid[],
  niche_ids uuid[]
);

-- ============================================================
-- ROW LEVEL SECURITY
-- ============================================================

-- Enable RLS on all tables
alter table profiles enable row level security;
alter table user_topic_preferences enable row level security;
alter table user_subtopic_preferences enable row level security;
alter table user_niche_preferences enable row level security;
alter table site_views enable row level security;
alter table folders enable row level security;
alter table saved_sites enable row level security;
alter table site_ratings enable row level security;
alter table pending_sites enable row level security;
alter table sites enable row level security;
alter table topics enable row level security;
alter table subtopics enable row level security;
alter table niches enable row level security;
alter table site_topics enable row level security;
alter table site_subtopics enable row level security;
alter table site_niches enable row level security;
alter table site_of_the_day enable row level security;

-- Profiles: users can only see and edit their own
create policy "Users can view own profile"
  on profiles for select using (auth.uid() = id);
create policy "Users can update own profile"
  on profiles for update using (auth.uid() = id);

-- Taxonomy: public read
create policy "Topics are publicly readable"
  on topics for select using (true);
create policy "Subtopics are publicly readable"
  on subtopics for select using (true);
create policy "Niches are publicly readable"
  on niches for select using (true);

-- Sites: approved sites are public
create policy "Approved sites are publicly readable"
  on sites for select using (approved = true);

-- Site taxonomy junctions: public read
create policy "Site topics publicly readable"
  on site_topics for select using (true);
create policy "Site subtopics publicly readable"
  on site_subtopics for select using (true);
create policy "Site niches publicly readable"
  on site_niches for select using (true);

-- Site of the day: public read
create policy "Site of the day is publicly readable"
  on site_of_the_day for select using (true);

-- User preferences: own only
create policy "Users manage own topic preferences"
  on user_topic_preferences for all using (auth.uid() = user_id);
create policy "Users manage own subtopic preferences"
  on user_subtopic_preferences for all using (auth.uid() = user_id);
create policy "Users manage own niche preferences"
  on user_niche_preferences for all using (auth.uid() = user_id);

-- Site views: own only
create policy "Users manage own site views"
  on site_views for all using (auth.uid() = user_id);

-- Folders: own only
create policy "Users manage own folders"
  on folders for all using (auth.uid() = user_id);

-- Saved sites: own only
create policy "Users manage own saved sites"
  on saved_sites for all using (auth.uid() = user_id);

-- Ratings: own only
create policy "Users manage own ratings"
  on site_ratings for all using (auth.uid() = user_id);

-- Pending sites: submitter can view own
create policy "Users can view own submissions"
  on pending_sites for select using (auth.uid() = submitted_by);
create policy "Shapers can submit sites"
  on pending_sites for insert with check (auth.uid() = submitted_by);

-- ============================================================
-- USEFUL VIEWS
-- ============================================================

-- Full site with all taxonomy
create or replace view sites_with_taxonomy as
select
  s.*,
  array_agg(distinct t.name) filter (where t.name is not null) as topic_names,
  array_agg(distinct t.id) filter (where t.id is not null) as topic_ids,
  array_agg(distinct st.name) filter (where st.name is not null) as subtopic_names,
  array_agg(distinct st.id) filter (where st.id is not null) as subtopic_ids,
  array_agg(distinct n.name) filter (where n.name is not null) as niche_names,
  array_agg(distinct n.id) filter (where n.id is not null) as niche_ids
from sites s
left join site_topics stopic on s.id = stopic.site_id
left join topics t on stopic.topic_id = t.id
left join site_subtopics sstopic on s.id = sstopic.site_id
left join subtopics st on sstopic.subtopic_id = st.id
left join site_niches sniche on s.id = sniche.site_id
left join niches n on sniche.niche_id = n.id
where s.approved = true
group by s.id;

-- Today's site of the day with full site data
create or replace view todays_site as
select
  sotd.date,
  sotd.curator_note,
  s.*
from site_of_the_day sotd
join sites s on sotd.site_id = s.id
where sotd.date = current_date
limit 1;

-- ============================================================
-- DISCOVERY FUNCTION
-- Returns one random site matching user preferences,
-- excluding recently viewed sites
-- ============================================================

create or replace function get_curl_site(
  p_user_id uuid,
  p_exclude_days integer default 30
)
returns setof sites as $$
declare
  v_site sites%rowtype;
begin
  -- Get one random site matching user preferences
  -- excluding recently viewed
  select s.* into v_site
  from sites s
  where s.approved = true
    -- matches user's topic preferences
    and exists (
      select 1 from site_topics st
      join user_topic_preferences utp
        on st.topic_id = utp.topic_id
      where st.site_id = s.id
        and utp.user_id = p_user_id
    )
    -- not viewed recently
    and s.id not in (
      select sv.site_id from site_views sv
      where sv.user_id = p_user_id
        and sv.viewed_at > now() - (p_exclude_days || ' days')::interval
    )
  order by random()
  limit 1;

  -- Fallback: if pool is empty, ignore view history
  if v_site.id is null then
    select s.* into v_site
    from sites s
    where s.approved = true
      and exists (
        select 1 from site_topics st
        join user_topic_preferences utp
          on st.topic_id = utp.topic_id
        where st.site_id = s.id
          and utp.user_id = p_user_id
      )
    order by random()
    limit 1;
  end if;

  -- Final fallback: completely random approved site
  if v_site.id is null then
    select s.* into v_site
    from sites s
    where s.approved = true
    order by random()
    limit 1;
  end if;

  return next v_site;
end;
$$ language plpgsql security definer;

-- ============================================================
-- INDEXES FOR PERFORMANCE
-- ============================================================

create index idx_sites_approved on sites(approved);
create index idx_site_topics_topic_id on site_topics(topic_id);
create index idx_site_topics_site_id on site_topics(site_id);
create index idx_site_subtopics_subtopic_id on site_subtopics(subtopic_id);
create index idx_site_niches_niche_id on site_niches(niche_id);
create index idx_subtopics_topic_id on subtopics(topic_id);
create index idx_niches_subtopic_id on niches(subtopic_id);
create index idx_user_topic_prefs_user_id on user_topic_preferences(user_id);
create index idx_folders_user_id on folders(user_id);
create index idx_saved_sites_user_id on saved_sites(user_id);
create index idx_site_ratings_user_id on site_ratings(user_id);
create index idx_pending_sites_status on pending_sites(status);
