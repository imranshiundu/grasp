# Debt Ledger

Known problems with GRASP itself, ordered by severity. Burned items move to the bottom with their burn date.

- [Medium] Worked examples are hand-written prose, not field-tested — no corpus of real messy messages with judged outcomes. Fix: collect anonymized real mumble→outcome pairs and evaluate the skill against them.
- [Low] Multilingual and ESL prompting un-researched — politeness strategies are cross-culturally variable (verified), so signal reading likely differs by language; the skill says nothing about it yet. Fix: research round 3 on cross-cultural pragmatics.
- [Low] Voice-dictation artifacts (ASR errors, rambling transcribed speech) are an unhandled signal shape. Fix: add a signal entry once grounded in real examples.
- [FYI] `Why Johnny Can't Prompt` claims remain ASSUMED — abstract never fetched (ACM 403, Semantic Scholar 429, arXiv 0 results). Fix: read the paper text at a library-accessible source and upgrade Finding 7.

## Burned

- [Medium] Research claims presented as consulted without fetch receipts — fixed 2026-10-12: evidence labels added to every finding, memory-cited sources relabeled with failed-fetch receipts (v1.1.0).
- [Medium] No guardrails against the skill's own failure modes (intent hallucination, over-grasp, interrogation creep) — fixed 2026-10-12: failure-modes and escalation sections added to SKILL.md, grounded in ICLR 2025 / ACL 2024 receipts (v1.1.0).
