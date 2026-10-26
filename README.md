# Lakewood Lift Log

A phone-first workout tracker built around the machine floor at **Crunch Fitness Lakewood** (5815 Bellflower Blvd, Lakewood, CA 90713).

## What it does

- **Machines grouped like bumper plates** – Chest (red), Back (blue), Shoulders (green), Arms (grey), Legs & Glutes (yellow), Core (purple), Cardio (teal), HIITZone & Free Weights (brown).
- **"Now on" tracking** – during a workout the app shows the machine you're on, your target, what you did last time, and a suggested weight. Check off each set and it starts a 90 s rest timer; finish a machine and it moves you to the next.
- **Machine taken?** – swap to an alternate in the same group with one tap.
- **Your settings per machine** – save seat / pad / pin positions so you don't have to re-find them.
- **Mark what's actually there** – toggle machines "Here / Not here" and add any the list is missing. The plan auto-substitutes.
- **History** – every saved workout with sets, reps, weight and volume; sparklines of your top weight per machine.

## The plan (see `PLAN.md`)

8-week upper/lower cycle, 4 days a week (Mon Upper A, Tue Lower A, Thu Upper B, Sat Lower B), double progression: hit the top of the rep range on every set, then add 5 lb (10 lb on leg press, hack squat, glute drive, Smith). Week 4 is a deload, week 8 is a test week.

## About the machine list

Crunch doesn't publish an equipment inventory for individual clubs. The list here is the standard Crunch floor – Crunch names Life Fitness (which includes Hammer Strength) as its preferred U.S. equipment supplier – so expect a close match, then use the Machines tab to fix anything that differs at Lakewood.

## Run / host it

It's a single static file: `index.html`. No build step.

- **Locally:** open `index.html` in a browser.
- **GitHub Pages:** push this repo, then Settings → Pages → Deploy from branch → `main` / root.

When opened as a Claude artifact, data syncs to your Claude account. Anywhere else (GitHub Pages, local file) it saves in that browser's local storage.

## Files

- `index.html` – the app (built from `src/app.html`)
- `src/app.html` – app source (body content; `build.sh` wraps it into a full page)
- `PLAN.md` – the training plan in text form
