# Lab 1.1 · Just a Prompt

**Time:** ~15 min · **Folder contents:** only this README — that's the point.

## Scenario

Your team is about to test a new *coupon discount* feature. You've heard AI can
write test cases, so you just… ask it.

## Steps

1. Start a fresh Copilot CLI session **in this folder**:

   ```bash
   cd labs/01-context-engineering/lab-1.1-just-a-prompt
   copilot
   ```

2. Run this prompt exactly as written:

   > Write test cases for a coupon discount feature.

3. Save the output somewhere (e.g. paste into `my-output-1.md`).

4. Now run it **again** in a new session — same prompt, nothing else.
   Save as `my-output-2.md`.

5. Compare your two outputs, then compare with your neighbor's.

## What you should observe

- The output looks **plausible and professional** — that's what makes it dangerous.
- Every run (and every person) gets **different** test cases in a **different format**.
- The AI **invented business rules**: maybe stacking rules, maybe a usage limit,
  maybe free-shipping coupons. Does *your* feature have any of those? Nobody said.
- Nothing connects the test cases to *your* requirements, error codes, or amounts.

## Discussion

1. Highlight every business rule in the output. Which ones are real? (Trick
   question — you haven't seen the spec yet either. Neither had the AI.)
2. Could you hand this output to a junior tester to execute? What would they ask?
3. If your agent went looking for files elsewhere in the repo and found the spec —
   congratulations, you've discovered that **agents grab context wherever they can**.
   What does that imply about what you leave lying around in a repo?

## Key takeaway

> The model didn't fail — it did exactly what it was asked, which was almost
> nothing. **Output quality is capped by context quality.**

Next: [Lab 1.2 — add context and format](../lab-1.2-context-and-format/)
