# Lab 2.3 · Reference Files

**Time:** ~20 min

## Folder contents

```
bug-notes.md                                       same notes as before
.github/skills/bug-report/
  SKILL.md                                         now POINTS to references
  references/report-template.md                    ← NEW: full team template
  references/severity-guide.md                     ← NEW: S1–S4 scale with examples
```

In Lab 2.2 the severity was still "(proposed)" — because the skill had no idea
what your team's severity scale *is*. That knowledge is too long and too
changeable to inline into `SKILL.md`. So it moves into **reference files** the
skill points to, and the agent reads them **when it needs them**.

## Steps

1. **Read all three skill files** — `SKILL.md` first. Notice the shape change:
   the body now says *"read `references/severity-guide.md` before assigning
   severity"* instead of containing the scale itself.

2. Start a fresh Copilot CLI session in this folder:

   ```bash
   cd labs/02-agent-skills/lab-2.3-reference-files
   copilot
   ```

3. Same prompt as always:

   > Write a bug report from my notes in bug-notes.md

4. **Watch the file reads.** You should see the agent open `SKILL.md`, then the
   reference files, then write. That sequence is the whole architecture.

5. Check the output:
   - Severity should now be a **justified** `S2 – Major` (or a defensible S3)
     *citing the guide's criteria* — not a shrug.
   - The report should match `report-template.md` field-for-field.

6. **Experiment:** change the severity guide — e.g., make "wrong rejection of a
   valid payment/discount at a boundary" an explicit S2 example, or tighten S1.
   Fresh session, same prompt. The skill's behavior changed **without touching
   SKILL.md**. Knowledge and workflow are now maintained separately.

## What you should observe

- The bug report is now **auditable**: severity comes with reasoning traceable
  to a file your team owns and reviews.
- `SKILL.md` stayed short. The deep knowledge scales in `references/` —
  add ten more guides and the skill's entry cost doesn't grow (that's Lab 2.4's
  punchline).

## Discussion

1. What belongs in `SKILL.md` vs `references/`? (Workflow vs. knowledge;
   always-needed vs. sometimes-needed.)
2. Who in your team should own `severity-guide.md`? How is that different from
   who owns the prompt someone types?

## Key takeaway

> `SKILL.md` is the **how**; `references/` are the **what**.
> Point, don't paste.

Next: [Lab 2.4 — why this structure is cheap: progressive disclosure](../lab-2.4-progressive-disclosure/)
