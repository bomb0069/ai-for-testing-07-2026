# Lab 2.1 · Just a Prompt (no skill)

**Time:** ~15 min · **Folder contents:** this README + `workspace/bug-notes.md`

## Scenario

You found a real bug while testing the coupon feature (a boundary bug —
nice catch!). Your raw notes are in
[`workspace/bug-notes.md`](workspace/bug-notes.md). You want the AI to turn
them into a proper bug report.

There is no skill installed here. You'll do it the way most people start:
just ask.

## Steps

1. Start a fresh Copilot CLI session **inside `workspace/`** (so the agent sees
   only your notes, not these lab instructions):

   ```bash
   cd labs/02-agent-skills/lab-2.1-just-a-prompt/workspace
   copilot
   ```

2. Run:

   > Write a bug report from my notes in bug-notes.md

3. Save the output. Run it **again in a fresh session**. Compare the two.

4. Now imagine your teammate does the same on their machine — with their own
   wording, in their own style. Compare with your neighbor's output: same
   sections? Same severity? Same title style?

## What you should observe

- Every run picks its **own format** — different sections, different order.
- **Severity is a guess** — one run says High, another says Medium, with no
  stated criteria for either.
- Some runs **quietly invent details** (browser versions "and Firefox",
  an expected-fix note, a made-up bug ID).
- To fix any of this you'd have to type your team's rules into the prompt —
  **every single time, and so would every teammate.**

## Discussion

1. In Module 1 you solved exactly this problem with AGENTS.md. Why is that the
   wrong tool here? (Hint: bug reporting is one of *many* tasks; should its
   rules load into **every** session, even sessions about test data or API
   exploration?)
2. What knowledge would a new QA hire need to write this report to house
   standard? Name the pieces — you're about to package precisely those.

## Key takeaway

> Expertise that lives in your head (or your clipboard) doesn't scale and
> doesn't transfer. **A skill is expertise, packaged.**

Next: [Lab 2.2 — the smallest possible skill](../lab-2.2-a-little-instruction/)
