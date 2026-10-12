# GRASP

**A skill that teaches agents to understand what humans mean, from how humans actually talk.**

People do not write prompts. They speak their imagination: *"make it pop"*, *"yk, something like Notion but less... whatever"*, *"fix this"*. Trained-on-specs agents treat those messages as bad specs and fail. GRASP treats them as what they are — **signals** — and recovers the intent behind them.

GRASP = **G**ather, **R**ead, **A**sk, **S**tate, **P**roceed.

- **Gather** every signal — words, tone, what's missing, what's pointing at "this"
- **Read** the intent — one sentence: *they want X so that Y*
- **Ask** only when a wrong guess is expensive — one bundled question, always with a default
- **State** the interpretation out loud, so correction stays cheap
- **Proceed** — and let the next message repair the guess

> The human never has to learn to prompt. The agent learns to listen.

## Why it exists

The research is unambiguous: humans speak in **implicature** (Grice — meaning rides in what is not said), leave out what they treat as *obvious* (common ground), **point** instead of naming (deixis), and go vague exactly where their words run out (vague language). Meanwhile "Why Johnny Can't Prompt" (CHI 2023) showed novices can't — and shouldn't have to — write machine-shaped prompts. The answer is not teaching humans to prompt. It is teaching agents to grasp.

## Status

Under active development. Every update lands here in real time.

## Install

Copy or symlink this repo into your agent's skills directory:

```sh
git clone https://github.com/imranshiundu/grasp.git ~/.agents/skills/grasp
```

Works with any agent harness that reads agent skills (SKILL.md format): OpenCode, Claude Code, Claude, and friends.

## Structure

```
SKILL.md          the skill: the GRASP loop, failure modes, escalation
references/
  signals.md      catalog of how humans signal intent in messy messages
  standards.md    the delivery bar: register, UI floor, honest shortcuts, clean machine
  research.md     distilled research with evidence labels (VERIFIED / ASSUMED)
examples.md       worked before/after cases (input signals + output bar)
CONTRIBUTING.md   ground rules for contributing
DEBT_LEDGER.md    known debt, burned publicly
scripts/
  validate.sh     mechanical structure check (run before PRs)
```

## Contributing

Read `CONTRIBUTING.md`. The one rule that matters: every research claim carries an evidence label, and claims without receipts don't merge.

## License

MIT
