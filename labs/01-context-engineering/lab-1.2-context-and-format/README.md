# Lab 1.2 · Context + Format

**Time:** ~15 min · **Folder contents:** this README + `prompt-example.md`

## Scenario

Same task as Lab 1.1, but this time you give the model what a human tester
would also need: **the actual requirement** and **the output format you want**.
Both are pasted directly into the prompt — no files, no magic.

## Steps

1. Start a fresh Copilot CLI session in this folder:

   ```bash
   cd labs/01-context-engineering/lab-1.2-context-and-format
   copilot
   ```

2. Open [`prompt-example.md`](prompt-example.md), copy the whole prompt, and
   paste it into Copilot.

3. Compare the output with your Lab 1.1 output, side by side.

4. **Experiment:** remove the *"Output format"* section from the prompt and run
   again in a fresh session. What happens to the structure?

## What you should observe

- Test cases now reference **real rules** (300 THB cap, `MIN_PURCHASE_NOT_MET`,
  23:59:59 expiry) instead of invented ones.
- Boundary cases target the **real boundaries** (499/500/501 THB for `SAVE10`).
- The output follows **your** format, so two people running it get comparable results.
- A good run flags rule **R8** ("no coupons on discounted items") as ambiguous
  instead of inventing an interpretation. If yours didn't — that's the discussion.

## Discussion

1. What information did the model use in this run that it *couldn't have had* in Lab 1.1?
2. R8 is genuinely ambiguous. Did the AI invent an interpretation or ask?
   What did *you* tell it to do about ambiguity? (Look at the prompt again.)
3. This worked — but you pasted the spec by hand. What breaks when the spec is
   40 pages? When it changes weekly? When 10 testers each paste their own copy?

## Key takeaway

> **Context (grounding) fixes correctness; format fixes usability.**
> But hand-pasting context doesn't scale — that's what the next lab solves.

Next: [Lab 1.3 — let the agent explore a project structure](../lab-1.3-project-structure/)
