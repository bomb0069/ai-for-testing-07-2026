# Lab 1.4 · Standardized Format with AGENTS.md

**Time:** ~15 min

## Folder contents

Same workspace as Lab 1.3, plus two new things:

```
AGENTS.md                        ← NEW: instructions the agent loads automatically
templates/test-case-template.md  ← NEW: the team's mandatory test-case format
requirements/  api/  test-cases/    (same as before)
```

`AGENTS.md` is a cross-tool convention (Copilot CLI, Copilot coding agent,
Claude Code, Cursor, …): a file at the root of a workspace that the agent reads
**automatically at the start of every session**. Whatever you write there
becomes standing instructions — for every prompt, every session, every teammate.

## Steps

1. First, **read [`AGENTS.md`](AGENTS.md) yourself.** It's short. Notice it
   encodes the team's rules: which template to use, naming, error codes,
   how to treat ambiguity.

2. Start a fresh Copilot CLI session in this folder:

   ```bash
   cd labs/01-context-engineering/lab-1.4-standardized-format
   copilot
   ```

3. Run the **laziest prompt of the day**:

   > Write test cases for the coupon feature.

4. Review the output and compare with Lab 1.3:
   - Does it follow `templates/test-case-template.md` exactly?
   - Does every case cite a rule ID (R1–R8)?
   - Did rule R8 end up in an **Open questions** section instead of being guessed?

5. **Experiment — prove it's really being read:** edit `AGENTS.md` and add one
   silly-but-visible rule, e.g. *"Every test case title must start with 🧪"*.
   Start a fresh session, run the same prompt. There's your proof.

6. Compare with your neighbor's output. They should now be *nearly identical* —
   for the first time today.

## What you should observe

- A 7-word prompt now produces **spec-grounded, template-perfect, consistent**
  output — because all the engineering moved out of the prompt and into the workspace.
- Consistency across people and sessions is the new win. Labs 1.2–1.3 made *one
  run* good; `AGENTS.md` + a template makes *every run* good.

## Discussion

1. Look back across 1.1 → 1.4: the prompt got *shorter* while output got *better*.
   Where did the effort move to?
2. What belongs in AGENTS.md vs. in the prompt? (Rule of thumb: **always true →
   AGENTS.md; true today → prompt.**)
3. What would your team's AGENTS.md contain? Write 3 bullet points, for real.

## Key takeaway

> **Prompting is a conversation; context engineering is infrastructure.**
> Standards in the workspace outlive any single prompt, session, or person.

Next module: [Agent Skills — package expertise so it loads only when needed](../../02-agent-skills/)
