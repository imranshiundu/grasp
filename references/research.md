# Research: how humans speak, and what agents must do about it

The evidence base behind GRASP. Every claim carries an evidence label: **VERIFIED** (source fetched this project, quote or fact traceable to it) or **ASSUMED** (inference from reputation/memory; fetch receipts attached where attempts failed). Written for contributors; the runtime skill is `SKILL.md` and `references/signals.md`.

## Finding 1 — A messy message is still a cooperative act — VERIFIED

Grice's cooperative principle: listeners assume speakers are trying to contribute usefully, and interpret accordingly — even when the surface of the utterance looks broken. When a maxim is *flouted* ("make it pop", "it's raining" as an answer to "tennis?"), the listener recovers the **implicature** — the meaning carried by what was *not* said. Scalar implicature generalizes this: the listener assumes the strongest claim consistent with the words.

**Implication for agents:** a vague prompt is not a bad prompt; it is a flouted maxim with real intent underneath. "Make it pop" +> some concrete, nameable design dissatisfaction the human cannot yet articulate.

## Finding 2 — Vagueness is a feature, not noise — VERIFIED

Vague-language linguistics (Channell 1994; Trappes-Lomax 2007, via the *Vague language* literature): hedges, approximators, and placeholders ("sort of", "and stuff", "whatever") are deliberate resources — used for tension management, self-protection, and approximating what the speaker cannot yet put words to.

**Implication:** vagueness marks where the human's words ran out, not where their standards end. The trail-off is a dig site; offer completions there rather than demanding precision.

## Finding 3 — Humans omit the obvious, on purpose — VERIFIED

**Common ground** (Stalnaker 1978, via the linguistics literature): conversation runs on shared assumed-true propositions; speakers are licensed to omit anything they treat as established. Conversation analysis adds **recipient design** (Sacks): speakers "try to judge what referents their recipients will understand, and design their speech with that in mind."

**Implication:** omitted details are not missing data — they are a compliment. The human designed the message for an agent they believed could see the repo, the screenshot, the earlier turns. Read the environment; the omissions resolve from where the human thinks you are standing.

## Finding 4 — Humans point, they don't name — VERIFIED

**Deixis** (Fillmore; Levinson): "this", "that", "it", "here" are context-dependent pointers; *gestural* deixis is unresolvable without perceiving the human's situation, and the **deictic center** is the speaker's vantage point.

**Implication:** "fix this" is complete from the human's seat. Adopt their deictic center: resolve pointers against the open file, the attached image, the last failing test.

## Finding 5 — Conversation survives by repair, and self-repair is the cheap kind — VERIFIED

Conversation analysis (Sacks, Schegloff & Jefferson; the repair organization): repair is a **"self-righting mechanism in social interaction"**; participants "prefer self repair, by the speaker of the trouble source, over other repair."

**Implication for agent design, sharpened in round 2:** stating your interpretation invites the human to repair *themselves* in one word — the preferred, cheap form. Firing open questions forces *other-initiated* repair — the more expensive form. This is the theoretical engine behind "state, don't interrogate": it is not just politeness, it is mechanically cheaper repair.

## Finding 6 — Requests come in indirect clothing — VERIFIED

Politeness theory (Brown & Levinson, via *Politeness theory*): the **off-record (indirect)** strategy "express[es] something general or different than the speaker's true meaning and relies on the hearer's interpretation to have the speaker's purpose get conveyed." Canonical example: "It's cold in here" — the expected response is closing the window, and the hearer who answers "Yes, it is" without acting has failed the exchange. **Negative politeness** produces the hedges and question-forms ("Could you possibly...") that wrap commands.

**Implication:** "could we maybe add auth?" is an off-record request. Mode-of-speech is a weak signal; goal, stakes, and reversibility are the strong ones. Caveat — politeness strategies are cross-culturally variable (the literature disputes universality), so treat indirectness as a probability, never a certainty.

## Finding 7 — Novices cannot prompt, and blame themselves — ASSUMED

Zamfirescu-Pereira et al., *Why Johnny Can't Prompt* (CHI 2023, doi:10.1145/3544548.3581403): non-experts speak to LLMs like people, iterate poorly, cannot diagnose failures, and internalize fault.

**Evidence status:** the abstract was never fetched — ACM returned **403**, Semantic Scholar returned **429**, arXiv title search returned **0 results**. The characterization above is from professional reputation of the paper, not from its text. Treat as directionally reliable, unquoted.

**Implication (holds regardless):** the agent owns the comprehension burden. Never lecture, quiz, or return a form.

## Finding 8 — LLMs guess one interpretation and run — VERIFIED

- Zhang, Knox & Choi (ICLR 2025, arXiv:2410.13788): "Existing LLMs often respond by **presupposing a single interpretation** of such ambiguous requests, **frustrating users who intended a different interpretation**." Their fix trains models to ask **when** it matters and to "directly answer the question when clarification is unnecessary."
- CLAMBER (ACL 2024, arXiv:2405.12063): current LLMs show "limited practical utility in identifying and clarifying ambiguous user queries"; CoT/few-shot prompting "may result in **overconfidence**."
- Wu (MAPS 2023, arXiv:2308.13507): clarifying questions "increase confidence in generated code"; "unclear intent specification" is a named core challenge.

**Implication:** GRASP's two hardest moves — the guard against confident over-inference, and ask-only-when-expensive — are both documented needs, not stylistic choices.

## Finding 9 — Underspecification is common and measurably costly — VERIFIED

- Huang, Barlacchi & Pezzelle (arXiv:2602.11938): **16% to over 50%** of questions in widely used QA benchmarks are underspecified, and "LLMs perform significantly worse on them"; rewriting them into specified variants lifts performance.
- Pecher et al. (arXiv:2602.04297): much of observed prompt sensitivity is attributable to **prompt underspecification** — underspecified prompts show higher performance variance.

**Implication:** the mumble problem is not an edge case; it is a large fraction of real input. And un-recovered underspecification has a measurable accuracy cost — the stakes behind Finding 5's repair discipline.

## Finding 10 — Agent doctrine already leans this way — VERIFIED

Anthropic's *Building effective agents*: agents "begin their work with either a command from, or interactive discussion with, the human user"; core principles are simplicity and **transparency**; humans stay in the loop at checkpoints and blockers. Anthropic's prompting guidance: *when intent is unclear, infer the most useful likely action and proceed, discovering missing details with tools instead of guessing.*

**Implication:** GRASP operationalizes existing doctrine at the input boundary: discussion is where intent is recovered; the stated interpretation is the transparency.

## The synthesis (what GRASP is)

| Human speech is... | ...so the agent does |
|---|---|
| A cooperative act with buried implicature | Assume intent exists; dig for it |
| Deliberately vague where words run out | Treat trail-offs as dig sites; offer completions |
| Silent about the "obvious" — by recipient design | Read the environment for omitted common ground |
| Full of pointers, not names | Resolve deixis from shared context |
| Robust only via cheap repair | State interpretations; invite self-repair; correct on the next turn |
| Off-record: requests in indirect clothing | Weigh stakes and reversibility over mode-of-speech |
| Burden-freely lazy — by right | Never lecture, quiz, or demand prompt engineering |
| ...and LLMs mishandle this by default | Guard against presupposing one interpretation; ask only when a wrong guess is expensive |

## Sources

Status labels: **fetched** (retrieved and read this project) / **unfetched** (receipts of failed attempts attached).

- Grice, P. (1975). *Logic and Conversation* — via *Cooperative principle* & *Implicature* (Wikipedia) — fetched
- Channell, J. (1994). *Vague Language*; Trappes-Lomax (2007) — via *Vague language* (Wikipedia) — fetched
- Stalnaker, R. (1978). *Assertion* — via *Common ground (linguistics)* (Wikipedia) — fetched
- Sacks, Schegloff & Jefferson; repair organization & recipient design — via *Conversation analysis* (Wikipedia) — fetched (round 2)
- Brown & Levinson, politeness strategies — via *Politeness theory* (Wikipedia) — fetched (round 2)
- Fillmore; Levinson, deixis — via *Deixis* (Wikipedia) — fetched
- Zhang, Knox & Choi (2025), arXiv:2410.13788 — fetched (arXiv API, round 2)
- Zhang et al., CLAMBER (2024), arXiv:2405.12063 — fetched (arXiv API, round 2)
- Wu (2023), arXiv:2308.13507 — fetched (arXiv API, round 2)
- Huang, Barlacchi & Pezzelle (2026), arXiv:2602.11938 — fetched (arXiv API, round 2)
- Pecher et al. (2026), arXiv:2602.04297 — fetched (arXiv API, round 2)
- Anthropic, *Building effective agents*; *Prompting best practices* — fetched
- Zamfirescu-Pereira et al. (2023), *Why Johnny Can't Prompt*, doi:10.1145/3544548.3581403 — **unfetched** (ACM 403; Semantic Scholar 429; arXiv 0 results); claims labeled ASSUMED (Finding 7)
