# Lab 1.3 · Project Structure as Context

**Time:** ~15 min

## Folder contents

This lab folder is a miniature QA workspace:

```
requirements/coupon-discount.md      the full spec (R1–R8, coupon table)
api/coupon-api.md                    endpoints + exact error codes
test-cases/example-cart-test-cases.md  an existing test-case file (house style)
```

Nothing gets pasted this time. **The agent finds its own context** — because an
agentic CLI like Copilot can list folders and read files.

## Steps

1. Start a fresh Copilot CLI session in this folder:

   ```bash
   cd labs/01-context-engineering/lab-1.3-project-structure
   copilot
   ```

2. Run this short prompt:

   > Explore this project, then write test cases for the coupon discount
   > feature. Follow the style of the existing test cases. Save the result to
   > test-cases/coupon-test-cases.md

3. **Watch what the agent does** before it writes anything: which files does it
   open? In what order? (Copilot shows each file it reads — this visibility is
   the whole lab.)

4. Review `test-cases/coupon-test-cases.md`: check amounts, error codes, and
   whether it imitated the example file's style.

5. **Experiment:** rename `requirements/` to `stuff/` and rerun in a fresh
   session. Does the agent still find the spec as quickly? Rename it back.

## What you should observe

- A **3-line prompt** now performs like Lab 1.2's 60-line prompt — the context
  moved from your clipboard into the **folder structure**.
- The agent reads `requirements/` and `api/` because the names *tell it where
  to look*. Clear naming = cheaper, faster, more reliable context discovery.
- The output mostly imitates the example file's style — but run it twice and
  details still drift (IDs, priorities, section order). There's still no
  *enforced* standard. That's Lab 1.4.

## Discussion

1. What did the agent read first, and why? What would a new human team member read first?
2. Compare with your neighbor: did your agents explore in the same order? Produce the same format?
3. What in *your real project* is currently locked in a wiki/Excel/someone's head,
   where an agent (or a new hire) could never find it?

## Key takeaway

> **A well-named folder structure is context engineering.** Agents — like new
> teammates — can only use knowledge they can find.

Next: [Lab 1.4 — make the output standard, every time](../lab-1.4-standardized-format/)
