# ScholarTrack – Scholarship Monitoring System

## Run the prototype

1. Open `index.html` in a browser, or use VS Code's **Live Server** extension.
2. The prototype starts with sample scholars. Register a scholar, add a grade submission, verify it, then evaluate compliance.
3. Data is saved only in the current browser using `localStorage`. It remains after refresh.

## Set up Supabase database

1. Create a free project at https://supabase.com.
2. Open **SQL Editor**, create a new query, then paste and run `supabase.sql`.
3. The database will have `scholarship_programs`, `scholars`, and `grade_submissions` tables.
4. When your teacher requires online saving, create a Supabase project URL and anon key. The next implementation step is connecting those credentials to `app.js`.

## Create the staff login and secure database

1. In Supabase, open **Authentication > Users > Add user** and create a staff email/password account.
2. Open **SQL Editor**, paste and run `security.sql`.
3. Refresh the website and sign in with the staff account.

## Implemented workflow

Register Scholar → Add Grade Submission → Verify Submission → Evaluate Compliance → View Report
