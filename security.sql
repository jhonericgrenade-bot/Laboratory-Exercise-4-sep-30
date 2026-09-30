-- Run AFTER creating a staff user in Supabase Authentication.
-- This removes public/anonymous access. Signed-in users can use the laboratory system.
alter table scholarship_programs enable row level security;
alter table scholars enable row level security;
alter table grade_submissions enable row level security;

create policy "signed in users manage programs"
on scholarship_programs for all to authenticated
using (true) with check (true);

create policy "signed in users manage scholars"
on scholars for all to authenticated
using (true) with check (true);

create policy "signed in users manage submissions"
on grade_submissions for all to authenticated
using (true) with check (true);
