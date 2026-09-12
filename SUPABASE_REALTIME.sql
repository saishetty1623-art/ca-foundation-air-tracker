-- Run this ONCE in Supabase Dashboard -> SQL Editor.
-- Uploading this .sql file to GitHub does NOT execute it.

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
    FROM pg_publication_tables
    WHERE pubname = 'supabase_realtime'
      AND schemaname = 'public'
      AND tablename = 'tracker_state'
  ) THEN
    ALTER PUBLICATION supabase_realtime ADD TABLE public.tracker_state;
  END IF;
END $$;
