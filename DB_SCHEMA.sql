-- PostgreSQL/Supabase MVP schema

create table identities (
  id uuid primary key default gen_random_uuid(),
  display_name text not null,
  created_at timestamptz default now()
);

create table media (
  id uuid primary key default gen_random_uuid(),
  identity_id uuid references identities(id),
  storage_key text not null,
  media_type text not null,
  sha256 text,
  created_at timestamptz default now()
);

create table analyses (
  id uuid primary key default gen_random_uuid(),
  media_id uuid references media(id),
  identity_id uuid references identities(id),
  status text not null default 'queued',
  trust_score numeric,
  risk_band text,
  created_at timestamptz default now(),
  completed_at timestamptz
);

create table signals (
  id uuid primary key default gen_random_uuid(),
  analysis_id uuid references analyses(id) on delete cascade,
  signal_name text not null,
  score numeric not null,
  severity text,
  evidence jsonb,
  created_at timestamptz default now()
);

create table findings (
  id uuid primary key default gen_random_uuid(),
  analysis_id uuid references analyses(id) on delete cascade,
  severity text not null,
  title text not null,
  explanation text not null,
  evidence jsonb
);
