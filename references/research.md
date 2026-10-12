# Research: how humans speak, and what agents must do about it

The evidence base behind GRASP. Distilled from pragmatics, conversation analysis, and prompting/agent literature (sources at the bottom). Written for contributors; the runtime skill is `SKILL.md` and `references/signals.md`.

## Finding 1 — A messy message is still a cooperative act

Grice's cooperative principle: listeners assume speakers are trying to contribute usefully, and interpret accordingly — even when the surface of the utterance looks broken. When a maxim is *flouted* ("make it pop", "it's raining" as an answer to "tennis?"), the listener does not conclude the speaker is useless; they recover the **implicature** — the meaning carried by what was *not* said.

**Implication for agents:** a vague prompt is not a bad prompt. It is a flouted maxim with the real intent riding underneath. The failure mode to avoid is treating the surface as the request. The target behaviour is recovering the implicature: "make it pop" +> some concrete, nameable design dissatisfaction the human cannot yet articulate.

## Finding 2 — Vagueness is a feature, not noise

Linguistics of **vague language** (Channell 1994; Trappes-Lomax 2007): hedges, approximators, and placeholders ("sort of", "and stuff", "whatever") are deliberate resources. People are vague on purpose: to manage tension, to protect themselves, and above all to *approximate something they cannot yet put words to*.

**Implication:** vagueness usually marks the point where the human has run out of words, not the point where they stopped caring. The trail-off ("yk... whatever") is a location marker: dig there, and offer completions rather than demanding precision.

## Finding 3 — Humans only say what is not already obvious

**Common ground** theory (Stalnaker 1978; Clark & Brennan): conversation runs on a shared set of assumed-true propositions. Speakers are licensed to omit anything they treat as established — that is exactly why humans leave out goals, audiences, and constraints: from their seat, those are already in the room.

**Implication:** what is missing from the message is discoverable, not unknowable. The omitted details are the ones the human believes the shared context already carries — the open repo, the screenshot, the previous turn. Read the environment to find what was "already obvious".

## Finding 4 — Humans point, they don't name

**Deixis** (Fillmore; Levinson): natural language is full of context-dependent pointers — "this", "that", "it", "here", "now". Gestural deixis ("fix *this*") is unresolvable without perceiving the human's situation; symbolic deixis resolves from shared context. The **deictic center** is the speaker's vantage point — their screen, their goal, their now.

**Implication:** "fix this" is a completed request *from the human's point of view* — they pointed at something they can see. The agent's job is to adopt the human's deictic center: resolve the pointer from the open file, the attached image, the last failing test.

## Finding 5 — Conversation survives by repair, not by first-shot perfection

Conversation analysis (Schegloff, Jefferson & Sacks 1977): every conversation has a repair system — clarification requests, reformulations, third-turn confirmations. Human communication is robust *because correction is cheap*, not because first drafts are perfect.

**Implication for agent design:** do not hold the turn hostage to an interrogation. Take the best-guess action with the interpretation **stated visibly**, so the human can correct with one word. Cheap repair beats expensive clarification. This is the evaluator-optimizer pattern from Anthropic's agent guidance, applied at conversational granularity.

## Finding 6 — Casual phrasing hides action-intent

Anthropic's own prompting guidance documents that "can you suggest some changes?" is often meant as "change it" — humans use politeness and question-forms for commands. Their recommended system-prompt behaviour for agents: *when intent is unclear, infer the most useful likely action and proceed, discovering missing details with tools instead of guessing*.

**Implication:** interrogative form ≠ request for options. "Could we maybe add auth?" from a person mid-project usually means "add auth." Mode-of-speech is a weak signal; goal, stakes, and reversibility are the strong ones.

## Finding 7 — Novices cannot prompt, and blame themselves

Empirical HCI work on non-expert prompting (Zamfirescu-Pereira et al., CHI 2023, "Why Johnny Can't Prompt"): novices speak to LLMs like they speak to people, iterate poorly, cannot diagnose failure, and internalize the fault. LLM sensitivity to phrasing (40-point accuracy swings from reordering; brittle prompts) makes "just write a better prompt" an unrealistic demand on most humans.

**Implication:** the agent owns the comprehension burden. Never lecture, never quiz, never return a form. A skill that makes humans do prompt-engineering work has failed at its one job. The industry trend agrees: as models learn to intuit intent, the prompt-engineering discipline itself is fading (Wikipedia, 2025–26).

## Finding 8 — Agent doctrine already leans this way

Anthropic's "Building effective agents": agents *begin with a command from, or interactive discussion with, the human user*; core principles are simplicity and **transparency** (show the plan/interpretation); humans stay in the loop at checkpoints and blockers. GRASP operationalizes this at the input boundary: the discussion phase is where intent is recovered, and transparency is how the recovered intent stays correctable.

## The synthesis (what GRASP is)

| Human speech is... | ...so the agent does |
|---|---|
| A cooperative act with buried implicature | Assume intent exists; dig for it |
| Deliberately vague where words run out | Treat trail-offs as dig sites; offer completions |
| Silent about the "obvious" | Read the environment for omitted common ground |
| Full of pointers, not names | Resolve deixis from shared context |
| Robust only via cheap repair | State interpretations; proceed; correct on the next turn |
| Polite, hedged, question-shaped | Weigh stakes and reversibility over mode-of-speech |
| Burden-freely lazy — by right | Never lecture, quiz, or demand prompt engineering |

## Sources

- Grice, P. (1975). *Logic and Conversation*. In *Syntax and Semantics 3: Speech Acts*. — cooperative principle, maxims, flouting, implicature
- Wikipedia, *Cooperative principle* / *Implicature* (fetched Oct 2026) — maxims, scalar implicature, relevance theory (Sperber & Wilson)
- Channell, J. (1994). *Vague Language*. OUP; Trappes-Lomax, H. (2007), in *Vague Language Explored*. — vagueness as deliberate resource, tension management
- Stalnaker, R. (1978). *Assertion*; Wikipedia, *Common ground (linguistics)*. — common ground, presupposition licensing
- Wikipedia, *Deixis* (fetched Oct 2026). — personal/spatial/temporal/discourse deixis, gestural vs symbolic, deictic center (Fillmore; Levinson)
- Schegloff, Jefferson & Sacks (1977). *The Preference for Self-Correction in the Organization of Repair in Conversation*. Language 53(2). — the repair system (cited from conversation-analysis literature)
- Zamfirescu-Pereira, J. et al. (2023). *Why Johnny Can't Prompt*. CHI 2023, doi:10.1145/3544548.3581403. — novice prompting failure modes
- Anthropic (2024). *Building effective agents*. anthropic.com/engineering — discussion-first agent loops, transparency, checkpoints
- Anthropic. *Prompting best practices* (platform.claude.com, fetched Oct 2026) — "infer the most useful likely action and proceed"; intent inference over interrogation
- Wikipedia, *Prompt engineering* (fetched Oct 2026) — LLM phrasing sensitivity, trial-and-error norms, vibe coding, the fading of the prompt-engineering discipline
