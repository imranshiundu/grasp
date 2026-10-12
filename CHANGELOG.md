# Changelog

All notable changes to GRASP. This project follows [Semantic Versioning](https://semver.org/).

## [1.1.0] - 2026-10-12

### Added
- **Failure-modes section** in `SKILL.md` — intent hallucination, over-grasp, interrogation creep, lecture creep — each with a counter, grounded in the clarifying-questions literature (Zhang et al., ICLR 2025: LLMs "respond by presupposing a single interpretation... frustrating users"; CLAMBER, ACL 2024: overconfidence on ambiguous queries).
- **Escalation policy** — two failed repairs on the same target → present the named candidate interpretations with their evidence, and let the human pick.
- **Ask-step sharpening** — when two candidate intents tie, name both; a structured choice beats an open question.
- **Research round 2** (`references/research.md`): conversation-analysis repair organization ("self-righting mechanism"; self-repair preferred over other-repair — Schegloff et al. 1977, now properly sourced) and recipient design (Sacks); Brown & Levinson politeness theory (off-record indirect requests — the receipt for the "polite ask" signal); the clarifying-question literature (arXiv:2410.13788, 2405.12063, 2308.13507); quantified underspecification (16–50% of benchmark questions; arXiv:2602.11938, 2602.04297).
- **Evidence labels** — every research claim now carries VERIFIED / ASSUMED with fetch receipts.
- `CONTRIBUTING.md`, `DEBT_LEDGER.md`, `scripts/validate.sh` (mechanical structure check).

### Fixed
- "Why Johnny Can't Prompt" (CHI 2023) relabeled **ASSUMED** — the abstract was never fetched (ACM 403, Semantic Scholar 429, arXiv 0 results); it had been presented as consulted. Receipts now attached in `references/research.md`.
- Schegloff/Jefferson/Sacks repair claims upgraded from memory-cited to **VERIFIED** (conversation-analysis source fetched).
- Typo in `references/signals.md` ("haskel**l**" → "Haskell").

[1.1.0]: https://github.com/imranshiundu/grasp/compare/v1.0.0...v1.1.0
[1.0.0]: https://github.com/imranshiundu/grasp/releases/tag/v1.0.0
