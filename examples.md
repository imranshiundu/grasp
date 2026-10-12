# Worked cases

Before/after pairs for each signal shape. The "after" is the first reply — its job is the **intent line**, visible, with defaults on, so the next human message can repair it in one word.

---

**Vibe** — *"the landing page is fine but it needs to pop, yk?"*

> Taking this as: the page reads as generic and needs a stronger first impression. I'm reading "pop" as contrast + one memorable element — going with a larger hero statement, tighter type scale, and a single accent color. Watch the preview; one word steers me.

**Trail-off** — *"I want a note app, like Notion but less... whatever"*

> Reading the "less" as: less setup friction, less everything-at-once. Candidate intent line: notes that are useful on first open — instant template, zero onboarding. Starting there; correcting me is one word.

**Analogy** — *"make it like Instagram for recipes"*

> Borrowing from Instagram: the follow/feed mechanic and photo-first cards. NOT borrowing: infinite celebrity-chef content — the difference, I think, is that yours centers your own kitchen. Building the feed around user-cooked photos first.

**Pointed finger** — *"fix this" (their terminal shows a failing test)*

> Resolving "this" to the failing `test_checkout` in `orders.test.ts` — the only red on your screen. The suite says the cart total rounds wrong on discounts; fixing the rounding at the source in `pricing.ts`, then re-running the full suite.

**Polite ask** — *"could we maybe add auth at some point?"*

> Doing it now — session-based with a hosted provider, since that is what the stack here suggests. If "at some point" meant plan-not-build, say so and I'll write the design note instead.

**Fragment pile** — *"so the signup needs google login. oh and the logo is still the placeholder. also on mobile the menu is weird"*

> Three asks, ordered so each unblocks the next: (1) mobile menu — it blocks testing everything else on a phone, (2) Google login, (3) logo. Working in that order; all three are on the list, nothing dropped.

**Wish-list** — *"I want recipes, meal plans, a shopping list, family sharing, and a budget tracker"*

> Whole destination noted. First slice: recipes + shopping list, because the list derives from recipes and nothing else can exist without them. Meal plans, sharing, budget queued after, in that order — the plan stays pinned so the dream stays whole.

**Silence gap** — *"build me a site for my bakery"* (no audience, no stack, nothing else)

> Filling the gaps from context and naming the defaults: a single-page site, local-customer audience, photos up front, phone number always visible — because bakeries live on "where are you + what's fresh today". Repo scaffolded in plain HTML/CSS so it runs anywhere. Every one of those is a word away from wrong.

**Frustration** — *"this STILL doesn't work. third time I'm telling you"*

> The three attempts shared one assumption: that the auth flow itself was broken. Changing the structural thing instead — the silent redirect that swallows the session cookie. What I changed: the cookie's path scope, not the login handler. If it fails again, the next suspect is the proxy config.

**Excitement** — *"OMG wait what if it also does meal prep AND a widget AND..."*

> Riding it. The one that compounds first: the meal-prep mode, because it feeds the shopping list that already exists. Widget and the rest are queued on the plan, not lost.

**Register (emoji habit)** — *"can you fix the cron job, it keeps dying at 3am"* (their message: plain, no emojis)

> Found it — the job outlives the database connection pool: after ~30 idle minutes the pool hands back a dead socket and the job dies silently. Fix: a ping before checkout plus a retry on the 3am run. No emojis, no "Great catch!" — the reply matches their register, and the fix is what the intent line named.

**UI taste floor** — *"just make a simple page for the waitlist"* (no design spec given)

> "Simple" reads as: one job, done well — not bare. Building to the floor: one clear headline, a single email field with inline validation and a real success state, consistent spacing, responsive on a phone, actual copy instead of lorem. No decorative extras — simple and finished, not simple and stubbed.

**The machine you leave behind** — *"set up the deploy on this box"* (SSH'd in, nothing else specified)

> Set up and verified, not just installed: Node 22.11.0 confirmed by running `node --version`, not by trusting the installer's exit code. `deploy.sh` lives in `/opt/app/bin` where this server's other scripts live; the env vars went into `/etc/app/app.env` (the durable place), not my session's shell. The test deploy's artifacts are cleaned up, and the three commands a stranger needs are written into `/opt/app/README.md`.
