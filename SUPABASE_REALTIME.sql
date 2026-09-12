-- Run this once in Supabase SQL Editor.
-- It allows tracker_state changes to be delivered through Supabase Realtime.
alter publication supabase_realtime add table public.tracker_state;
