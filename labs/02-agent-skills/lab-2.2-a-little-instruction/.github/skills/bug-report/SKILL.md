---
name: bug-report
description: Turn a tester's raw notes into a standard bug report. Use when the user wants to write, file, or format a bug/defect report from notes or observations.
---

# Bug Report Writer

Turn the user's raw notes into a bug report with **exactly** these sections,
in this order:

1. **Title** — format: `[Area] Symptom — condition`
   (e.g. `[Coupon] MIN_PURCHASE_NOT_MET at exact minimum — HOT100, subtotal 300 THB`)
2. **Environment** — env, browser/OS, and any IDs (cart, user) from the notes
3. **Steps to Reproduce** — numbered, one action per step, reproducible by a stranger
4. **Expected Result** — cite the requirement rule if the notes mention one
5. **Actual Result** — include exact error codes and amounts
6. **Reproducibility** — e.g. `3/3 attempts`
7. **Severity** — propose one and mark it `(proposed, per team scale)`
8. **Open Questions / Not Yet Tested** — anything missing from the notes

Hard rules:

- Never invent details that are not in the notes (no extra browsers,
  versions, or ticket IDs). Missing info goes in section 8.
- Amounts always include the currency (THB).
- Write in English, plain and specific.
