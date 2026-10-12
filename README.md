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
SKILL.md          the skill: the GRASP loop
references/
  signals.md      catalog of how humans signal intent in messy messages
  research.md     distilled research: pragmatics, conversation analysis, prompting studies
examples.md       worked before/after cases
```

## License

MIT
