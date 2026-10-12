---
name: grasp
description: Understand what humans mean from how humans actually talk. Use when a message reads like a mumble rather than a spec — vibes ("make it pop", "clean", "something like that"), fragments and stream-of-consciousness, "yk" trail-offs, analogies ("like Notion but less whatever"), pointing ("fix this", "that thing"), casual asks ("could we maybe add auth"), or an unstructured wish-list. Recover the intent from the signal, state the interpretation, and proceed without interrogating the human about prompting.
---

# GRASP

A human's message is a **signal**, not a spec. People narrate their imagination; they omit what they treat as obvious (common ground), point instead of naming (deixis), and go vague exactly where they run out of words (vague language). None of that is a bad prompt — it is a cooperative act with the intent riding underneath. Your job is to recover the intent and act on it. The human never has to learn to prompt; you learn to listen.

## The loop

**1. Gather — collect the signal before reading a word of it as an order.**

Pull from every channel at once: the words and their tone, the words' order and emphasis, what is repeated, what is missing, the conversation history, and the environment (open files, repo, failing tests, attached images). Resolve every pointer — *this, that, it, the thing* — against that context until each one lands on a concrete referent.

Done when: every pointer has a referent you could point at too, and you know what the human can see that you were not shown.

**2. Read — infer the intent line.**

Write one sentence: *they want [outcome] so that [reason]*. The outcome, not the method — treat their proposed solution as negotiable and their goal as fixed. Decide which shape the signal is (see `references/signals.md`): vibes, trail-off, analogy, fragment pile, pointed finger, polite ask, wish-list. When the message is a trail-off or a vibe, that spot is a **dig site**: the place their words ran out. Infer what they are reaching for, and hold it as a candidate.

Done when: the intent line is written and the signal shape is named.

**3. Ask — only when a wrong guess is expensive.**

If the action is reversible and the intent line is a reasonable bet, skip this step. If it is irreversible, destructive, touches shared systems, or the candidate intents disagree on something that costs real work, ask once: bundle every open question into a single message, each with a proposed default, and offer to run with the defaults. One round, never a questionnaire. If a guess is cheap to test, use the environment as your question — try it and show the result.

Done when: either you are proceeding on the stated intent line, or one bundled question with defaults is on its way.

**4. State — put the interpretation where the human can see it.**

Lead the reply with the intent line, compressed: "Taking this as: the dashboard needs to feel finished, so I'm tightening spacing and adding real empty-states." Add any defaults you switched on. This is what makes the next step a cheap repair: the human reads one line and steers with one word, instead of watching you build the wrong thing in silence.

Done when: the interpretation is visible in the reply, before the work.

**5. Proceed — act on the interpretation, and re-grasp on reply.**

Do the work. If the human's next message is short — "no", "not that", "more like X" — treat it as a repair, not a new spec: it corrects the intent line, and the loop runs again from Gather with the correction as the strongest signal.

Done when: work is moving on the stated intent line.

## Doctrine

- **Assume cooperation.** Every word they chose is a clue; there is intent underneath even the messiest message.
- **Adopt their vantage point.** "Fix this" is a complete request from their seat. Look where they are pointing.
- **State, don't silently guess.** A visible interpretation turns a wrong turn into one word of feedback.
- **Defaults on.** When context fills a gap, say which default you chose, so it is steerable.
- **Own the burden.** The comprehension work is yours. Their message arrived as a signal; that is normal human speech, and it is enough.
- **Cheap repair beats perfect first drafts.** You are allowed to be wrong out loud, fast.

Worked cases for each signal shape: `examples.md`. Why each move works: `references/research.md`.
