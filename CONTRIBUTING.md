# Contributing to GRASP

GRASP is an agent skill: a small set of files an AI reads to behave better. Contributions should make the skill *more true about how humans talk*, or *sharper about what agents should do about it*.

## Ground rules

1. **Every research claim carries an evidence label.** `VERIFIED` (source fetched and readable — link or receipt attached) or `ASSUMED` (reputation/memory; state the inference and what would confirm it). A claim without a label does not merge. See `references/research.md` for the format.
2. **New signal shapes need a receipt.** A proposed addition to `references/signals.md` must come with at least one real example (redacted if needed) plus a research or literature anchor where one exists. Vibes are welcome in issues; vibes are not a contribution to the catalog.
3. **Keep SKILL.md tight.** The loop is five steps and a handful of doctrine lines on purpose. Additions to it must earn their load: if the idea fits `references/` or `examples.md`, it lives there.
4. **Worked examples follow the format.** The "after" reply must (a) lead with the intent line, (b) state defaults, (c) make correction one word cheap.
5. **No prompting lectures in the skill's voice.** The skill never asks the human to become a better prompter. If a contribution does, it is out of scope by definition.

## Validating changes

```sh
./scripts/validate.sh
```

Exit 0 means structure, frontmatter, and cross-references check out. Run it before opening a PR.

## Sending

PRs against `main`. Issues for: signal shapes you have seen in the wild, failure modes the skill itself falls into, and research worth folding in (with links).
